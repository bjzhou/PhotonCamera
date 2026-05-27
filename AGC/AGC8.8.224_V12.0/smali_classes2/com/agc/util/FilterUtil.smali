.class Lcom/agc/util/FilterUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFilterValue(IIIII)F
    .locals 4

    const/high16 v0, 0x42480000    # 50.0f

    const/high16 v1, 0x3f800000    # 1.0f

    const/16 v2, 0x32

    if-ne p0, p3, :cond_0

    invoke-static {v2, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    int-to-float p3, p3

    sub-int p0, p1, p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    mul-float/2addr p3, p0

    if-le p4, v2, :cond_5

    sub-int/2addr p4, v2

    int-to-float p0, p4

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    mul-float/2addr p0, p1

    add-float/2addr p3, p0

    goto :goto_2

    :cond_0
    if-gez p0, :cond_2

    const/high16 p3, 0x42c80000    # 100.0f

    if-gez p4, :cond_1

    int-to-float p2, p4

    sub-int/2addr p0, p1

    int-to-float p0, p0

    mul-float/2addr p0, v1

    div-float/2addr p0, p3

    mul-float p3, p2, p0

    goto :goto_2

    :cond_1
    int-to-float p0, p4

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr p1, v1

    div-float/2addr p1, p3

    mul-float p3, p0, p1

    goto :goto_2

    :cond_2
    const/4 p3, 0x0

    if-ge p4, v2, :cond_3

    invoke-static {p4, p3}, Ljava/lang/Math;->max(II)I

    move-result v3

    goto :goto_0

    :cond_3
    move v3, v2

    :goto_0
    int-to-float v3, v3

    sub-int p0, p1, p0

    int-to-float p0, p0

    mul-float/2addr p0, v1

    div-float/2addr p0, v0

    mul-float/2addr v3, p0

    if-ge p4, v2, :cond_4

    goto :goto_1

    :cond_4
    const/16 p0, 0x64

    invoke-static {p0, p4}, Ljava/lang/Math;->min(II)I

    move-result p3

    :goto_1
    int-to-float p0, p3

    sub-int/2addr p2, p1

    int-to-float p1, p2

    mul-float/2addr p1, v1

    div-float/2addr p1, v0

    mul-float/2addr p0, p1

    add-float p3, v3, p0

    :cond_5
    :goto_2
    return p3
.end method
