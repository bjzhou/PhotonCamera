.class public final Lcsh;
.super Ljava/lang/Object;


# instance fields
.field final a:I

.field final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "config_screenBrightnessSettingMaximumFloat"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p1, v0, v1}, Ldgw;->e(Landroid/content/Context;Ljava/lang/String;F)F

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    mul-float v0, v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcsh;->a:I

    const-string v0, "config_screenBrightnessSettingMinimumFloat"

    const/4 v2, 0x0

    invoke-static {p1, v0, v2}, Ldgw;->e(Landroid/content/Context;Ljava/lang/String;F)F

    move-result p1

    mul-float p1, p1, v1

    float-to-int p1, p1

    iput p1, p0, Lcsh;->b:I

    return-void
.end method


# virtual methods
.method public final a(I)F
    .locals 1

    iget v0, p0, Lcsh;->a:I

    int-to-float v0, v0

    int-to-float p1, p1

    div-float/2addr p1, v0

    return p1
.end method

.method public final b(IFZ)I
    .locals 12

    iget v0, p0, Lcsh;->b:I

    int-to-float v0, v0

    iget v1, p0, Lcsh;->a:I

    int-to-float v1, v1

    int-to-float v2, p1

    sub-float/2addr v2, v0

    sub-float/2addr v1, v0

    div-float/2addr v2, v1

    const/high16 v0, 0x41400000    # 12.0f

    mul-float v2, v2, v0

    const/high16 v1, 0x3f800000    # 1.0f

    const v3, 0x3e371ff0

    const/high16 v4, 0x3f000000    # 0.5f

    cmpg-float v1, v2, v1

    if-gtz v1, :cond_0

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, v4

    goto :goto_0

    :cond_0
    const v1, -0x416e3fe0

    add-float/2addr v2, v1

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->log(D)D

    move-result-wide v1

    double-to-float v1, v1

    mul-float v1, v1, v3

    const v2, 0x3f0f564f

    add-float/2addr v1, v2

    :goto_0
    const v2, 0x477fff00    # 65535.0f

    mul-float v1, v1, v2

    const/4 v5, 0x0

    add-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    int-to-float v1, v1

    mul-float p2, p2, v2

    sub-float/2addr v1, p2

    float-to-int p2, v1

    int-to-double v6, p2

    const-wide v8, 0x40efffe000000000L    # 65535.0

    cmpl-double v1, v6, v8

    if-lez v1, :cond_1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    goto :goto_1

    :cond_1
    const-wide/16 v10, 0x0

    cmpg-double v1, v6, v10

    if-gez v1, :cond_2

    move-wide v6, v10

    goto :goto_1

    :cond_2
    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v6, v10

    div-double/2addr v6, v8

    :goto_1
    const/4 v1, 0x1

    if-eq v1, p3, :cond_3

    const/4 p3, 0x0

    goto :goto_2

    :cond_3
    const p3, 0x3e99999a    # 0.3f

    :goto_2
    float-to-double v8, p3

    cmpg-double p3, v6, v8

    if-gez p3, :cond_4

    return p1

    :cond_4
    iget p1, p0, Lcsh;->b:I

    iget p3, p0, Lcsh;->a:I

    int-to-float p2, p2

    add-float/2addr p2, v5

    div-float/2addr p2, v2

    cmpg-float v1, p2, v4

    if-gtz v1, :cond_5

    div-float/2addr p2, v4

    mul-float p2, p2, p2

    goto :goto_3

    :cond_5
    const v1, -0x40f0a9b1

    add-float/2addr p2, v1

    div-float/2addr p2, v3

    float-to-double v1, p2

    invoke-static {v1, v2}, Ljava/lang/Math;->exp(D)D

    move-result-wide v1

    double-to-float p2, v1

    const v1, 0x3e91c020

    add-float/2addr p2, v1

    :goto_3
    int-to-float p1, p1

    int-to-float p3, p3

    sub-float/2addr p3, p1

    div-float/2addr p2, v0

    mul-float p3, p3, p2

    add-float/2addr p1, p3

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method
