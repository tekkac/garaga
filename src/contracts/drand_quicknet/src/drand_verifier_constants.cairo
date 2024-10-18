use garaga::definitions::{G2Line, G2Point, u384};


pub const G2_GEN: G2Point =
    G2Point {
        x0: u384 {
            limb0: 0xa805bbefd48056c8c121bdb8,
            limb1: 0xb4510b647ae3d1770bac0326,
            limb2: 0x2dc51051c6e47ad4fa403b02,
            limb3: 0x24aa2b2f08f0a9126080527
        },
        x1: u384 {
            limb0: 0x13945d57e5ac7d055d042b7e,
            limb1: 0xb5da61bbdc7f5049334cf112,
            limb2: 0x88274f65596bd0d09920b61a,
            limb3: 0x13e02b6052719f607dacd3a0
        },
        y0: u384 {
            limb0: 0x3baca289e193548608b82801,
            limb1: 0x6d429a695160d12c923ac9cc,
            limb2: 0xda2e351aadfd9baa8cbdd3a7,
            limb3: 0xce5d527727d6e118cc9cdc6
        },
        y1: u384 {
            limb0: 0x5cec1da1aaa9075ff05f79be,
            limb1: 0x267492ab572e99ab3f370d27,
            limb2: 0x2bc28b99cb3e287e85a763af,
            limb3: 0x606c4a02ea734cc32acd2b0
        }
    };

