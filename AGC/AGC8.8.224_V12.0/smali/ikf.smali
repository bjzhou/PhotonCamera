.class public final Likf;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final a:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xc9

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    sput-object v0, Likf;->a:[F

    return-void

    :array_0
    .array-data 4
        0x0
        0x3b83126f    # 0.004f
        0x3c03126f    # 0.008f
        0x3c449ba6    # 0.012f
        0x3c83126f    # 0.016f
        0x3ca3d70a    # 0.02f
        0x3cc49ba6    # 0.024f
        0x3ce56042    # 0.028f
        0x3d03126f    # 0.032f
        0x3d1374bc    # 0.036f
        0x3d23d70a    # 0.04f
        0x3d343958    # 0.044f
        0x3d449ba6    # 0.048f
        0x3d54fdf4    # 0.052f
        0x3d656042    # 0.056f
        0x3d75c28f    # 0.06f
        0x3d83126f    # 0.064f
        0x3d8b4396    # 0.068f
        0x3d9374bc    # 0.072f
        0x3d9ba5e3    # 0.076f
        0x3da3d70a    # 0.08f
        0x3dac0831    # 0.084f
        0x3db43958    # 0.088f
        0x3dbc6a7f    # 0.092f
        0x3dc49ba6    # 0.096f
        0x3dcccccd    # 0.1f
        0x3dd4fdf4    # 0.104f
        0x3ddd2f1b    # 0.108f
        0x3de56042    # 0.112f
        0x3ded9168    # 0.116f
        0x3df5c28f    # 0.12f
        0x3dfdf3b6    # 0.124f
        0x3e03126f    # 0.128f
        0x3e072b02    # 0.132f
        0x3e0b4396    # 0.136f
        0x3e0f5c29    # 0.14f
        0x3e1374bc    # 0.144f
        0x3e178d50    # 0.148f
        0x3e1ba5e3    # 0.152f
        0x3e1fbe77    # 0.156f
        0x3e23d70a    # 0.16f
        0x3e27ef9e    # 0.164f
        0x3e2c0831    # 0.168f
        0x3e3020c5    # 0.172f
        0x3e343958    # 0.176f
        0x3e3851ec    # 0.18f
        0x3e3c6a7f    # 0.184f
        0x3e408312    # 0.188f
        0x3e449ba6    # 0.192f
        0x3e48b439
        0x3e4ccccd    # 0.2f
        0x3e50e560    # 0.204f
        0x3e54fdf4    # 0.208f
        0x3e591687    # 0.212f
        0x3e5d2f1b    # 0.216f
        0x3e6147ae    # 0.22f
        0x3e656042    # 0.224f
        0x3e6978d5    # 0.228f
        0x3e6d9168    # 0.232f
        0x3e71a9fc    # 0.236f
        0x3e75c28f    # 0.24f
        0x3e79db23    # 0.244f
        0x3e7df3b6    # 0.248f
        0x3e810625    # 0.252f
        0x3e83126f    # 0.256f
        0x3e851eb8    # 0.26f
        0x3e872b02    # 0.264f
        0x3e89374c    # 0.268f
        0x3e8b4396    # 0.272f
        0x3e8d4fdf    # 0.276f
        0x3e8f5c29    # 0.28f
        0x3e916873    # 0.284f
        0x3e9374bc    # 0.288f
        0x3e958106    # 0.292f
        0x3e978d50    # 0.296f
        0x3e99999a    # 0.3f
        0x3e9ba5e3    # 0.304f
        0x3e9db22d    # 0.308f
        0x3e9fbe77    # 0.312f
        0x3ea1cac1    # 0.316f
        0x3ea3d70a    # 0.32f
        0x3ea5e354    # 0.324f
        0x3ea7ef9e    # 0.328f
        0x3ea9fbe7    # 0.332f
        0x3eac0831    # 0.336f
        0x3eae147b    # 0.34f
        0x3eb020c5    # 0.344f
        0x3eb22d0e    # 0.348f
        0x3eb43958    # 0.352f
        0x3eb645a2    # 0.356f
        0x3eb851ec    # 0.36f
        0x3eba5e35    # 0.364f
        0x3ebc6a7f    # 0.368f
        0x3ebe76c9    # 0.372f
        0x3ec08312    # 0.376f
        0x3ec28f5c    # 0.38f
        0x3ec49ba6    # 0.384f
        0x3ec6a7f0    # 0.388f
        0x3ec8b439    # 0.392f
        0x3ecac083    # 0.396f
        0x3ecccccd    # 0.4f
        0x3ed06f69    # 0.4071f
        0x3ed41206    # 0.4142f
        0x3ed7b4a2    # 0.4213f
        0x3edb573f    # 0.4284f
        0x3edef9db    # 0.4355f
        0x3ee29c78    # 0.4426f
        0x3ee63f14    # 0.4497f
        0x3ee9e1b1    # 0.4568f
        0x3eed844d    # 0.4639f
        0x3ef126e9    # 0.471f
        0x3ef4c986    # 0.4781f
        0x3ef86c22    # 0.4852f
        0x3efc0ebf    # 0.4923f
        0x3effb15b    # 0.4994f
        0x3f01a9fc    # 0.5065f
        0x3f037b4a    # 0.5136f
        0x3f054c98    # 0.5207f
        0x3f071de7    # 0.5278f
        0x3f08ef35    # 0.5349f
        0x3f0ac083    # 0.542f
        0x3f0c91d1    # 0.5491f
        0x3f0e6320    # 0.5562f
        0x3f10346e    # 0.5633f
        0x3f1205bc    # 0.5704f
        0x3f13d70a    # 0.5775f
        0x3f15a858    # 0.5846f
        0x3f1779a7    # 0.5917f
        0x3f194af5    # 0.5988f
        0x3f1b1c43    # 0.6059f
        0x3f1ced91    # 0.613f
        0x3f1ebee0    # 0.6201f
        0x3f20902e    # 0.6272f
        0x3f22617c    # 0.6343f
        0x3f2432ca    # 0.6414f
        0x3f260419    # 0.6485f
        0x3f27d567    # 0.6556f
        0x3f29a6b5    # 0.6627f
        0x3f2b7803    # 0.6698f
        0x3f2d4952    # 0.6769f
        0x3f2f1aa0    # 0.684f
        0x3f30ebee    # 0.6911f
        0x3f32bd3c    # 0.6982f
        0x3f348e8a    # 0.7053f
        0x3f365fd9    # 0.7124f
        0x3f383127    # 0.7195f
        0x3f3a0275    # 0.7266f
        0x3f3bd3c3    # 0.7337f
        0x3f3da512    # 0.7408f
        0x3f3f7660    # 0.7479f
        0x3f4147ae    # 0.755f
        0x3f4318fc    # 0.7621f
        0x3f44ea4b    # 0.7692f
        0x3f46bb99    # 0.7763f
        0x3f488ce7    # 0.7834f
        0x3f4a5e35    # 0.7905f
        0x3f4c2f83    # 0.7976f
        0x3f4e00d2    # 0.8047f
        0x3f4fd220    # 0.8118f
        0x3f51a36e    # 0.8189f
        0x3f5374bc    # 0.826f
        0x3f55460b    # 0.8331f
        0x3f571759    # 0.8402f
        0x3f58e8a7    # 0.8473f
        0x3f5ab9f5    # 0.8544f
        0x3f5c8b44    # 0.8615f
        0x3f5e5c92    # 0.8686f
        0x3f602de0    # 0.8757f
        0x3f61ff2e    # 0.8828f
        0x3f63d07d    # 0.8899f
        0x3f65a1cb    # 0.897f
        0x3f677319    # 0.9041f
        0x3f694467    # 0.9112f
        0x3f6b15b5    # 0.9183f
        0x3f6ce704    # 0.9254f
        0x3f6eb852    # 0.9325f
        0x3f7089a0    # 0.9396f
        0x3f725aee    # 0.9467f
        0x3f742c3d    # 0.9538f
        0x3f75fd8b    # 0.9609f
        0x3f77ced9    # 0.968f
        0x3f79a027    # 0.9751f
        0x3f7b7176    # 0.9822f
        0x3f7d42c4    # 0.9893f
        0x3f7f1412    # 0.9964f
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
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getInterpolation(F)F
    .locals 4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v1, p1, v0

    sget-object v2, Likf;->a:[F

    if-ltz v1, :cond_0

    :goto_0
    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gtz v1, :cond_1

    goto :goto_0

    :goto_1
    return v0

    :cond_1
    const/high16 v0, 0x43480000    # 200.0f

    mul-float v0, v0, p1

    float-to-int v0, v0

    const/16 v1, 0xc7

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    int-to-float v1, v0

    const v3, 0x3ba3d70a    # 0.005f

    mul-float v1, v1, v3

    sub-float/2addr p1, v1

    aget v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    aget v0, v2, v0

    div-float/2addr p1, v3

    sub-float/2addr v0, v1

    mul-float p1, p1, v0

    add-float/2addr v1, p1

    return v1
.end method
