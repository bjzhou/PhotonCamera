.class final Lbwk;
.super Lbwm;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbwm;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(IIII)F
    .locals 1

    sget-boolean v0, Lbwk;->g:Z

    if-eqz v0, :cond_0

    int-to-float p3, p3

    int-to-float p1, p1

    int-to-float p4, p4

    int-to-float p2, p2

    div-float/2addr p3, p1

    div-float/2addr p4, p2

    invoke-static {p3, p4}, Ljava/lang/Math;->min(FF)F

    move-result p1

    return p1

    :cond_0
    div-int/2addr p2, p4

    div-int/2addr p1, p3

    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    if-nez p1, :cond_1

    return p2

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p2, p1

    return p2
.end method

.method public final b(IIII)I
    .locals 0

    sget-boolean p1, Lbwk;->g:Z

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
