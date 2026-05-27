.class Lixc;
.super Lmk;


# instance fields
.field private final a:F


# direct methods
.method public constructor <init>(Landroid/content/Context;F)V
    .locals 0

    invoke-direct {p0, p1}, Lmk;-><init>(Landroid/content/Context;)V

    const p1, 0x3c23d70a    # 0.01f

    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 p2, 0x43200000    # 160.0f

    div-float/2addr p2, p1

    iput p2, p0, Lixc;->a:F

    return-void
.end method


# virtual methods
.method protected final a(Landroid/util/DisplayMetrics;)F
    .locals 1

    iget v0, p0, Lixc;->a:F

    iget p1, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method

.method public final g(IIIII)I
    .locals 0

    if-nez p5, :cond_0

    add-int/2addr p3, p4

    add-int/2addr p1, p2

    sub-int/2addr p3, p1

    div-int/lit8 p3, p3, 0x2

    return p3

    :cond_0
    invoke-super/range {p0 .. p5}, Lmk;->g(IIIII)I

    move-result p1

    return p1
.end method

.method public final h(Landroid/view/View;I)I
    .locals 1

    invoke-super {p0, p1, p2}, Lmk;->h(Landroid/view/View;I)I

    move-result v0

    if-nez p2, :cond_0

    iget-object p2, p0, Lmk;->d:Lly;

    invoke-static {p2, p1}, Lkba;->o(Lly;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method public final i(Landroid/view/View;I)I
    .locals 1

    invoke-super {p0, p1, p2}, Lmk;->i(Landroid/view/View;I)I

    move-result v0

    if-nez p2, :cond_0

    iget-object p2, p0, Lmk;->d:Lly;

    invoke-static {p2, p1}, Lkba;->o(Lly;Landroid/view/View;)Landroid/graphics/Point;

    move-result-object p1

    iget p1, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v0, p1

    :cond_0
    return v0
.end method

.method protected final k()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected final l()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
