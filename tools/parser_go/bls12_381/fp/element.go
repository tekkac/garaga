// Copyright 2020 ConsenSys Software Inc.
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//     http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.

package fp

import (
	"crypto/rand"
	"encoding/binary"
	"errors"
	"io"
	"math/big"
	"math/bits"
	"reflect"
	"strconv"
	"strings"

	"github.com/consensys/gnark-crypto/field"
)

// Element represents a field element stored on 6 words (uint64)
//
// Element are assumed to be in Montgomery form in all methods.
//
// Modulus q =
//
//	q[base10] = 4002409555221667393417789825735904156556882819939007885332058136124031650490837864442687629129015664037894272559787
//	q[base16] = 0x1a0111ea397fe69a4b1ba7b6434bacd764774b84f38512bf6730d2a0f6b0f6241eabfffeb153ffffb9feffffffffaaab
//
// # Warning
//
// This code has not been audited and is provided as-is. In particular, there is no security guarantees such as constant time implementation or side-channel attack resistance.
type Element [6]uint64

const (
	Limbs = 6   // number of 64 bits words needed to represent a Element
	Bits  = 381 // number of bits needed to represent a Element
	Bytes = 48  // number of bytes needed to represent a Element
)

// Field modulus q
const (
	q0 uint64 = 13402431016077863595
	q1 uint64 = 2210141511517208575
	q2 uint64 = 7435674573564081700
	q3 uint64 = 7239337960414712511
	q4 uint64 = 5412103778470702295
	q5 uint64 = 1873798617647539866
)

var qElement = Element{
	q0,
	q1,
	q2,
	q3,
	q4,
	q5,
}

var _modulus big.Int // q stored as big.Int

// Modulus returns q as a big.Int
//
//	q[base10] = 4002409555221667393417789825735904156556882819939007885332058136124031650490837864442687629129015664037894272559787
//	q[base16] = 0x1a0111ea397fe69a4b1ba7b6434bacd764774b84f38512bf6730d2a0f6b0f6241eabfffeb153ffffb9feffffffffaaab
func Modulus() *big.Int {
	return new(big.Int).Set(&_modulus)
}

// q + r'.r = 1, i.e., qInvNeg = - q⁻¹ mod r
// used for Montgomery reduction
const qInvNeg uint64 = 9940570264628428797

func init() {
	_modulus.SetString("1a0111ea397fe69a4b1ba7b6434bacd764774b84f38512bf6730d2a0f6b0f6241eabfffeb153ffffb9feffffffffaaab", 16)
}

// NewElement returns a new Element from a uint64 value
//
// it is equivalent to
//
//	var v Element
//	v.SetUint64(...)
func NewElement(v uint64) Element {
	z := Element{v}
	z.Mul(&z, &rSquare)
	return z
}

// SetUint64 sets z to v and returns z
func (z *Element) SetUint64(v uint64) *Element {
	//  sets z LSB to v (non-Montgomery form) and convert z to Montgomery form
	*z = Element{v}
	return z.Mul(z, &rSquare) // z.toMont()
}

// SetInt64 sets z to v and returns z
func (z *Element) SetInt64(v int64) *Element {

	// absolute value of v
	m := v >> 63
	z.SetUint64(uint64((v ^ m) - m))

	if m != 0 {
		// v is negative
		z.Neg(z)
	}

	return z
}

// Set z = x and returns z
func (z *Element) Set(x *Element) *Element {
	z[0] = x[0]
	z[1] = x[1]
	z[2] = x[2]
	z[3] = x[3]
	z[4] = x[4]
	z[5] = x[5]
	return z
}

// SetInterface converts provided interface into Element
// returns an error if provided type is not supported
// supported types:
//
//	Element
//	*Element
//	uint64
//	int
//	string (see SetString for valid formats)
//	*big.Int
//	big.Int
//	[]byte
func (z *Element) SetInterface(i1 interface{}) (*Element, error) {
	if i1 == nil {
		return nil, errors.New("can't set fp.Element with <nil>")
	}

	switch c1 := i1.(type) {
	case Element:
		return z.Set(&c1), nil
	case *Element:
		if c1 == nil {
			return nil, errors.New("can't set fp.Element with <nil>")
		}
		return z.Set(c1), nil
	case uint8:
		return z.SetUint64(uint64(c1)), nil
	case uint16:
		return z.SetUint64(uint64(c1)), nil
	case uint32:
		return z.SetUint64(uint64(c1)), nil
	case uint:
		return z.SetUint64(uint64(c1)), nil
	case uint64:
		return z.SetUint64(c1), nil
	case int8:
		return z.SetInt64(int64(c1)), nil
	case int16:
		return z.SetInt64(int64(c1)), nil
	case int32:
		return z.SetInt64(int64(c1)), nil
	case int64:
		return z.SetInt64(c1), nil
	case int:
		return z.SetInt64(int64(c1)), nil
	case string:
		return z.SetString(c1)
	case *big.Int:
		if c1 == nil {
			return nil, errors.New("can't set fp.Element with <nil>")
		}
		return z.SetBigInt(c1), nil
	case big.Int:
		return z.SetBigInt(&c1), nil
	case []byte:
		return z.SetBytes(c1), nil
	default:
		return nil, errors.New("can't set fp.Element from type " + reflect.TypeOf(i1).String())
	}
}

// SetZero z = 0
func (z *Element) SetZero() *Element {
	z[0] = 0
	z[1] = 0
	z[2] = 0
	z[3] = 0
	z[4] = 0
	z[5] = 0
	return z
}

// SetOne z = 1 (in Montgomery form)
func (z *Element) SetOne() *Element {
	z[0] = 8505329371266088957
	z[1] = 17002214543764226050
	z[2] = 6865905132761471162
	z[3] = 8632934651105793861
	z[4] = 6631298214892334189
	z[5] = 1582556514881692819
	return z
}

// Div z = x*y⁻¹ (mod q)
func (z *Element) Div(x, y *Element) *Element {
	var yInv Element
	yInv.Inverse(y)
	z.Mul(x, &yInv)
	return z
}

// Bit returns the i'th bit, with lsb == bit 0.
//
// It is the responsibility of the caller to convert from Montgomery to Regular form if needed.
func (z *Element) Bit(i uint64) uint64 {
	j := i / 64
	if j >= 6 {
		return 0
	}
	return uint64(z[j] >> (i % 64) & 1)
}

// Equal returns z == x; constant-time
func (z *Element) Equal(x *Element) bool {
	return z.NotEqual(x) == 0
}

// NotEqual returns 0 if and only if z == x; constant-time
func (z *Element) NotEqual(x *Element) uint64 {
	return (z[5] ^ x[5]) | (z[4] ^ x[4]) | (z[3] ^ x[3]) | (z[2] ^ x[2]) | (z[1] ^ x[1]) | (z[0] ^ x[0])
}

// IsZero returns z == 0
func (z *Element) IsZero() bool {
	return (z[5] | z[4] | z[3] | z[2] | z[1] | z[0]) == 0
}

// IsOne returns z == 1
func (z *Element) IsOne() bool {
	return (z[5] ^ 1582556514881692819 | z[4] ^ 6631298214892334189 | z[3] ^ 8632934651105793861 | z[2] ^ 6865905132761471162 | z[1] ^ 17002214543764226050 | z[0] ^ 8505329371266088957) == 0
}

// IsUint64 reports whether z can be represented as an uint64.
func (z *Element) IsUint64() bool {
	zz := *z
	zz.FromMont()
	return zz.FitsOnOneWord()
}

// Uint64 returns the uint64 representation of x. If x cannot be represented in a uint64, the result is undefined.
func (z *Element) Uint64() uint64 {
	return z.Bits()[0]
}

// FitsOnOneWord reports whether z words (except the least significant word) are 0
//
// It is the responsibility of the caller to convert from Montgomery to Regular form if needed.
func (z *Element) FitsOnOneWord() bool {
	return (z[5] | z[4] | z[3] | z[2] | z[1]) == 0
}

