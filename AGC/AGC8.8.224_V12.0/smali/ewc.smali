.class public final Lewc;
.super Ljava/lang/Object;


# static fields
.field public static final a:[F

.field public static final b:[F

.field public static final c:[F

.field public static final d:[F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x4

    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lewc;->a:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lewc;->b:[F

    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lewc;->c:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_3

    sput-object v0, Lewc;->d:[F

    return-void

    :array_0
    .array-data 4
        0x3e4ccccd    # 0.2f
        0x3f35c28f    # 0.71f
        0x3f65e354    # 0.898f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3df5c28f    # 0.12f
        0x3df5c28f    # 0.12f
        0x3df5c28f    # 0.12f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3dcccccd    # 0.1f
    .end array-data
.end method
