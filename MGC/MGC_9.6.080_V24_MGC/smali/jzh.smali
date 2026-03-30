.class public final Ljzh;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:[F

.field private static final b:[F

.field private static final c:[F

.field private static final d:Lmhz;

.field private static final e:Lmhz;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_8

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    const/16 v0, 0xc9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-array v1, v0, [F

    nop

    fill-array-data v1, :array_0

    goto/32 :goto_a

    nop

    nop

    :goto_4
    sput-object v2, Ljzh;->b:[F

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v3, Lmhz;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v0, :array_2

    goto/32 :goto_9

    nop

    nop

    :goto_8
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sput-object v0, Ljzh;->c:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sput-object v1, Ljzh;->a:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_c
    invoke-direct {v3, v1, v2}, Lmhz;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    :goto_e
    goto/32 :goto_2

    nop

    nop

    :goto_f
    sput-object v3, Ljzh;->d:Lmhz;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    sput-object v2, Ljzh;->e:Lmhz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    new-array v2, v0, [F

    nop

    fill-array-data v2, :array_1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance v2, Lmhz;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x3b23d70a    # 0.0025f
        0x3ba3d70a    # 0.005f
        0x3bf5c28f    # 0.0075f
        0x3c23d70a    # 0.01f
        0x3c4ccccd    # 0.0125f
        0x3c75c28f    # 0.015f
        0x3c8f5c29    # 0.0175f
        0x3ca3d70a    # 0.02f
        0x3cb851ec    # 0.0225f
        0x3ccccccd    # 0.025f
        0x3ce147ae    # 0.0275f
        0x3cf5c28f    # 0.03f
        0x3d051eb8    # 0.0325f
        0x3d0f5c29    # 0.035f
        0x3d19999a    # 0.0375f
        0x3d23d70a    # 0.04f
        0x3d2e147b    # 0.0425f
        0x3d3851ec    # 0.045f
        0x3d428f5c    # 0.0475f
        0x3d4ccccd    # 0.05f
        0x3d570a3d    # 0.0525f
        0x3d6147ae    # 0.055f
        0x3d6b851f    # 0.0575f
        0x3d75c28f    # 0.06f
        0x3d800000    # 0.0625f
        0x3d851eb8    # 0.065f
        0x3d8a3d71    # 0.0675f
        0x3d8f5c29    # 0.07f
        0x3d947ae1    # 0.0725f
        0x3d99999a    # 0.075f
        0x3d9eb852    # 0.0775f
        0x3da3d70a    # 0.08f
        0x3da8f5c3    # 0.0825f
        0x3dae147b    # 0.085f
        0x3db33333    # 0.0875f
        0x3db851ec    # 0.09f
        0x3dbd70a4    # 0.0925f
        0x3dc28f5c    # 0.095f
        0x3dc7ae14    # 0.0975f
        0x3dcccccd    # 0.1f
        0x3dd1eb85    # 0.1025f
        0x3dd70a3d    # 0.105f
        0x3ddc28f6    # 0.1075f
        0x3de147ae    # 0.11f
        0x3de66666    # 0.1125f
        0x3deb851f    # 0.115f
        0x3df0a3d7    # 0.1175f
        0x3df5c28f    # 0.12f
        0x3dfae148    # 0.1225f
        0x3e000000    # 0.125f
        0x3e028f5c    # 0.1275f
        0x3e051eb8    # 0.13f
        0x3e07ae14    # 0.1325f
        0x3e0a3d71    # 0.135f
        0x3e0ccccd    # 0.1375f
        0x3e0f5c29    # 0.14f
        0x3e11eb85    # 0.1425f
        0x3e147ae1    # 0.145f
        0x3e170a3d    # 0.1475f
        0x3e19999a    # 0.15f
        0x3e1c28f6    # 0.1525f
        0x3e1eb852    # 0.155f
        0x3e2147ae    # 0.1575f
        0x3e23d70a    # 0.16f
        0x3e266666    # 0.1625f
        0x3e28f5c3    # 0.165f
        0x3e2b851f    # 0.1675f
        0x3e2e147b    # 0.17f
        0x3e30a3d7    # 0.1725f
        0x3e333333    # 0.175f
        0x3e35c28f    # 0.1775f
        0x3e3851ec    # 0.18f
        0x3e3ae148    # 0.1825f
        0x3e3d70a4    # 0.185f
        0x3e400000    # 0.1875f
        0x3e428f5c    # 0.19f
        0x3e451eb8    # 0.1925f
        0x3e47ae14    # 0.195f
        0x3e4a3d71    # 0.1975f
        0x3e4ccccd    # 0.2f
        0x3e4f5c29    # 0.2025f
        0x3e51eb85    # 0.205f
        0x3e547ae1    # 0.2075f
        0x3e570a3d    # 0.21f
        0x3e59999a    # 0.2125f
        0x3e5c28f6    # 0.215f
        0x3e5eb852    # 0.2175f
        0x3e6147ae    # 0.22f
        0x3e63d70a    # 0.2225f
        0x3e666666    # 0.225f
        0x3e68f5c3    # 0.2275f
        0x3e6b851f    # 0.23f
        0x3e6e147b    # 0.2325f
        0x3e70a3d7    # 0.235f
        0x3e733333    # 0.2375f
        0x3e75c28f    # 0.24f
        0x3e7851ec    # 0.2425f
        0x3e7ae148    # 0.245f
        0x3e7d70a4    # 0.2475f
        0x3e800000    # 0.25f
        0x3e8147ae    # 0.2525f
        0x3e828f5c    # 0.255f
        0x3e83d70a    # 0.2575f
        0x3e851eb8    # 0.26f
        0x3e866666    # 0.2625f
        0x3e87ae14    # 0.265f
        0x3e88f5c3    # 0.2675f
        0x3e8a3d71    # 0.27f
        0x3e8b851f    # 0.2725f
        0x3e8ccccd    # 0.275f
        0x3e8e147b    # 0.2775f
        0x3e8f5c29    # 0.28f
        0x3e90a3d7    # 0.2825f
        0x3e91eb85    # 0.285f
        0x3e933333    # 0.2875f
        0x3e947ae1    # 0.29f
        0x3e95c28f    # 0.2925f
        0x3e970a3d    # 0.295f
        0x3e9851ec    # 0.2975f
        0x3e99999a    # 0.3f
        0x3e9ae148    # 0.3025f
        0x3e9c28f6    # 0.305f
        0x3e9d70a4    # 0.3075f
        0x3e9eb852    # 0.31f
        0x3ea00000    # 0.3125f
        0x3ea147ae    # 0.315f
        0x3ea28f5c    # 0.3175f
        0x3ea3d70a    # 0.32f
        0x3ea51eb8    # 0.3225f
        0x3ea66666    # 0.325f
        0x3ea7ae14    # 0.3275f
        0x3ea8f5c3    # 0.33f
        0x3eaa3d71    # 0.3325f
        0x3eab851f    # 0.335f
        0x3eaccccd    # 0.3375f
        0x3eae147b    # 0.34f
        0x3eaf5c29    # 0.3425f
        0x3eb0a3d7    # 0.345f
        0x3eb1eb85    # 0.3475f
        0x3eb33333    # 0.35f
        0x3eb47ae1    # 0.3525f
        0x3eb5c28f    # 0.355f
        0x3eb70a3d    # 0.3575f
        0x3eb851ec    # 0.36f
        0x3eb9999a    # 0.3625f
        0x3ebae148    # 0.365f
        0x3ebc28f6    # 0.3675f
        0x3ebd70a4    # 0.37f
        0x3ebeb852    # 0.3725f
        0x3ec00000    # 0.375f
        0x3ec147ae    # 0.3775f
        0x3ec28f5c    # 0.38f
        0x3ec3d70a    # 0.3825f
        0x3ec51eb8    # 0.385f
        0x3ec66666    # 0.3875f
        0x3ec7ae14    # 0.39f
        0x3ec8f5c3    # 0.3925f
        0x3eca3d71    # 0.395f
        0x3ecb851f    # 0.3975f
        0x3ecccccd    # 0.4f
        0x3ece147b    # 0.4025f
        0x3ecf5c29    # 0.405f
        0x3ed0a3d7    # 0.4075f
        0x3ed1eb85    # 0.41f
        0x3ed33333    # 0.4125f
        0x3ed47ae1    # 0.415f
        0x3ed5c28f    # 0.4175f
        0x3ed70a3d    # 0.42f
        0x3ed851ec    # 0.4225f
        0x3ed9999a    # 0.425f
        0x3edae148    # 0.4275f
        0x3edc28f6    # 0.43f
        0x3edd70a4    # 0.4325f
        0x3edeb852    # 0.435f
        0x3ee00000    # 0.4375f
        0x3ee147ae    # 0.44f
        0x3ee28f5c    # 0.4425f
        0x3ee3d70a    # 0.445f
        0x3ee51eb8    # 0.4475f
        0x3ee66666    # 0.45f
        0x3ee7ae14    # 0.4525f
        0x3ee8f5c3    # 0.455f
        0x3eea3d71    # 0.4575f
        0x3eeb851f    # 0.46f
        0x3eeccccd    # 0.4625f
        0x3eee147b    # 0.465f
        0x3eef5c29    # 0.4675f
        0x3ef0a3d7    # 0.47f
        0x3ef1eb85    # 0.4725f
        0x3ef33333    # 0.475f
        0x3ef47ae1    # 0.4775f
        0x3ef5c28f    # 0.48f
        0x3ef70a3d    # 0.4825f
        0x3ef851ec    # 0.485f
        0x3ef9999a    # 0.4875f
        0x3efae148    # 0.49f
        0x3efc28f6    # 0.4925f
        0x3efd70a4    # 0.495f
        0x3efeb852    # 0.4975f
        0x3f000000    # 0.5f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3d5fcdab
        0x3ddd9af3
        0x3e294050
        0x3e5dce18
        0x3e896de0
        0x3ea201f2
        0x3eb85685
        0x3ecbabc6
        0x3ee10093
        0x3ef36fa0
        0x3f0142ea
        0x3f094de8
        0x3f1065e9
        0x3f16715a
        0x3f1c09b1
        0x3f21cecc
        0x3f272732
        0x3f2c1947
        0x3f303859
        0x3f350413
        0x3f392325
        0x3f3ccf1f
        0x3f4007ff
        0x3f42a768
        0x3f454d34
        0x3f47f968
        0x3f4a45b1
        0x3f4cab8c
        0x3f4f3e2c
        0x3f516a7b
        0x3f539066
        0x3f551cda
        0x3f56dc75
        0x3f5875b2
        0x3f5a088a
        0x3f5b4ea7
        0x3f5cae58
        0x3f5dfadb    # 0.867109f
        0x3f5f2764
        0x3f6040be
        0x3f614d4f
        0x3f622d1c
        0x3f62ecf0
        0x3f639ffc
        0x3f645fd0
        0x3f64f947
        0x3f65e5df
        0x3f66b8e4
        0x3f67abdf
        0x3f687ee4
        0x3f693eb9
        0x3f69f828
        0x3f6a84d6
        0x3f6b1182
        0x3f6b716d
        0x3f6bf150
        0x3f6c7dfd
        0x3f6d1774
        0x3f6d8428
        0x3f6de413
        0x3f6e2a6a
        0x3f6e971f
        0x3f6ed710
        0x3f6f3096
        0x3f6f6a22
        0x3f6f9d4a
        0x3f6fdd3c
        0x3f705054
        0x3f70c36e
        0x3f71168e
        0x3f71900d
        0x3f71c334
        0x3f722fe8
        0x3f727ca5
        0x3f72d629
        0x3f7302eb
        0x3f733c79
        0x3f7382d0
        0x3f73c925
        0x3f7415e2
        0x3f743c3f
        0x3f7455d3
        0x3f7475cb
        0x3f749c2a
        0x3f74dc1c
        0x3f752271
        0x3f755bff
        0x3f759bf1
        0x3f75dbe2
        0x3f7608a5
        0x3f763bcc
        0x3f765bc5
        0x3f76a21c
        0x3f76cedf
        0x3f770206
        0x3f77352e
        0x3f775b8b
        0x3f7781e9
        0x3f77bb76
        0x3f7801cc
        0x3f78282b
        0x3f7854ee
        0x3f787b4b
        0x3f78a1a8
        0x3f78e7ff
        0x3f78fb2e
        0x3f79218b
        0x3f793b20
        0x3f796e48
        0x3f798e40
        0x3f79a7d4
        0x3f79d497
        0x3f7a07bf
        0x3f7a2e1c
        0x3f7a4e14
        0x3f7a7473
        0x3f7aa79a
        0x3f7acdf7
        0x3f7b0120
        0x3f7b2de3
        0x3f7b676f
        0x3f7b7a9d
        0x3f7bc0f4
        0x3f7bf41d
        0x3f7c1415
        0x3f7c2da9
        0x3f7c5406
        0x3f7c7400
        0x3f7c9a5d
        0x3f7cc0ba
        0x3f7cf3e3
        0x3f7d00ac
        0x3f7d13dc
        0x3f7d2d6f
        0x3f7d4703
        0x3f7d66fd
        0x3f7da089
        0x3f7dc082
        0x3f7dd3b1
        0x3f7df3a9    # 0.9919992f
        0x3f7e26d1
        0x3f7e5394
        0x3f7e66c3
        0x3f7e8057
        0x3f7e99eb
        0x3f7eb9e3
        0x3f7ec048
        0x3f7ed377
        0x3f7eed0b
        0x3f7eed0b
        0x3f7f003a
        0x3f7f0d03
        0x3f7f2032
        0x3f7f3360
        0x3f7f4cf5
        0x3f7f59c0
        0x3f7f59c0
        0x3f7f6689
        0x3f7f6689
        0x3f7f7352
        0x3f7f801d
        0x3f7f801d
        0x3f7f8ce6
        0x3f7f934c
        0x3f7f934c
        0x3f7fa015
        0x3f7face0
        0x3f7face0
        0x3f7face0
        0x3f7face0
        0x3f7face0
        0x3f7face0
        0x3f7face0
        0x3f7fb345
        0x3f7fb345
        0x3f7fb345
        0x3f7fc00e
        0x3f7fc674
        0x3f7fccd8
        0x3f7fd33d
        0x3f7fd33d
        0x3f7fd33d
        0x3f7fd33d
        0x3f7fd33d
        0x3f7fd33d
        0x3f7fd9a3
        0x3f7fe006
        0x3f7fe66c
        0x3f7fe66c
        0x3f7fe66c
        0x3f7fecd1
        0x3f7ff337
        0x3f7ff337
        0x3f7ff99b    # 0.9999024f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x0
        0x3d14488c
        0x3d8abea0
        0x3ddabd50
        0x3e16047d
        0x3e3afae4
        0x3e5e6cc5
        0x3e8118f4
        0x3e91d829
        0x3ea0f723
        0x3eb0a0da    # 0.3449772f
        0x3ec03cb3
        0x3eccdd72
        0x3eda85d1
        0x3ee6e130
        0x3ef1fd73
        0x3efdc037
        0x3f04c17b
        0x3f0a1f0f
        0x3f0f2271
        0x3f13a205
        0x3f18444a
        0x3f1c4def
        0x3f20b8b5
        0x3f253849
        0x3f29b0ed
        0x3f2dc183
        0x3f310fda
        0x3f34aa81
        0x3f3806b8
        0x3f3b62f0
        0x3f3e1f98
        0x3f40ce61
        0x3f43685b
        0x3f460255
        0x3f485dde
        0x3f4b58f6
        0x3f4d9fb2
        0x3f4f698d
        0x3f515617
        0x3f531903
        0x3f54d4fe
        0x3f569eda
        0x3f57c927
        0x3f597742
        0x3f5ab660
        0x3f5bd2cd
        0x3f5cb0ca
        0x3f5d80e8
        0x3f5eb915
        0x3f5f8934
        0x3f606e20
        0x3f61305e
        0x3f621c3d
        0x3f62bbcb
        0x3f63b588
        0x3f6469e6
        0x3f651065
        0x3f65a213
        0x3f663ab2
        0x3f668012
        0x3f6711c0
        0x3f67b14e
        0x3f686c9d
        0x3f68d4ac
        0x3f694a9a
        0x3f6996ea
        0x3f6a05e8
        0x3f6a6017
        0x3f6ac826
        0x3f6b3725
        0x3f6b9f34
        0x3f6bf274
        0x3f6c3ec2
        0x3f6c9fe2
        0x3f6cf320
        0x3f6d76f0
        0x3f6dd11f
        0x3f6dfabe
        0x3f6e4dfd
        0x3f6e9a4c
        0x3f6ee69c
        0x3f6f39dc
        0x3f6f8d1a
        0x3f6fe749
        0x3f7025b9
        0x3f705d38
        0x3f708dc8
        0x3f70f5d7
        0x3f711f76
        0x3f7172b6    # 0.9431566f
        0x3f71a344
        0x3f71e8a5
        0x3f722024
        0x3f726c73
        0x3f72b1d2
        0x3f72e952
        0x3f7312f1
        0x3f7327c0
        0x3f735161
        0x3f7388e0
        0x3f73c05f    # 0.9521541f
        0x3f74139f
        0x3f744b1e
        0x3f747bae
        0x3f74976d
        0x3f74c7fd
        0x3f750d5c
        0x3f75300c
        0x3f754bcc
        0x3f75834b
        0x3f75a5fb
        0x3f75dd7a
        0x3f75e46a
        0x3f7614f9
        0x3f763e9a
        0x3f765a59
        0x3f767d08
        0x3f769fb8
        0x3f76b488
        0x3f76d048
        0x3f7700d8
        0x3f772386
        0x3f774636
        0x3f7761f6
        0x3f777db5
        0x3f778b95
        0x3f77d0f5
        0x3f77f3a4
        0x3f780f65
        0x3f783ff3
        0x3f7862a3
        0x3f786994
        0x3f789333
        0x3f78aef3
        0x3f78c3c3
        0x3f78ed62
        0x3f78f451
        0x3f791702
        0x3f791702
        0x3f791df2
        0x3f7939b2
        0x3f797821
        0x3f799ad0
        0x3f79c46f
        0x3f79ee10
        0x3f7a09d0
        0x3f7a414e
        0x3f7a6aee
        0x3f7a86af
        0x3f7ab73d
        0x3f7ae0dc    # 0.9799936f
        0x3f7afc9d
        0x3f7b2d2c
        0x3f7b5dbc
        0x3f7b728c
        0x3f7b875b
        0x3f7b953b
        0x3f7bbedb
        0x3f7be87b
        0x3f7c1ffa
        0x3f7c34ca
        0x3f7c42aa
        0x3f7c5e69
        0x3f7c8119
        0x3f7cb1a8
        0x3f7ccd69
        0x3f7ce238
        0x3f7cf708
        0x3f7d20a7
        0x3f7d4a46
        0x3f7d5f17
        0x3f7d73e7
        0x3f7dab66
        0x3f7dce15
        0x3f7de9d6
        0x3f7e1375
        0x3f7e2f35
        0x3f7e51e5
        0x3f7e8964
        0x3f7ec0e3
        0x3f7ed5b3
        0x3f7eea84
        0x3f7eff52
        0x3f7f2203
        0x3f7f2fe2
        0x3f7f44b1
        0x3f7f4ba2
        0x3f7f6072
        0x3f7f6e52
        0x3f7f8a11
        0x3f7f9100
        0x3f7f97f1
        0x3f7facc2
        0x3f7fcf70
        0x3f7fe441
        0x3f7ff220
        0x3f7ff220
        0x3f7ff220
        0x3f7ff220
        0x3f800000    # 1.0f
    .end array-data

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v2, v1, v0}, Lmhz;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a(FZ)F
    .locals 0

    goto/32 :goto_6

    nop

    nop

    :goto_0
    invoke-virtual {p1, p0}, Lmhz;->A(F)F

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    invoke-virtual {p1, p0}, Lmhz;->A(F)F

    move-result p0

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    sget-object p1, Ljzh;->e:Lmhz;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p1, Ljzh;->d:Lmhz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method
