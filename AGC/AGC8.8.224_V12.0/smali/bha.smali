.class public final Lbha;
.super Ljava/lang/Object;

# interfaces
.implements Lbgy;
.implements Lbhn;
.implements Lbhe;


# instance fields
.field private final a:Landroid/graphics/Path;

.field private final b:Landroid/graphics/Paint;

.field private final c:Lbjq;

.field private final d:Ljava/lang/String;

.field private final e:Z

.field private final f:Ljava/util/List;

.field private final g:Lbhs;

.field private final h:Lbhs;

.field private i:Lbhs;

.field private final j:Lbgj;


# direct methods
.method public constructor <init>(Lbgj;Lbjq;Lbjk;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lbha;->a:Landroid/graphics/Path;

    new-instance v1, Lbgu;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lbgu;-><init>(I)V

    iput-object v1, p0, Lbha;->b:Landroid/graphics/Paint;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lbha;->f:Ljava/util/List;

    iput-object p2, p0, Lbha;->c:Lbjq;

    iget-object v1, p3, Lbjk;->b:Ljava/lang/String;

    iput-object v1, p0, Lbha;->d:Ljava/lang/String;

    iget-boolean v1, p3, Lbjk;->e:Z

    iput-boolean v1, p0, Lbha;->e:Z

    iput-object p1, p0, Lbha;->j:Lbgj;

    iget-object p1, p3, Lbjk;->c:Lbio;

    if-eqz p1, :cond_0

    iget-object p1, p3, Lbjk;->a:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, p1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object p1, p3, Lbjk;->c:Lbio;

    invoke-virtual {p1}, Lbio;->a()Lbhs;

    move-result-object p1

    iput-object p1, p0, Lbha;->g:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    invoke-virtual {p2, p1}, Lbjq;->h(Lbhs;)V

    iget-object p1, p3, Lbjk;->d:Lbir;

    invoke-virtual {p1}, Lbir;->a()Lbhs;

    move-result-object p1

    iput-object p1, p0, Lbha;->h:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    invoke-virtual {p2, p1}, Lbjq;->h(Lbhs;)V

    return-void

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lbha;->g:Lbhs;

    iput-object p1, p0, Lbha;->h:Lbhs;

    return-void
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 3

    iget-boolean v0, p0, Lbha;->e:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lbha;->b:Landroid/graphics/Paint;

    iget-object v1, p0, Lbha;->g:Lbhs;

    check-cast v1, Lbht;

    invoke-virtual {v1}, Lbht;->k()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    int-to-float p3, p3

    iget-object v0, p0, Lbha;->h:Lbhs;

    invoke-virtual {v0}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/high16 v1, 0x437f0000    # 255.0f

    div-float/2addr p3, v1

    int-to-float v0, v0

    iget-object v2, p0, Lbha;->b:Landroid/graphics/Paint;

    mul-float p3, p3, v0

    const/high16 v0, 0x42c80000    # 100.0f

    div-float/2addr p3, v0

    mul-float p3, p3, v1

    float-to-int p3, p3

    invoke-static {p3}, Lbln;->e(I)I

    move-result p3

    invoke-virtual {v2, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object p3, p0, Lbha;->i:Lbhs;

    if-eqz p3, :cond_1

    iget-object v0, p0, Lbha;->b:Landroid/graphics/Paint;

    invoke-virtual {p3}, Lbhs;->e()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/graphics/ColorFilter;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_1
    iget-object p3, p0, Lbha;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    :goto_0
    iget-object v0, p0, Lbha;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p3, v0, :cond_2

    iget-object v0, p0, Lbha;->a:Landroid/graphics/Path;

    iget-object v1, p0, Lbha;->f:Ljava/util/List;

    invoke-interface {v1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbhg;

    invoke-interface {v1}, Lbhg;->i()Landroid/graphics/Path;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lbha;->a:Landroid/graphics/Path;

    iget-object p3, p0, Lbha;->b:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lbfv;->a()V

    return-void
.end method

.method public final b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    iget-object p3, p0, Lbha;->a:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lbha;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lbha;->a:Landroid/graphics/Path;

    iget-object v2, p0, Lbha;->f:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbhg;

    invoke-interface {v2}, Lbhg;->i()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lbha;->a:Landroid/graphics/Path;

    invoke-virtual {p2, p1, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget p2, p1, Landroid/graphics/RectF;->left:F

    const/high16 p3, -0x40800000    # -1.0f

    add-float/2addr p2, p3

    iget v0, p1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, p3

    iget p3, p1, Landroid/graphics/RectF;->right:F

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr p3, v1

    iget v2, p1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v2, v1

    invoke-virtual {p1, p2, v0, p3, v2}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lbha;->j:Lbgj;

    invoke-virtual {v0}, Lbgj;->invalidateSelf()V

    return-void
.end method

.method public final d(Lbik;ILjava/util/List;Lbik;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lbln;->d(Lbik;ILjava/util/List;Lbik;Lbhe;)V

    return-void
.end method

.method public final e(Ljava/util/List;Ljava/util/List;)V
    .locals 2

    const/4 p1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_1

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgw;

    instance-of v1, v0, Lbhg;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lbha;->f:Ljava/util/List;

    check-cast v0, Lbhg;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f(Ljava/lang/Object;Lbkc;)V
    .locals 1

    sget-object v0, Lbgo;->a:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lbha;->g:Lbhs;

    :goto_0
    iput-object p2, p1, Lbhs;->d:Lbkc;

    return-void

    :cond_0
    sget-object v0, Lbgo;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lbha;->h:Lbhs;

    goto :goto_0

    :cond_1
    sget-object v0, Lbgo;->E:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lbha;->i:Lbhs;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lbha;->c:Lbjq;

    invoke-virtual {v0, p1}, Lbjq;->j(Lbhs;)V

    :cond_2
    new-instance p1, Lbig;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lbig;-><init>(Lbkc;[B)V

    iput-object p1, p0, Lbha;->i:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    iget-object p1, p0, Lbha;->c:Lbjq;

    iget-object p2, p0, Lbha;->i:Lbhs;

    invoke-virtual {p1, p2}, Lbjq;->h(Lbhs;)V

    :cond_3
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbha;->d:Ljava/lang/String;

    return-object v0
.end method