// Cmp compares (lexicographic order) z and x and returns:
//
//	-1 if z <  x
//	 0 if z == x
//	+1 if z >  x
func (z *Element) Cmp(x *Element) int {
	_z := z.Bits()
	_x := x.Bits()
	if _z[5] > _x[5] {
		return 1
	} else if _z[5] < _x[5] {
		return -1
	}
	if _z[4] > _x[4] {
		return 1
	} else if _z[4] < _x[4] {
		return -1
	}
	if _z[3] > _x[3] {
		return 1
	} else if _z[3] < _x[3] {
		return -1
	}
	if _z[2] > _x[2] {
		return 1
	} else if _z[2] < _x[2] {
		return -1
	}
	if _z[1] > _x[1] {
		return 1
	} else if _z[1] < _x[1] {
		return -1
	}
	if _z[0] > _x[0] {
		return 1
	} else if _z[0] < _x[0] {
		return -1
	}
	return 0
}

// LexicographicallyLargest returns true if this element is strictly lexicographically
// larger than its negation, false otherwise
func (z *Element) LexicographicallyLargest() bool {
	// adapted from github.com/zkcrypto/bls12_381
	// we check if the element is larger than (q-1) / 2
	// if z - (((q -1) / 2) + 1) have no underflow, then z > (q-1) / 2

	_z := z.Bits()

	var b uint64
	_, b = bits.Sub64(_z[0], 15924587544893707606, 0)
	_, b = bits.Sub64(_z[1], 1105070755758604287, b)
	_, b = bits.Sub64(_z[2], 12941209323636816658, b)
	_, b = bits.Sub64(_z[3], 12843041017062132063, b)
	_, b = bits.Sub64(_z[4], 2706051889235351147, b)
	_, b = bits.Sub64(_z[5], 936899308823769933, b)

	return b == 0
}

// SetRandom sets z to a uniform random value in [0, q).
//
// This might error only if reading from crypto/rand.Reader errors,
// in which case, value of z is undefined.
func (z *Element) SetRandom() (*Element, error) {
	// this code is generated for all modulus
	// and derived from go/src/crypto/rand/util.go

	// l is number of limbs * 8; the number of bytes needed to reconstruct 6 uint64
	const l = 48

	// bitLen is the maximum bit length needed to encode a value < q.
	const bitLen = 381

	// k is the maximum byte length needed to encode a value < q.
	const k = (bitLen + 7) / 8

	// b is the number of bits in the most significant byte of q-1.
	b := uint(bitLen % 8)
	if b == 0 {
		b = 8
	}

	var bytes [l]byte

	for {
		// note that bytes[k:l] is always 0
		if _, err := io.ReadFull(rand.Reader, bytes[:k]); err != nil {
			return nil, err
		}

		// Clear unused bits in in the most signicant byte to increase probability
		// that the candidate is < q.
		bytes[k-1] &= uint8(int(1<<b) - 1)
		z[0] = binary.LittleEndian.Uint64(bytes[0:8])
		z[1] = binary.LittleEndian.Uint64(bytes[8:16])
		z[2] = binary.LittleEndian.Uint64(bytes[16:24])
		z[3] = binary.LittleEndian.Uint64(bytes[24:32])
		z[4] = binary.LittleEndian.Uint64(bytes[32:40])
		z[5] = binary.LittleEndian.Uint64(bytes[40:48])

		if !z.smallerThanModulus() {
			continue // ignore the candidate and re-sample
		}

		return z, nil
	}
}

// smallerThanModulus returns true if z < q
// This is not constant time
func (z *Element) smallerThanModulus() bool {
	return (z[5] < q5 || (z[5] == q5 && (z[4] < q4 || (z[4] == q4 && (z[3] < q3 || (z[3] == q3 && (z[2] < q2 || (z[2] == q2 && (z[1] < q1 || (z[1] == q1 && (z[0] < q0)))))))))))
}

// One returns 1
func One() Element {
	var one Element
	one.SetOne()
	return one
}

// Halve sets z to z / 2 (mod q)
func (z *Element) Halve() {
	var carry uint64

	if z[0]&1 == 1 {
		// z = z + q
		z[0], carry = bits.Add64(z[0], q0, 0)
		z[1], carry = bits.Add64(z[1], q1, carry)
		z[2], carry = bits.Add64(z[2], q2, carry)
		z[3], carry = bits.Add64(z[3], q3, carry)
		z[4], carry = bits.Add64(z[4], q4, carry)
		z[5], _ = bits.Add64(z[5], q5, carry)

	}
	// z = z >> 1
	z[0] = z[0]>>1 | z[1]<<63
	z[1] = z[1]>>1 | z[2]<<63
	z[2] = z[2]>>1 | z[3]<<63
	z[3] = z[3]>>1 | z[4]<<63
	z[4] = z[4]>>1 | z[5]<<63
	z[5] >>= 1

}

// fromMont converts z in place (i.e. mutates) from Montgomery to regular representation
// sets and returns z = z * 1
func (z *Element) FromMont() *Element {
	fromMont(z)
	return z
}

// Add z = x + y (mod q)
func (z *Element) Add(x, y *Element) *Element {

	var carry uint64
	z[0], carry = bits.Add64(x[0], y[0], 0)
	z[1], carry = bits.Add64(x[1], y[1], carry)
	z[2], carry = bits.Add64(x[2], y[2], carry)
	z[3], carry = bits.Add64(x[3], y[3], carry)
	z[4], carry = bits.Add64(x[4], y[4], carry)
	z[5], _ = bits.Add64(x[5], y[5], carry)

	// if z ⩾ q → z -= q
	if !z.smallerThanModulus() {
		var b uint64
		z[0], b = bits.Sub64(z[0], q0, 0)
		z[1], b = bits.Sub64(z[1], q1, b)
		z[2], b = bits.Sub64(z[2], q2, b)
		z[3], b = bits.Sub64(z[3], q3, b)
		z[4], b = bits.Sub64(z[4], q4, b)
		z[5], _ = bits.Sub64(z[5], q5, b)
	}
	return z
}

// Double z = x + x (mod q), aka Lsh 1
func (z *Element) Double(x *Element) *Element {

	var carry uint64
	z[0], carry = bits.Add64(x[0], x[0], 0)
	z[1], carry = bits.Add64(x[1], x[1], carry)
	z[2], carry = bits.Add64(x[2], x[2], carry)
	z[3], carry = bits.Add64(x[3], x[3], carry)
	z[4], carry = bits.Add64(x[4], x[4], carry)
	z[5], _ = bits.Add64(x[5], x[5], carry)

	// if z ⩾ q → z -= q
	if !z.smallerThanModulus() {
		var b uint64
		z[0], b = bits.Sub64(z[0], q0, 0)
		z[1], b = bits.Sub64(z[1], q1, b)
		z[2], b = bits.Sub64(z[2], q2, b)
		z[3], b = bits.Sub64(z[3], q3, b)
		z[4], b = bits.Sub64(z[4], q4, b)
		z[5], _ = bits.Sub64(z[5], q5, b)
	}
	return z
}

// Sub z = x - y (mod q)
func (z *Element) Sub(x, y *Element) *Element {
	var b uint64
	z[0], b = bits.Sub64(x[0], y[0], 0)
	z[1], b = bits.Sub64(x[1], y[1], b)
	z[2], b = bits.Sub64(x[2], y[2], b)
	z[3], b = bits.Sub64(x[3], y[3], b)
	z[4], b = bits.Sub64(x[4], y[4], b)
	z[5], b = bits.Sub64(x[5], y[5], b)
	if b != 0 {
		var c uint64
		z[0], c = bits.Add64(z[0], q0, 0)
		z[1], c = bits.Add64(z[1], q1, c)
		z[2], c = bits.Add64(z[2], q2, c)
		z[3], c = bits.Add64(z[3], q3, c)
		z[4], c = bits.Add64(z[4], q4, c)
		z[5], _ = bits.Add64(z[5], q5, c)
	}
	return z
}