pub const precomputed_lines: [
    G2Line
    ; 136] = [
    G2Line {
        r0a0: u384 {
            limb0: 0x36701a5831c9fb39250e2ea9,
            limb1: 0x26ad0ec05ad6440f1df034cf,
            limb2: 0x67cd27cf7598a85f81c23cd9,
            limb3: 0x15a76ee3d8d1c3451005d560
        },
        r0a1: u384 {
            limb0: 0x9009367bbf6e6aa19488df66,
            limb1: 0xce5cd2ccda4704dc0e4b92b6,
            limb2: 0xd7656829a6a71c42deb7dd,
            limb3: 0x16d96e785c797fb5d6afcb14
        },
        r1a0: u384 {
            limb0: 0x9d68b0bdf431a2f53189c109,
            limb1: 0x70e39167384e44fdaf716fa4,
            limb2: 0x3768099390a3f9d581d88280,
            limb3: 0x4c208bdb300097927393e96
        },
        r1a1: u384 {
            limb0: 0x68ab4b88cf058f147ba2cda9,
            limb1: 0xce3b4d4da03cbdac75933b54,
            limb2: 0x1be2f7e6eaa0f1474cb64c53,
            limb3: 0x546ca700477f9c2f9def969
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x96e0f84058018a4538d64e8b,
            limb1: 0xdb7b84172cb1e68ddd09eb12,
            limb2: 0xcf3aaa45c2b370e810ea9361,
            limb3: 0x14b92565b748c30f253912c6
        },
        r0a1: u384 {
            limb0: 0x9cdcddf4728a38086aebcd7,
            limb1: 0x7b8d9115b96656327dd79780,
            limb2: 0xbf914addbdcbe307142bf7cc,
            limb3: 0x3c50d0829bdc305ff694cc9
        },
        r1a0: u384 {
            limb0: 0xcc0dbe864e35231bdec2ef76,
            limb1: 0x4efa339ef551d8f751da95ba,
            limb2: 0xfde5910a13d5c428549ed3f5,
            limb3: 0x105e4803f5b8472a138e00b
        },
        r1a1: u384 {
            limb0: 0x584879d210eb30bfd6518cf2,
            limb1: 0xa7c4af01b40d0e68243b050c,
            limb2: 0xade596dd94a41e4aedec2196,
            limb3: 0x162a46f819eba8e3b9d215f9
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xaa37b5f455262931a4a4b667,
            limb1: 0xd63d75f6f171228540731ca7,
            limb2: 0x1855073ef14fe67beee9ec53,
            limb3: 0x703f29e5b69ff1dd1441781
        },
        r0a1: u384 {
            limb0: 0x310c4b87c8dca9036f6be0c0,
            limb1: 0x4b940b400d665d605ca8924b,
            limb2: 0x6d53ff2907765e3888b9709e,
            limb3: 0x166de077ba25fe21aafb8d8
        },
        r1a0: u384 {
            limb0: 0xa28a55b43c534d6caa724f82,
            limb1: 0x5f55bbeb19616aec79892386,
            limb2: 0x3aacfc3b6bd889cf57af9e40,
            limb3: 0x72ff7d1d3328dbb7c821e1
        },
        r1a1: u384 {
            limb0: 0xd5e91f70851719038228e756,
            limb1: 0xb4f970b567fc2d6738d65700,
            limb2: 0x8c886fe7294c08b41dc5dcbe,
            limb3: 0x782b1bf6e81fef26d367768
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x8d8ec958debf40520de5d867,
            limb1: 0x57bad55eb06d937414e80cc9,
            limb2: 0xcb178ebae0f48eb14ad4fba0,
            limb3: 0x13aa75258cc1d54eb767a47e
        },
        r0a1: u384 {
            limb0: 0x7aec4216b9f9e33aa4f5af6,
            limb1: 0x607eabc6cb65b9f4b850a042,
            limb2: 0x1d93b61b06f4e64902410902,
            limb3: 0x1860921bbe145ede9350b867
        },
        r1a0: u384 {
            limb0: 0xe104b73f6d12d90e3c339c6c,
            limb1: 0x27bab1ac67f3132355d4c1a0,
            limb2: 0x63ecc80d6bd96b3d592f63d9,
            limb3: 0xdcb608c9ce643f854507b05
        },
        r1a1: u384 {
            limb0: 0xe3895865374c9b06b8d02a7f,
            limb1: 0x8c09a76a05340ce642b99a1a,
            limb2: 0x4a4afdbe107c0182cfe2e6e7,
            limb3: 0x1056de76a10fe55b2659ea44
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x6a72f085ee4e78bd4c2aef8e,
            limb1: 0xdec05cffe4a869aed2a64ee8,
            limb2: 0xd41aa908b1a833b94e768d2,
            limb3: 0x56ceab5d5d994dee0ca07fc
        },
        r0a1: u384 {
            limb0: 0xd23aad6cd3e84e398a4e7bc8,
            limb1: 0xb343a6878db6ec20bcac1275,
            limb2: 0x3111e14b674a67295a242cf3,
            limb3: 0x39b596a976f556e5ea4016a
        },
        r1a0: u384 {
            limb0: 0x19fcdcac7feb1f0edbefdbf8,
            limb1: 0x71bc60f1a68459eb52df6a92,
            limb2: 0x2827dbba9d5d8516fb557dfb,
            limb3: 0x4786cc02b147d13e701c1f5
        },
        r1a1: u384 {
            limb0: 0xcb7555c0db86510eb99cfadd,
            limb1: 0x43387d10f8329296e43e6610,
            limb2: 0xbf6789475132950c583823a,
            limb3: 0x145f508c63c10d270e027b2b
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x411944418a1e44d0fbd8a4bd,
            limb1: 0xfa3933a100d5d920bb158196,
            limb2: 0xaf6096a850d10c6ee57b7d3f,
            limb3: 0x7bc245f0c719ec216f4f7e7
        },
        r0a1: u384 {
            limb0: 0xd5f88a09ab7912a54504534a,
            limb1: 0x6c7b84068e05767f3ac72003,
            limb2: 0x2e783a6cd8933e5ce254ff56,
            limb3: 0x648a93088ef22f73be5e1d5
        },
        r1a0: u384 {
            limb0: 0x72f4d88bd20cecc4c1d57b8f,
            limb1: 0x2164d957d0e784aca77a27b6,
            limb2: 0xe45f0a865306a8c7ccf8e465,
            limb3: 0x182e7e79c81e19c5e6dba3b8
        },
        r1a1: u384 {
            limb0: 0xf2b21292475b313a8591d232,
            limb1: 0x31975a79dd261ef9304ae69f,
            limb2: 0x3fca7e570497ea425d166e3f,
            limb3: 0xb1e493cae679afa3aeeb48e
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x7bd212f8f60967471e995a8e,
            limb1: 0xec76fa31d0fd358f36ee756e,
            limb2: 0xa63e06c40964532a724817c3,
            limb3: 0xd860767952ed2b694b64eea
        },
        r0a1: u384 {
            limb0: 0xd18f8b1de21e64c50d3c6fc2,
            limb1: 0x456cec057d45521c48d0b547,
            limb2: 0x23fb8276293fac77c9a38c1b,
            limb3: 0x1469d7cf50d58855fa523aa8
        },
        r1a0: u384 {
            limb0: 0x52f1d22ea6bfc23435bf7e3b,
            limb1: 0x3e2d5122467bf39f2573a57b,
            limb2: 0x378db9e77f53b5b1e38981da,
            limb3: 0x1015deb442db265529d8948
        },
        r1a1: u384 {
            limb0: 0x73c44618fb7917b2596bd460,
            limb1: 0x598ee13313073cf3232e1b37,
            limb2: 0xbd63e58ae4aa477bcd459ef2,
            limb3: 0x272bfde06aa8302ab8c70d6
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x84d7880d9c5ad98d07f1b961,
            limb1: 0xd5be4b6e58ad745353113073,
            limb2: 0x592ecc7534e44983a06d755c,
            limb3: 0x15d60a0d6d8a2e4543194737
        },
        r0a1: u384 {
            limb0: 0x9ba63990e4f1ea4875173006,
            limb1: 0xf84fa98d5f3742b3c571f427,
            limb2: 0xdd28189a4a2e3a70f78a170e,
            limb3: 0x1ad5bc82425c66f655a75db
        },
        r1a0: u384 {
            limb0: 0x49306522c22ca321950bf155,
            limb1: 0x369a747f27aa6472ebc5d290,
            limb2: 0x20d8977cbe5acf112574c70a,
            limb3: 0xcdc103da1aac9ec5f855b64
        },
        r1a1: u384 {
            limb0: 0x74517cbd651af3940075c057,
            limb1: 0x94d3802d81c93d69eb13518b,
            limb2: 0x76411c393dd03e5381661629,
            limb3: 0x16e57b05faef24ef64868a07
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x1a30592d98290c72cccd458b,
            limb1: 0x140a621ff20376f808a589fd,
            limb2: 0x49ba32b20969590620d93359,
            limb3: 0x8505a11bd1aa7d53fffa788
        },
        r0a1: u384 {
            limb0: 0xbedeeea8460644391170d35f,
            limb1: 0xcfc8f5f9f7606a79990e9242,
            limb2: 0x2747fe157739059a9b528ae0,
            limb3: 0x13386caa378815cd519166ec
        },
        r1a0: u384 {
            limb0: 0x2adf79c700fc3a5a36c5ec26,
            limb1: 0x4f168c2853c5ec65b71b40ca,
            limb2: 0x7e0c13754f775e73a9419653,
            limb3: 0x10616cc67745c7887ca4898e
        },
        r1a1: u384 {
            limb0: 0xde84fc636c0a8697ac4d8960,
            limb1: 0xdd66e4fac060783909cc83c4,
            limb2: 0x86edc8b2faa981346da2237c,
            limb3: 0x11c912ed6ea0e8f7768ac884
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x6b6c23b2b461087f63e2fd50,
            limb1: 0x8454a8c69f81cfea8edb19ba,
            limb2: 0x2133ca31f8dd40f674513fd8,
            limb3: 0x171663bdebf2ef26dc306e13
        },
        r0a1: u384 {
            limb0: 0x6b95f25b75fe9a8aa69ae917,
            limb1: 0x2f15c87206b024c108e4f4d4,
            limb2: 0xc4e3e65f02f2e19326083300,
            limb3: 0x16172a9e775f111d4bf432bf
        },
        r1a0: u384 {
            limb0: 0xc4289527cdf4e1662f27e1f9,
            limb1: 0x7f6c52aaea1458a5388d10eb,
            limb2: 0x4f6130d75d26097d0a4fa02a,
            limb3: 0x16f8a911b684b408bbd72650
        },
        r1a1: u384 {
            limb0: 0x648a1498ebbbd0e225db1ffc,
            limb1: 0xa36cfb4b46195b619bb220bf,
            limb2: 0xe327926a1726c7e5bb70bc97,
            limb3: 0xfcef666ce7ecc2915258730
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xb5abe92a46d0ff04a4205803,
            limb1: 0xdb760c98b7aad959e5dfc28d,
            limb2: 0xbea9b6e4adf41fa1060713ee,
            limb3: 0x75707a467e7543c28370330
        },
        r0a1: u384 {
            limb0: 0x8b0715d2f6a16be8d5828197,
            limb1: 0x598a8a6da7ed2bcc091f594d,
            limb2: 0x18cfc9c1ee8960c06ff2c240,
            limb3: 0x14061839f139644bb20e8647
        },
        r1a0: u384 {
            limb0: 0xd529f0561fff46258f565dec,
            limb1: 0x80402f61ae7ce96272aff23b,
            limb2: 0x883367465c3a4bde2507377a,
            limb3: 0x14fc234296369891318c6245
        },
        r1a1: u384 {
            limb0: 0x9fdc0242b4d20c44b72c8d49,
            limb1: 0x37e047238dd417acab9ea0c2,
            limb2: 0xc424c8845919fe27ac23e9,
            limb3: 0x151e87d65d95c3b1cc9b1de6
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xf5a9a8a9d8ecd9df033bb53b,
            limb1: 0x6f13c1f15ca3c43bd8dc862c,
            limb2: 0xaf9fffe39ed8b6f589e47e4f,
            limb3: 0x1355d3f3bda0ba53c342406b
        },
        r0a1: u384 {
            limb0: 0x13c7baebedc25cd07fa0b8ea,
            limb1: 0x4e29e5e7fd865c69feb81131,
            limb2: 0xdcf94191f24d657ae6fc8c5c,
            limb3: 0x162398b0a01eff8f7149ab6c
        },
        r1a0: u384 {
            limb0: 0x8cf50d2f7aa3da376e8317d5,
            limb1: 0x490a7502e8f6bc788f715c7a,
            limb2: 0xe6db018fa6b084ae40896c2b,
            limb3: 0x184f93ce89fff4893629db4d
        },
        r1a1: u384 {
            limb0: 0x53e941ac4d20f05b66f3b0ec,
            limb1: 0x82b8a8efafffe40798a1d5da,
            limb2: 0xd08e35da426abf3dd1ce8bb,
            limb3: 0xd49095a9c436bd86f9d4736
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x9bd8fa7a943e0e3a924e7492,
            limb1: 0xad948685eedfe9d3ac7315ff,
            limb2: 0x8148910d6004895792caa88d,
            limb3: 0x1deabfaeb3374b50119ecb9
        },
        r0a1: u384 {
            limb0: 0xfedf28954ae85d6e9f58c709,
            limb1: 0x7c01f5d8a4b9368fc9cbb8eb,
            limb2: 0xbe98bf07cbd25fe6f4ac154f,
            limb3: 0x7c9b05e8adef4de506459f7
        },
        r1a0: u384 {
            limb0: 0x71812aeba8c33457117bfb0,
            limb1: 0xaf1a11b5a7571775ec17c1,
            limb2: 0x721e08542ff85e7037b2c02f,
            limb3: 0x991d1db86230da71efb4475
        },
        r1a1: u384 {
            limb0: 0x4122fa433f37c5e6888de07c,
            limb1: 0x144d977681671d8cd0854c34,
            limb2: 0x93981673fae1df08d18161aa,
            limb3: 0x145eae6a49c250f2435d1ec8
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x3ab208ad049d8dbf41ab2d8c,
            limb1: 0xe8d0eafc04fe7a37f53901c8,
            limb2: 0xbffd6b641b6f6961476d4a1b,
            limb3: 0x16c1d585f68dee202ea9a988
        },
        r0a1: u384 {
            limb0: 0x3eba0d6e9e3751e7d1b4533f,
            limb1: 0x8e4692d56ab832e68469328a,
            limb2: 0x9d03908cf037ee8faf6dac32,
            limb3: 0x2ef973d44d5dfe1f52b48e7
        },
        r1a0: u384 {
            limb0: 0x6cd551023179a5ffe150ae4b,
            limb1: 0xd48575f40677168193ee4571,
            limb2: 0x81320f4ef3fa7936f5865695,
            limb3: 0x37748234157e4931a4f54d7
        },
        r1a1: u384 {
            limb0: 0x73847e2fc69aee5b6a51756,
            limb1: 0x1cfd76b51ee2e57b733742b9,
            limb2: 0xe02551761eba32bebc8413bb,
            limb3: 0x3136b909d615d39094ab565
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xa8af53d78f2fa38c6e213a84,
            limb1: 0xc908fd45d36e147e8a3449ea,
            limb2: 0x9224181cd573d3836b141129,
            limb3: 0x140090a04158ea562a90ed5
        },
        r0a1: u384 {
            limb0: 0x95e6526648a96a5a43488327,
            limb1: 0x5f5e4c24465495ee0dcb3055,
            limb2: 0x49f0985811804cda4142ca8c,
            limb3: 0x9619ac570f151f7baaa7ae
        },
        r1a0: u384 {
            limb0: 0xc2ef8275baa5e3b836a847d7,
            limb1: 0x9835333ce4136fda57f9c31e,
            limb2: 0x8392d675aba184475007124a,
            limb3: 0x10f9170d8f4e3130ef5a354e
        },
        r1a1: u384 {
            limb0: 0x4db131e9b2a50df6253da27e,
            limb1: 0x3210503344192c1a1d83234c,
            limb2: 0xb84a1ae100e6602d2a3eaa1d,
            limb3: 0x146401ace26dcc76ec7cb805
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x9a29bb6c54b018b4ed75888b,
            limb1: 0x1437b2d93b1ecc564157059c,
            limb2: 0xf0add7baf8cfe1ddc30f0754,
            limb3: 0x86553ec1cc3cc6a38436fbb
        },
        r0a1: u384 {
            limb0: 0x516be99929795e7ae5112f30,
            limb1: 0xb182ffdb6110024a0018e3e7,
            limb2: 0x8e468869d60b7ae7fc6004bd,
            limb3: 0x4916e8c2d5820861e32013a
        },
        r1a0: u384 {
            limb0: 0x78554bdd8568c0e9686a510e,
            limb1: 0x97bc0c8b458fe7d5dcf2264c,
            limb2: 0xfcc4906709b359120a9e0158,
            limb3: 0x193f60f20d1cc7f2b1bf553c
        },
        r1a1: u384 {
            limb0: 0x2713699297ab49a2d9bf4f6d,
            limb1: 0xb396d1c4590471bf032b959c,
            limb2: 0x350113633de03c6e721c7597,
            limb3: 0x79ef6c98d71e95eb13fae02
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xb3bbccb4893a93d20a147b98,
            limb1: 0x5c46a12e68c1dcaf7d45545,
            limb2: 0xe1d3e9970b998f9ee1bfcc60,
            limb3: 0xe0e611221166a37eaca4699
        },
        r0a1: u384 {
            limb0: 0x255f666baafad4929f87c34d,
            limb1: 0x1a1554e683a36d8c5359c91d,
            limb2: 0xb351c7146573abdf82d32baf,
            limb3: 0x14bc0381e2ada56e42a08f14
        },
        r1a0: u384 {
            limb0: 0x84b1b1e77e26467b905fa496,
            limb1: 0x28fdfc19e13b0752aba34749,
            limb2: 0xeee8045d6526734c1f95307d,
            limb3: 0x1e4f12f75a3db50a60aa03e
        },
        r1a1: u384 {
            limb0: 0xcd8114dc6e6775890632c756,
            limb1: 0x3c477ef68ef5ed0c85ca0a58,
            limb2: 0x706f9cac1acb2b71feb8358,
            limb3: 0xeded7ab6bb655672cde9835
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x6016ea652473b7f107a77710,
            limb1: 0xeb4242895460db86f361eac8,
            limb2: 0x5fe77df899b1ff5607b38de2,
            limb3: 0x10efb35680805c93c2bab2ca
        },
        r0a1: u384 {
            limb0: 0x9107262e5bb66980954e1a0f,
            limb1: 0x57ab274a8a9565abc99387cb,
            limb2: 0xbcd4f18d8a7e65b964541f5e,
            limb3: 0xaf8d03faf1efb9183c00a2c
        },
        r1a0: u384 {
            limb0: 0x751a66b007c730df74908a8,
            limb1: 0xf41cc4578874d56d020638c5,
            limb2: 0x5230861fde86bb685b68c62f,
            limb3: 0xb5d973cfd5090cd49182b06
        },
        r1a1: u384 {
            limb0: 0x283597c889dd32a98401459a,
            limb1: 0xb44d0ac2827551860df4a510,
            limb2: 0x399fc7f05e1000db1a41c1a4,
            limb3: 0xe3944c673891658df0e2ba3
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x4396189ffbd89d01fe27fa5b,
            limb1: 0xe81217db1696daa3753ccd84,
            limb2: 0x55c6ad903c2a3e4b9f14a8da,
            limb3: 0x15f5f0afe4eeb7545fb13eb0
        },
        r0a1: u384 {
            limb0: 0xd3da9931ffbf361f326b7282,
            limb1: 0xc9d2464eda778b0051c1027e,
            limb2: 0xb8f5f46e2bd5fc15d81b368a,
            limb3: 0x1040f087e9a0b6633fa13692
        },
        r1a0: u384 {
            limb0: 0xf986f1a7ae6234649c858e8a,
            limb1: 0x4644ba4e2b6b06ac11907477,
            limb2: 0x95bcd96412c2b77c798589bf,
            limb3: 0x122a0d20337a4865af008b55
        },
        r1a1: u384 {
            limb0: 0x201ad08d1e12f22740a2d61f,
            limb1: 0x4ec7ca2abf73f04dd4d3c1cc,
            limb2: 0xbe2da8c0b44af69f8c08bbe5,
            limb3: 0x3bac9dd093b57980816b067
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xa91fa22e8afc80abea221520,
            limb1: 0x5bc71539a636bbf8ebbe74f6,
            limb2: 0x2922894d551b50829ba322fc,
            limb3: 0x14e8b48d18e449e691aaf792
        },
        r0a1: u384 {
            limb0: 0xd260160df53ab2df298a0d4c,
            limb1: 0x854978d64707004860c8ebf6,
            limb2: 0x20a4348de1a9dd2d5347eb55,
            limb3: 0x243d4a3903c17c3cc51c2e8
        },
        r1a0: u384 {
            limb0: 0xcd7b87ec09c28073ba10e0d1,
            limb1: 0xa5ab4f79373898318a3e146d,
            limb2: 0xe648aeb5fef1cf65d3fbd74b,
            limb3: 0x2fa5e6b46df2191aabe0bef
        },
        r1a1: u384 {
            limb0: 0x11b43fce26bc49795004ca02,
            limb1: 0x437fe31017f62de97ffc3e35,
            limb2: 0x97d41632c4cd7bb50f450ba6,
            limb3: 0x9b7e59a28684bed532da137
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x4527a34a70ec377ccd63a5b2,
            limb1: 0x351c7771105a0a1096dd87f0,
            limb2: 0x57630dce3b4db45cbad696a6,
            limb3: 0xf10733fed03fc5b7ae27fc4
        },
        r0a1: u384 {
            limb0: 0x53a208df401e3d6bf657857c,
            limb1: 0x306991a8af53fac94e1e9b52,
            limb2: 0x324634590aee6093dd239d9,
            limb3: 0x855b8b1eedbf578f7498f37
        },
        r1a0: u384 {
            limb0: 0x71e5471ff515d0d4982815b6,
            limb1: 0x9a63281835ec15935519deca,
            limb2: 0x17a64faa9e7e4ab574a3f785,
            limb3: 0x134b4a48f53fff9361e1952c
        },
        r1a1: u384 {
            limb0: 0x56dc56f73bd268799b824fa3,
            limb1: 0x4180514d6004cf446a366719,
            limb2: 0x193a82567b226e738b11a0af,
            limb3: 0x1498d7e7ad2a68346f7d2199
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x81e4894bdfaf54d49cb0c4d8,
            limb1: 0xeb9bf46cb3dcd89325b39d09,
            limb2: 0x5a8e743db320615a5a0c40cd,
            limb3: 0x1850f244c5272718a19a040d
        },
        r0a1: u384 {
            limb0: 0x857b482a44483bf0457331c7,
            limb1: 0xa67cfb7a4ea236dcedf6137a,
            limb2: 0x639d1a584ec879083798355d,
            limb3: 0x14240af1c0466562ca4e24f5
        },
        r1a0: u384 {
            limb0: 0xb525edd6feb5970219a6995c,
            limb1: 0xb1205b041c3e38e20d2fe204,
            limb2: 0x8caed9ba4365ffbc1589b563,
            limb3: 0xfdfce3b6d0c90f89ff5b6ff
        },
        r1a1: u384 {
            limb0: 0xf04c7ee058045bf0c52bcca9,
            limb1: 0x25da9c7e03f90300aa977fed,
            limb2: 0x5388457b2d4593b62df4c077,
            limb3: 0x16cde52858fd178529b49d60
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x6c92af226aa27e2cbe8fae21,
            limb1: 0xbc299acce5e8da96b6b932d,
            limb2: 0xec46a86181ef1ff2f8317201,
            limb3: 0x17900cb270764782b3eca3d2
        },
        r0a1: u384 {
            limb0: 0x82358801a5440afa7826f03e,
            limb1: 0xd09104615d27b1dba405157c,
            limb2: 0xda33c37fe337917d32826e1b,
            limb3: 0x1be7df7094ce56532653ce2
        },
        r1a0: u384 {
            limb0: 0xd33c9c433bdeabd28a276748,
            limb1: 0x5dd445f6fe3bb3070cd0d395,
            limb2: 0x8b092b49f4fdf2a38337a44c,
            limb3: 0x4e047a80a74764555b1ea3d
        },
        r1a1: u384 {
            limb0: 0xd83bc84b011c607d97684972,
            limb1: 0x2b14aae22370badd22ec77ba,
            limb2: 0xd29b9c7b77c3f08055bb8a9,
            limb3: 0x125b416bddff21db8d6f42ed
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x1f7265a2588028a739940ca5,
            limb1: 0x1e3d7315d69b4f1540ef139b,
            limb2: 0xa239c997bf8c622c1716408,
            limb3: 0xd9744d0ac86db4218e7e96d
        },
        r0a1: u384 {
            limb0: 0x90541dda73208a1d1eda111e,
            limb1: 0xd5a4dd2c69e927e6a84d8487,
            limb2: 0xbba86a67c752a3ce780b84ff,
            limb3: 0x9a35294d76f0d15a59ad03e
        },
        r1a0: u384 {
            limb0: 0xaeae8c21bae747ea58e4eb2b,
            limb1: 0x22bee27e94b3df2f9e30496a,
            limb2: 0x3c490f390a6a3762549bdbf9,
            limb3: 0x1777cd7c3048d009f9f72bea
        },
        r1a1: u384 {
            limb0: 0xec21f8b948e62cded22a7d58,
            limb1: 0xb8041010b7270992a963f6df,
            limb2: 0xbddd05cca8941058f062d094,
            limb3: 0x10ad979954bdd8983ce4dfc2
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x6cf96397e7b79f2fc8c8275d,
            limb1: 0xfc7cd3706f331af3de61fabf,
            limb2: 0x78630a1ca624fae6d5770503,
            limb3: 0x15ed1256df8e5e5ca95b56c8
        },
        r0a1: u384 {
            limb0: 0xee76aa06cc2a711c9ed0f30e,
            limb1: 0xffa3eb442aaeb1342a8a3887,
            limb2: 0xcd5194bd83d804f9da8e5cda,
            limb3: 0xf5886abb33616f07cfac605
        },
        r1a0: u384 {
            limb0: 0x3e0ff1e7d1f926d905c0e89f,
            limb1: 0x3fff1943b59d697a741845cd,
            limb2: 0x4e362d7df69aa3269ea5a418,
            limb3: 0x13a520fad90f72497a67b697
        },
        r1a1: u384 {
            limb0: 0xce7bf1da23ccce53d8e13b8,
            limb1: 0x56957fccf1163143404a68dd,
            limb2: 0xd26ebbc9548a9897d0383b14,
            limb3: 0x329392268b1afdd087dd27b
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x8f61e98d8c6cfb102fc12599,
            limb1: 0x3b581910d31b036fd00d6cd,
            limb2: 0x960c67926f53a7c4400c36fe,
            limb3: 0x1437622871bdaa8aa8f1620b
        },
        r0a1: u384 {
            limb0: 0xc06e7440dac5dc6345811f4c,
            limb1: 0xcfdd60e51cc453252af4fcc6,
            limb2: 0x756f2c0839d3582469c0b8c6,
            limb3: 0x12d66e992019751bc4b8c1bb
        },
        r1a0: u384 {
            limb0: 0xb0f08516779af407c735061a,
            limb1: 0xaf9b916f38282785c75beb83,
            limb2: 0xb386d3a1dd1445469d29c602,
            limb3: 0x24dbe829c015491a29896d1
        },
        r1a1: u384 {
            limb0: 0xac0f9105a6d03cc8551b7c70,
            limb1: 0x4f4b9b10e54191aae0271be0,
            limb2: 0x6bd62b1dce1efa964448250a,
            limb3: 0x121963e40701951c40d3ccd2
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x765ce308dd13ea9ec917f81d,
            limb1: 0x4c2cdefe8611811647fac337,
            limb2: 0x9e01fde22386755f816c125f,
            limb3: 0x249a870907df1494e56fc21
        },
        r0a1: u384 {
            limb0: 0xc3cd52b28123518842661348,
            limb1: 0x6678659f6f9ca9e64f594e30,
            limb2: 0xbdde01f23d77cc2219a64e1,
            limb3: 0xa59546d0d9d0d18614e9879
        },
        r1a0: u384 {
            limb0: 0x7e7be141202ac55eb1d4a8b8,
            limb1: 0x22ee295a285099a1bdc85200,
            limb2: 0x7d274b729c40bb351c2bdd3c,
            limb3: 0x105edf80625508ee7473afc3
        },
        r1a1: u384 {
            limb0: 0x8d19d95e92eb2f4d361b91e,
            limb1: 0xf6cc461a1b4bd0202cc3590b,
            limb2: 0x87ebac45146065b2dc8d4bde,
            limb3: 0x1375f5a114849a9f8e0c3d37
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xf3f6022a346335909994d26b,
            limb1: 0xa2e674d9be45c130702c8393,
            limb2: 0xda934834c7f1f4550986c5,
            limb3: 0x17170963f6200ba02d7f36db
        },
        r0a1: u384 {
            limb0: 0xc6bd88f8f5883c00bacb7319,
            limb1: 0x2865832a25d7695c70d60852,
            limb2: 0xd63579f3b9eb855ce78f80e0,
            limb3: 0x16f67362c8cbffc3e300d83b
        },
        r1a0: u384 {
            limb0: 0xd5bef1e76085837868d52daa,
            limb1: 0xe17818fa8f87a1a29495c6f0,
            limb2: 0x33702bc5001cd8e3bab9709c,
            limb3: 0x3ee9300c2e7d74b5e5774d
        },
        r1a1: u384 {
            limb0: 0x79515359f6e9ac46c2da8b44,
            limb1: 0x8b1d7830cfb661bc910fe5b5,
            limb2: 0xa6f740bc62a497d501d49790,
            limb3: 0x106645c420742d2fc191def9
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x58f86bbd730aa1df76e95257,
            limb1: 0x3832640fbf5ff16fd5c86613,
            limb2: 0xaf56bfc4d589fd5479b90e9a,
            limb3: 0x3ca74026cf32fba56ec4ff
        },
        r0a1: u384 {
            limb0: 0x577775e0ba37cd47da598900,
            limb1: 0xf402fb94e1c54fc0073a49b0,
            limb2: 0x2e06dce324741a7e96cd8fcc,
            limb3: 0x16f491b5bd383da7e70c001
        },
        r1a0: u384 {
            limb0: 0xf906737c542dde2e8b5d7bf7,
            limb1: 0x93d207424c8f01f866d09071,
            limb2: 0x7a8dc05cf5ae45304b21d8d,
            limb3: 0x1d432a9b400dc09515479f5
        },
        r1a1: u384 {
            limb0: 0x533a88fd57c73a7a668d47a8,
            limb1: 0x11cd23f02ff6e7610e1522a9,
            limb2: 0xbb9e0293df841db5d616e680,
            limb3: 0x19f2811473fbfa9dddb16249
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xb84433d5bb94067c8083df37,
            limb1: 0x4a1c6dead6b06daaef49a331,
            limb2: 0xf045631520d7fcf91cd6d5bc,
            limb3: 0x171679be9cc2fb7fca2ffb4b
        },
        r0a1: u384 {
            limb0: 0xbff0ab7bce5a89764c470c2b,
            limb1: 0x7c275c7485dd37e467e28e07,
            limb2: 0x976153708a70bd4353e49415,
            limb3: 0x137b63810a42885e3d12973a
        },
        r1a0: u384 {
            limb0: 0x33aaf9966841141dd4aeed0,
            limb1: 0xe937c580cfbd8a3936590a47,
            limb2: 0x7e2948f3ac9443871d29a3b0,
            limb3: 0x17ae57245137f902685ea5f
        },
        r1a1: u384 {
            limb0: 0xae14ce204d876228a369b45,
            limb1: 0x6e8aa97e94af3b53715ed047,
            limb2: 0x346c278c809a30daf1d01b7,
            limb3: 0x22e054e6e6d8bf998a85e43
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x453bf5d35812bbf0123c972a,
            limb1: 0x3a9bcdec2fe60921bf629abd,
            limb2: 0x8d4d0d00c4d2739ae3a0b176,
            limb3: 0x9a76bae205af60fb63330d3
        },
        r0a1: u384 {
            limb0: 0xa5e2fc320bd337a5e6bf6e59,
            limb1: 0x649bf53444907381a7d0f976,
            limb2: 0x57cfc1f1da9301aff5ef309c,
            limb3: 0x79042a88c84c694ffd3fa12
        },
        r1a0: u384 {
            limb0: 0x8149e3cbfdcb7c4749e0ba73,
            limb1: 0x72f87f4ff2d25e09a5eae7db,
            limb2: 0x1d01fadf84a7202ce4489428,
            limb3: 0x15652f54b134df28e3b93c7
        },
        r1a1: u384 {
            limb0: 0xa1b43fd866b4d217c50e744a,
            limb1: 0xce197f05b592d754e8f84093,
            limb2: 0xbc7dc9245b7e2113d675abe4,
            limb3: 0x2f8afc77fac6bc37b0c7667
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x5f799d84974b34b214204be7,
            limb1: 0x7e577069bef682a54f78cc32,
            limb2: 0x43803af2b35c7987d12eac96,
            limb3: 0x3570c7ba557421c82cfaa6c
        },
        r0a1: u384 {
            limb0: 0x2aa9d33a1acddb979d7c2d2f,
            limb1: 0x2bb926928f20a965a10a6d22,
            limb2: 0x1d650b759bafd7750c78aa91,
            limb3: 0xac21b07f22d3d31ceef607b
        },
        r1a0: u384 {
            limb0: 0xa188a2df22f2cac6ae25fcff,
            limb1: 0x15f7af3ae3fe3ab80fcbf44b,
            limb2: 0x3cc65299b3a990d0b8f2dc21,
            limb3: 0x720671ab41e616ac46a4d4
        },
        r1a1: u384 {
            limb0: 0x8d5ce83450ecd58d21821d04,
            limb1: 0x600fb56fcdc4198005433d16,
            limb2: 0x60f583b87d52b7e7eae71b15,
            limb3: 0xfb05f7038ebbb06ca53b3fd
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xa36890bfc74afe64e9f3840c,
            limb1: 0x8eeaf2f380047dfe3a21b11b,
            limb2: 0xeb84e8fad6b7625c837aa272,
            limb3: 0x135ff64b4d73a3a2d0f886b2
        },
        r0a1: u384 {
            limb0: 0x6fa3e40ac2853a97b01176dd,
            limb1: 0xcd16a519987e4aabf6bd8d1,
            limb2: 0xe4ee3c4f4c650fbfe5a0a370,
            limb3: 0xcc7efdc19164223dbcb0b43
        },
        r1a0: u384 {
            limb0: 0x9ed5597f7236b21674d039f4,
            limb1: 0x5cce2f4074bfb9593d07dcab,
            limb2: 0x1467dedd98c377f9f9b46e75,
            limb3: 0x89f8ba7d879e18afda115ac
        },
        r1a1: u384 {
            limb0: 0xce1eb5fb3e129849b7af9b61,
            limb1: 0xbb388e5edcc82d67d7e505d1,
            limb2: 0x37f0c598b86ce85a7ccc5e90,
            limb3: 0xf3dfe35088599f2eeb97849
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xb1dad5dc4b347aa8cdea64f6,
            limb1: 0xcc2058c63fba33421acef87,
            limb2: 0x6671bbd574e8f23a8c33a473,
            limb3: 0x173c0d3a77be26a04dc370a
        },
        r0a1: u384 {
            limb0: 0x89c7ef66c7e6d4c7a5f1ee7b,
            limb1: 0xfa29a5dde6a8d29efb1b12b3,
            limb2: 0xc0f4a5b6342df0adc3da765b,
            limb3: 0x154e74a84c92a5ff794fca30
        },
        r1a0: u384 {
            limb0: 0x3baf5745ddfc03d1be36473,
            limb1: 0x41fbbc02d24948d8a3c0efa1,
            limb2: 0xeba542193a176f39572880b7,
            limb3: 0xba18efa42d34eea1333f2cd
        },
        r1a1: u384 {
            limb0: 0x77fee73ea8d2cae877fc09bc,
            limb1: 0x4b28c7e9ba63b4a2a16dc3e3,
            limb2: 0x5ef0ade97bcf1bbd542b74c2,
            limb3: 0x60c323e8930e93d6a8a8b53
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xb9289920fc29c178a0728467,
            limb1: 0xf35e17ec8a43244f4e0efb63,
            limb2: 0xa46135ade487bf1a95a36590,
            limb3: 0x4597ae1f4cfcdaacff3f6
        },
        r0a1: u384 {
            limb0: 0xe926fdfcdb55d8651b029bb7,
            limb1: 0x741390b7035f30b98e2dcd27,
            limb2: 0x697fa3901ef0c0d6f4f0693b,
            limb3: 0xcc420802c358e2dedfc71d4
        },
        r1a0: u384 {
            limb0: 0x404a03b34791ba0f3fa9761,
            limb1: 0x50d30e7876bb541f3ef689f6,
            limb2: 0x7eca4b1c1a04fdc1c58f3065,
            limb3: 0xa9e0b8c0194468d35c05fbd
        },
        r1a1: u384 {
            limb0: 0xb370e739ea46b6699276bb50,
            limb1: 0x39805df77c609ca4cb80f044,
            limb2: 0x1f93a5fc91ea7ec7048f46d8,
            limb3: 0x109841b0d6d23c644d831b58
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x696c2443a8baa527eef5ec6e,
            limb1: 0x7c385a900f4614f62a38d2e7,
            limb2: 0xecef959f527ae42bb1b2a0ed,
            limb3: 0x7fac72373dec09eeaf6db37
        },
        r0a1: u384 {
            limb0: 0xc84aa165d81984cbd1d40498,
            limb1: 0x7ef2f6d8a1b0b82a86a8aea1,
            limb2: 0x9f04cb828903af563a7ce955,
            limb3: 0x1260f88b57dddd5bf01540db
        },
        r1a0: u384 {
            limb0: 0x7d666c3a74212ecb676ee24e,
            limb1: 0x8ddff061953f45de2460c7ee,
            limb2: 0xb69a343af7532ec4af3c8894,
            limb3: 0x213c5dddce502302ac58fec
        },
        r1a1: u384 {
            limb0: 0x9b68c470206e0a6b23d993d7,
            limb1: 0x8e64f45ab3906177fca690b,
            limb2: 0x6b3ba9665c9e8cdb62669c9b,
            limb3: 0x4535c1e41f9fe732b7c4780
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x47796752c668f86cda3eea09,
            limb1: 0xabe85392bfe45c509b21188a,
            limb2: 0x17747fdbb10299befbd5f562,
            limb3: 0x10f206ff106da3cd9621d6a7
        },
        r0a1: u384 {
            limb0: 0x19e850771140dd110fd5f601,
            limb1: 0x49e65a215ab2cb29f8e19340,
            limb2: 0x7c583039a8252df0d94325d4,
            limb3: 0xfdd46f3792b92d70b7938c8
        },
        r1a0: u384 {
            limb0: 0x2973fb308f21f4591c6768bc,
            limb1: 0x7c10b3f79cbbfc0069738f2c,
            limb2: 0x227581522b2559c9557982fc,
            limb3: 0x146f0ce0cb299800bb8186ed
        },
        r1a1: u384 {
            limb0: 0x7e45c08de7497185100c82e7,
            limb1: 0xf873456c3b1257743a548919,
            limb2: 0x4e414c1420aa0674960bf9f,
            limb3: 0x12b9b73bea8424ee57b2038
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xf52c3a9e1924d9731f45159d,
            limb1: 0xb552aaa0c17ebf07b9461b81,
            limb2: 0x9e0e2d36095165665a56c844,
            limb3: 0xdc948cfb597299725a35f46
        },
        r0a1: u384 {
            limb0: 0x37804446f6495b7f0eb8afe,
            limb1: 0x8290cde2fc690a09b1e27c3a,
            limb2: 0xac5737e20aed8460e392261b,
            limb3: 0xcffa82f91cfb6f276a79a6
        },
        r1a0: u384 {
            limb0: 0x13dd968a1b3c381b4b53e494,
            limb1: 0x231f8610c0c788da31f6a767,
            limb2: 0x1d90cef9842373ab0ed2113f,
            limb3: 0xab763befb660bb27aeefea1
        },
        r1a1: u384 {
            limb0: 0xfb0924f8b0c0076931026ead,
            limb1: 0xc2303d081337f2117f9edd47,
            limb2: 0xbb530c1bf25042e905ef49b5,
            limb3: 0x13cf2176e8c30a76d82031ff
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x14e4f467f4709129c1d6d6d7,
            limb1: 0x33e67ed9f2b5e1802523571,
            limb2: 0x3e76ea8acb143c96671cbc65,
            limb3: 0x1137f470c8f7d00baa56e5c0
        },
        r0a1: u384 {
            limb0: 0xa2a95cfa92d0088ab1308e85,
            limb1: 0x85a5304db0b3422f71d7ac93,
            limb2: 0xbc8572953d8f42a55fe99700,
            limb3: 0xf23701cea5719c6d8b0d3f3
        },
        r1a0: u384 {
            limb0: 0x380e418e3c32756e123587f9,
            limb1: 0x8a39d6b5872d774c57af0ba1,
            limb2: 0x11473256ad05f9eaac305647,
            limb3: 0xa642f0b83f002f2b82a1d3f
        },
        r1a1: u384 {
            limb0: 0xd5b5c903360b3614bde608b6,
            limb1: 0x407e2bf83df10c320c4ddafa,
            limb2: 0x3771cad615e4d7b5de69e962,
            limb3: 0x105334af5850345d42c10c17
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xcdb8e16f1b850432af115daf,
            limb1: 0x494ac8b75720d50e9d866f3a,
            limb2: 0xda7586ede3b806d6a6384fd,
            limb3: 0xb859f60d04e4ff66fdfc85f
        },
        r0a1: u384 {
            limb0: 0xe11de01127cbc1a326afb2b9,
            limb1: 0x6eebbbb38d51a71d3170ccd7,
            limb2: 0xd5cd24d22fecda4fe96bae46,
            limb3: 0x101e2ac25b02edda9728dcd0
        },
        r1a0: u384 {
            limb0: 0x71b27a86fd074f148f733377,
            limb1: 0x6ec32a4c65f5682adf1bb4da,
            limb2: 0xe8a268ef501888b89065c8ef,
            limb3: 0x12f6fae4a11b2f7bae3b371a
        },
        r1a1: u384 {
            limb0: 0x925f04ea98dc22979ea69c0c,
            limb1: 0x7778ab2882af9fc10adda60f,
            limb2: 0x31b791ebfc10de4e0843db89,
            limb3: 0x1884eaeeb4127c15465bd473
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xe8ab375f9e79671f77c33b38,
            limb1: 0x32c9317a9c538a1808d10350,
            limb2: 0x39b7c7695d2524211d5341f3,
            limb3: 0x373d7203575fda92e7b4b02
        },
        r0a1: u384 {
            limb0: 0x54a74ef22bb2c45a0f0992be,
            limb1: 0xe9d5746328bce07da2a04f41,
            limb2: 0xf657d148ed56fbf731787b28,
            limb3: 0x7b03ee28e327f04166f5075
        },
        r1a0: u384 {
            limb0: 0x754ae620f48dd7de6afcbb5b,
            limb1: 0x488b7b5de47bfe76c7d7f1ce,
            limb2: 0x5a2e05b269b38310ba8b4159,
            limb3: 0x41965ba496910c39d2c8167
        },
        r1a1: u384 {
            limb0: 0xe544c97bb363e3619c50c630,
            limb1: 0x7fec53ec738123389016bbf,
            limb2: 0xb12f6ffb0998373cb04be875,
            limb3: 0x4bf5cef5067781b9809ec64
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xee52fdd902c0488821edf979,
            limb1: 0x895d9ff17f5d04d1515dbb15,
            limb2: 0xda20231af600be908c9165c9,
            limb3: 0xa88fa0e247a85049196ed0e
        },
        r0a1: u384 {
            limb0: 0x1014f46d465b15781593a14d,
            limb1: 0xfde315a447ebeb1e31f0c737,
            limb2: 0xc264e73bcfcf21a95860cb90,
            limb3: 0xa404fe10b300ee8062a4278
        },
        r1a0: u384 {
            limb0: 0xde6e165032d17e0a1dd355b,
            limb1: 0x9ece35a48b0dac3133bcb2ed,
            limb2: 0x1dd3ea819651f9fffd805b91,
            limb3: 0x2c3ab75a45f0062b01b25b5
        },
        r1a1: u384 {
            limb0: 0x1d435750c14e60fcffc44b18,
            limb1: 0x781f841326b5c6cd532ff483,
            limb2: 0x5bdc193e27d8e3050ed4a070,
            limb3: 0x5865e1a9f5de7c0a57062e0
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x4d2b6e4cdcfd83a0692003b0,
            limb1: 0x41629374ff0d1ac17362c794,
            limb2: 0x18b16faf0521c1c5a11c3523,
            limb3: 0x18b70eb629a79ff3f9834985
        },
        r0a1: u384 {
            limb0: 0xf6dd615a649c30b33d8b88ac,
            limb1: 0x526f609b923d7ba3b37b63c,
            limb2: 0x4289133e7279c670978cd569,
            limb3: 0x11fa0abe9f21dc673b14d917
        },
        r1a0: u384 {
            limb0: 0x7f14d726cf9a27a8c970bb68,
            limb1: 0xe380e6b07cde1eb0fffd95e6,
            limb2: 0x2c5722bd0e114b506bddd89a,
            limb3: 0xd3fb948d9f8e2c898c1b3c
        },
        r1a1: u384 {
            limb0: 0x86aed9389c52f71bde01a5e0,
            limb1: 0x4c6baca3b4494d3a4a88343a,
            limb2: 0xe1083c4faf04588a29999bbc,
            limb3: 0xcddd31531e910375fb212ff
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x203fe85e2836c465e4db22af,
            limb1: 0xe308a1ed6dee139d030e8922,
            limb2: 0xc7908b59711d8544aa16934d,
            limb3: 0xf2b561c5d125edf292a426b
        },
        r0a1: u384 {
            limb0: 0xdb11824ffa56d8b1596236ef,
            limb1: 0x2dba53ae227809d06646c213,
            limb2: 0xeb2f93a64e027c5e4973d8ae,
            limb3: 0x70e748d64796b96d4704120
        },
        r1a0: u384 {
            limb0: 0x651d82f84f2464b4da2dfaa5,
            limb1: 0x122eee1f6190b4da0deaaec,
            limb2: 0xa3f6869c83d36b0ad97eb0d3,
            limb3: 0xc58ccf6806e87f189fcbb0a
        },
        r1a1: u384 {
            limb0: 0x648157de5d81daa67c476971,
            limb1: 0x2845a24d3190c4fecbde2fa4,
            limb2: 0x72f924eac3a8d2c228a8b082,
            limb3: 0x13673079ebcf601a5d5fae92
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x2d6310ed50636162786d1b75,
            limb1: 0x5cac54906e73bae3b4359998,
            limb2: 0xbd428c9c44f9a83980265ddd,
            limb3: 0x2fc21e36ad4d0da0a00add9
        },
        r0a1: u384 {
            limb0: 0x80e8a4f63bb295c1f909c9f8,
            limb1: 0x76045a0b6f715c18ef69c37a,
            limb2: 0x8e2d6c8495568d22744ab3f3,
            limb3: 0x2b70c4ecc512e5b7a263f20
        },
        r1a0: u384 {
            limb0: 0x74f73dffd0f8db5344a575d1,
            limb1: 0x8e6d3150c6b50fb0f30b8d42,
            limb2: 0x1caf7885c868849e8e700707,
            limb3: 0x130fa43ef7b10a6b7c72a4af
        },
        r1a1: u384 {
            limb0: 0x1cd953b2a94a0b0460118689,
            limb1: 0x5c361d5ff78164edfe007331,
            limb2: 0x61315250d28c9b99d174dab6,
            limb3: 0x252277581829378760d4033
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xf48b3d5c545dde843e9509d9,
            limb1: 0xec087b6dc32d167683bbc860,
            limb2: 0xecfa5e40ea40c9452bcaf0c9,
            limb3: 0x1040fd02b48b11b85d471c89
        },
        r0a1: u384 {
            limb0: 0x4fcc4443458e23010506f346,
            limb1: 0x6c4848e26b5d994f5bc3e72e,
            limb2: 0xfe88288f9e882ff4e9a375b9,
            limb3: 0x164597b0f78ad70a7b4bc1be
        },
        r1a0: u384 {
            limb0: 0x755828105bc1eba4198f7dd7,
            limb1: 0x6eae5a58a81935ddf455bd6,
            limb2: 0x6240aac72233651a6dfb3db5,
            limb3: 0xb4497d73d44dff355f96fc3
        },
        r1a1: u384 {
            limb0: 0xe9e516384450aed995eae178,
            limb1: 0xb13053f758b857a1479bef06,
            limb2: 0xb18ba337770920df12a72642,
            limb3: 0x121a732dec2700ebe307b235
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xf313b674fee5c83040549617,
            limb1: 0x864b49b4b96dc11dcb31a6b2,
            limb2: 0x7afa88358fa085d4db1d9e6f,
            limb3: 0x10b916005fc2476498beed41
        },
        r0a1: u384 {
            limb0: 0xa5f1bacd2bc2f38d4e1a34d,
            limb1: 0x45d1d4d76b0b03b8d7da125b,
            limb2: 0x74a0ba0ae49290dd243bdc61,
            limb3: 0x185827ff9e3c833ac46e1e16
        },
        r1a0: u384 {
            limb0: 0xffae650825626bdffd8ed424,
            limb1: 0x126a57866536ac1d0b34b17b,
            limb2: 0x517ba3e3b50188d25dc23dc8,
            limb3: 0x1276dc74f1b2a7173802ff0f
        },
        r1a1: u384 {
            limb0: 0xa73951cadbaab9fe957c0fed,
            limb1: 0xa232a5178de78c8f681635e5,
            limb2: 0x30adf5deb8ee4da1fcc053b2,
            limb3: 0xd840dfc0aae66492a176a2e
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xbec850cf3cae0ae894430855,
            limb1: 0x471169ffbfc02b7ee8b53c48,
            limb2: 0xf24c8150520d1054b6fc8530,
            limb3: 0x2627371854bd7fa799b809f
        },
        r0a1: u384 {
            limb0: 0xbdc8b09d11fbd315b7aa7980,
            limb1: 0x2f2fcf7338f1747f606b3a25,
            limb2: 0x27fb2eb96b07297a58fabfe6,
            limb3: 0x111b90bded70421c6543f89a
        },
        r1a0: u384 {
            limb0: 0xfdb1c553460611b281b896a7,
            limb1: 0x9e417f1af210f3a016ad9c83,
            limb2: 0x5908b9614188572d05b39a67,
            limb3: 0x16f5fc4c7d6ca25189a5da6
        },
        r1a1: u384 {
            limb0: 0xf515c6bd1b302886cb3cb5fb,
            limb1: 0x6357aa94ce3eecae26fc87a3,
            limb2: 0x66f86efa4a89422f8fa42672,
            limb3: 0x131a1613cd2ea3831b5cdcfe
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x3ce32e18da41a2016fbf41b1,
            limb1: 0xda3e0d01e0bbb52a301585cf,
            limb2: 0xaf508b2248a1fe6ffc5d18d0,
            limb3: 0x1274aa625858db0bb675b3bf
        },
        r0a1: u384 {
            limb0: 0x4cbc0be362614fff6f6d4898,
            limb1: 0xdf8603dfa938bc22d0aa98e,
            limb2: 0xaf3784151a3a1a7585c177cf,
            limb3: 0xcd9b76612194b440cbd9c67
        },
        r1a0: u384 {
            limb0: 0x93de5b0d4ce155335ed8a6ff,
            limb1: 0x9dc6c21cddb15edd7f401cc4,
            limb2: 0x2601d5b08d144c3608181a8f,
            limb3: 0x872d334a6e81b6937f7580f
        },
        r1a1: u384 {
            limb0: 0xa90ea56305b0b457ffd7dfd9,
            limb1: 0x3fd7486324393fe073a67746,
            limb2: 0x22aaac8be67217e0e49366ff,
            limb3: 0xdc78f4f3c40b0984ec316e
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x32410e4bdcd6030081ee0117,
            limb1: 0x9711111255797439f6866cb6,
            limb2: 0x8a1650034dda2434eadb9c77,
            limb3: 0x13f6a882a25deeaef4bbe62d
        },
        r0a1: u384 {
            limb0: 0xcc47fc627ad939824b8320f1,
            limb1: 0x3f1cb2532c6db9d1abc737e4,
            limb2: 0x4883356c3277f2df6283a2ab,
            limb3: 0x11e02397acfe9612a98a14f9
        },
        r1a0: u384 {
            limb0: 0x1588bd50c2f4f5c5ebbe62bd,
            limb1: 0x87a259e41ba48ccad1a07c48,
            limb2: 0xb22b4f666071523b8a172736,
            limb3: 0x96f9baf300ca7342721fd8e
        },
        r1a1: u384 {
            limb0: 0xf0c2d5fba2f156c3f26673ef,
            limb1: 0x71558132bb663713ad20817f,
            limb2: 0xb07619c97cbceccc4c0fb256,
            limb3: 0x13ed85faec0618c507d395a1
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x35a50965750c7716c237772d,
            limb1: 0xe96b0c22d39fbbbe7f55d6bc,
            limb2: 0x40864a9ec51fc3fceddf7498,
            limb3: 0x232f7c41bf2d0ca9a4a6560
        },
        r0a1: u384 {
            limb0: 0xebd5d6880bc93e525c5283bd,
            limb1: 0x911e6efcf7cc8f0983f3a122,
            limb2: 0xeb2d53ffa24eaa0527809305,
            limb3: 0x126b7366a9ba4cdc1648b905
        },
        r1a0: u384 {
            limb0: 0xd7789f5359bb3bd4b674719b,
            limb1: 0xecaa3bff242dc5a63ed57279,
            limb2: 0x85e8faaf82c119cc47bdfe4d,
            limb3: 0x1042198c5b912b48953f03ee
        },
        r1a1: u384 {
            limb0: 0x52c926fe4d73775c8dcc54b9,
            limb1: 0x56410c723b730b245d2639ae,
            limb2: 0xe6b9bc3d2b2a15155d82e48f,
            limb3: 0x11772d7a9fa0b3530a88bfa
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x62a31df1dfbbec432d547277,
            limb1: 0xafbad67ab615bf2d350b1688,
            limb2: 0x1f5843187c62f057fcb3c202,
            limb3: 0x2cd9ff07b37d472a54a7189
        },
        r0a1: u384 {
            limb0: 0xfd689866343571218470d805,
            limb1: 0x94b9219861e6e367cfd9d27b,
            limb2: 0x5937c015c497d2c235302c66,
            limb3: 0xfdf7276579ca6fa0076c8a9
        },
        r1a0: u384 {
            limb0: 0xcc39c0acfde5d2338853dbb6,
            limb1: 0x4d33a9fe71565a4342df96fd,
            limb2: 0xf1c085869a954cb4994a6d7a,
            limb3: 0x993491756f5c241452a5dd8
        },
        r1a1: u384 {
            limb0: 0x59049f9dae7a7044e79531ad,
            limb1: 0x1b01d078a53d321ef18d7b49,
            limb2: 0x81acaa38fb3196010e594ce1,
            limb3: 0x12c347a131f6b1191d4b563f
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x90b1d3aaedd7ae3ae5ef62ec,
            limb1: 0x9c2237332a12d63f617991e0,
            limb2: 0x88f758a89df448c1dd45282d,
            limb3: 0x3c52126f27d2dd758ab0770
        },
        r0a1: u384 {
            limb0: 0x8bf85f2a28b11ffbcc48f29d,
            limb1: 0xb79fc38b4398e2af5a4ac3f4,
            limb2: 0x877b0d7e053d12f91fa49c91,
            limb3: 0x19ee364564c01cbdf0bd4257
        },
        r1a0: u384 {
            limb0: 0xfbe824718174525ae3cbf681,
            limb1: 0xb434f93ab3f012e5c5fab625,
            limb2: 0xfaaa0bb2878017e90fb07ac6,
            limb3: 0x616944a1484a78b2946360a
        },
        r1a1: u384 {
            limb0: 0x84c489abf936bfadd293c732,
            limb1: 0xaa7ca8e76a07f14d2a712245,
            limb2: 0xef338c44111cd8f2538f16e0,
            limb3: 0x2f06c9cef716ae3e32a1bd1
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xa31fe2909d2e70ef0eed8a97,
            limb1: 0x7cd66cae105a1a65a0469bb5,
            limb2: 0x57c0d04a99e4fdd24818d48d,
            limb3: 0xf143a86d061937bfc43197a
        },
        r0a1: u384 {
            limb0: 0xef3417fc2e604cb1afd28f22,
            limb1: 0xc03449a2171f0466673fe015,
            limb2: 0xb9e650989501677fe2bf4b6c,
            limb3: 0x1a45a939634b50313d5b551
        },
        r1a0: u384 {
            limb0: 0xc7a854c7a9f5c64683ace9b0,
            limb1: 0xc0d2319347b83f932d66c058,
            limb2: 0x7a12cc7266442611728385d8,
            limb3: 0xfc3c7544bdb8ce9030892a9
        },
        r1a1: u384 {
            limb0: 0x9adf18823ca540f0e6bf7f36,
            limb1: 0xa5a5ea82ecc4affdc735afce,
            limb2: 0x84c176ba131be177ad7d141b,
            limb3: 0xbb932dd6da950ed35007f86
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x49369971c3fc33245bb7b9cb,
            limb1: 0xce9896e5addb637375420be1,
            limb2: 0x7d4c97a8e9d64c41cf2dffa1,
            limb3: 0x287b1e39767a3c2d102a825
        },
        r0a1: u384 {
            limb0: 0x6f6e6c10c2da68b535025ac5,
            limb1: 0x9b6128f5e000427659557e1,
            limb2: 0xba4e1537236425a49e10a76b,
            limb3: 0xdccc3a8b263abdc2c1112a2
        },
        r1a0: u384 {
            limb0: 0xf0f26fb9d99f34211c52ec21,
            limb1: 0xb091a74cf88bb5563ee29bd1,
            limb2: 0xb1a3c0e6479e60ec2bf5e312,
            limb3: 0x6ea612bf02bd6df77f7af9a
        },
        r1a1: u384 {
            limb0: 0x773745b51d209d3643ac70f3,
            limb1: 0xb837418d0188d5d41911d38c,
            limb2: 0xae750841ca68ec61dd2fac9a,
            limb3: 0x9b4aec971d45aee69870aa6
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x34fc38759fef61effd88d5eb,
            limb1: 0x145b73bdd49f8b9841131ec5,
            limb2: 0x5b032e13495cad2de8fc511d,
            limb3: 0x14a5c34da7fefd80bfd917bf
        },
        r0a1: u384 {
            limb0: 0x7289910ae15b593b5d0fe9ef,
            limb1: 0x321eb1200e5c9d49765ad730,
            limb2: 0x7fbf84b5e04d1a87072209ff,
            limb3: 0x120c78a1a8543136a69d721f
        },
        r1a0: u384 {
            limb0: 0x7b91d266ea9310fa2b902bf3,
            limb1: 0xc3c6f100aa36d1105c43d928,
            limb2: 0xcd92532364b0794355ab6fc5,
            limb3: 0x3e83fd62b6b3aecc9dee3cb
        },
        r1a1: u384 {
            limb0: 0xdbfa72bf64242d0e4130bab1,
            limb1: 0xbba2b4aa87acd80bda65c1ff,
            limb2: 0x53c0d1281064d6d42f3ca6e5,
            limb3: 0x7538323c443e424ba2139a2
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x9658e94dff575b044fd12535,
            limb1: 0x9e633711f24267eeff96b84c,
            limb2: 0xd09be055097f3f4285b74b29,
            limb3: 0xeba32ca0fdf04b16e700d02
        },
        r0a1: u384 {
            limb0: 0xdac31a776bf2f2a7eb8d07b1,
            limb1: 0x99ff3b68fe53867aeee330e,
            limb2: 0xfc016b0e19f5a9dafe6150af,
            limb3: 0x1853f7c388088cef95618ee7
        },
        r1a0: u384 {
            limb0: 0x25afd3c9e43a6bd85d8f83da,
            limb1: 0x6636bcf8f7c4ffb03262b3ad,
            limb2: 0xfab2ea835f15ffa64289aee0,
            limb3: 0x19a40512a2bc92b145d4a15f
        },
        r1a1: u384 {
            limb0: 0x457e5f8262a3fb1f68e2ee64,
            limb1: 0x2c8e29f8273ba32411548171,
            limb2: 0x6b7ec622d4cf5c7605c02c7f,
            limb3: 0x16d592d1bda21aa16790c116
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x418f88c2ec9095086a11212,
            limb1: 0x9bbb92abebe257d874d88812,
            limb2: 0xef0f443e07ba39689c54a875,
            limb3: 0x15190f05d2854f4f23244780
        },
        r0a1: u384 {
            limb0: 0x73562c95a5ced7285783ea44,
            limb1: 0xebc6a876c7f862dd940990a4,
            limb2: 0x806ab610b9ba3826809481f9,
            limb3: 0xd738e6b4748294d2ef71b46
        },
        r1a0: u384 {
            limb0: 0x2f88f9cb9b43366fca45401c,
            limb1: 0x981bc3797c4e9ed2343a8465,
            limb2: 0x10f951c9ceda971d01120a50,
            limb3: 0x197593f4646346745cba98ce
        },
        r1a1: u384 {
            limb0: 0x6352dd6f1f276ebd12e36438,
            limb1: 0xbc94e96354513cd65cbb7831,
            limb2: 0x63f9809778a9e5a3a14bd9c6,
            limb3: 0x12399967b752e1ae762754b4
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x1393c1940f25665663934fc8,
            limb1: 0xea7d0b2339e762ea1d7417bc,
            limb2: 0x38e8c939bcfc597914fa0bc4,
            limb3: 0x10e5f821e745ef290f773399
        },
        r0a1: u384 {
            limb0: 0x3fb68057499c7406aa1ace48,
            limb1: 0x41257c93b17f3e38108e6f37,
            limb2: 0x6e97eb8687dab2a2a640c57f,
            limb3: 0x14df29fafe098da44c7fd33
        },
        r1a0: u384 {
            limb0: 0x59456b76c2b8257a9ee80887,
            limb1: 0xb92657cb2cd74cfb0e2e2af8,
            limb2: 0x74366a9ca17b733790bace94,
            limb3: 0x18a62b6be3320f12ef9121ed
        },
        r1a1: u384 {
            limb0: 0xd05f8b04255c124be737ddfb,
            limb1: 0xcaf73bd136dd217b40f1b669,
            limb2: 0xda811888424a2ec800ca2f97,
            limb3: 0x157c5205e1188acb79fbef71
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x8b374dcb293da523769439f3,
            limb1: 0x2fa24f2a394fefc00be6551e,
            limb2: 0x5b56b235703e81f9581fb812,
            limb3: 0xa510fba0090ee3f2da90e03
        },
        r0a1: u384 {
            limb0: 0x4c287e611b512a841d227d6c,
            limb1: 0xb311b662d2c9a4106ab64890,
            limb2: 0x3f74ad8a1056c7ee37f181a,
            limb3: 0x387ccbb5fd44513ebd1364a
        },
        r1a0: u384 {
            limb0: 0x238250f751fe359ea48e6612,
            limb1: 0x48d78fe66c255cda27a7797a,
            limb2: 0x270135167f0b9910bbe997c5,
            limb3: 0x13f053dabc35bea274b5dac0
        },
        r1a1: u384 {
            limb0: 0xb7350395e2c37b4d15be0abf,
            limb1: 0x578ec20dcde4919879af4f9,
            limb2: 0xebdad8f8ae78030cf33a9584,
            limb3: 0x214f9275dbd80c3514f9cad
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x54863ab6d50bc9ff4874b6e6,
            limb1: 0x937c0d4560eae2eee4b7ce1e,
            limb2: 0x337805ebca15d19f40277942,
            limb3: 0x10ff70c91cbb8869a0659bf2
        },
        r0a1: u384 {
            limb0: 0x7b3cfe640c29faece9a85e53,
            limb1: 0xcddbe3decddda92adfd9039a,
            limb2: 0x42f145b0f85554ee195ae299,
            limb3: 0x1951ff3142b9a208e5e69e59
        },
        r1a0: u384 {
            limb0: 0x94a7ee20add6c18015e26733,
            limb1: 0xd0f2a6ab15fefff1caa7366a,
            limb2: 0x9c055a1d93c3f27e46d0b3da,
            limb3: 0x60f554e35125b7f5d7aac8b
        },
        r1a1: u384 {
            limb0: 0xd92e5b001022ee7874cbebeb,
            limb1: 0x4aed0fd23b92aebc139f77db,
            limb2: 0xd2bca1fe5ad39a274c9dfeec,
            limb3: 0xcfab0e5b8e8d7c7a8765b15
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x13f5a17e28b8aeda870323da,
            limb1: 0x337d2b7adfbf1364a8611853,
            limb2: 0xa8dd9b2b05f3350a8569d92c,
            limb3: 0xddc998d17c49e6381aa6256
        },
        r0a1: u384 {
            limb0: 0xde207fd9d271001c6efb9576,
            limb1: 0x6c856b0c104190652dfdd937,
            limb2: 0x80feca357961f12e69a3a05d,
            limb3: 0x2595adff1024c23c63dec73
        },
        r1a0: u384 {
            limb0: 0xd7040b7ee5b45a1422495780,
            limb1: 0x13f3e065ea119be3775d97ed,
            limb2: 0xeecf7ac81f371c5e390f85ec,
            limb3: 0x1047da85dc9dba631527134c
        },
        r1a1: u384 {
            limb0: 0x7017211aee3c7150478d96ee,
            limb1: 0x8c7564a3a9ef6bfd96289765,
            limb2: 0x6df1f2b21ce6b08419e214c,
            limb3: 0xa4e778d427042d100d7ae3e
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x21805f763874894483dc214c,
            limb1: 0x2c02b4ccd505fbbb8d8bd064,
            limb2: 0xe32a1465866e01898f1f3b14,
            limb3: 0x15d2f6b35415870ddc7054f2
        },
        r0a1: u384 {
            limb0: 0xf6749d4bc9865ee9e261110a,
            limb1: 0x81c4e72fdd8802ef73ab15ef,
            limb2: 0xb89ca852d2ba8b3590cd5301,
            limb3: 0x183abed5b2d1d128fa596426
        },
        r1a0: u384 {
            limb0: 0xf71ebb04aab85e83aec862c0,
            limb1: 0xf473b3e5a56fd96d60f8a264,
            limb2: 0x3e4b66f8493911a4a00afa1e,
            limb3: 0x12be1dc90541ee9c7cb4fa59
        },
        r1a1: u384 {
            limb0: 0xba5f7a9ccd0748c2fa4e54c8,
            limb1: 0x1640f7800984bafe7fa1a76d,
            limb2: 0x48e76aab062b19911f92bcd,
            limb3: 0x72cecd9e5c7c437cbbc1e4a
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xdf166caff55624c628e9c39d,
            limb1: 0x375583a43ba61cf4f2aadb7,
            limb2: 0xf0d0784be04235e91497af3a,
            limb3: 0x144cf709d68b63a9939bcd7f
        },
        r0a1: u384 {
            limb0: 0x9b47104ec1159ac61ff360a,
            limb1: 0xfa833b0d43df77cd013e21cb,
            limb2: 0xcad1fb67c8db4e6c39d8bd59,
            limb3: 0x10e847c87beb83adb8a5feb
        },
        r1a0: u384 {
            limb0: 0xb1fd17f45af8d452043abc61,
            limb1: 0xcae758a71dc8e5d49f433bca,
            limb2: 0xf97f2de839369b6c827e9eeb,
            limb3: 0x2e3050a5cb33641e4b5f617
        },
        r1a1: u384 {
            limb0: 0x71666e0e514a3e5352f26d8a,
            limb1: 0x46273d30eb76103fb756a8fe,
            limb2: 0x8bdb306ed674d669da0ac3b8,
            limb3: 0xf6c2f57d5d282ff86ccd9a6
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x1f078a90be515d55a39025dd,
            limb1: 0xa69e73a9a0f2894ad32c28d8,
            limb2: 0x406d92af351a91a43b294110,
            limb3: 0xab36c91eeeaabb24820b390
        },
        r0a1: u384 {
            limb0: 0x873b5a72e8ea0e7d255b970a,
            limb1: 0xf64973cbec18695bfc945495,
            limb2: 0x533e34319846e866ad7ddd36,
            limb3: 0x1029fa62305109a4d20176b9
        },
        r1a0: u384 {
            limb0: 0x429cba0cb76b0c492577722a,
            limb1: 0x771bc089fee5e3632dbffa1a,
            limb2: 0xa7c64b6f38e532de16959d0d,
            limb3: 0xf38b71fb4269dd2e038223a
        },
        r1a1: u384 {
            limb0: 0xddc796c5033428b0b8111c4f,
            limb1: 0x60ad337fb316c52ef8de0b21,
            limb2: 0x951808daa18d3ec520bd6279,
            limb3: 0x3455cf600b5f6c549f38f14
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x3c9e33deec176793b8c762c5,
            limb1: 0xcdd0e402436d39a6117033db,
            limb2: 0x30c585d12e787c8be912d406,
            limb3: 0xf298f9a8c4459a08f210e47
        },
        r0a1: u384 {
            limb0: 0x170c6ad3a877e65fe91c69db,
            limb1: 0xa41f211a3763ffcdb9eb1e9b,
            limb2: 0xb84a114f23f1978d9ebd06a4,
            limb3: 0x60bac8f5945907e791dfcda
        },
        r1a0: u384 {
            limb0: 0x354e5a1eec75069b04ac0541,
            limb1: 0x91be6e4159dcb28c19a4e3e2,
            limb2: 0xfd452118a540f6f88b01e089,
            limb3: 0x12b2b6a5dda55d157e1f8b
        },
        r1a1: u384 {
            limb0: 0xe47f5498f54067daeffa00b8,
            limb1: 0xbccfe6edd60b7ef921ce57a1,
            limb2: 0xd917099499398bfacccaba05,
            limb3: 0xbb67b42bd655fa485081a90
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x8deb02d48f2ee3be7ae899ed,
            limb1: 0x4b66f01a40c86e83fded6847,
            limb2: 0x9c08bb4fe0abcaefc921a40,
            limb3: 0x8bda1d762c986632aeaca1e
        },
        r0a1: u384 {
            limb0: 0x72be08cacb4795f5ddd8497f,
            limb1: 0xfaddee2a55b5154b35e26966,
            limb2: 0x7c67f5884f061f219cb8ff55,
            limb3: 0x6d4fe75b0153bdec12dba82
        },
        r1a0: u384 {
            limb0: 0xc235fffbfefdf8e9ef54d2bc,
            limb1: 0x6581ebd151a1e73c53b163cb,
            limb2: 0xf60ffd0dd3608c742fba7902,
            limb3: 0xe9437af3be8b35cbae1f171
        },
        r1a1: u384 {
            limb0: 0xdb98cff46b3033365ae5b731,
            limb1: 0x19f3ec2adf9517d4533cdf7c,
            limb2: 0xa60fbca3376090bf8f17f4b9,
            limb3: 0x169bff5211482ee5e64f50ae
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x2dac7db08633bccae086b486,
            limb1: 0x89b8e12695d31ec21d7bc0f0,
            limb2: 0xb6b895ef82cd3e31f6f0cc3f,
            limb3: 0x2785eedc1bcd70ba4ebd308
        },
        r0a1: u384 {
            limb0: 0x8a0217a58db8f5cb124445ec,
            limb1: 0xae392df0fd76493bd2ded923,
            limb2: 0x73881097a5c82a443ee9e130,
            limb3: 0x145337977ac0a11a17f3345
        },
        r1a0: u384 {
            limb0: 0x82060ee8ae4f3cb6db6ad231,
            limb1: 0x90e8ec63f2e39f1218f21605,
            limb2: 0x4ff00df2e2cc6da42f40ca0b,
            limb3: 0x96b5a0e4cf36d245f2a2213
        },
        r1a1: u384 {
            limb0: 0x183bfac0d6d302cda44cc090,
            limb1: 0xb8bab9cdf785cfc48b82cde3,
            limb2: 0x2b99c1ff7e44f0267431fbc2,
            limb3: 0x9253c3d3a7875099bb7116b
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x89eec90cedffb5559d9f7cd6,
            limb1: 0x838145c7842da8419fcaba0e,
            limb2: 0xa322ce58631513aed92ce0df,
            limb3: 0x5a79df85b0a96adf6e2dab8
        },
        r0a1: u384 {
            limb0: 0xf36133a552f9211634fe2feb,
            limb1: 0x712f911d31ea73387b467687,
            limb2: 0xfb3d98acbbe375c161f9d2a8,
            limb3: 0x11b7c924610a8268c34b8259
        },
        r1a0: u384 {
            limb0: 0x50e7cae27aa8b11d0d2bfe43,
            limb1: 0xf88979ed0a59e7daa98895c9,
            limb2: 0xdf00ec512e87f5862a699c22,
            limb3: 0xcad7fd28c40cc541a820fe4
        },
        r1a1: u384 {
            limb0: 0x936b0157ffd80fabb32930f9,
            limb1: 0xc6bffa14bca99e467c671b75,
            limb2: 0x609410c23cb1d2ce4e5e9242,
            limb3: 0x5aeec94c1d7d2fb257ce4f7
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xc41d067c71069998cf8843d1,
            limb1: 0xb14da36d1c97315bd61ba35,
            limb2: 0x8aa0d451828d59a5f72d09dd,
            limb3: 0x6032c39bd848710bcb60e49
        },
        r0a1: u384 {
            limb0: 0xed46bd973c771a1b363a7d4c,
            limb1: 0xf133793366e26684ef2f32b3,
            limb2: 0x12ff177280c137134c3f25c4,
            limb3: 0x127cf801e7f2dd085ba1a751
        },
        r1a0: u384 {
            limb0: 0xdc817a66a6c7d907bae27871,
            limb1: 0x7ba4fed3737fceac11ec899b,
            limb2: 0x90e031e803e3d6cbe2868427,
            limb3: 0x12ea6c6e770758121970dfd
        },
        r1a1: u384 {
            limb0: 0x70cc7c1f3299456ae1e20184,
            limb1: 0xb40d30be5118767fa201dfec,
            limb2: 0xccc12af1cb317ea89224e94a,
            limb3: 0xdab488f3ca14571f8255bf5
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xa05df784a5a683833d2e1464,
            limb1: 0x544aef13d7757e76ac4a6a2c,
            limb2: 0x337b308d7d37a5e715e2c6a7,
            limb3: 0x1971f0b4a71e609b35922e78
        },
        r0a1: u384 {
            limb0: 0x9afd8643829c2749745e919d,
            limb1: 0x3fe5162dcc95efeedb645acb,
            limb2: 0x771a45a92c45f43bb070b7fd,
            limb3: 0x503aa962b29d72a5d9f6cf2
        },
        r1a0: u384 {
            limb0: 0x8e80c44f884a20fe7070ea42,
            limb1: 0x78c55b9104f9b5b599cf0cf7,
            limb2: 0x6aa9312bbcf5dad8ca58d47c,
            limb3: 0xa42156c0b189a8b23065b2c
        },
        r1a1: u384 {
            limb0: 0x507ea5597266a41fa17c0e3e,
            limb1: 0x61ca6c9ff959cacbd2e0502f,
            limb2: 0xe921d3d10d8336d32c718050,
            limb3: 0x15bd96df3160aaf601255ae2
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x5e4b2d8014672689adf74c5e,
            limb1: 0xa727aa7b0714aee11ce04e22,
            limb2: 0x2b8081578ba7e36449332477,
            limb3: 0x136517c5cbf60d7fd893217d
        },
        r0a1: u384 {
            limb0: 0x1e6b6dce21e6c8fbc8c3059,
            limb1: 0xd40eaed17a285915e6dd5328,
            limb2: 0x84bb3dc7596ffeecac6c017c,
            limb3: 0xe145b9da771dcb825de00b8
        },
        r1a0: u384 {
            limb0: 0x73b866053fe5eda748e0cabb,
            limb1: 0x402fac191721abee446bc895,
            limb2: 0x4b03c3a6b6268986ca81d9ac,
            limb3: 0x6b4c9aac6eed89d9f0a6121
        },
        r1a1: u384 {
            limb0: 0x2af39075f96b16e132587e7,
            limb1: 0x13bcad0b04e3dd70f7c5f56,
            limb2: 0xda8eba78634610f509f07778,
            limb3: 0x110e70b034d243106e204662
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xbb42fc51b2f0d50a3d7a6796,
            limb1: 0xfcbc9d2df3136cbd1a372ac4,
            limb2: 0xea313e60d4b8240679b0175e,
            limb3: 0x1657a4b33e1400ef6e296282
        },
        r0a1: u384 {
            limb0: 0xaf91b402ecc6cf1a742796cf,
            limb1: 0xab44b72c1fc2f89b5eaa0345,
            limb2: 0x9f6a20404576105e15a4930c,
            limb3: 0x10992497f5f8bf4451121322
        },
        r1a0: u384 {
            limb0: 0xd9355bfe72d92c6a0950eafd,
            limb1: 0x89de0bfbfd06c9911cb2d6fb,
            limb2: 0xe2092d1e99ab65a7a33ba1cd,
            limb3: 0x1c317a68eeef4d833e396de
        },
        r1a1: u384 {
            limb0: 0x631d3efa10e591b7ebcb8dbc,
            limb1: 0x6a4a0815d19cf339e4663ba9,
            limb2: 0xe2fb7d9878d26c7c97299a01,
            limb3: 0x4c4dc455aad226b744ebdd4
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x656bbea0391d35835dc24b51,
            limb1: 0x3d5a46760e1d5b5be2d560bb,
            limb2: 0x8ab4befe76903930bf03b6cc,
            limb3: 0xde3dfb225e924a4e1dd60a6
        },
        r0a1: u384 {
            limb0: 0xbf76b6d5dcffe10f806efc9c,
            limb1: 0x89c3bf595b72110cd64c7807,
            limb2: 0xad1b9df71cca0f160ddb2c6a,
            limb3: 0xe1ae8d30b5cac8a9a485f95
        },
        r1a0: u384 {
            limb0: 0xfcef3581dc552b239364bb18,
            limb1: 0x1785b2ccd39c6ea191ba4ad7,
            limb2: 0xb26676ceebabd25d429a9122,
            limb3: 0x20c29df3088771981853b6e
        },
        r1a1: u384 {
            limb0: 0xe1d699d9ac66a9464fbdc974,
            limb1: 0xd53858123c2581584cab83ef,
            limb2: 0x8e59c936d52fd331132acf92,
            limb3: 0x42a7ceaf3c3cc116eb1a41a
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xe51e461db9c85f42519fea6,
            limb1: 0x234a9695204bd44f55ea4de6,
            limb2: 0xc8d34c6b4580edfc55e023b1,
            limb3: 0x16691c1bdf57ba041abb3d97
        },
        r0a1: u384 {
            limb0: 0xa81022cb0b3b0c523ae71819,
            limb1: 0x47f7df16fff0877b21676607,
            limb2: 0xdee4fe1d3c64b3fedec56326,
            limb3: 0xcfbf5ccb325675b1a3becef
        },
        r1a0: u384 {
            limb0: 0x6d42b9d9e765f92b0817551,
            limb1: 0x352adc09dd7760a5f4208a1e,
            limb2: 0x5397846e3fff77f500da6dbc,
            limb3: 0xe26d685c4365e342109d0ba
        },
        r1a1: u384 {
            limb0: 0x9bc1051782d84793806d878b,
            limb1: 0x1642edf27f040ad57feb6f89,
            limb2: 0x11a5d3523a88580869d28ca2,
            limb3: 0xd22ff50c5a9bd729115a889
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x1974fc785431be1e90b76cf1,
            limb1: 0x5523616ad31f45b5acbb41f0,
            limb2: 0x4db84aa19ed0d09fdfd72a39,
            limb3: 0x4bee7a1546e6a96b8c65312
        },
        r0a1: u384 {
            limb0: 0x1fff8fc0e33c70b81adce7d,
            limb1: 0x5503816c20ef23cb62024c84,
            limb2: 0x1d58103be6d430043405b3ef,
            limb3: 0x107fb3faa9b9af026c550cd7
        },
        r1a0: u384 {
            limb0: 0xed84d2bc957cddd0e6e4ad25,
            limb1: 0x1800d9d9c9bdeeb05cada676,
            limb2: 0x6bc88f0ada5bbcfb48988f0b,
            limb3: 0x177faefe6e97b317f26d47c2
        },
        r1a1: u384 {
            limb0: 0xe487165be396059ee48112a2,
            limb1: 0x57fae5a95d9b810b370239e,
            limb2: 0x9959f70caa80a4c337de8fdf,
            limb3: 0x744e597435d3317bd2d3cee
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x30d36077b6d0262e218111c1,
            limb1: 0xc74774ca1af660eaed4d8329,
            limb2: 0x6448cecfde912a7d2029dbc,
            limb3: 0xe743528ce0c94e1a76f2f60
        },
        r0a1: u384 {
            limb0: 0xe1f8a574cee0dad622d6fead,
            limb1: 0xcd681358d077b827cc148be2,
            limb2: 0xc8fb346621601764fa91b40a,
            limb3: 0x133d21c52017365921207d63
        },
        r1a0: u384 {
            limb0: 0x5cb088f57e1e3f6a62571b37,
            limb1: 0x4089cdf0fb67a7b1d79838b3,
            limb2: 0x62401a2e57abb0652e0fee81,
            limb3: 0xcc83c46ac38241e1c33aca2
        },
        r1a1: u384 {
            limb0: 0xfd94f04ec006d63b4825ecfa,
            limb1: 0x96ef1f9240c32fdc393b81e2,
            limb2: 0x6d46c2685a1a1c50e84c8b24,
            limb3: 0x1528bf72bee83f2c80884dd2
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xf1675d98caa0e86774bc637,
            limb1: 0x601f3b88148d94ab340ad0d7,
            limb2: 0x38be976c910e6b1d767b2184,
            limb3: 0x3e03977cdee4d24405e656d
        },
        r0a1: u384 {
            limb0: 0xe1a8086a67acf571c0af95cf,
            limb1: 0x1eda39e1440a2e311c78ae41,
            limb2: 0x3bacbf4628f20f0353dc2a71,
            limb3: 0x12bbfc96114eb5f664d2f89c
        },
        r1a0: u384 {
            limb0: 0x301cba8607d6747f45a6ac34,
            limb1: 0xe736ba1686c2c9873cf10893,
            limb2: 0xa0aa0fae3c9f8cab4f768c4,
            limb3: 0x15a9608ffbe07f61ed31b819
        },
        r1a1: u384 {
            limb0: 0x89bef3c7071d9d77cfc34894,
            limb1: 0xb492c854b864451bd42b6f8d,
            limb2: 0x90d08dba8607ae67e7ffe8f2,
            limb3: 0x3df2c581fd145f7d0c76401
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x8f8bf2310745715d8e60675,
            limb1: 0xe7983befc104f7bd4886ad3a,
            limb2: 0xd6b5d3a93563b2103c29cec1,
            limb3: 0x1902b1e10713c8d95829b014
        },
        r0a1: u384 {
            limb0: 0x392c934ad398e9471a2a3e6f,
            limb1: 0xc81c0dc22eff61dca36ea27f,
            limb2: 0x4605027ef09f9b7d03fcc1c2,
            limb3: 0x142c2105c569b0e7aee457f1
        },
        r1a0: u384 {
            limb0: 0x86fc12d4ddb34349e58e0713,
            limb1: 0x9a132e3db41060771e480d9f,
            limb2: 0x6e00f3b7a9cbdf6ba01f3694,
            limb3: 0xf3f4843686de973131d67ee
        },
        r1a1: u384 {
            limb0: 0xf7b6328930ed21138fcd8f92,
            limb1: 0x354fd9f9ec8f828426279c4c,
            limb2: 0x3df938a725947d029e1edf6f,
            limb3: 0x1143440784148d84b5ae0952
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x186d09647ff0bba5d26ed28e,
            limb1: 0x623c8f44caa6f18538e106b2,
            limb2: 0x6ee87df7083a561d754b41d6,
            limb3: 0x8a8a90d75fab6a61d0509a1
        },
        r0a1: u384 {
            limb0: 0x6adbd952167baf9618d42d4f,
            limb1: 0x321d82100a434b5583df9a0,
            limb2: 0x24f6e8a30ab01f51c1f581b1,
            limb3: 0x3fbeeb4073b163b3a283631
        },
        r1a0: u384 {
            limb0: 0x3cbe311d6bab02eedeee8686,
            limb1: 0xa954bca129b7bbed1f638f3e,
            limb2: 0x256baa5a7b0901b1c39a2060,
            limb3: 0xd44f3bb3b9ac2f6050e276
        },
        r1a1: u384 {
            limb0: 0xbc701985313f4fd60a02502a,
            limb1: 0x879d4ed1464b95cc93907b88,
            limb2: 0x95c12c7e24be41f785419bee,
            limb3: 0x8e3562c02b89b593503d443
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x8acd42eff277e12a1c665cd8,
            limb1: 0xc8dd9dfb56ea54ca5c9d26e6,
            limb2: 0x803b24ff12a9cd7524a26b87,
            limb3: 0x27b1b3c904791e3fa942dcd
        },
        r0a1: u384 {
            limb0: 0x7a880435688221e820d4164e,
            limb1: 0x9754d630e027f9217dd0fba6,
            limb2: 0xee6cbf6da2000115b0cca0d8,
            limb3: 0x162f5c264c2d2728aaa1f652
        },
        r1a0: u384 {
            limb0: 0x314a0d54f7db63dcd3d6c0e0,
            limb1: 0x793c614f53a688375ca369e8,
            limb2: 0x296c4ccd5f785e294abeb492,
            limb3: 0x20d58632925a8df2d3d48bd
        },
        r1a1: u384 {
            limb0: 0x82c581e26e2e612aceaca787,
            limb1: 0xe02d73cc25449c92dfd7f088,
            limb2: 0x732270a5ec065ff678b3666e,
            limb3: 0x17e813008da019a1fab544c
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x272c29aa11aed8e43cc6141d,
            limb1: 0x71ace08186410aa341601ace,
            limb2: 0xb9a9aa2f3050b27084ffbc22,
            limb3: 0xcbec164f80a90014457abc4
        },
        r0a1: u384 {
            limb0: 0x84565ab9fffcd0062808ee35,
            limb1: 0xef87eb1f3b09214ee1c6bcf7,
            limb2: 0x1ac3de549632346de8521585,
            limb3: 0x302f3ebfd6939b7a5be7a5
        },
        r1a0: u384 {
            limb0: 0x9615b19b27deb1c37635e038,
            limb1: 0x71949c2c6bb3f43004b870d9,
            limb2: 0x1795921be995a5d68845a590,
            limb3: 0x17c275a0f8dd134ff6e6ab1e
        },
        r1a1: u384 {
            limb0: 0x8b1d7f267653c440de637b02,
            limb1: 0x3a5e2de261d557e994157f3c,
            limb2: 0x35f5a3781402a1227675829f,
            limb3: 0x18c4e5eb81e38ada34f8ab67
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x4a074239eac7dc93b8113ddd,
            limb1: 0x64192efc9a09299ad173b34e,
            limb2: 0x3e86b7943ceda2cc678e6719,
            limb3: 0x13a3cf500109646aac4d69e3
        },
        r0a1: u384 {
            limb0: 0x89c20af4b5a694d4d6d9d45d,
            limb1: 0x76071bd0d45623a4cfe9647,
            limb2: 0xbaeda04445ec73fe1fd859d6,
            limb3: 0x12f734fc3463dc7adb90dccb
        },
        r1a0: u384 {
            limb0: 0xa12928a1d5d6408853a05ae7,
            limb1: 0xa8fc3f1aa38f3d6554357b31,
            limb2: 0xbb5e7127cb9669d52daff069,
            limb3: 0x525a9e909f39cb2e32cb71a
        },
        r1a1: u384 {
            limb0: 0x2bf733d3a23d1446da39720e,
            limb1: 0x69c363f32dc0ed3a22acc728,
            limb2: 0x3eb64a364ee2cb63222dc046,
            limb3: 0x1e78c4855ad25e4e08ba1eb
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x7116c638544720919ba1141f,
            limb1: 0x38d3486b5a4d7d2b1cc7a81,
            limb2: 0x9b0ce563be273a4ed3481a1d,
            limb3: 0x373ac3e05382518aa76323c
        },
        r0a1: u384 {
            limb0: 0xf667b74f8f4e3f484c4ae08b,
            limb1: 0x2206d95b2b7a7ca7e2aecdc2,
            limb2: 0x64ca11d3eb4448d39f8e7009,
            limb3: 0x2585d7ccdfb9e2246f24d05
        },
        r1a0: u384 {
            limb0: 0xf03edce3835efea888f2bd2a,
            limb1: 0x992d9468044e686d3d07216d,
            limb2: 0x98d781d756b874d0bd7a7451,
            limb3: 0xe44d0964d322c8cb9cbcf18
        },
        r1a1: u384 {
            limb0: 0x6fc3182d07a38a7f0fca843b,
            limb1: 0x551df1a531a45713e9e8c1aa,
            limb2: 0xde4e92d1f38c48c0f9587009,
            limb3: 0x1072fb6b01d871f8150e2fb1
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x1ed40e3c2cfcc055cd4958d6,
            limb1: 0xd1453a4587d6c2ca2341043e,
            limb2: 0xf79c2172e21b91ba79a5ea2d,
            limb3: 0x65c82633f9d4d20c07f6ad4
        },
        r0a1: u384 {
            limb0: 0xc8398341fc07277f183c17d5,
            limb1: 0x86bc2e62775af5eae61d9aa,
            limb2: 0x403276e7635ed1cd34473d3d,
            limb3: 0x18a18bd0be954bbff600c7c1
        },
        r1a0: u384 {
            limb0: 0x8b17fbda26b7133b0600c51e,
            limb1: 0x48147de60df80344b55d8fb8,
            limb2: 0xa0e018e36cfa14e2a39e57fe,
            limb3: 0x70aed2d475ad180844d7587
        },
        r1a1: u384 {
            limb0: 0xf1d8e65deba9a3605b50946b,
            limb1: 0x3677c5769dea1762e0a3a25d,
            limb2: 0x5d4399ba6a9742e8f2aa1928,
            limb3: 0x2d57160d6c66d1e0c2f0c0
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x8477b2ca00b2aeca6e32a3c2,
            limb1: 0xc6f29b461233bd0ebc643442,
            limb2: 0x84af7efb348b61e615b2333d,
            limb3: 0x1533c0ad4f3bdc8c8d26cea4
        },
        r0a1: u384 {
            limb0: 0xc1c642702f7caf535b06e0f2,
            limb1: 0xe5245d45b1adaa7c89f0db9c,
            limb2: 0xfdaf6276d41ae24845843a0a,
            limb3: 0xb6f912c27d4179d1cb5e992
        },
        r1a0: u384 {
            limb0: 0x7338a41d8d41ba28d96db37b,
            limb1: 0x51a10fe0cfd8c6d045839897,
            limb2: 0xdb73279246e7073586ebb14,
            limb3: 0x180e0a6b2de7e0540e582783
        },
        r1a1: u384 {
            limb0: 0x4d8f0878c0af851ea8d0cff5,
            limb1: 0xe24443b84e3d452bac74c32f,
            limb2: 0x4e4f3f08f29048e7d791c0,
            limb3: 0x107fba05f68214c93b0d00d3
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xe6882416d7bc0be138e4eeb2,
            limb1: 0x1ffc8c27a2046327376e250,
            limb2: 0xf96a7955cf8a3345e89477c1,
            limb3: 0x31ae02e34d7d21957899dbe
        },
        r0a1: u384 {
            limb0: 0x148232d34a8da37b7adc99a7,
            limb1: 0xd0a0095db108dfd24e92848f,
            limb2: 0x89fb49e1a36591a6b189f964,
            limb3: 0x1900bee131450e7d7a914ea4
        },
        r1a0: u384 {
            limb0: 0x97018429f16d24bc1e7f8af0,
            limb1: 0x1f68aaf8291a6decfb708b43,
            limb2: 0x1f700e88b537bffef39907e4,
            limb3: 0x9cb633f82c6e595f1785e5e
        },
        r1a1: u384 {
            limb0: 0xd8d9d3a12a0dd7b129ffda0,
            limb1: 0x7a94e9da792505fe4fbdb0da,
            limb2: 0xf16eaac379266d5a4210e839,
            limb3: 0xc24197c1ceaa3dd3de58b21
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x3e3cc1b08d8d1fda723658bb,
            limb1: 0x1cf952b752fb9ef1e82f5094,
            limb2: 0xcd52c2cfed361eab29f2026,
            limb3: 0x59d1335947ab746801c0537
        },
        r0a1: u384 {
            limb0: 0x34f187a454a321b866885648,
            limb1: 0x26461aa4e35660f0dce08465,
            limb2: 0x7540c65dddc34d56adebea12,
            limb3: 0x1417edadd46132f1155c1f
        },
        r1a0: u384 {
            limb0: 0x716255bec8b8a867659f8ec1,
            limb1: 0x728375c8a3a566ce58f184ab,
            limb2: 0xf3c4e74ba75e0f526ebea027,
            limb3: 0x130e1557b595456ac14c74b
        },
        r1a1: u384 {
            limb0: 0x956347dad0355d5e6b5af3c4,
            limb1: 0xef43db3b9c396c251944db86,
            limb2: 0x6ee505074759d3fe9876542d,
            limb3: 0x4097c38f547306cd4f3b276
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x6231a3597b09b6d5fda5c712,
            limb1: 0x3f3bd12ca9ef48ef6199a7f4,
            limb2: 0x6883383b5a445ca79fc407ee,
            limb3: 0x141accc8970ace156fe95a36
        },
        r0a1: u384 {
            limb0: 0xe0c805067330b20430c585c8,
            limb1: 0x8ff3e0c3028ea8f24ee6fb30,
            limb2: 0xa368fc9a21efabd91ace37d9,
            limb3: 0x18b35a8fd65ba4cbd734a0ee
        },
        r1a0: u384 {
            limb0: 0xf4e1f73d2ed7ccded6c419de,
            limb1: 0xf379cd28811f89aeea7aee67,
            limb2: 0x727c64c0e714ab6ea82391e8,
            limb3: 0xf454aa00efef9460f382b49
        },
        r1a1: u384 {
            limb0: 0x952793660f1fe4300657022a,
            limb1: 0xe8fa6c2b1aa542384940d1ec,
            limb2: 0x5a1f19c729b4b225b1501e31,
            limb3: 0xa5b1272b68436f9433d112f
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x990dd2f78bf76d63c8a1579d,
            limb1: 0x324c14f20ab56d3dc480653d,
            limb2: 0x21bbedea5a0b817b568c1995,
            limb3: 0x127c86bb9f80d6468a5a0787
        },
        r0a1: u384 {
            limb0: 0x5b66a3f1affc43619038b84d,
            limb1: 0xd61e9a91a30e1c4606116992,
            limb2: 0x8a3bb65c955e0ff1e2749335,
            limb3: 0x18094793f6e93a6fbbe88c78
        },
        r1a0: u384 {
            limb0: 0xf16deb47fddb712ce639140,
            limb1: 0x6ce4afbf91551ea8bf91543e,
            limb2: 0x1576ceb94ed691afe037a797,
            limb3: 0x89f45701d0959ae8869f16
        },
        r1a1: u384 {
            limb0: 0xd1d903d8caaa0032b50eabbb,
            limb1: 0x4f16d1eedd24943ef87959c4,
            limb2: 0xc2729c35e8f641933cc2b080,
            limb3: 0x12a0bc7d5fef85e9964e5dd
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x7ee6a5f3ce669de80b52ba42,
            limb1: 0xa7d66db543d3c6a626f79dea,
            limb2: 0x135c684f9ac0e0a34315e044,
            limb3: 0xaaafef3c4298542248b3a58
        },
        r0a1: u384 {
            limb0: 0xe0b267ea1f8e8dc2b83d62e,
            limb1: 0xabac56946f0699334fa765e6,
            limb2: 0xee0060a937926e9b6d6adb90,
            limb3: 0x13d96385b510deff2f4d1d32
        },
        r1a0: u384 {
            limb0: 0x1271c3349afe8fbfd4d7ee54,
            limb1: 0xc4df31a1a0ae89c5728ee819,
            limb2: 0xa0de891b771af1ba8a67f8db,
            limb3: 0xf69200f56879e50a92ecd6e
        },
        r1a1: u384 {
            limb0: 0x3260bde1e37542b8b8465e10,
            limb1: 0x7c3420aa9e48318a6606ee07,
            limb2: 0x126b5e1ded963ffbb6adb4e2,
            limb3: 0x18d1f7ae28741bb590bb39a6
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x269fe662be1952669b367916,
            limb1: 0x444dc78864cd61df2552517c,
            limb2: 0x28be12e26f4b32f0652ab84d,
            limb3: 0x19a30428e98bf9b0a2c79ff7
        },
        r0a1: u384 {
            limb0: 0x21df9689e2fe058639581b7d,
            limb1: 0x12a80b9a201864b6f46ebab1,
            limb2: 0xd09d200c1fe4354e796b9b48,
            limb3: 0x6bec03fbfbca091da930b62
        },
        r1a0: u384 {
            limb0: 0x28188947a47cf18c9d40e8da,
            limb1: 0x7bcabfacb5b01ab3628aaff2,
            limb2: 0x76a7b58adfbb924378e8220d,
            limb3: 0x89da3830e68cf0f2c7a55ed
        },
        r1a1: u384 {
            limb0: 0x16d6797ce84cbee04811bb4f,
            limb1: 0xeec191427178e5b1c9c7dbb2,
            limb2: 0xe59d267e616c978d17fd98d0,
            limb3: 0xd301c0973bbf180e6fc4134
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x95db0469c00d953ee476c048,
            limb1: 0xa412df73ae5febbec296a5fb,
            limb2: 0x16b9fdec9340c8f3aefa561c,
            limb3: 0xfc955cb99bde258d8760197
        },
        r0a1: u384 {
            limb0: 0x83c7d7a804031b10c844d0cb,
            limb1: 0xfb88180286d20648b40806c0,
            limb2: 0x31368cfad1bcb8ef19b9d382,
            limb3: 0x8fd02881a5331dfb0922a3b
        },
        r1a0: u384 {
            limb0: 0x2513b777e720406cfba171f4,
            limb1: 0x9d9da48be5e4bae3bd3e8c84,
            limb2: 0x8d75547712fc62f6f651762d,
            limb3: 0x5f0f52ede58374df52c0643
        },
        r1a1: u384 {
            limb0: 0x13d6b4aa8d9a46d5720e1b74,
            limb1: 0x5b93ebf4000945ce87c9dcf1,
            limb2: 0xffe34203a0c826e972d857bd,
            limb3: 0x1870c14dc5ad5a661156fd61
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x13a8138427c111d431036213,
            limb1: 0xc177e00de5b7215a863e9c0,
            limb2: 0x97a203171990cbbb0e5ab2e5,
            limb3: 0x8a0a3f26b8d3bcefb78c724
        },
        r0a1: u384 {
            limb0: 0x9d1740ea8f388b69c175f646,
            limb1: 0xbf6f5d96d616051ae3572d4,
            limb2: 0x9bc542122a140e5461a88c52,
            limb3: 0x510159112f2d409afcdecdf
        },
        r1a0: u384 {
            limb0: 0xf6335307702c1329032a46bc,
            limb1: 0xf975ad40eedeac981c916520,
            limb2: 0xc367b7993d6243a4984974d2,
            limb3: 0x54b5cdb776381cc145be730
        },
        r1a1: u384 {
            limb0: 0x29d26ba47472791689263678,
            limb1: 0x6f7b1f34b002954f5506eae0,
            limb2: 0x2f9ecd635cd4d5f6e7f08ab7,
            limb3: 0xd547c2cb31b79da87b93b04
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x31f476324f857ca9daa71d3f,
            limb1: 0x5b64b681867d0f5505b9f139,
            limb2: 0xb89e509fc5decaef9cb221f1,
            limb3: 0x5b8f08ef767ca4cf5f36622
        },
        r0a1: u384 {
            limb0: 0x8f44b24a23750c8f0fa6270d,
            limb1: 0x554f99004f5b1f2a21b02609,
            limb2: 0x3710c6daa7cac50a8ca6de8,
            limb3: 0xa3b4aea7c32a8fc4d9a662b
        },
        r1a0: u384 {
            limb0: 0x93f0fbf4c4d931c3a733902b,
            limb1: 0x3a038220fa2da3a7087689cd,
            limb2: 0x5bc677d1583979bda5797f17,
            limb3: 0x11996e8759ccb1bda7042160
        },
        r1a1: u384 {
            limb0: 0x1ee1d1db6f033786016fd46,
            limb1: 0x2d4942546551a7b5afb1ee11,
            limb2: 0x5c0b006bc71d7e27359f5f02,
            limb3: 0x35c97a7e460075f4d915117
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x7a6d6eabfb0034d1a702f683,
            limb1: 0x7d0e2455c9a35664ebcfb47b,
            limb2: 0x32cbd0245fbdf1e7636a4217,
            limb3: 0x19c09fc88eb1b1a3d18741a8
        },
        r0a1: u384 {
            limb0: 0x533b4770f929349a30d265d1,
            limb1: 0x2a2bd55c9677f8858218607,
            limb2: 0xfdc3daccd568a7f098f996b7,
            limb3: 0xda029aea876b619425b5a9b
        },
        r1a0: u384 {
            limb0: 0xe5b827de5b5a8d55c3f84090,
            limb1: 0xd80c5371f403010197d4f105,
            limb2: 0xe577025df13d2871b00bc8dc,
            limb3: 0x16414390859fdc9dba5dbd65
        },
        r1a1: u384 {
            limb0: 0xaa1076a6910862d36bbb1a19,
            limb1: 0xcd4b0a7e1356a4c6467e7843,
            limb2: 0x88f035fb25750a88b3937cc0,
            limb3: 0x92167f2a0715c9e9d74c7a9
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x813cf8d46ec722731cb2e790,
            limb1: 0x3ae401e3a2c43950dd3e14a5,
            limb2: 0x7f1e2595a7bf3cb9644dc3a2,
            limb3: 0x9a64184b516425353d3342b
        },
        r0a1: u384 {
            limb0: 0x1be4ad4c913b7f23ef8afc45,
            limb1: 0x4b9c5ee3da9ae172d5612c39,
            limb2: 0x362a12402d4cd3c50c5a5bc1,
            limb3: 0xaf426e78303a8cf5a43520e
        },
        r1a0: u384 {
            limb0: 0x1a1fbd631479e96bc85c9b39,
            limb1: 0x755e043e52470551dc47fa77,
            limb2: 0x2fd80441adcf386b79dfadce,
            limb3: 0x15cdd2f908202480bb0f56fb
        },
        r1a1: u384 {
            limb0: 0x493a7937f956ab6960bb1a74,
            limb1: 0xec402c0b38b6cc4d5094363,
            limb2: 0x3d52461743a5dfe63d2e7a33,
            limb3: 0x92150697852cb2d08c3521b
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xb34c26f3f693dd84f80a2827,
            limb1: 0x3a5bad99a295b14daa58eaf3,
            limb2: 0x294c30f60635aa35b08a22d6,
            limb3: 0x7b4843ff0c2694d4281b82b
        },
        r0a1: u384 {
            limb0: 0xf601429d3a9a15e87d6c6a9c,
            limb1: 0x9ad779f2762b9393eaba8c6e,
            limb2: 0x887c88bf51c15df955aac60,
            limb3: 0x858d73304a934b9aae3be02
        },
        r1a0: u384 {
            limb0: 0xb8b2d232a5e28fd350087039,
            limb1: 0x72a42652def490cf16cc1d6d,
            limb2: 0x225b45d85fa199dffd69ffd0,
            limb3: 0x11aab051de4d3b03d63fd9c6
        },
        r1a1: u384 {
            limb0: 0xe973e3abcfc1a8b46e3622d1,
            limb1: 0x1da2831de5c376f4315553ec,
            limb2: 0xbceaf398ecd71f612f704c01,
            limb3: 0x3bdf213c9512ed9e6961848
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x3c31209a4897e0f66a542078,
            limb1: 0xaca6cfb5457ca1adc99138fe,
            limb2: 0x72bf4739ae7b1a8652c823a2,
            limb3: 0xdd9144f8c45e6091a6714d7
        },
        r0a1: u384 {
            limb0: 0xc8942e9d5abaeec4938f2308,
            limb1: 0x30ff4bdf679bd4a2b87fa34c,
            limb2: 0x21acf101ca7ff6cd9129e67a,
            limb3: 0xda6ef8b0ede3a09d1a5c00b
        },
        r1a0: u384 {
            limb0: 0x2c5038a7eeaa757c15d205e,
            limb1: 0xe9d28bbd2c18d52e1b9024f2,
            limb2: 0x959d4240dbbc46a2c5bbb5b,
            limb3: 0x9cd8b42cb440fc77607b954
        },
        r1a1: u384 {
            limb0: 0xd35f7d36be1bf213c01aba98,
            limb1: 0x655bc51b43c6394245778244,
            limb2: 0xd626d74e22844c1a8e2cc950,
            limb3: 0x28c4b291b492ca43266277d
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xde11ef8702d534dcae97f4d1,
            limb1: 0xb7e1313492ee7c957d7c08b1,
            limb2: 0x94685a26959aaaf145f46c06,
            limb3: 0xbd77d859d62dfada48bdca9
        },
        r0a1: u384 {
            limb0: 0xd50523e1ef354e160696adcb,
            limb1: 0x4ae2fa0fb50e711c936a065f,
            limb2: 0xaeb883cf2c5a9ad32ce94798,
            limb3: 0x6cc3bf5598846ca25341da5
        },
        r1a0: u384 {
            limb0: 0xcc6dd0380e5398c3264b9bbc,
            limb1: 0xdfe3641a4969d3d49718e00e,
            limb2: 0xd7b59b3160334de5eacebeed,
            limb3: 0x35c0cdaf5e759016dec572e
        },
        r1a1: u384 {
            limb0: 0xc2d2dbc06bdb8ff543ebcea0,
            limb1: 0xea4c9e638f95e42cea458d85,
            limb2: 0x9aa2cb9c51ba076dd941d7c7,
            limb3: 0x8052da2e0dd2dec3a95d9f2
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xabb764ac8036eb503e39861f,
            limb1: 0x22e8fa738389a0378352e2d2,
            limb2: 0xab10fb803ca53103ce99fc28,
            limb3: 0x831ad8b93ffed9245877b44
        },
        r0a1: u384 {
            limb0: 0xf721e83ab0eb9fa28b5d9349,
            limb1: 0x71c18646ef565689efc545c0,
            limb2: 0x590ec1d6f3abfbdb3f9f8b0d,
            limb3: 0x17707d0e47e7a1044a4fd9c6
        },
        r1a0: u384 {
            limb0: 0x16d0a838f9b0fc16504dd27,
            limb1: 0x5ad87ce7ad12ae830368b776,
            limb2: 0x62490899b4f397e09c44152f,
            limb3: 0x15528a389da1580f43d95ade
        },
        r1a1: u384 {
            limb0: 0xa715dcbb03bc2faac9d64bc7,
            limb1: 0xbd9b3ab159baa441a3ff56ad,
            limb2: 0x257f876f487a6dab4fa17c81,
            limb3: 0xecfcaeb005ca1b7f92bf862
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x84bef2ae28f4fb378ec1eeb6,
            limb1: 0x1189e835406150f7fbe047cd,
            limb2: 0x8d7fa056d5bff703455219b9,
            limb3: 0x17b55cffc9c559918a9ffbca
        },
        r0a1: u384 {
            limb0: 0xbcd55d1a045238c11947faae,
            limb1: 0xfddd35b7f062ea97fa82612f,
            limb2: 0x73dbd0a4863e8634338c4c3,
            limb3: 0xfd6b167fe3d1476b5da9dfe
        },
        r1a0: u384 {
            limb0: 0xbcf99cf3772f639491c9a228,
            limb1: 0x1f8ca8645ecbeb98bb9ff5ae,
            limb2: 0x82f62cc92f240ff8bc4fca5,
            limb3: 0x6b4211c4d1b18ea0c5a5e4c
        },
        r1a1: u384 {
            limb0: 0xe60a226e7c7d83e720ce3f23,
            limb1: 0xe357a6f93412eb508cc034c3,
            limb2: 0x532ca9a4ca346dd2e0913328,
            limb3: 0xae125a2c4b74ea5caf9317f
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x9ea0eee8a358bedf9bb306c6,
            limb1: 0x27cbc0c2d576ed81b376df3a,
            limb2: 0x284d8131858da400101172fe,
            limb3: 0x6f01c5d4ccee41765be5896
        },
        r0a1: u384 {
            limb0: 0xc9cca6ba98560a0a14f61b11,
            limb1: 0xd4eef97cebdd8ef2a73732a,
            limb2: 0x64b605444de34fc8002b43cd,
            limb3: 0x16cb65875e7c30e951cccd8
        },
        r1a0: u384 {
            limb0: 0x1202ef010c0cded8ddce59aa,
            limb1: 0x7268537e1c67cc008bb9ba6a,
            limb2: 0x34ab03d803da94a85a2a1f91,
            limb3: 0xffbdd8dbe035b9aa6fa5cba
        },
        r1a1: u384 {
            limb0: 0x624339d3f2fb4299150fea00,
            limb1: 0xf8999090b0c3b02d48cde0a1,
            limb2: 0xb9c9ee775d38075030edfed8,
            limb3: 0x4962ca75250846083ca0a66
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x5a6db269a838098829edba6d,
            limb1: 0x67230edf9666dd5326fdd901,
            limb2: 0x4faf83c8878cbaa298052a07,
            limb3: 0x112b346339b3c5902a46ac8
        },
        r0a1: u384 {
            limb0: 0x21277b8157638b119fcc31e4,
            limb1: 0x58677ee1ee7f46f77ebafdd,
            limb2: 0xd954201344c8653340beaf5,
            limb3: 0x1540de56dfb2f896102f649f
        },
        r1a0: u384 {
            limb0: 0x7542a639e101035b31163743,
            limb1: 0x16d5957af1c5d36ad26581ce,
            limb2: 0xa42f7046622fa8f1537fcbb9,
            limb3: 0x3173bcc714029b198352b15
        },
        r1a1: u384 {
            limb0: 0xb1d8c4b69f2dd6531b317ba0,
            limb1: 0xecfb946f37008a59694b6c1d,
            limb2: 0x45a75c06aee99914e7ea7797,
            limb3: 0x5a1008ab79da1541477a2bd
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x9c4a4d3c7bb2576aeac0337b,
            limb1: 0x8b9250b2bed82359a757e126,
            limb2: 0x2d7dd2e4d3d0945ac3d9cb88,
            limb3: 0xa0bad126c265d46d51689b7
        },
        r0a1: u384 {
            limb0: 0xf65a98dff64d2a0fc947454f,
            limb1: 0xa50259b7484098611c2cb9fd,
            limb2: 0x5a51b1c4671888accdca74af,
            limb3: 0x133a4335f59c0259f1a3ff19
        },
        r1a0: u384 {
            limb0: 0xdde88be699f516d731c68610,
            limb1: 0xce004ded1806688e8e7c458a,
            limb2: 0x932f3c1c8e56d4b9f19eb7e9,
            limb3: 0x124f291f47d76455477102fe
        },
        r1a1: u384 {
            limb0: 0xa97c633609d63d754d4a2692,
            limb1: 0x3c5ba5df2f9bb1cdcfb55e97,
            limb2: 0x19aa69b7f4751e5e39459c7e,
            limb3: 0x3f5780b2dcaccad745e1d15
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x6b810adc509554ded3ef3b95,
            limb1: 0x95284597042e1ecd0726081e,
            limb2: 0x120e66352bbc0746f23c9af9,
            limb3: 0x14407db8291afdcc6767f0d6
        },
        r0a1: u384 {
            limb0: 0x9736d40090182b75e8148929,
            limb1: 0x3b4a1acb2265372a95f14a8b,
            limb2: 0x688f573f43a95022122a84f8,
            limb3: 0x6ee3cecdb39eeaa72352bea
        },
        r1a0: u384 {
            limb0: 0x86a4ae1d79fed79fda04bb3e,
            limb1: 0xdbe8a4d79312a8b7bca3137,
            limb2: 0xb002871665722703632ca373,
            limb3: 0x6dad85068365251a3070c46
        },
        r1a1: u384 {
            limb0: 0xe811cc9a481723566332af5c,
            limb1: 0x5995536393d8252711fa1719,
            limb2: 0x4b8d398526d9d7803e5e35d0,
            limb3: 0x9c613e006352ea575d7f10c
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xdd3830612c58d544327ca0f0,
            limb1: 0x1142cd575c788d8d19a24ba9,
            limb2: 0x45ea7f0421cb2dd4e5b4ed7b,
            limb3: 0xfb69c6a2cbfc9dfb9b01427
        },
        r0a1: u384 {
            limb0: 0x875ab3c75d3a4e43d10b2503,
            limb1: 0xf7cee1313a095fe9e31b7072,
            limb2: 0xe85be88d689d67e6e9835268,
            limb3: 0x10635d3a601f92ab21801ab8
        },
        r1a0: u384 {
            limb0: 0x9eb9ef4ae7e0f7713d97450c,
            limb1: 0x8dfc81038830750d79da8b26,
            limb2: 0xc17475937901d8cadba451ca,
            limb3: 0x6f9f723841ae3e1a88c34f4
        },
        r1a1: u384 {
            limb0: 0x71e84e872166781dda7182bc,
            limb1: 0x9dde7059d6c002a7f762da96,
            limb2: 0x2b9353ca4892a788389ca0fd,
            limb3: 0xd413552182113308d1bf463
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x44db5f922ec99665b26634e5,
            limb1: 0xac41b74d5483c597704eaaac,
            limb2: 0x550e72e8ac0309c515e3799,
            limb3: 0x1952ab876a19a0773ce3962
        },
        r0a1: u384 {
            limb0: 0xf574202e10923244624559cb,
            limb1: 0xc0f8318a3d481320d441ef0a,
            limb2: 0xde67bbfe352326e4915e12b3,
            limb3: 0x961a1762c6fe08878fc48ab
        },
        r1a0: u384 {
            limb0: 0xf69e2ab32451ecc443146d68,
            limb1: 0x2d1bd9f71192795f2433de38,
            limb2: 0x32cd169947d915590eceb231,
            limb3: 0x5a7c915f44cbc571061b333
        },
        r1a1: u384 {
            limb0: 0x448a7247da14616d79b68e7e,
            limb1: 0xec3301200e41cfe8a1eca52c,
            limb2: 0xdadc3af8cfa96ac54608c965,
            limb3: 0x17fe1a7c7ee57b63cc748535
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xcc1f58585e1d7b5bd45c4c1f,
            limb1: 0x745110cbba12e028cd54150c,
            limb2: 0x2ce6cbed2508c5d828082677,
            limb3: 0x28a36f542a28f6997a811fc
        },
        r0a1: u384 {
            limb0: 0x541d567dcc7fbea97520cd94,
            limb1: 0x65d407bf06f076619981fe2e,
            limb2: 0xd583e9bfd967becef21bf75f,
            limb3: 0xac2c40f46751f043fe2833b
        },
        r1a0: u384 {
            limb0: 0x92c58aae975c98038f79305,
            limb1: 0x7d1ce0079826b8902c5d46d3,
            limb2: 0xf99d7ba5cb12513a32fb5eec,
            limb3: 0x7cc8363ce478f6d8f184c26
        },
        r1a1: u384 {
            limb0: 0x8397c406c8e69df7b1cea699,
            limb1: 0x4a543e21f4fd830fab085fcf,
            limb2: 0x25a94f2ddc7a920fd1361d5b,
            limb3: 0x16a2f7057acf7d7df785557d
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xd795ec8c32c9ebd1bf9f74d6,
            limb1: 0x7f585c54a0e235a718bb6927,
            limb2: 0xdbb23b0ee0a160580fc4c61d,
            limb3: 0x18cc0bda792f81e333e2b374
        },
        r0a1: u384 {
            limb0: 0xc46a2a7c259ebd088ce10740,
            limb1: 0xe6a830b64d605c010a76076e,
            limb2: 0xb1a119cfe08d1632021fc196,
            limb3: 0xb9b519b9c1bb0eb41e2ce4e
        },
        r1a0: u384 {
            limb0: 0x345bf7846f464a931457dfde,
            limb1: 0xc8fc5238edd2d7260a066bbf,
            limb2: 0x2523af32173eba316f128bd7,
            limb3: 0x32a68698a38598bd123d251
        },
        r1a1: u384 {
            limb0: 0x2224558439f158cbcf42da7c,
            limb1: 0x387b507d6f0320a9a2e44e6f,
            limb2: 0xb29b2f37752d24d3fed9a8ea,
            limb3: 0x168e24551680276e33346c1b
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xf8c9e8b4405badfa94226735,
            limb1: 0xe35370c03766b0439ba9bc0c,
            limb2: 0xefd8d2d0063990aea5570748,
            limb3: 0x125e8f976f7536a2e85ea3cf
        },
        r0a1: u384 {
            limb0: 0x8f2d3d1bd687824c71ce27fa,
            limb1: 0xd5946aef2f36a4cb42aee9b,
            limb2: 0xce15918bb8dbd901b9685864,
            limb3: 0xc0299d504b8b7bb5ff23b7f
        },
        r1a0: u384 {
            limb0: 0x9a63e8f36e7127f93b5fab1e,
            limb1: 0x52d9ab603e72bca7b8fc5284,
            limb2: 0x8f734c44e7ba040f4a30952b,
            limb3: 0x1478222c63826742286f720
        },
        r1a1: u384 {
            limb0: 0x57fd0e62234f512c20e97da2,
            limb1: 0x876dd44c8838d26ecfad71b0,
            limb2: 0x9c591e15eb6492035916a674,
            limb3: 0x13830268b58006ff03775156
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xb2877a8ff989a065c386a33e,
            limb1: 0x13d2429550f4e9f72e2e2cec,
            limb2: 0xbcf8cd1b0cbec3511e153d8a,
            limb3: 0xcd008fe35f202ded141f6f0
        },
        r0a1: u384 {
            limb0: 0xcc3d9d00a942a5ab992f4ac8,
            limb1: 0xf81023268498efbea7a1843f,
            limb2: 0x561d9f10a4eaf5e417d1ccda,
            limb3: 0x10ab00007abd04f36507cb22
        },
        r1a0: u384 {
            limb0: 0x9b8b1ab2cc4aee0c67d4c474,
            limb1: 0x9840dfe76cc0dc415191c5c,
            limb2: 0x91cbd5473dbc72261d57d8f6,
            limb3: 0xd47a27fa79ac6ddfb973c4b
        },
        r1a1: u384 {
            limb0: 0x827056816dae6b0f4c06657b,
            limb1: 0x8112aa8d965353f81dd65054,
            limb2: 0x8c1382e0bed39f3950578dc3,
            limb3: 0x135456e60f547393ecee80e
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x5863cf017f4f31c0054a3612,
            limb1: 0x5a1ef8d1d2c315dd8bc6212,
            limb2: 0xe33ed175b6d1a029dda7c9aa,
            limb3: 0x182115eb42220d34f08e487d
        },
        r0a1: u384 {
            limb0: 0xb90bfad204b39a3cbcac7b4,
            limb1: 0x73b8d9e10bc6022a0994e39a,
            limb2: 0x7f5daebc21a409de8913242d,
            limb3: 0xfc2db9cb25d08faf7c832
        },
        r1a0: u384 {
            limb0: 0x26d0221ad0d5ae39d7d33a8,
            limb1: 0xbae8e0d584ccaa52aeab179,
            limb2: 0x59de453ae38340185debc29f,
            limb3: 0xc5a021a1d3134aa31cb39ed
        },
        r1a1: u384 {
            limb0: 0x7472a64d3fccc64229059166,
            limb1: 0x361a6711e93f12f3d1cb0320,
            limb2: 0x6bf192bb96314516f10b7449,
            limb3: 0xcaf028327c4bc3f8af13387
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x9fbb07d0355fee63ff3debeb,
            limb1: 0x91896030dd9d9080099fb74,
            limb2: 0x26da14875766e45e86646226,
            limb3: 0x107179b36f3ec30ed0344ffb
        },
        r0a1: u384 {
            limb0: 0x749309e43489bf57b329ac54,
            limb1: 0x88c5acfe2820fe65ec92ff05,
            limb2: 0xef5d77580008d71e56cfd7c2,
            limb3: 0x8347995c6bfa9cbd21c0831
        },
        r1a0: u384 {
            limb0: 0x3348804de4e8c0987c6280f3,
            limb1: 0xcfc8dd305e856fb4f80eda08,
            limb2: 0xb7eda62f28c44f9b55da9809,
            limb3: 0x6c1e0756ca916fe6d0f1453
        },
        r1a1: u384 {
            limb0: 0xecb36186ff6abf0ccb74caa,
            limb1: 0xee68730c0709c13875980d99,
            limb2: 0xdfb34758f87146c601b8e8df,
            limb3: 0x1179b833f2d1129d7dd26307
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xd53473f5ac7b5e99de412ea4,
            limb1: 0xf6c216059e7a2a6b1a09d23c,
            limb2: 0x5de59d8956f5a84da299063e,
            limb3: 0x159ff2806d40ff15099d5204
        },
        r0a1: u384 {
            limb0: 0xfdccb0d7c9716c23df3ced8f,
            limb1: 0x14e4ca22ebdbc559a20177,
            limb2: 0x5b60b25f325eb68e4cbd45d,
            limb3: 0x69a7d5ac5a38cce584e0b0f
        },
        r1a0: u384 {
            limb0: 0x903bac45b703185c327d9669,
            limb1: 0xe524dad4130c677c5a3b0f31,
            limb2: 0x11518ec180b31fd2f516e8b1,
            limb3: 0x29448dd80ce3c75c8b0d685
        },
        r1a1: u384 {
            limb0: 0x134286c732f95142935a2a98,
            limb1: 0xc493200ca6cd119550bafdd3,
            limb2: 0x7008cba4cae32054d22edea4,
            limb3: 0x15da5ffa50e36869f0f2ac43
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x699dddd0ce8eee874e7798d1,
            limb1: 0x5c3572d1a0e33576c5f95af6,
            limb2: 0x71a239e87768b6642c64c2d5,
            limb3: 0x193a4a988589350e15df6be4
        },
        r0a1: u384 {
            limb0: 0xa05a3143096e2700aaf1ae18,
            limb1: 0xdaee1baed61a3dc26f6005fc,
            limb2: 0xed7d52756e553a1adfd2b266,
            limb3: 0x1839757d13d8b73a5c23e083
        },
        r1a0: u384 {
            limb0: 0x94b6d2f8ced6ba40bea83ca,
            limb1: 0xfe22edaeb3c651a53c333676,
            limb2: 0xb7a1df3d2dcc34ad47dfbaf0,
            limb3: 0x81b823ad97ad3e98bcb93c8
        },
        r1a1: u384 {
            limb0: 0xef6f0e083b916a69a01c63e9,
            limb1: 0x8aedc8c1d6429b10db98ac62,
            limb2: 0xe6834dcabb9dccf40dbf34db,
            limb3: 0x15b856909992c27268ce5b40
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x5edf9450f71e9104f1c374e9,
            limb1: 0xcfd112580006deba5077fd8a,
            limb2: 0x289c80bcf75761bc030bda9d,
            limb3: 0x142182d337d4bdd0a9dc0152
        },
        r0a1: u384 {
            limb0: 0xe3f1affdcbbd3809a6881f8e,
            limb1: 0x55f40359611c687f96c91dbe,
            limb2: 0xb90435a9e7260873c34a0cd4,
            limb3: 0x113f465ca312058e0cd541d6
        },
        r1a0: u384 {
            limb0: 0x85f3a8c5d4928087f1ef8229,
            limb1: 0x62e48188da4d79f1a88f24ba,
            limb2: 0x58691c7e87e7ecb6e855a469,
            limb3: 0x25bacfd7256f159ca3eb0e5
        },
        r1a1: u384 {
            limb0: 0xfc830160c50a4b17a2dde63b,
            limb1: 0x1bf46813a25e8e58ff928d53,
            limb2: 0xe63b74e85e2032c28808627d,
            limb3: 0x9e218f143196d00fadb36c6
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x4f15d4ea3546d4dd322abb1,
            limb1: 0x46cffe5c562a996207d85447,
            limb2: 0x127c1b2c8327db270f3fc752,
            limb3: 0x5b1382a51a78623e84b171c
        },
        r0a1: u384 {
            limb0: 0x8dbc701d130e40ed21a9da2c,
            limb1: 0xadd725634588d75b24dd8c16,
            limb2: 0x80337504d4d5f8357c9b9979,
            limb3: 0x9c23058c09980827954110a
        },
        r1a0: u384 {
            limb0: 0xe1d3592b03a3a53ee550de4a,
            limb1: 0x34de8376defeb78769a53926,
            limb2: 0x4a37ac77bdc2eb742a373cf1,
            limb3: 0x152f467c23ef37b4010839bf
        },
        r1a1: u384 {
            limb0: 0xcb4d3b94794186d8bfb77400,
            limb1: 0x7fd7599edba1d571d111a2d0,
            limb2: 0x3a0264b8ec2890555793b361,
            limb3: 0x17f63a07328a47cdf24b7754
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x2639eca99f5b1f6e6d095faa,
            limb1: 0x7322d2c5cd33e33d6fd2e0ca,
            limb2: 0x1c7bca0054ff60c0db156676,
            limb3: 0x10933118bcf1940615957a6c
        },
        r0a1: u384 {
            limb0: 0x43e0d74cf14359d83cc60326,
            limb1: 0x3d49af8c8914a76283667614,
            limb2: 0xc090bf9a071c2af83528b361,
            limb3: 0x14ef91f0b47d2bf1313ba159
        },
        r1a0: u384 {
            limb0: 0xe45466ca7f8b6f5920570127,
            limb1: 0x1554654b09b57871c2ba8a9b,
            limb2: 0xf66b8bb3a005585c18db86b0,
            limb3: 0xd28c63f8635e2ca59c7dc45
        },
        r1a1: u384 {
            limb0: 0xdc559ff81728e932b3c79d12,
            limb1: 0xec4893ef0a2c9367a4d736d6,
            limb2: 0x8b0a21bcded904e222dbf14b,
            limb3: 0x8c51553f23145b85ca33fbe
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xf5058204afaec6f2464c5a13,
            limb1: 0x515da6bfc23ebf6f53f6b55b,
            limb2: 0xe97a11e04bb36b2059446a4c,
            limb3: 0x12fc97a16defdc7adc7476f9
        },
        r0a1: u384 {
            limb0: 0x980b9772f15c2485344735fc,
            limb1: 0xe64c7342b28e77acf36d03da,
            limb2: 0xefd0a557cd8909bc5c9e7baf,
            limb3: 0xbee5b30e2c4af8e16809197
        },
        r1a0: u384 {
            limb0: 0x5fe61e5a5909262f7cad99ed,
            limb1: 0xccf8e0ad8f3dba3dbeb8ec43,
            limb2: 0x10378ef14243abc565883a1b,
            limb3: 0x209e28d5551008fd8c913d6
        },
        r1a1: u384 {
            limb0: 0x31bad5bcd6808dcb2e85caf,
            limb1: 0xd37414833b060119d1f174a3,
            limb2: 0xd4f73e90a51a3acc4ae687fd,
            limb3: 0x18dc062c90db3cd1d20a7de1
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x7a3deb7872768f839060087e,
            limb1: 0xae5017af4c09ed67c5c2e525,
            limb2: 0xef2bbb3e118498031e2471f,
            limb3: 0x5cf357e8473bba00386d238
        },
        r0a1: u384 {
            limb0: 0x3b373a0d0a649113f5c7b2fe,
            limb1: 0xa3913baa2c3f8f7499ac76a6,
            limb2: 0x425aed5972aa5f4b4d21ffc7,
            limb3: 0x82938f41814229b1224b32b
        },
        r1a0: u384 {
            limb0: 0x5b130ec9295aaeb79868e7d6,
            limb1: 0xda6c9ffb04ff597a83b36114,
            limb2: 0xc09586dc17dbca59627bbce4,
            limb3: 0xd8431f93c66d78cf5b81228
        },
        r1a1: u384 {
            limb0: 0xe35d56023ffa020c373e6d85,
            limb1: 0x22972df9b6181d6397c5ee58,
            limb2: 0x933a967160fc487717775d67,
            limb3: 0x19c24474e43b997ab5364a65
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x39d9f0ce211a75081a35cffc,
            limb1: 0xd3f3a394f77ca3a98e93c5df,
            limb2: 0x85eb00d07fe02bd29ac2a3c6,
            limb3: 0xb7b0d2db2cffcae60d0ecf6
        },
        r0a1: u384 {
            limb0: 0x6117d9f54ded251ed87dcdbd,
            limb1: 0x1eb6b7f8ce40fd2cfe030d6a,
            limb2: 0xeed76c5b0d292777e93e9282,
            limb3: 0xdcf9ee4e619ac48372a1fd5
        },
        r1a0: u384 {
            limb0: 0xa9e439e749d4fc1bea4f893f,
            limb1: 0x3a33e93d4e73b675790a1df8,
            limb2: 0xdfc3e8f4f8f506c7c6669428,
            limb3: 0x11adba6387d459f7f991ac32
        },
        r1a1: u384 {
            limb0: 0x35efe895ea1509c6b6db31f1,
            limb1: 0xeba2f9e1733b61d399cbe43d,
            limb2: 0xe0ca6d0d6d5e4e234334bc4b,
            limb3: 0x1641a68f159d661c924ca1ca
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x6acbdd11b2e3bf3c4e9a8fc7,
            limb1: 0xa65c7c83d9e863106be2e6e,
            limb2: 0xba622ef466154b88c6206dc0,
            limb3: 0x13847679c97ef8978b3f64c9
        },
        r0a1: u384 {
            limb0: 0xa29270a27fe8eff7ff52747,
            limb1: 0x1b86d1ea5e2cb0e565695293,
            limb2: 0x5d46595304e94133e1524dc4,
            limb3: 0x5c65be3c6a8b37e95aaa472
        },
        r1a0: u384 {
            limb0: 0x4c113034a2b4e8c08494656,
            limb1: 0x113bdfa06dc6105f0cee337c,
            limb2: 0x5ab2297e7c609e4044c01f70,
            limb3: 0xe5ba46e7903db0416c5e85d
        },
        r1a1: u384 {
            limb0: 0x1af25f25f85e2fe5769d4db0,
            limb1: 0xc25dd758f010619bdce139cb,
            limb2: 0x539682ada1e9af81af49cbb4,
            limb3: 0x63c25d8d6ffab7a17da8252
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x2afd7a503f72962b8035ef56,
            limb1: 0x741a2724c626c073fcb7cb01,
            limb2: 0xa954f9a9959cbbcf41765c4c,
            limb3: 0xd255d019186fe50bbb4abdb
        },
        r0a1: u384 {
            limb0: 0xe1247719764debd50fb297b1,
            limb1: 0x1c85bc8240e9013aa086e724,
            limb2: 0x2bac98861c64cbbfaf10dfe5,
            limb3: 0x17887473079a17d6114873ff
        },
        r1a0: u384 {
            limb0: 0xb40da2a4cd71fa1185ef523a,
            limb1: 0xb9b730fd2eea88566c9d4152,
            limb2: 0x3c384a7436df1edb029d3aed,
            limb3: 0x89d99706a83aba945d7b48a
        },
        r1a1: u384 {
            limb0: 0x6576e31328774ef164f99920,
            limb1: 0x3e722659df78ce6e6d049703,
            limb2: 0xc5d56c8d8e6603bf62c90b81,
            limb3: 0xf58e0aa466c88aa025b6401
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xee48f089c7a4594a201092eb,
            limb1: 0xc9d8a7b7d87389e25b856b97,
            limb2: 0x74d54bf4748e38d3b2c782b3,
            limb3: 0x78af2f8549231aa92bba1b3
        },
        r0a1: u384 {
            limb0: 0x61acc46ca422be84be4fee75,
            limb1: 0xf425406455688e07fe496eb2,
            limb2: 0x1151b627d67176b268c6b18b,
            limb3: 0x157a7e87571314c4eeffcc64
        },
        r1a0: u384 {
            limb0: 0xd95d245c747804a8f3bd59ab,
            limb1: 0xb3c7108b5d8ce6d797a8ab29,
            limb2: 0x452fc047d47ec02830b1b9c1,
            limb3: 0x12ea35020ddc17232447b57c
        },
        r1a1: u384 {
            limb0: 0xb027d5b2037b8170fb63b93a,
            limb1: 0xf317c06fee2a5ef8113fd9d3,
            limb2: 0xdd1a58fc8de1d70f065c435c,
            limb3: 0x11d55ce218987319447cc925
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xbda20eba312f5ae4b8188dd6,
            limb1: 0xed6b03a1b59cdf81e337466,
            limb2: 0x13f52774d5df8f2b53b3f9a3,
            limb3: 0xa84369f18ef0ea7ea78978b
        },
        r0a1: u384 {
            limb0: 0xd89f88c20cdd1be266384948,
            limb1: 0xb260d5b59d68bd6ce061618b,
            limb2: 0xc706ec3e85485a7d5d2746c8,
            limb3: 0x3610ae9e586990c2332a60b
        },
        r1a0: u384 {
            limb0: 0xaa640e2e801a15e4d8aa9343,
            limb1: 0xce786976554ab6ed66b66295,
            limb2: 0x1dbbe2c4c4a66f2fef9f4df,
            limb3: 0x1599a1020ad879a8517215c8
        },
        r1a1: u384 {
            limb0: 0x68f8ce25afd5a01fa9437698,
            limb1: 0xf218ff065be19aa212e05aa2,
            limb2: 0xa0d7125cba24d5c3b3426602,
            limb3: 0x1f4d34e061c1928106f603
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x1b9ff207335fcb7b28f48654,
            limb1: 0xaa059fc26f53a4b15d861e5d,
            limb2: 0x7409e84a31ef57e217e3d45d,
            limb3: 0x8f022244af0b719146e8cfb
        },
        r0a1: u384 {
            limb0: 0x1fa9d79eb0320e586c2d096a,
            limb1: 0x8fde2d5c9ef41c1612865896,
            limb2: 0xec88b9f86c99799b380ebac9,
            limb3: 0x72c117c18b8dfa89321c27c
        },
        r1a0: u384 {
            limb0: 0x4570eb295684cad19e7cfded,
            limb1: 0x2e204f8114c805f866cca868,
            limb2: 0xba0509fc0eea7cc65c8b3dee,
            limb3: 0xc7c1e717bb7b078054d3851
        },
        r1a1: u384 {
            limb0: 0x25eb9fba51d76d2292c1e2bf,
            limb1: 0xa43de47dba6db4c3e5c3d8b8,
            limb2: 0x365ea08af8998db774b8b61e,
            limb3: 0x6367ffd71d3c44095424fc7
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x2ad35ec942a6dc10be32da05,
            limb1: 0xb889a7f8c178610e41752e60,
            limb2: 0x130ac19123ef4bc5eff163aa,
            limb3: 0xc1c8933b8eca116c8c32c9e
        },
        r0a1: u384 {
            limb0: 0x9b46883056c4f426647a0d1f,
            limb1: 0x2bc81e6550613b15475cad1f,
            limb2: 0x5c12a15bc536b16c6c8b1118,
            limb3: 0x1116e31db9a099b5941e7fe9
        },
        r1a0: u384 {
            limb0: 0x1b8184a1d9bad5d268b10d3e,
            limb1: 0xc8196d57732ebf89f6ce1ee6,
            limb2: 0xd34c8b394f605c9bc52280cd,
            limb3: 0x14b9a6056022227937d6c4ee
        },
        r1a1: u384 {
            limb0: 0xbcbfa6c19991f2a6202faa84,
            limb1: 0xf3a30cde404074949784fb8a,
            limb2: 0x6bd69539f118c993bb469b75,
            limb3: 0x3c8a54c44f16bc3e22144e4
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xd8934218abbe5eda42e0374,
            limb1: 0x4efa70797ab04d5777f18cae,
            limb2: 0x657bd72dc32622552c01c3a1,
            limb3: 0x86675ec3781ecc255b9b8f
        },
        r0a1: u384 {
            limb0: 0xdb3cdd784259d6f00a05188,
            limb1: 0x4d7d18f24dc5139d8829c6be,
            limb2: 0x9067fb6cb2810aa19e5e838d,
            limb3: 0x99b7b955ea60c02306dd019
        },
        r1a0: u384 {
            limb0: 0x9569e6a9a6dfc936dc66c37d,
            limb1: 0x8ce5600bf62265cce1600d14,
            limb2: 0xe437be1358f94ae1da7ba693,
            limb3: 0x26001dbd81fb98024703f0a
        },
        r1a1: u384 {
            limb0: 0x38347efb475ef26461922ce8,
            limb1: 0x434f13930fd2a42336fc5a71,
            limb2: 0xa611a973d0bf99e3535651af,
            limb3: 0xf623d241cf8d903d2d48305
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x721021ae8a4f50730c3d67dc,
            limb1: 0x879473ae153c9a3634074832,
            limb2: 0x37c1a1dc9eb1835b698836b1,
            limb3: 0x103fc06c9853a3f7112aab36
        },
        r0a1: u384 {
            limb0: 0xabcfe33c5665f550278d61b4,
            limb1: 0x9225061eb88a19059c6a5f6b,
            limb2: 0xfea771c15b736bb9dfd64611,
            limb3: 0x115d2632ad3a29006e1392bf
        },
        r1a0: u384 {
            limb0: 0x656457e64c7777c11b84156b,
            limb1: 0xead830ab7644411a1795ddf3,
            limb2: 0xbd12c37bb1cbd056fc94cd13,
            limb3: 0x1698578bd5388b5de2eb808f
        },
        r1a1: u384 {
            limb0: 0xa3f77a7e2e3af21dabc4871,
            limb1: 0x170f78723c727fb4bbc4b4a9,
            limb2: 0x7090ee848cbc35a8f11b2354,
            limb3: 0xc8b6a3068cd96500af13493
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x7464425eeb75a1d3a3486fba,
            limb1: 0xd4f0931c31459109811008d1,
            limb2: 0x5aac0cfc9b43343826136afb,
            limb3: 0xf16056dd2e8b5f8240d4ac7
        },
        r0a1: u384 {
            limb0: 0xee0993ef125a22747400b5ea,
            limb1: 0x438805278ea9e18b001cf7da,
            limb2: 0x11c5cbb3ae17332e06f5b415,
            limb3: 0x134957b7abe963c5d074abc9
        },
        r1a0: u384 {
            limb0: 0xacf8eb684fdd044dd83f813e,
            limb1: 0xcb5dae51f81a4969f0370c67,
            limb2: 0x491fc4a63ef64f17b8aa0d30,
            limb3: 0x188b4199d41c95a7991f2d89
        },
        r1a1: u384 {
            limb0: 0x1f69582489be9a39cb94c326,
            limb1: 0xdfa20ef759cc430ed060c20b,
            limb2: 0xeab00aeca148c6a408bcd34a,
            limb3: 0xd6a605bcb73c8061942fb57
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x6773468ba72e40777baeb8f0,
            limb1: 0x570d2473b46fc08824285612,
            limb2: 0xd6ad952f46006fb353d86e0b,
            limb3: 0xa08d2c3726cf2aff2c088d6
        },
        r0a1: u384 {
            limb0: 0xa416cc264e8202431a4e991d,
            limb1: 0xf5a5787c840a815dfa522b31,
            limb2: 0xe711bc925aba1a74b7b4d4aa,
            limb3: 0x868f9c19f9d55b3b7ccd898
        },
        r1a0: u384 {
            limb0: 0x7baf6a74c7f41953cea5e439,
            limb1: 0xcb2fed5cedcf58101434abc1,
            limb2: 0x7393a96a373c39a66a6c8834,
            limb3: 0xb23fcd989611b241a4105b
        },
        r1a1: u384 {
            limb0: 0x555b817d72aebd2464a2d59b,
            limb1: 0xe7fd327dcbec3232500cda76,
            limb2: 0x10b589891b97aaf0c7a54d85,
            limb3: 0xbd9efb2a7eedeb7323cb190
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xed72eccb4e30eeaf3b992446,
            limb1: 0x14e0585cd696c72e9adb4736,
            limb2: 0x7df5eabb84672fab4d4a6e10,
            limb3: 0x2d6c8112234d7f18ea478ea
        },
        r0a1: u384 {
            limb0: 0x95586dac212579b39f39df97,
            limb1: 0xff0488c63a739029f85aec22,
            limb2: 0x38ce286aeea4511ddcb23d59,
            limb3: 0x444323d14c7a3549b9f6b27
        },
        r1a0: u384 {
            limb0: 0xac929d1bb6bfa0df5bd0b951,
            limb1: 0x9a5e39e018083d89aeeaee3d,
            limb2: 0xc84698d95675ba2c1b93662e,
            limb3: 0xa82a23fd9338c15ba09139b
        },
        r1a1: u384 {
            limb0: 0x8a89d4ebf46cc78b9a67add2,
            limb1: 0x1761e578b693547ecbf4817f,
            limb2: 0xbd9d23d081864a636a27dce,
            limb3: 0x40d68a72ee4363db50d3c92
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x9cdba5cfbe0205d55df33685,
            limb1: 0x8a416e1681ead82ad2711fef,
            limb2: 0xd94faace2b1209807fbb9edd,
            limb3: 0xd1755cae5ede1642897673f
        },
        r0a1: u384 {
            limb0: 0x352a420344ca83dd4e252c7,
            limb1: 0xcbcde81ff301c244dc5e006,
            limb2: 0xa54df6ee2561e110ee674e3e,
            limb3: 0x18ad276363a6d2c576fc7d75
        },
        r1a0: u384 {
            limb0: 0x17901b259f213203281dfa4e,
            limb1: 0xdca6f358c344dba951e904f0,
            limb2: 0x68be1f2f4a49c00264212bb,
            limb3: 0xf39b5af5b74e8e45b8940b
        },
        r1a1: u384 {
            limb0: 0xe2032cd4d375921e86fdc082,
            limb1: 0x90f0cda4fe6f4bedd1c3872d,
            limb2: 0x9236c612070666c5139ec1cf,
            limb3: 0x16eecd9e2f41fc13c0b1678d
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0xbdda2d3c31051f4071ae2945,
            limb1: 0xbc66726ddee31b37d058d7e5,
            limb2: 0x9f4eb741ac78b510ccf452ab,
            limb3: 0x65fb0c0d47de8795557bd2f
        },
        r0a1: u384 {
            limb0: 0xb9c37518dd4a05df7a4d6dc1,
            limb1: 0xd4ee64da91ea67b8a4525b4,
            limb2: 0x73a813ffff40ee810a12214b,
            limb3: 0x7f9fda3fa03c5295720441d
        },
        r1a0: u384 {
            limb0: 0xaa6d391bd6b4113145484e4f,
            limb1: 0x86d3fa56727d8879496d1827,
            limb2: 0x71223351a13a9577646c0ec3,
            limb3: 0x5c4513dff602b8ec227f711
        },
        r1a1: u384 {
            limb0: 0xb9b127f0cbfc3172bba7a933,
            limb1: 0x10d730ec07d1e0f84c5c6c34,
            limb2: 0x693e354e2246bf96f3ebf563,
            limb3: 0x1163f7e15fbd10f4086aad86
        }
    },
    G2Line {
        r0a0: u384 {
            limb0: 0x95151ea18c775b54deb3d8d2,
            limb1: 0x12d5d14c1a1e5e441f80f7f0,
            limb2: 0x441e9ed1c76ca5b0a9a2c673,
            limb3: 0x5ed345d22ce7a2820a566a6
        },
        r0a1: u384 {
            limb0: 0x85f7fcc07f1acb58e2b2b71d,
            limb1: 0xf54880edf6b069d9be9739e7,
            limb2: 0xb25f1683eedccd9cddb2592e,
            limb3: 0x1287330ba9caab2bef8676e5
        },
        r1a0: u384 {
            limb0: 0x418096781d6bdd8438f7d0fa,
            limb1: 0xde2b0883a520a29780fe7f9,
            limb2: 0x858acb343f8b338095664988,
            limb3: 0x1213109d451b7b62be0e7837
        },
        r1a1: u384 {
            limb0: 0x13c30921c6ad44eef236dc4e,
            limb1: 0x97d1525a1c3fa2dfe5f32aa7,
            limb2: 0x7071a595e981dc71b225c544,
            limb3: 0x6f31cf2562cca8a820178ab
        }
    },
];