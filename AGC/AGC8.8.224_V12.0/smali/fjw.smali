.class public final Lfjw;
.super Ljava/lang/Object;


# static fields
.field private static final a:[F

.field private static final b:[F

.field private static final c:[F

.field private static final d:Lgxb;

.field private static final e:Lgxb;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc9

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lfjw;->a:[F

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    sput-object v2, Lfjw;->b:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lfjw;->c:[F

    new-instance v3, Lgxb;

    invoke-direct {v3, v1, v2}, Lgxb;-><init>([F[F)V

    sput-object v3, Lfjw;->d:Lgxb;

    new-instance v2, Lgxb;

    invoke-direct {v2, v1, v0}, Lgxb;-><init>([F[F)V

    sput-object v2, Lfjw;->e:Lgxb;

    return-void

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
        0x3d5056aa
        0x3dcef269
        0x3e1ba853
        0x3e4fa490
        0x3e7ef4d3
        0x3e97d4ab
        0x3eaf963d
        0x3ec50e8f
        0x3ed8d64d
        0x3eea152d
        0x3efc78aa
        0x3f05d6f3
        0x3f0d1edd
        0x3f136eae
        0x3f191f76
        0x3f1e444a
        0x3f22e385
        0x3f271040
        0x3f2b16cf
        0x3f2ed109
        0x3f322bd6
        0x3f35738d
        0x3f387ba7
        0x3f3bc9bb
        0x3f3ed831
        0x3f4193f5
        0x3f4442ff
        0x3f46d23a
        0x3f48e23b
        0x3f4aebdf
        0x3f4ce26d
        0x3f4e864a
        0x3f5056ae
        0x3f521a57
        0x3f5384f1
        0x3f5515b7
        0x3f568053
        0x3f57d7d9
        0x3f590931
        0x3f5a939b
        0x3f5bd80b
        0x3f5d0fc0
        0x3f5dd4f6
        0x3f5f1fc1
        0x3f60117e
        0x3f614f92
        0x3f623494
        0x3f631ff5
        0x3f63b245
        0x3f643180
        0x3f64f059
        0x3f654967
        0x3f65e871
        0x3f669a91
        0x3f66ed44
        0x3f676c7e    # 0.9039992f
        0x3f681e9d
        0x3f68911f
        0x3f6916b6
        0x3f69c27a
        0x3f6a4e6d
        0x3f6ada61
        0x3f6b4ce2
        0x3f6bac4e
        0x3f6c1217
        0x3f6c5811
        0x3f6cf71a
        0x3f6da939
        0x3f6df58f
        0x3f6e6e6e
        0x3f6ec121
        0x3f6f1a31
        0x3f6f6687
        0x3f6fb2dd
        0x3f6ff8d8
        0x3f70452e
        0x3f707813
        0x3f70b154
        0x3f7110bf
        0x3f7143a5
        0x3f71899e
        0x3f71e909
        0x3f722f04
        0x3f727b5a
        0x3f72baf8
        0x3f72ce0d
        0x3f72f438
        0x3f73271d
        0x3f737374
        0x3f73a657
        0x3f73b96d
        0x3f73cc84
        0x3f73ec52
        0x3f741f35
        0x3f7438a8
        0x3f74521a
        0x3f746530
        0x3f7484fe
        0x3f749e71
        0x3f74ab2b
        0x3f74e46b
        0x3f750a96
        0x3f752a64
        0x3f75371e
        0x3f753d7a
        0x3f7543d7
        0x3f7563a5
        0x3f7576ba
        0x3f75902d
        0x3f759ce7
        0x3f75affd
        0x3f75d628
        0x3f75e93d
        0x3f75fc53
        0x3f7615c5
        0x3f763593
        0x3f76621b
        0x3f768847
        0x3f769b5c
        0x3f76c187
        0x3f76d49d
        0x3f76ee0f
        0x3f770125
        0x3f770782
        0x3f771a97
        0x3f772750
        0x3f77471e
        0x3f776090
        0x3f778d19
        0x3f77b344
        0x3f77f2e1
        0x3f782c22
        0x3f783f37
        0x3f787878
        0x3f78a500
        0x3f78de41
        0x3f791dde
        0x3f793751
        0x3f795d7c
        0x3f797d4a
        0x3f79a9d2
        0x3f79efcd
        0x3f7a0f9b
        0x3f7a48db
        0x3f7a7563
        0x3f7aaea4
        0x3f7b0157
        0x3f7b146d
        0x3f7b40f5
        0x3f7b6720
        0x3f7b93a8
        0x3f7bc030
        0x3f7bdffe
        0x3f7c0629
        0x3f7c2c54
        0x3f7c3f6b
        0x3f7c78ac
        0x3f7c987a
        0x3f7cc502
        0x3f7cde75
        0x3f7d0afb
        0x3f7d3128
        0x3f7d70c4    # 0.9900019f
        0x3f7d96f0
        0x3f7dd031
        0x3f7de9a2
        0x3f7e0315
        0x3f7e2940
        0x3f7e35fa
        0x3f7e6280
        0x3f7e7bf3
        0x3f7ea87b
        0x3f7eaed8
        0x3f7ec849
        0x3f7edb5e
        0x3f7eee76
        0x3f7ef4d1
        0x3f7f07e6
        0x3f7f1afc
        0x3f7f346f
        0x3f7f4784
        0x3f7f543d
        0x3f7f740c
        0x3f7f7a69
        0x3f7f80c5
        0x3f7f8d7f
        0x3f7f93da
        0x3f7fb3aa
        0x3f7fba05
        0x3f7fba05
        0x3f7fba05
        0x3f7fc6bf
        0x3f7fd378
        0x3f7fe032
        0x3f7fecea
        0x3f7ff348
        0x3f7ff348
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public static a(FZ)F
    .locals 0

    if-eqz p1, :cond_0

    sget-object p1, Lfjw;->e:Lgxb;

    invoke-virtual {p1, p0}, Lgxb;->k(F)F

    move-result p0

    goto :goto_0

    :cond_0
    sget-object p1, Lfjw;->d:Lgxb;

    invoke-virtual {p1, p0}, Lgxb;->k(F)F

    move-result p0

    :goto_0
    return p0
.end method