// Neg z = q - x
func (z *Element) Neg(x *Element) *Element {
	if x.IsZero() {
		z.SetZero()
		return z
	}
	var borrow uint64
	z[0], borrow = bits.Sub64(q0, x[0], 0)
	z[1], borrow = bits.Sub64(q1, x[1], borrow)
	z[2], borrow = bits.Sub64(q2, x[2], borrow)
	z[3], borrow = bits.Sub64(q3, x[3], borrow)
	z[4], borrow = bits.Sub64(q4, x[4], borrow)
	z[5], _ = bits.Sub64(q5, x[5], borrow)
	return z
}

// Select is a constant-time conditional move.
// If c=0, z = x0. Else z = x1
func (z *Element) Select(c int, x0 *Element, x1 *Element) *Element {
	cC := uint64((int64(c) | -int64(c)) >> 63) // "canonicized" into: 0 if c=0, -1 otherwise
	z[0] = x0[0] ^ cC&(x0[0]^x1[0])
	z[1] = x0[1] ^ cC&(x0[1]^x1[1])
	z[2] = x0[2] ^ cC&(x0[2]^x1[2])
	z[3] = x0[3] ^ cC&(x0[3]^x1[3])
	z[4] = x0[4] ^ cC&(x0[4]^x1[4])
	z[5] = x0[5] ^ cC&(x0[5]^x1[5])
	return z
}

// _mulGeneric is unoptimized textbook CIOS
// it is a fallback solution on x86 when ADX instruction set is not available
// and is used for testing purposes.
func _mulGeneric(z, x, y *Element) {

	// Implements CIOS multiplication -- section 2.3.2 of Tolga Acar's thesis
	// https://www.microsoft.com/en-us/research/wp-content/uploads/1998/06/97Acar.pdf
	//
	// The algorithm:
	//
	// for i=0 to N-1
	// 		C := 0
	// 		for j=0 to N-1
	// 			(C,t[j]) := t[j] + x[j]*y[i] + C
	// 		(t[N+1],t[N]) := t[N] + C
	//
	// 		C := 0
	// 		m := t[0]*q'[0] mod D
	// 		(C,_) := t[0] + m*q[0]
	// 		for j=1 to N-1
	// 			(C,t[j-1]) := t[j] + m*q[j] + C
	//
	// 		(C,t[N-1]) := t[N] + C
	// 		t[N] := t[N+1] + C
	//
	// → N is the number of machine words needed to store the modulus q
	// → D is the word size. For example, on a 64-bit architecture D is 2	64
	// → x[i], y[i], q[i] is the ith word of the numbers x,y,q
	// → q'[0] is the lowest word of the number -q⁻¹ mod r. This quantity is pre-computed, as it does not depend on the inputs.
	// → t is a temporary array of size N+2
	// → C, S are machine words. A pair (C,S) refers to (hi-bits, lo-bits) of a two-word number

	var t [7]uint64
	var D uint64
	var m, C uint64
	// -----------------------------------
	// First loop

	C, t[0] = bits.Mul64(y[0], x[0])
	C, t[1] = madd1(y[0], x[1], C)
	C, t[2] = madd1(y[0], x[2], C)
	C, t[3] = madd1(y[0], x[3], C)
	C, t[4] = madd1(y[0], x[4], C)
	C, t[5] = madd1(y[0], x[5], C)

	t[6], D = bits.Add64(t[6], C, 0)

	// m = t[0]n'[0] mod W
	m = t[0] * qInvNeg

	// -----------------------------------
	// Second loop
	C = madd0(m, q0, t[0])
	C, t[0] = madd2(m, q1, t[1], C)
	C, t[1] = madd2(m, q2, t[2], C)
	C, t[2] = madd2(m, q3, t[3], C)
	C, t[3] = madd2(m, q4, t[4], C)
	C, t[4] = madd2(m, q5, t[5], C)

	t[5], C = bits.Add64(t[6], C, 0)
	t[6], _ = bits.Add64(0, D, C)
	// -----------------------------------
	// First loop

	C, t[0] = madd1(y[1], x[0], t[0])
	C, t[1] = madd2(y[1], x[1], t[1], C)
	C, t[2] = madd2(y[1], x[2], t[2], C)
	C, t[3] = madd2(y[1], x[3], t[3], C)
	C, t[4] = madd2(y[1], x[4], t[4], C)
	C, t[5] = madd2(y[1], x[5], t[5], C)

	t[6], D = bits.Add64(t[6], C, 0)

	// m = t[0]n'[0] mod W
	m = t[0] * qInvNeg

	// -----------------------------------
	// Second loop
	C = madd0(m, q0, t[0])
	C, t[0] = madd2(m, q1, t[1], C)
	C, t[1] = madd2(m, q2, t[2], C)
	C, t[2] = madd2(m, q3, t[3], C)
	C, t[3] = madd2(m, q4, t[4], C)
	C, t[4] = madd2(m, q5, t[5], C)

	t[5], C = bits.Add64(t[6], C, 0)
	t[6], _ = bits.Add64(0, D, C)
	// -----------------------------------
	// First loop

	C, t[0] = madd1(y[2], x[0], t[0])
	C, t[1] = madd2(y[2], x[1], t[1], C)
	C, t[2] = madd2(y[2], x[2], t[2], C)
	C, t[3] = madd2(y[2], x[3], t[3], C)
	C, t[4] = madd2(y[2], x[4], t[4], C)
	C, t[5] = madd2(y[2], x[5], t[5], C)

	t[6], D = bits.Add64(t[6], C, 0)

	// m = t[0]n'[0] mod W
	m = t[0] * qInvNeg

	// -----------------------------------
	// Second loop
	C = madd0(m, q0, t[0])
	C, t[0] = madd2(m, q1, t[1], C)
	C, t[1] = madd2(m, q2, t[2], C)
	C, t[2] = madd2(m, q3, t[3], C)
	C, t[3] = madd2(m, q4, t[4], C)
	C, t[4] = madd2(m, q5, t[5], C)

	t[5], C = bits.Add64(t[6], C, 0)
	t[6], _ = bits.Add64(0, D, C)
	// -----------------------------------
	// First loop

	C, t[0] = madd1(y[3], x[0], t[0])
	C, t[1] = madd2(y[3], x[1], t[1], C)
	C, t[2] = madd2(y[3], x[2], t[2], C)
	C, t[3] = madd2(y[3], x[3], t[3], C)
	C, t[4] = madd2(y[3], x[4], t[4], C)
	C, t[5] = madd2(y[3], x[5], t[5], C)

	t[6], D = bits.Add64(t[6], C, 0)

	// m = t[0]n'[0] mod W
	m = t[0] * qInvNeg

	// -----------------------------------
	// Second loop
	C = madd0(m, q0, t[0])
	C, t[0] = madd2(m, q1, t[1], C)
	C, t[1] = madd2(m, q2, t[2], C)
	C, t[2] = madd2(m, q3, t[3], C)
	C, t[3] = madd2(m, q4, t[4], C)
	C, t[4] = madd2(m, q5, t[5], C)

	t[5], C = bits.Add64(t[6], C, 0)
	t[6], _ = bits.Add64(0, D, C)
	// -----------------------------------
	// First loop

	C, t[0] = madd1(y[4], x[0], t[0])
	C, t[1] = madd2(y[4], x[1], t[1], C)
	C, t[2] = madd2(y[4], x[2], t[2], C)
	C, t[3] = madd2(y[4], x[3], t[3], C)
	C, t[4] = madd2(y[4], x[4], t[4], C)
	C, t[5] = madd2(y[4], x[5], t[5], C)

	t[6], D = bits.Add64(t[6], C, 0)

	// m = t[0]n'[0] mod W
	m = t[0] * qInvNeg

	// -----------------------------------
	// Second loop
	C = madd0(m, q0, t[0])
	C, t[0] = madd2(m, q1, t[1], C)
	C, t[1] = madd2(m, q2, t[2], C)
	C, t[2] = madd2(m, q3, t[3], C)
	C, t[3] = madd2(m, q4, t[4], C)
	C, t[4] = madd2(m, q5, t[5], C)

	t[5], C = bits.Add64(t[6], C, 0)
	t[6], _ = bits.Add64(0, D, C)
	// -----------------------------------
	// First loop

	C, t[0] = madd1(y[5], x[0], t[0])
	C, t[1] = madd2(y[5], x[1], t[1], C)
	C, t[2] = madd2(y[5], x[2], t[2], C)
	C, t[3] = madd2(y[5], x[3], t[3], C)
	C, t[4] = madd2(y[5], x[4], t[4], C)
	C, t[5] = madd2(y[5], x[5], t[5], C)

	t[6], D = bits.Add64(t[6], C, 0)

	// m = t[0]n'[0] mod W
	m = t[0] * qInvNeg

	// -----------------------------------
	// Second loop
	C = madd0(m, q0, t[0])
	C, t[0] = madd2(m, q1, t[1], C)
	C, t[1] = madd2(m, q2, t[2], C)
	C, t[2] = madd2(m, q3, t[3], C)
	C, t[3] = madd2(m, q4, t[4], C)
	C, t[4] = madd2(m, q5, t[5], C)

	t[5], C = bits.Add64(t[6], C, 0)
	t[6], _ = bits.Add64(0, D, C)

	if t[6] != 0 {
		// we need to reduce, we have a result on 7 words
		var b uint64
		z[0], b = bits.Sub64(t[0], q0, 0)
		z[1], b = bits.Sub64(t[1], q1, b)
		z[2], b = bits.Sub64(t[2], q2, b)
		z[3], b = bits.Sub64(t[3], q3, b)
		z[4], b = bits.Sub64(t[4], q4, b)
		z[5], _ = bits.Sub64(t[5], q5, b)
		return
	}

	// copy t into z
	z[0] = t[0]
	z[1] = t[1]
	z[2] = t[2]
	z[3] = t[3]
	z[4] = t[4]
	z[5] = t[5]

	// if z ⩾ q → z -= q
	if !z.smallerThanModulus() {
		var b uint64
		z[0], b = bits.Sub64(z[0], q0, 0)
		z[1], b = bits.Sub64(z[1], q1, b)
		z[2], b = bits.Sub64(z[2], q2, b)
		z[3], b = bits.Sub64(z[3], q3, b)
		z[4], b = bits.Sub64(z[4], q4, b)
		z[5], _ = bits.Sub64(z[5], q5, b)
	}
}

