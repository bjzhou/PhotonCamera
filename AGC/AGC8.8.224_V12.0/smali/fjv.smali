.class public final Lfjv;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lgxb;

.field public static final b:Lgxb;

.field private static final c:[F

.field private static final d:[F

.field private static final e:[F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v0, 0xc9

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lfjv;->c:[F

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    sput-object v2, Lfjv;->d:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    sput-object v0, Lfjv;->e:[F

    new-instance v3, Lgxb;

    invoke-direct {v3, v1, v2}, Lgxb;-><init>([F[F)V

    sput-object v3, Lfjv;->a:Lgxb;

    new-instance v2, Lgxb;

    invoke-direct {v2, v1, v0}, Lgxb;-><init>([F[F)V

    sput-object v2, Lfjv;->b:Lgxb;

    return-void

    :array_0
    .array-data 4
        0x0
        0x3ba3d70a    # 0.005f
        0x3c23d70a    # 0.01f
        0x3c75c28f    # 0.015f
        0x3ca3d70a    # 0.02f
        0x3ccccccd    # 0.025f
        0x3cf5c28f    # 0.03f
        0x3d0f5c29    # 0.035f
        0x3d23d70a    # 0.04f
        0x3d3851ec    # 0.045f
        0x3d4ccccd    # 0.05f
        0x3d6147ae    # 0.055f
        0x3d75c28f    # 0.06f
        0x3d851eb8    # 0.065f
        0x3d8f5c29    # 0.07f
        0x3d99999a    # 0.075f
        0x3da3d70a    # 0.08f
        0x3dae147b    # 0.085f
        0x3db851ec    # 0.09f
        0x3dc28f5c    # 0.095f
        0x3dcccccd    # 0.1f
        0x3dd70a3d    # 0.105f
        0x3de147ae    # 0.11f
        0x3deb851f    # 0.115f
        0x3df5c28f    # 0.12f
        0x3e000000    # 0.125f
        0x3e051eb8    # 0.13f
        0x3e0a3d71    # 0.135f
        0x3e0f5c29    # 0.14f
        0x3e147ae1    # 0.145f
        0x3e19999a    # 0.15f
        0x3e1eb852    # 0.155f
        0x3e23d70a    # 0.16f
        0x3e28f5c3    # 0.165f
        0x3e2e147b    # 0.17f
        0x3e333333    # 0.175f
        0x3e3851ec    # 0.18f
        0x3e3d70a4    # 0.185f
        0x3e428f5c    # 0.19f
        0x3e47ae14    # 0.195f
        0x3e4ccccd    # 0.2f
        0x3e51eb85    # 0.205f
        0x3e570a3d    # 0.21f
        0x3e5c28f6    # 0.215f
        0x3e6147ae    # 0.22f
        0x3e666666    # 0.225f
        0x3e6b851f    # 0.23f
        0x3e70a3d7    # 0.235f
        0x3e75c28f    # 0.24f
        0x3e7ae148    # 0.245f
        0x3e800000    # 0.25f
        0x3e828f5c    # 0.255f
        0x3e851eb8    # 0.26f
        0x3e87ae14    # 0.265f
        0x3e8a3d71    # 0.27f
        0x3e8ccccd    # 0.275f
        0x3e8f5c29    # 0.28f
        0x3e91eb85    # 0.285f
        0x3e947ae1    # 0.29f
        0x3e970a3d    # 0.295f
        0x3e99999a    # 0.3f
        0x3e9c28f6    # 0.305f
        0x3e9eb852    # 0.31f
        0x3ea147ae    # 0.315f
        0x3ea3d70a    # 0.32f
        0x3ea66666    # 0.325f
        0x3ea8f5c3    # 0.33f
        0x3eab851f    # 0.335f
        0x3eae147b    # 0.34f
        0x3eb0a3d7    # 0.345f
        0x3eb33333    # 0.35f
        0x3eb5c28f    # 0.355f
        0x3eb851ec    # 0.36f
        0x3ebae148    # 0.365f
        0x3ebd70a4    # 0.37f
        0x3ec00000    # 0.375f
        0x3ec28f5c    # 0.38f
        0x3ec51eb8    # 0.385f
        0x3ec7ae14    # 0.39f
        0x3eca3d71    # 0.395f
        0x3ecccccd    # 0.4f
        0x3ecf5c29    # 0.405f
        0x3ed1eb85    # 0.41f
        0x3ed47ae1    # 0.415f
        0x3ed70a3d    # 0.42f
        0x3ed9999a    # 0.425f
        0x3edc28f6    # 0.43f
        0x3edeb852    # 0.435f
        0x3ee147ae    # 0.44f
        0x3ee3d70a    # 0.445f
        0x3ee66666    # 0.45f
        0x3ee8f5c3    # 0.455f
        0x3eeb851f    # 0.46f
        0x3eee147b    # 0.465f
        0x3ef0a3d7    # 0.47f
        0x3ef33333    # 0.475f
        0x3ef5c28f    # 0.48f
        0x3ef851ec    # 0.485f
        0x3efae148    # 0.49f
        0x3efd70a4    # 0.495f
        0x3f000000    # 0.5f
        0x3f0147ae    # 0.505f
        0x3f028f5c    # 0.51f
        0x3f03d70a    # 0.515f
        0x3f051eb8    # 0.52f
        0x3f066666    # 0.525f
        0x3f07ae14    # 0.53f
        0x3f08f5c3    # 0.535f
        0x3f0a3d71    # 0.54f
        0x3f0b851f    # 0.545f
        0x3f0ccccd    # 0.55f
        0x3f0e147b    # 0.555f
        0x3f0f5c29    # 0.56f
        0x3f10a3d7    # 0.565f
        0x3f11eb85    # 0.57f
        0x3f133333    # 0.575f
        0x3f147ae1    # 0.58f
        0x3f15c28f    # 0.585f
        0x3f170a3d    # 0.59f
        0x3f1851ec    # 0.595f
        0x3f19999a    # 0.6f
        0x3f1ae148    # 0.605f
        0x3f1c28f6    # 0.61f
        0x3f1d70a4    # 0.615f
        0x3f1eb852    # 0.62f
        0x3f200000    # 0.625f
        0x3f2147ae    # 0.63f
        0x3f228f5c    # 0.635f
        0x3f23d70a    # 0.64f
        0x3f251eb8    # 0.645f
        0x3f266666    # 0.65f
        0x3f27ae14    # 0.655f
        0x3f28f5c3    # 0.66f
        0x3f2a3d71    # 0.665f
        0x3f2b851f    # 0.67f
        0x3f2ccccd    # 0.675f
        0x3f2e147b    # 0.68f
        0x3f2f5c29    # 0.685f
        0x3f30a3d7    # 0.69f
        0x3f31eb85    # 0.695f
        0x3f333333    # 0.7f
        0x3f347ae1    # 0.705f
        0x3f35c28f    # 0.71f
        0x3f370a3d    # 0.715f
        0x3f3851ec    # 0.72f
        0x3f39999a    # 0.725f
        0x3f3ae148    # 0.73f
        0x3f3c28f6    # 0.735f
        0x3f3d70a4    # 0.74f
        0x3f3eb852    # 0.745f
        0x3f400000    # 0.75f
        0x3f4147ae    # 0.755f
        0x3f428f5c    # 0.76f
        0x3f43d70a    # 0.765f
        0x3f451eb8    # 0.77f
        0x3f466666    # 0.775f
        0x3f47ae14    # 0.78f
        0x3f48f5c3    # 0.785f
        0x3f4a3d71    # 0.79f
        0x3f4b851f    # 0.795f
        0x3f4ccccd    # 0.8f
        0x3f4e147b    # 0.805f
        0x3f4f5c29    # 0.81f
        0x3f50a3d7    # 0.815f
        0x3f51eb85    # 0.82f
        0x3f533333    # 0.825f
        0x3f547ae1    # 0.83f
        0x3f55c28f    # 0.835f
        0x3f570a3d    # 0.84f
        0x3f5851ec    # 0.845f
        0x3f59999a    # 0.85f
        0x3f5ae148    # 0.855f
        0x3f5c28f6    # 0.86f
        0x3f5d70a4    # 0.865f
        0x3f5eb852    # 0.87f
        0x3f600000    # 0.875f
        0x3f6147ae    # 0.88f
        0x3f628f5c    # 0.885f
        0x3f63d70a    # 0.89f
        0x3f651eb8    # 0.895f
        0x3f666666    # 0.9f
        0x3f67ae14    # 0.905f
        0x3f68f5c3    # 0.91f
        0x3f6a3d71    # 0.915f
        0x3f6b851f    # 0.92f
        0x3f6ccccd    # 0.925f
        0x3f6e147b    # 0.93f
        0x3f6f5c29    # 0.935f
        0x3f70a3d7    # 0.94f
        0x3f71eb85    # 0.945f
        0x3f733333    # 0.95f
        0x3f747ae1    # 0.955f
        0x3f75c28f    # 0.96f
        0x3f770a3d    # 0.965f
        0x3f7851ec    # 0.97f
        0x3f79999a    # 0.975f
        0x3f7ae148    # 0.98f
        0x3f7c28f6    # 0.985f
        0x3f7d70a4    # 0.99f
        0x3f7eb852    # 0.995f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3c8ad90c
        0x3cd0455d    # 0.0254237f
        0x3d2d8f35
        0x3d504578
        0x3d72fba0    # 0.059322f
        0x3d72fba0    # 0.059322f
        0x3d8ad8f2
        0x3dbeea49
        0x3dd0456a
        0x3e138682
        0x3e24e19d
        0x3e363cbf
        0x3e3eea50
        0x3e58f2fb
        0x3e58f2fb
        0x3e6a4e1d
        0x3e72fba7
        0x3e822b64
        0x3e8ad8f2
        0x3e8ad8f2
        0x3e97dd4b
        0x3e9c3410
        0x3ead8f31
        0x3eb1e5f6
        0x3ec34115
        0x3ec797dd
        0x3ed49c33
        0x3ee5f751
        0x3ef2fbaa
        0x3f022b64
        0x3f0456c8
        0x3f0456c8
        0x3f08ad8f
        0x3f0f2fba    # 0.559322f
        0x3f115b1e
        0x3f138682
        0x3f17dd49
        0x3f24e1a1
        0x3f31e5f8
        0x3f386823    # 0.720339f
        0x3f386823    # 0.720339f
        0x3f3a9387
        0x3f4115b2
        0x3f456c79
        0x3f4797dd    # 0.779661f
        0x3f4e1a08
        0x3f5270d0
        0x3f5270d0
        0x3f58f2fb
        0x3f5f7528
        0x3f6a4e19
        0x3f6a4e19
        0x3f70d046    # 0.940678f
        0x3f70d046    # 0.940678f
        0x3f72fba9
        0x3f72fba9
        0x3f72fba9
        0x3f75270d
        0x3f75270d
        0x3f75270d
        0x3f75270d
        0x3f75270d
        0x3f75270d
        0x3f75270d
        0x3f75270d
        0x3f75270d
        0x3f75270d
        0x3f775271
        0x3f797dd5
        0x3f797dd5
        0x3f797dd5
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
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
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x3c0ad90c
        0x3c0ad90c
        0x3c0ad90c
        0x3c8ad90c
        0x3c8ad90c
        0x3c8ad90c
        0x3c8ad90c
        0x3c8ad90c
        0x3d0ad8f2
        0x3d0ad8f2
        0x3d0ad8f2
        0x3d0ad8f2
        0x3d504578
        0x3d72fba0    # 0.059322f
        0x3d72fba0    # 0.059322f
        0x3d72fba0    # 0.059322f
        0x3d72fba0    # 0.059322f
        0x3d72fba0    # 0.059322f
        0x3d9c3413
        0x3d9c3413
        0x3d9c3413
        0x3dad8f35
        0x3dad8f35
        0x3dbeea49
        0x3dbeea49
        0x3dbeea49
        0x3dbeea49
        0x3dd0456a
        0x3e022b61
        0x3e0ad8f2
        0x3e0ad8f2
        0x3e138682
        0x3e24e19d
        0x3e3eea50
        0x3e3eea50
        0x3e50456a
        0x3e822b64
        0x3e86822d
        0x3e938682
        0x3e97dd4b
        0x3ea93869
        0x3ec34115
        0x3ed0456e
        0x3ee1a08c    # 0.440678f
        0x3eea4e19
        0x3ef2fbaa
        0x3f022b64
        0x3f08ad8f
        0x3f17dd49
        0x3f1e5f76
        0x3f24e1a1
        0x3f34115b
        0x3f3cbeea
        0x3f456c79
        0x3f4beea5
        0x3f5270d0
        0x3f56c799
        0x3f5f7528
        0x3f65f753
        0x3f6c797e
        0x3f6ea4e2
        0x3f70d046    # 0.940678f
        0x3f70d046    # 0.940678f
        0x3f70d046    # 0.940678f
        0x3f70d046    # 0.940678f
        0x3f70d046    # 0.940678f
        0x3f72fba9
        0x3f72fba9
        0x3f72fba9
        0x3f72fba9
        0x3f72fba9
        0x3f775271
        0x3f775271
        0x3f775271
        0x3f7ba938
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f7dd49c
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method
