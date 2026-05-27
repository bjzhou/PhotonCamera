.class public Lcom/AWB;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static NUM()I
    .locals 1

    const/4 v0, 0x5

    return v0
.end method

.method public static WB_B()[F
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f340000    # 0.703125f
        0x3f09c000
        0x3eb40000    # 0.3515625f
        0x0
        0x0
    .end array-data
.end method

.method public static WB_G()Ljava/lang/Float;
    .locals 1

    const v0, 0x3f802000    # 1.0009766f

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public static WB_R()[F
    .locals 1

    const/4 v0, 0x5

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    return-object v0

    nop

    :array_0
    .array-data 4
        0x3f024000
        0x3f1f0000    # 0.62109375f
        0x3f38ffc1
        0x0
        0x0
    .end array-data
.end method