func _fromMontGeneric(z *Element) {
	// the following lines implement z = z * 1
	// with a modified CIOS montgomery multiplication
	// see Mul for algorithm documentation
	{
		// m = z[0]n'[0] mod W
		m := z[0] * qInvNeg
		C := madd0(m, q0, z[0])
		C, z[0] = madd2(m, q1, z[1], C)
		C, z[1] = madd2(m, q2, z[2], C)
		C, z[2] = madd2(m, q3, z[3], C)
		C, z[3] = madd2(m, q4, z[4], C)
		C, z[4] = madd2(m, q5, z[5], C)
		z[5] = C
	}
	{
		// m = z[0]n'[0] mod W
		m := z[0] * qInvNeg
		C := madd0(m, q0, z[0])
		C, z[0] = madd2(m, q1, z[1], C)
		C, z[1] = madd2(m, q2, z[2], C)
		C, z[2] = madd2(m, q3, z[3], C)
		C, z[3] = madd2(m, q4, z[4], C)
		C, z[4] = madd2(m, q5, z[5], C)
		z[5] = C
	}
	{
		// m = z[0]n'[0] mod W
		m := z[0] * qInvNeg
		C := madd0(m, q0, z[0])
		C, z[0] = madd2(m, q1, z[1], C)
		C, z[1] = madd2(m, q2, z[2], C)
		C, z[2] = madd2(m, q3, z[3], C)
		C, z[3] = madd2(m, q4, z[4], C)
		C, z[4] = madd2(m, q5, z[5], C)
		z[5] = C
	}
	{
		// m = z[0]n'[0] mod W
		m := z[0] * qInvNeg
		C := madd0(m, q0, z[0])
		C, z[0] = madd2(m, q1, z[1], C)
		C, z[1] = madd2(m, q2, z[2], C)
		C, z[2] = madd2(m, q3, z[3], C)
		C, z[3] = madd2(m, q4, z[4], C)
		C, z[4] = madd2(m, q5, z[5], C)
		z[5] = C
	}
	{
		// m = z[0]n'[0] mod W
		m := z[0] * qInvNeg
		C := madd0(m, q0, z[0])
		C, z[0] = madd2(m, q1, z[1], C)
		C, z[1] = madd2(m, q2, z[2], C)
		C, z[2] = madd2(m, q3, z[3], C)
		C, z[3] = madd2(m, q4, z[4], C)
		C, z[4] = madd2(m, q5, z[5], C)
		z[5] = C
	}
	{
		// m = z[0]n'[0] mod W
		m := z[0] * qInvNeg
		C := madd0(m, q0, z[0])
		C, z[0] = madd2(m, q1, z[1], C)
		C, z[1] = madd2(m, q2, z[2], C)
		C, z[2] = madd2(m, q3, z[3], C)
		C, z[3] = madd2(m, q4, z[4], C)
		C, z[4] = madd2(m, q5, z[5], C)
		z[5] = C
	}

	// if z ⩾ q → z -= q
	if !z.smallerThanModulus() {
		var b uint64
		z[0], b = bits.Sub64(z[0], q0, 0)
		z[1], b = bits.Sub64(z[1], q1, b)
		z[2], b = bits.Sub64(z[2], q2, b)
		z[3], b = bits.Sub64(z[3], q3, b)
		z[4], b = bits.Sub64(z[4], q4, b)
		z[5], _ = bits.Sub64(z[5], q5, b)
	}
}

func _reduceGeneric(z *Element) {

	// if z ⩾ q → z -= q
	if !z.smallerThanModulus() {
		var b uint64
		z[0], b = bits.Sub64(z[0], q0, 0)
		z[1], b = bits.Sub64(z[1], q1, b)
		z[2], b = bits.Sub64(z[2], q2, b)
		z[3], b = bits.Sub64(z[3], q3, b)
		z[4], b = bits.Sub64(z[4], q4, b)
		z[5], _ = bits.Sub64(z[5], q5, b)
	}
}

// BatchInvert returns a new slice with every element inverted.
// Uses Montgomery batch inversion trick
func BatchInvert(a []Element) []Element {
	res := make([]Element, len(a))
	if len(a) == 0 {
		return res
	}

	zeroes := make([]bool, len(a))
	accumulator := One()

	for i := 0; i < len(a); i++ {
		if a[i].IsZero() {
			zeroes[i] = true
			continue
		}
		res[i] = accumulator
		accumulator.Mul(&accumulator, &a[i])
	}

	accumulator.Inverse(&accumulator)

	for i := len(a) - 1; i >= 0; i-- {
		if zeroes[i] {
			continue
		}
		res[i].Mul(&res[i], &accumulator)
		accumulator.Mul(&accumulator, &a[i])
	}

	return res
}

func _butterflyGeneric(a, b *Element) {
	t := *a
	a.Add(a, b)
	b.Sub(&t, b)
}

// BitLen returns the minimum number of bits needed to represent z
// returns 0 if z == 0
func (z *Element) BitLen() int {
	if z[5] != 0 {
		return 320 + bits.Len64(z[5])
	}
	if z[4] != 0 {
		return 256 + bits.Len64(z[4])
	}
	if z[3] != 0 {
		return 192 + bits.Len64(z[3])
	}
	if z[2] != 0 {
		return 128 + bits.Len64(z[2])
	}
	if z[1] != 0 {
		return 64 + bits.Len64(z[1])
	}
	return bits.Len64(z[0])
}

