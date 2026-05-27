.class public final Lbhz;
.super Lbhx;


# instance fields
.field private final e:Landroid/graphics/PointF;

.field private final f:[F

.field private final g:Landroid/graphics/PathMeasure;

.field private h:Lbhy;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lbhx;-><init>(Ljava/util/List;)V

    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lbhz;->e:Landroid/graphics/PointF;

    const/4 p1, 0x2

    new-array p1, p1, [F

    iput-object p1, p0, Lbhz;->f:[F

    new-instance p1, Landroid/graphics/PathMeasure;

    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object p1, p0, Lbhz;->g:Landroid/graphics/PathMeasure;

    return-void
.end method


# virtual methods
.method public final synthetic f(Lblt;F)Ljava/lang/Object;
    .locals 3

    move-object v0, p1

    check-cast v0, Lbhy;

    iget-object v1, v0, Lbhy;->a:Landroid/graphics/Path;

    if-nez v1, :cond_0

    iget-object p1, p1, Lblt;->b:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/PointF;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lbhz;->d:Lbkc;

    if-eqz p1, :cond_1

    iget p2, v0, Lbhy;->g:F

    iget-object p2, v0, Lbhy;->h:Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    iget-object p2, v0, Lbhy;->b:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/PointF;

    iget-object p2, v0, Lbhy;->c:Ljava/lang/Object;

    check-cast p2, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lbhs;->c()F

    iget-object p1, p1, Lbkc;->a:Ljava/lang/Object;

    check-cast p1, Landroid/graphics/PointF;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lbhz;->h:Lbhy;

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    iget-object p1, p0, Lbhz;->g:Landroid/graphics/PathMeasure;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iput-object v0, p0, Lbhz;->h:Lbhy;

    :cond_2
    iget-object p1, p0, Lbhz;->g:Landroid/graphics/PathMeasure;

    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    mul-float p2, p2, v0

    iget-object v0, p0, Lbhz;->f:[F

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    iget-object p1, p0, Lbhz;->e:Landroid/graphics/PointF;

    iget-object p2, p0, Lbhz;->f:[F

    aget v0, p2, v2

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    iget-object p1, p0, Lbhz;->e:Landroid/graphics/PointF;

    :goto_0
    return-object p1
.end method