// Hash msg to count prime field elements.
// https://tools.ietf.org/html/draft-irtf-cfrg-hash-to-curve-06#section-5.2
func Hash(msg, dst []byte, count int) ([]Element, error) {
	// 128 bits of security
	// L = ceil((ceil(log2(p)) + k) / 8), where k is the security parameter = 128
	const Bytes = 1 + (Bits-1)/8
	const L = 16 + Bytes

	lenInBytes := count * L
	pseudoRandomBytes, err := field.ExpandMsgXmd(msg, dst, lenInBytes)
	if err != nil {
		return nil, err
	}

	// get temporary big int from the pool
	vv := field.BigIntPool.Get()

	res := make([]Element, count)
	for i := 0; i < count; i++ {
		vv.SetBytes(pseudoRandomBytes[i*L : (i+1)*L])
		res[i].SetBigInt(vv)
	}

	// release object into pool
	field.BigIntPool.Put(vv)

	return res, nil
}

// Exp z = xᵏ (mod q)
func (z *Element) Exp(x Element, k *big.Int) *Element {
	if k.IsUint64() && k.Uint64() == 0 {
		return z.SetOne()
	}

	e := k
	if k.Sign() == -1 {
		// negative k, we invert
		// if k < 0: xᵏ (mod q) == (x⁻¹)ᵏ (mod q)
		x.Inverse(&x)

		// we negate k in a temp big.Int since
		// Int.Bit(_) of k and -k is different
		e = field.BigIntPool.Get()
		defer field.BigIntPool.Put(e)
		e.Neg(k)
	}

	z.Set(&x)

	for i := e.BitLen() - 2; i >= 0; i-- {
		z.Square(z)
		if e.Bit(i) == 1 {
			z.Mul(z, &x)
		}
	}

	return z
}

// rSquare where r is the Montgommery constant
// see section 2.3.2 of Tolga Acar's thesis
// https://www.microsoft.com/en-us/research/wp-content/uploads/1998/06/97Acar.pdf
var rSquare = Element{
	17644856173732828998,
	754043588434789617,
	10224657059481499349,
	7488229067341005760,
	11130996698012816685,
	1267921511277847466,
}

// toMont converts z to Montgomery form
// sets and returns z = z * r²
func (z *Element) toMont() *Element {
	return z.Mul(z, &rSquare)
}

// String returns the decimal representation of z as generated by
// z.Text(10).
func (z *Element) String() string {
	return z.Text(36)
}

// toBigInt returns z as a big.Int in Montgomery form
func (z *Element) toBigInt(res *big.Int) *big.Int {
	var b [Bytes]byte
	binary.BigEndian.PutUint64(b[40:48], z[0])
	binary.BigEndian.PutUint64(b[32:40], z[1])
	binary.BigEndian.PutUint64(b[24:32], z[2])
	binary.BigEndian.PutUint64(b[16:24], z[3])
	binary.BigEndian.PutUint64(b[8:16], z[4])
	binary.BigEndian.PutUint64(b[0:8], z[5])

	return res.SetBytes(b[:])
}

// Text returns the string representation of z in the given base.
// Base must be between 2 and 36, inclusive. The result uses the
// lower-case letters 'a' to 'z' for digit values 10 to 35.
// No prefix (such as "0x") is added to the string. If z is a nil
// pointer it returns "<nil>".
// If base == 10 and -z fits in a uint16 prefix "-" is added to the string.
func (z *Element) Text(base int) string {
	if base < 2 || base > 36 {
		panic("invalid base")
	}
	if z == nil {
		return "<nil>"
	}

	const maxUint16 = 65535
	if base == 10 {
		var zzNeg Element
		zzNeg.Neg(z)
		zzNeg.FromMont()
		if zzNeg.FitsOnOneWord() && zzNeg[0] <= maxUint16 && zzNeg[0] != 0 {
			return "-" + strconv.FormatUint(zzNeg[0], base)
		}
	}
	zz := *z
	zz.FromMont()
	if zz.FitsOnOneWord() {
		return strconv.FormatUint(zz[0], base)
	}
	vv := field.BigIntPool.Get()
	r := zz.toBigInt(vv).Text(base)
	field.BigIntPool.Put(vv)
	return r
}

// BigInt sets and return z as a *big.Int
func (z *Element) BigInt(res *big.Int) *big.Int {
	_z := *z
	_z.FromMont()
	return _z.toBigInt(res)
}

// ToBigIntRegular returns z as a big.Int in regular form
//
// Deprecated: use BigInt(*big.Int) instead
func (z Element) ToBigIntRegular(res *big.Int) *big.Int {
	z.FromMont()
	return z.toBigInt(res)
}

// Bits provides access to z by returning its value as a little-endian [6]uint64 array.
// Bits is intended to support implementation of missing low-level Element
// functionality outside this package; it should be avoided otherwise.
func (z *Element) Bits() [6]uint64 {
	_z := *z
	fromMont(&_z)
	return _z
}

// Bytes returns the value of z as a big-endian byte array
func (z *Element) Bytes() (res [Bytes]byte) {
	BigEndian.PutElement(&res, *z)
	return
}

// Marshal returns the value of z as a big-endian byte slice
func (z *Element) Marshal() []byte {
	b := z.Bytes()
	return b[:]
}

// SetBytes interprets e as the bytes of a big-endian unsigned integer,
// sets z to that value, and returns z.
func (z *Element) SetBytes(e []byte) *Element {
	if len(e) == Bytes {
		// fast path
		v, err := BigEndian.Element((*[Bytes]byte)(e))
		if err == nil {
			*z = v
			return z
		}
	}

	// slow path.
	// get a big int from our pool
	vv := field.BigIntPool.Get()
	vv.SetBytes(e)

	// set big int
	z.SetBigInt(vv)

	// put temporary object back in pool
	field.BigIntPool.Put(vv)

	return z
}

// SetBytesCanonical interprets e as the bytes of a big-endian 48-byte integer.
// If e is not a 48-byte slice or encodes a value higher than q,
// SetBytesCanonical returns an error.
func (z *Element) SetBytesCanonical(e []byte) error {
	if len(e) != Bytes {
		return errors.New("invalid fp.Element encoding")
	}
	v, err := BigEndian.Element((*[Bytes]byte)(e))
	if err != nil {
		return err
	}
	*z = v
	return nil
}

// SetBigInt sets z to v and returns z
func (z *Element) SetBigInt(v *big.Int) *Element {
	z.SetZero()

	var zero big.Int

	// fast path
	c := v.Cmp(&_modulus)
	if c == 0 {
		// v == 0
		return z
	} else if c != 1 && v.Cmp(&zero) != -1 {
		// 0 < v < q
		return z.setBigInt(v)
	}

	// get temporary big int from the pool
	vv := field.BigIntPool.Get()

	// copy input + modular reduction
	vv.Mod(v, &_modulus)

	// set big int byte value
	z.setBigInt(vv)

	// release object into pool
	field.BigIntPool.Put(vv)
	return z
}

// setBigInt assumes 0 ⩽ v < q
func (z *Element) setBigInt(v *big.Int) *Element {
	vBits := v.Bits()

	if bits.UintSize == 64 {
		for i := 0; i < len(vBits); i++ {
			z[i] = uint64(vBits[i])
		}
	} else {
		for i := 0; i < len(vBits); i++ {
			if i%2 == 0 {
				z[i/2] = uint64(vBits[i])
			} else {
				z[i/2] |= uint64(vBits[i]) << 32
			}
		}
	}

	return z.toMont()
}

// SetString creates a big.Int with number and calls SetBigInt on z
//
// The number prefix determines the actual base: A prefix of
// ”0b” or ”0B” selects base 2, ”0”, ”0o” or ”0O” selects base 8,
// and ”0x” or ”0X” selects base 16. Otherwise, the selected base is 10
// and no prefix is accepted.
//
// For base 16, lower and upper case letters are considered the same:
// The letters 'a' to 'f' and 'A' to 'F' represent digit values 10 to 15.
//
// An underscore character ”_” may appear between a base
// prefix and an adjacent digit, and between successive digits; such
// underscores do not change the value of the number.
// Incorrect placement of underscores is reported as a panic if there
// are no other errors.
//
// If the number is invalid this method leaves z unchanged and returns nil, error.
func (z *Element) SetString(number string) (*Element, error) {
	// get temporary big int from the pool
	vv := field.BigIntPool.Get()

	if _, ok := vv.SetString(number, 0); !ok {
		return nil, errors.New("Element.SetString failed -> can't parse number into a big.Int " + number)
	}

	z.SetBigInt(vv)

	// release object into pool
	field.BigIntPool.Put(vv)

	return z, nil
}

// MarshalJSON returns json encoding of z (z.Text(10))
// If z == nil, returns null
func (z *Element) MarshalJSON() ([]byte, error) {
	if z == nil {
		return []byte("null"), nil
	}
	const maxSafeBound = 15 // we encode it as number if it's small
	s := z.Text(10)
	if len(s) <= maxSafeBound {
		return []byte(s), nil
	}
	var sbb strings.Builder
	sbb.WriteByte('"')
	sbb.WriteString(s)
	sbb.WriteByte('"')
	return []byte(sbb.String()), nil
}

// UnmarshalJSON accepts numbers and strings as input
// See Element.SetString for valid prefixes (0x, 0b, ...)
func (z *Element) UnmarshalJSON(data []byte) error {
	s := string(data)
	if len(s) > Bits*3 {
		return errors.New("value too large (max = Element.Bits * 3)")
	}

	// we accept numbers and strings, remove leading and trailing quotes if any
	if len(s) > 0 && s[0] == '"' {
		s = s[1:]
	}
	if len(s) > 0 && s[len(s)-1] == '"' {
		s = s[:len(s)-1]
	}

	// get temporary big int from the pool
	vv := field.BigIntPool.Get()

	if _, ok := vv.SetString(s, 0); !ok {
		return errors.New("can't parse into a big.Int: " + s)
	}

	z.SetBigInt(vv)

	// release object into pool
	field.BigIntPool.Put(vv)
	return nil
}

// A ByteOrder specifies how to convert byte slices into a Element
type ByteOrder interface {
	Element(*[Bytes]byte) (Element, error)
	PutElement(*[Bytes]byte, Element)
	String() string
}

// BigEndian is the big-endian implementation of ByteOrder and AppendByteOrder.
var BigEndian bigEndian

type bigEndian struct{}

// Element interpret b is a big-endian 48-byte slice.
// If b encodes a value higher than q, Element returns error.
func (bigEndian) Element(b *[Bytes]byte) (Element, error) {
	var z Element
	z[0] = binary.BigEndian.Uint64((*b)[40:48])
	z[1] = binary.BigEndian.Uint64((*b)[32:40])
	z[2] = binary.BigEndian.Uint64((*b)[24:32])
	z[3] = binary.BigEndian.Uint64((*b)[16:24])
	z[4] = binary.BigEndian.Uint64((*b)[8:16])
	z[5] = binary.BigEndian.Uint64((*b)[0:8])

	if !z.smallerThanModulus() {
		return Element{}, errors.New("invalid fp.Element encoding")
	}

	z.toMont()
	return z, nil
}

func (bigEndian) PutElement(b *[Bytes]byte, e Element) {
	e.FromMont()
	binary.BigEndian.PutUint64((*b)[40:48], e[0])
	binary.BigEndian.PutUint64((*b)[32:40], e[1])
	binary.BigEndian.PutUint64((*b)[24:32], e[2])
	binary.BigEndian.PutUint64((*b)[16:24], e[3])
	binary.BigEndian.PutUint64((*b)[8:16], e[4])
	binary.BigEndian.PutUint64((*b)[0:8], e[5])
}

func (bigEndian) String() string { return "BigEndian" }

// LittleEndian is the little-endian implementation of ByteOrder and AppendByteOrder.
var LittleEndian littleEndian

type littleEndian struct{}

func (littleEndian) Element(b *[Bytes]byte) (Element, error) {
	var z Element
	z[0] = binary.LittleEndian.Uint64((*b)[0:8])
	z[1] = binary.LittleEndian.Uint64((*b)[8:16])
	z[2] = binary.LittleEndian.Uint64((*b)[16:24])
	z[3] = binary.LittleEndian.Uint64((*b)[24:32])
	z[4] = binary.LittleEndian.Uint64((*b)[32:40])
	z[5] = binary.LittleEndian.Uint64((*b)[40:48])

	if !z.smallerThanModulus() {
		return Element{}, errors.New("invalid fp.Element encoding")
	}

	z.toMont()
	return z, nil
}

func (littleEndian) PutElement(b *[Bytes]byte, e Element) {
	e.FromMont()
	binary.LittleEndian.PutUint64((*b)[0:8], e[0])
	binary.LittleEndian.PutUint64((*b)[8:16], e[1])
	binary.LittleEndian.PutUint64((*b)[16:24], e[2])
	binary.LittleEndian.PutUint64((*b)[24:32], e[3])
	binary.LittleEndian.PutUint64((*b)[32:40], e[4])
	binary.LittleEndian.PutUint64((*b)[40:48], e[5])
}

func (littleEndian) String() string { return "LittleEndian" }

// Legendre returns the Legendre symbol of z (either +1, -1, or 0.)
func (z *Element) Legendre() int {
	var l Element
	// z^((q-1)/2)
	l.expByLegendreExp(*z)

	if l.IsZero() {
		return 0
	}

	// if l == 1
	if l.IsOne() {
		return 1
	}
	return -1
}

// Sqrt z = √x (mod q)
// if the square root doesn't exist (x is not a square mod q)
// Sqrt leaves z unchanged and returns nil
func (z *Element) Sqrt(x *Element) *Element {
	// q ≡ 3 (mod 4)
	// using  z ≡ ± x^((p+1)/4) (mod q)
	var y, square Element
	y.expBySqrtExp(*x)
	// as we didn't compute the legendre symbol, ensure we found y such that y * y = x
	square.Square(&y)
	if square.Equal(x) {
		return z.Set(&y)
	}
	return nil
}

const (
	k               = 32 // word size / 2
	signBitSelector = uint64(1) << 63
	approxLowBitsN  = k - 1
	approxHighBitsN = k + 1
)

const (
	inversionCorrectionFactorWord0 = 8737414717120368535
	inversionCorrectionFactorWord1 = 10094300570241649429
	inversionCorrectionFactorWord2 = 6339946188669102923
	inversionCorrectionFactorWord3 = 10492640117780001228
	inversionCorrectionFactorWord4 = 12201317704601795701
	inversionCorrectionFactorWord5 = 1158882751927031822
	invIterationsN                 = 26
)

// Inverse z = x⁻¹ (mod q)
//
// if x == 0, sets and returns z = x
func (z *Element) Inverse(x *Element) *Element {
	// Implements "Optimized Binary GCD for Modular Inversion"
	// https://github.com/pornin/bingcd/blob/main/doc/bingcd.pdf

	a := *x
	b := Element{
		q0,
		q1,
		q2,
		q3,
		q4,
		q5,
	} // b := q

	u := Element{1}

	// Update factors: we get [u; v] ← [f₀ g₀; f₁ g₁] [u; v]
	// cᵢ = fᵢ + 2³¹ - 1 + 2³² * (gᵢ + 2³¹ - 1)
	var c0, c1 int64

	// Saved update factors to reduce the number of field multiplications
	var pf0, pf1, pg0, pg1 int64

	var i uint

	var v, s Element

	// Since u,v are updated every other iteration, we must make sure we terminate after evenly many iterations
	// This also lets us get away with half as many updates to u,v
	// To make this constant-time-ish, replace the condition with i < invIterationsN
	for i = 0; i&1 == 1 || !a.IsZero(); i++ {
		n := max(a.BitLen(), b.BitLen())
		aApprox, bApprox := approximate(&a, n), approximate(&b, n)

		// f₀, g₀, f₁, g₁ = 1, 0, 0, 1
		c0, c1 = updateFactorIdentityMatrixRow0, updateFactorIdentityMatrixRow1

		for j := 0; j < approxLowBitsN; j++ {

			// -2ʲ < f₀, f₁ ≤ 2ʲ
			// |f₀| + |f₁| < 2ʲ⁺¹

			if aApprox&1 == 0 {
				aApprox /= 2
			} else {
				s, borrow := bits.Sub64(aApprox, bApprox, 0)
				if borrow == 1 {
					s = bApprox - aApprox
					bApprox = aApprox
					c0, c1 = c1, c0
					// invariants unchanged
				}

				aApprox = s / 2
				c0 = c0 - c1

				// Now |f₀| < 2ʲ⁺¹ ≤ 2ʲ⁺¹ (only the weaker inequality is needed, strictly speaking)
				// Started with f₀ > -2ʲ and f₁ ≤ 2ʲ, so f₀ - f₁ > -2ʲ⁺¹
				// Invariants unchanged for f₁
			}

			c1 *= 2
			// -2ʲ⁺¹ < f₁ ≤ 2ʲ⁺¹
			// So now |f₀| + |f₁| < 2ʲ⁺²
		}

		s = a

		var g0 int64
		// from this point on c0 aliases for f0
		c0, g0 = updateFactorsDecompose(c0)
		aHi := a.linearCombNonModular(&s, c0, &b, g0)
		if aHi&signBitSelector != 0 {
			// if aHi < 0
			c0, g0 = -c0, -g0
			aHi = negL(&a, aHi)
		}
		// right-shift a by k-1 bits
		a[0] = (a[0] >> approxLowBitsN) | ((a[1]) << approxHighBitsN)
		a[1] = (a[1] >> approxLowBitsN) | ((a[2]) << approxHighBitsN)
		a[2] = (a[2] >> approxLowBitsN) | ((a[3]) << approxHighBitsN)
		a[3] = (a[3] >> approxLowBitsN) | ((a[4]) << approxHighBitsN)
		a[4] = (a[4] >> approxLowBitsN) | ((a[5]) << approxHighBitsN)
		a[5] = (a[5] >> approxLowBitsN) | (aHi << approxHighBitsN)

		var f1 int64
		// from this point on c1 aliases for g0
		f1, c1 = updateFactorsDecompose(c1)
		bHi := b.linearCombNonModular(&s, f1, &b, c1)
		if bHi&signBitSelector != 0 {
			// if bHi < 0
			f1, c1 = -f1, -c1
			bHi = negL(&b, bHi)
		}
		// right-shift b by k-1 bits
		b[0] = (b[0] >> approxLowBitsN) | ((b[1]) << approxHighBitsN)
		b[1] = (b[1] >> approxLowBitsN) | ((b[2]) << approxHighBitsN)
		b[2] = (b[2] >> approxLowBitsN) | ((b[3]) << approxHighBitsN)
		b[3] = (b[3] >> approxLowBitsN) | ((b[4]) << approxHighBitsN)
		b[4] = (b[4] >> approxLowBitsN) | ((b[5]) << approxHighBitsN)
		b[5] = (b[5] >> approxLowBitsN) | (bHi << approxHighBitsN)

		if i&1 == 1 {
			// Combine current update factors with previously stored ones
			// [F₀, G₀; F₁, G₁] ← [f₀, g₀; f₁, g₁] [pf₀, pg₀; pf₁, pg₁], with capital letters denoting new combined values
			// We get |F₀| = | f₀pf₀ + g₀pf₁ | ≤ |f₀pf₀| + |g₀pf₁| = |f₀| |pf₀| + |g₀| |pf₁| ≤ 2ᵏ⁻¹|pf₀| + 2ᵏ⁻¹|pf₁|
			// = 2ᵏ⁻¹ (|pf₀| + |pf₁|) < 2ᵏ⁻¹ 2ᵏ = 2²ᵏ⁻¹
			// So |F₀| < 2²ᵏ⁻¹ meaning it fits in a 2k-bit signed register

			// c₀ aliases f₀, c₁ aliases g₁
			c0, g0, f1, c1 = c0*pf0+g0*pf1,
				c0*pg0+g0*pg1,
				f1*pf0+c1*pf1,
				f1*pg0+c1*pg1

			s = u

			// 0 ≤ u, v < 2²⁵⁵
			// |F₀|, |G₀| < 2⁶³
			u.linearComb(&u, c0, &v, g0)
			// |F₁|, |G₁| < 2⁶³
			v.linearComb(&s, f1, &v, c1)

		} else {
			// Save update factors
			pf0, pg0, pf1, pg1 = c0, g0, f1, c1
		}
	}

	// For every iteration that we miss, v is not being multiplied by 2ᵏ⁻²
	const pSq uint64 = 1 << (2 * (k - 1))
	a = Element{pSq}
	// If the function is constant-time ish, this loop will not run (no need to take it out explicitly)
	for ; i < invIterationsN; i += 2 {
		// could optimize further with mul by word routine or by pre-computing a table since with k=26,
		// we would multiply by pSq up to 13times;
		// on x86, the assembly routine outperforms generic code for mul by word
		// on arm64, we may loose up to ~5% for 6 limbs
		v.Mul(&v, &a)
	}

	u.Set(x) // for correctness check

	z.Mul(&v, &Element{
		inversionCorrectionFactorWord0,
		inversionCorrectionFactorWord1,
		inversionCorrectionFactorWord2,
		inversionCorrectionFactorWord3,
		inversionCorrectionFactorWord4,
		inversionCorrectionFactorWord5,
	})

	// correctness check
	v.Mul(&u, z)
	if !v.IsOne() && !u.IsZero() {
		return z.inverseExp(u)
	}

	return z
}

// inverseExp computes z = x⁻¹ (mod q) = x**(q-2) (mod q)
func (z *Element) inverseExp(x Element) *Element {
	// e == q-2
	e := Modulus()
	e.Sub(e, big.NewInt(2))

	z.Set(&x)

	for i := e.BitLen() - 2; i >= 0; i-- {
		z.Square(z)
		if e.Bit(i) == 1 {
			z.Mul(z, &x)
		}
	}

	return z
}

// approximate a big number x into a single 64 bit word using its uppermost and lowermost bits
// if x fits in a word as is, no approximation necessary
func approximate(x *Element, nBits int) uint64 {

	if nBits <= 64 {
		return x[0]
	}

	const mask = (uint64(1) << (k - 1)) - 1 // k-1 ones
	lo := mask & x[0]

	hiWordIndex := (nBits - 1) / 64

	hiWordBitsAvailable := nBits - hiWordIndex*64
	hiWordBitsUsed := min(hiWordBitsAvailable, approxHighBitsN)

	mask_ := uint64(^((1 << (hiWordBitsAvailable - hiWordBitsUsed)) - 1))
	hi := (x[hiWordIndex] & mask_) << (64 - hiWordBitsAvailable)

	mask_ = ^(1<<(approxLowBitsN+hiWordBitsUsed) - 1)
	mid := (mask_ & x[hiWordIndex-1]) >> hiWordBitsUsed

	return lo | mid | hi
}

// linearComb z = xC * x + yC * y;
// 0 ≤ x, y < 2³⁸¹
// |xC|, |yC| < 2⁶³
func (z *Element) linearComb(x *Element, xC int64, y *Element, yC int64) {
	// | (hi, z) | < 2 * 2⁶³ * 2³⁸¹ = 2⁴⁴⁵
	// therefore | hi | < 2⁶¹ ≤ 2⁶³
	hi := z.linearCombNonModular(x, xC, y, yC)
	z.montReduceSigned(z, hi)
}

// montReduceSigned z = (xHi * r + x) * r⁻¹ using the SOS algorithm
// Requires |xHi| < 2⁶³. Most significant bit of xHi is the sign bit.
func (z *Element) montReduceSigned(x *Element, xHi uint64) {
	const signBitRemover = ^signBitSelector
	mustNeg := xHi&signBitSelector != 0
	// the SOS implementation requires that most significant bit is 0
	// Let X be xHi*r + x
	// If X is negative we would have initially stored it as 2⁶⁴ r + X (à la 2's complement)
	xHi &= signBitRemover
	// with this a negative X is now represented as 2⁶³ r + X

	var t [2*Limbs - 1]uint64
	var C uint64

	m := x[0] * qInvNeg

	C = madd0(m, q0, x[0])
	C, t[1] = madd2(m, q1, x[1], C)
	C, t[2] = madd2(m, q2, x[2], C)
	C, t[3] = madd2(m, q3, x[3], C)
	C, t[4] = madd2(m, q4, x[4], C)
	C, t[5] = madd2(m, q5, x[5], C)

	// m * qElement[5] ≤ (2⁶⁴ - 1) * (2⁶³ - 1) = 2¹²⁷ - 2⁶⁴ - 2⁶³ + 1
	// x[5] + C ≤ 2*(2⁶⁴ - 1) = 2⁶⁵ - 2
	// On LHS, (C, t[5]) ≤ 2¹²⁷ - 2⁶⁴ - 2⁶³ + 1 + 2⁶⁵ - 2 = 2¹²⁷ + 2⁶³ - 1
	// So on LHS, C ≤ 2⁶³
	t[6] = xHi + C
	// xHi + C < 2⁶³ + 2⁶³ = 2⁶⁴

	// <standard SOS>
	{
		const i = 1
		m = t[i] * qInvNeg

		C = madd0(m, q0, t[i+0])
		C, t[i+1] = madd2(m, q1, t[i+1], C)
		C, t[i+2] = madd2(m, q2, t[i+2], C)
		C, t[i+3] = madd2(m, q3, t[i+3], C)
		C, t[i+4] = madd2(m, q4, t[i+4], C)
		C, t[i+5] = madd2(m, q5, t[i+5], C)

		t[i+Limbs] += C
	}
	{
		const i = 2
		m = t[i] * qInvNeg

		C = madd0(m, q0, t[i+0])
		C, t[i+1] = madd2(m, q1, t[i+1], C)
		C, t[i+2] = madd2(m, q2, t[i+2], C)
		C, t[i+3] = madd2(m, q3, t[i+3], C)
		C, t[i+4] = madd2(m, q4, t[i+4], C)
		C, t[i+5] = madd2(m, q5, t[i+5], C)

		t[i+Limbs] += C
	}
	{
		const i = 3
		m = t[i] * qInvNeg

		C = madd0(m, q0, t[i+0])
		C, t[i+1] = madd2(m, q1, t[i+1], C)
		C, t[i+2] = madd2(m, q2, t[i+2], C)
		C, t[i+3] = madd2(m, q3, t[i+3], C)
		C, t[i+4] = madd2(m, q4, t[i+4], C)
		C, t[i+5] = madd2(m, q5, t[i+5], C)

		t[i+Limbs] += C
	}
	{
		const i = 4
		m = t[i] * qInvNeg

		C = madd0(m, q0, t[i+0])
		C, t[i+1] = madd2(m, q1, t[i+1], C)
		C, t[i+2] = madd2(m, q2, t[i+2], C)
		C, t[i+3] = madd2(m, q3, t[i+3], C)
		C, t[i+4] = madd2(m, q4, t[i+4], C)
		C, t[i+5] = madd2(m, q5, t[i+5], C)

		t[i+Limbs] += C
	}
	{
		const i = 5
		m := t[i] * qInvNeg

		C = madd0(m, q0, t[i+0])
		C, z[0] = madd2(m, q1, t[i+1], C)
		C, z[1] = madd2(m, q2, t[i+2], C)
		C, z[2] = madd2(m, q3, t[i+3], C)
		C, z[3] = madd2(m, q4, t[i+4], C)
		z[5], z[4] = madd2(m, q5, t[i+5], C)
	}

	// if z ⩾ q → z -= q
	if !z.smallerThanModulus() {
		var b uint64
		z[0], b = bits.Sub64(z[0], q0, 0)
		z[1], b = bits.Sub64(z[1], q1, b)
		z[2], b = bits.Sub64(z[2], q2, b)
		z[3], b = bits.Sub64(z[3], q3, b)
		z[4], b = bits.Sub64(z[4], q4, b)
		z[5], _ = bits.Sub64(z[5], q5, b)
	}
	// </standard SOS>

	if mustNeg {
		// We have computed ( 2⁶³ r + X ) r⁻¹ = 2⁶³ + X r⁻¹ instead
		var b uint64
		z[0], b = bits.Sub64(z[0], signBitSelector, 0)
		z[1], b = bits.Sub64(z[1], 0, b)
		z[2], b = bits.Sub64(z[2], 0, b)
		z[3], b = bits.Sub64(z[3], 0, b)
		z[4], b = bits.Sub64(z[4], 0, b)
		z[5], b = bits.Sub64(z[5], 0, b)

		// Occurs iff x == 0 && xHi < 0, i.e. X = rX' for -2⁶³ ≤ X' < 0

		if b != 0 {
			// z[5] = -1
			// negative: add q
			const neg1 = 0xFFFFFFFFFFFFFFFF

			var carry uint64

			z[0], carry = bits.Add64(z[0], q0, 0)
			z[1], carry = bits.Add64(z[1], q1, carry)
			z[2], carry = bits.Add64(z[2], q2, carry)
			z[3], carry = bits.Add64(z[3], q3, carry)
			z[4], carry = bits.Add64(z[4], q4, carry)
			z[5], _ = bits.Add64(neg1, q5, carry)
		}
	}
}

const (
	updateFactorsConversionBias    int64 = 0x7fffffff7fffffff // (2³¹ - 1)(2³² + 1)
	updateFactorIdentityMatrixRow0       = 1
	updateFactorIdentityMatrixRow1       = 1 << 32
)

func updateFactorsDecompose(c int64) (int64, int64) {
	c += updateFactorsConversionBias
	const low32BitsFilter int64 = 0xFFFFFFFF
	f := c&low32BitsFilter - 0x7FFFFFFF
	g := c>>32&low32BitsFilter - 0x7FFFFFFF
	return f, g
}

// negL negates in place [x | xHi] and return the new most significant word xHi
func negL(x *Element, xHi uint64) uint64 {
	var b uint64

	x[0], b = bits.Sub64(0, x[0], 0)
	x[1], b = bits.Sub64(0, x[1], b)
	x[2], b = bits.Sub64(0, x[2], b)
	x[3], b = bits.Sub64(0, x[3], b)
	x[4], b = bits.Sub64(0, x[4], b)
	x[5], b = bits.Sub64(0, x[5], b)
	xHi, _ = bits.Sub64(0, xHi, b)

	return xHi
}

// mulWNonModular multiplies by one word in non-montgomery, without reducing
func (z *Element) mulWNonModular(x *Element, y int64) uint64 {

	// w := abs(y)
	m := y >> 63
	w := uint64((y ^ m) - m)

	var c uint64
	c, z[0] = bits.Mul64(x[0], w)
	c, z[1] = madd1(x[1], w, c)
	c, z[2] = madd1(x[2], w, c)
	c, z[3] = madd1(x[3], w, c)
	c, z[4] = madd1(x[4], w, c)
	c, z[5] = madd1(x[5], w, c)

	if y < 0 {
		c = negL(z, c)
	}

	return c
}

// linearCombNonModular computes a linear combination without modular reduction
func (z *Element) linearCombNonModular(x *Element, xC int64, y *Element, yC int64) uint64 {
	var yTimes Element

	yHi := yTimes.mulWNonModular(y, yC)
	xHi := z.mulWNonModular(x, xC)

	var carry uint64
	z[0], carry = bits.Add64(z[0], yTimes[0], 0)
	z[1], carry = bits.Add64(z[1], yTimes[1], carry)
	z[2], carry = bits.Add64(z[2], yTimes[2], carry)
	z[3], carry = bits.Add64(z[3], yTimes[3], carry)
	z[4], carry = bits.Add64(z[4], yTimes[4], carry)
	z[5], carry = bits.Add64(z[5], yTimes[5], carry)

	yHi, _ = bits.Add64(xHi, yHi, carry)

	return yHi
}
