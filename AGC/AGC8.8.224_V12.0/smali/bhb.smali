.class public final Lbhb;
.super Ljava/lang/Object;

# interfaces
.implements Lbgy;
.implements Lbhn;
.implements Lbhe;


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Z

.field private final c:Lbjq;

.field private final d:Lxc;

.field private final e:Lxc;

.field private final f:Landroid/graphics/Path;

.field private final g:Landroid/graphics/Paint;

.field private final h:Landroid/graphics/RectF;

.field private final i:Ljava/util/List;

.field private final j:Lbhs;

.field private final k:Lbhs;

.field private final l:Lbhs;

.field private final m:Lbhs;

.field private n:Lbhs;

.field private o:Lbig;

.field private final p:Lbgj;

.field private final q:I

.field private final r:I


# direct methods
.method public constructor <init>(Lbgj;Lbjq;Lbjd;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lxc;

    invoke-direct {v0}, Lxc;-><init>()V

    iput-object v0, p0, Lbhb;->d:Lxc;

    new-instance v0, Lxc;

    invoke-direct {v0}, Lxc;-><init>()V

    iput-object v0, p0, Lbhb;->e:Lxc;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lbhb;->f:Landroid/graphics/Path;

    new-instance v1, Lbgu;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lbgu;-><init>(I)V

    iput-object v1, p0, Lbhb;->g:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lbhb;->h:Landroid/graphics/RectF;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lbhb;->i:Ljava/util/List;

    iput-object p2, p0, Lbhb;->c:Lbjq;

    iget-object v1, p3, Lbjd;->f:Ljava/lang/String;

    iput-object v1, p0, Lbhb;->a:Ljava/lang/String;

    iget-boolean v1, p3, Lbjd;->g:Z

    iput-boolean v1, p0, Lbhb;->b:Z

    iput-object p1, p0, Lbhb;->p:Lbgj;

    iget v1, p3, Lbjd;->h:I

    iput v1, p0, Lbhb;->r:I

    iget-object v1, p3, Lbjd;->a:Landroid/graphics/Path$FillType;

    invoke-virtual {v0, v1}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object p1, p1, Lbgj;->a:Lbga;

    invoke-virtual {p1}, Lbga;->a()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lbhb;->q:I

    iget-object p1, p3, Lbjd;->b:Lbiq;

    invoke-virtual {p1}, Lbiq;->a()Lbhs;

    move-result-object p1

    iput-object p1, p0, Lbhb;->j:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    invoke-virtual {p2, p1}, Lbjq;->h(Lbhs;)V

    iget-object p1, p3, Lbjd;->c:Lbir;

    invoke-virtual {p1}, Lbir;->a()Lbhs;

    move-result-object p1

    iput-object p1, p0, Lbhb;->k:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    invoke-virtual {p2, p1}, Lbjq;->h(Lbhs;)V

    iget-object p1, p3, Lbjd;->d:Lbit;

    invoke-virtual {p1}, Lbit;->a()Lbhs;

    move-result-object p1

    iput-object p1, p0, Lbhb;->l:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    invoke-virtual {p2, p1}, Lbjq;->h(Lbhs;)V

    iget-object p1, p3, Lbjd;->e:Lbit;

    invoke-virtual {p1}, Lbit;->a()Lbhs;

    move-result-object p1

    iput-object p1, p0, Lbhb;->m:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    invoke-virtual {p2, p1}, Lbjq;->h(Lbhs;)V

    return-void
.end method

.method private final h()I
    .locals 4

    iget-object v0, p0, Lbhb;->l:Lbhs;

    iget v0, v0, Lbhs;->c:F

    iget v1, p0, Lbhb;->q:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lbhb;->m:Lbhs;

    iget v1, v1, Lbhs;->c:F

    iget v2, p0, Lbhb;->q:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lbhb;->j:Lbhs;

    iget v2, v2, Lbhs;->c:F

    iget v3, p0, Lbhb;->q:I

    int-to-float v3, v3

    mul-float v2, v2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-eqz v0, :cond_0

    mul-int/lit16 v0, v0, 0x20f

    goto :goto_0

    :cond_0
    const/16 v0, 0x11

    :goto_0
    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x1f

    mul-int v0, v0, v1

    :cond_1
    if-eqz v2, :cond_2

    mul-int/lit8 v0, v0, 0x1f

    mul-int v0, v0, v2

    :cond_2
    return v0
.end method

.method private final i([I)[I
    .locals 4

    iget-object v0, p0, Lbhb;->o:Lbig;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    array-length v1, p1

    array-length v2, v0

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    :goto_0
    array-length v1, p1

    if-ge v3, v1, :cond_1

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-array p1, v2, [I

    :goto_1
    array-length v1, v0

    if-ge v3, v1, :cond_1

    aget-object v1, v0, v3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aput v1, p1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    return-object p1
.end method


# virtual methods
.method public final a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    iget-boolean v2, v0, Lbhb;->b:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lbhb;->f:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    iget-object v4, v0, Lbhb;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    iget-object v4, v0, Lbhb;->f:Landroid/graphics/Path;

    iget-object v5, v0, Lbhb;->i:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbhg;

    invoke-interface {v5}, Lbhg;->i()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v4, v5, v1}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v3, v0, Lbhb;->f:Landroid/graphics/Path;

    iget-object v4, v0, Lbhb;->h:Landroid/graphics/RectF;

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget v2, v0, Lbhb;->r:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    invoke-direct/range {p0 .. p0}, Lbhb;->h()I

    move-result v2

    iget-object v3, v0, Lbhb;->d:Lxc;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lxc;->d(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/LinearGradient;

    if-nez v2, :cond_4

    iget-object v2, v0, Lbhb;->l:Lbhs;

    invoke-virtual {v2}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget-object v3, v0, Lbhb;->m:Lbhs;

    invoke-virtual {v3}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget-object v6, v0, Lbhb;->j:Lbhs;

    invoke-virtual {v6}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldne;

    iget-object v7, v6, Ldne;->b:Ljava/lang/Object;

    check-cast v7, [I

    invoke-direct {v0, v7}, Lbhb;->i([I)[I

    move-result-object v13

    iget-object v6, v6, Ldne;->a:Ljava/lang/Object;

    new-instance v7, Landroid/graphics/LinearGradient;

    iget v9, v2, Landroid/graphics/PointF;->x:F

    iget v10, v2, Landroid/graphics/PointF;->y:F

    iget v11, v3, Landroid/graphics/PointF;->x:F

    iget v12, v3, Landroid/graphics/PointF;->y:F

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v14, v6

    check-cast v14, [F

    move-object v8, v7

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v2, v0, Lbhb;->d:Lxc;

    invoke-virtual {v2, v4, v5, v7}, Lxc;->g(JLjava/lang/Object;)V

    move-object v2, v7

    goto :goto_2

    :cond_2
    invoke-direct/range {p0 .. p0}, Lbhb;->h()I

    move-result v2

    iget-object v3, v0, Lbhb;->e:Lxc;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lxc;->d(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RadialGradient;

    if-nez v2, :cond_4

    iget-object v2, v0, Lbhb;->l:Lbhs;

    invoke-virtual {v2}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget-object v3, v0, Lbhb;->m:Lbhs;

    invoke-virtual {v3}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget-object v6, v0, Lbhb;->j:Lbhs;

    invoke-virtual {v6}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldne;

    iget-object v7, v6, Ldne;->b:Ljava/lang/Object;

    check-cast v7, [I

    invoke-direct {v0, v7}, Lbhb;->i([I)[I

    move-result-object v12

    iget-object v6, v6, Ldne;->a:Ljava/lang/Object;

    iget v9, v2, Landroid/graphics/PointF;->x:F

    iget v10, v2, Landroid/graphics/PointF;->y:F

    iget v2, v3, Landroid/graphics/PointF;->x:F

    iget v3, v3, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v9

    sub-float/2addr v3, v10

    float-to-double v7, v2

    float-to-double v2, v3

    invoke-static {v7, v8, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_3

    const v2, 0x3a83126f    # 0.001f

    const v11, 0x3a83126f    # 0.001f

    goto :goto_1

    :cond_3
    move v11, v2

    :goto_1
    new-instance v2, Landroid/graphics/RadialGradient;

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v13, v6

    check-cast v13, [F

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v3, v0, Lbhb;->e:Lxc;

    invoke-virtual {v3, v4, v5, v2}, Lxc;->g(JLjava/lang/Object;)V

    :cond_4
    :goto_2
    invoke-virtual {v2, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v1, v0, Lbhb;->g:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, v0, Lbhb;->n:Lbhs;

    if-eqz v1, :cond_5

    iget-object v2, v0, Lbhb;->g:Landroid/graphics/Paint;

    invoke-virtual {v1}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/ColorFilter;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    :cond_5
    move/from16 v1, p3

    int-to-float v1, v1

    iget-object v2, v0, Lbhb;->k:Lbhs;

    invoke-virtual {v2}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/high16 v3, 0x437f0000    # 255.0f

    div-float/2addr v1, v3

    int-to-float v2, v2

    iget-object v4, v0, Lbhb;->g:Landroid/graphics/Paint;

    mul-float v1, v1, v2

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    mul-float v1, v1, v3

    float-to-int v1, v1

    invoke-static {v1}, Lbln;->e(I)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, v0, Lbhb;->f:Landroid/graphics/Path;

    iget-object v2, v0, Lbhb;->g:Landroid/graphics/Paint;

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lbfv;->a()V

    return-void
.end method

.method public final b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    iget-object p3, p0, Lbhb;->f:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lbhb;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lbhb;->f:Landroid/graphics/Path;

    iget-object v2, p0, Lbhb;->i:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbhg;

    invoke-interface {v2}, Lbhg;->i()Landroid/graphics/Path;

    move-result-object v2

    invoke-virtual {v1, v2, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lbhb;->f:Landroid/graphics/Path;

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

    iget-object v0, p0, Lbhb;->p:Lbgj;

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

    iget-object v1, p0, Lbhb;->i:Ljava/util/List;

    check-cast v0, Lbhg;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f(Ljava/lang/Object;Lbkc;)V
    .locals 2

    sget-object v0, Lbgo;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lbhb;->k:Lbhs;

    iput-object p2, p1, Lbhs;->d:Lbkc;

    return-void

    :cond_0
    sget-object v0, Lbgo;->E:Landroid/graphics/ColorFilter;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lbhb;->n:Lbhs;

    if-eqz p1, :cond_1

    iget-object v0, p0, Lbhb;->c:Lbjq;

    invoke-virtual {v0, p1}, Lbjq;->j(Lbhs;)V

    :cond_1
    new-instance p1, Lbig;

    invoke-direct {p1, p2, v1}, Lbig;-><init>(Lbkc;[B)V

    iput-object p1, p0, Lbhb;->n:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    iget-object p1, p0, Lbhb;->c:Lbjq;

    iget-object p2, p0, Lbhb;->n:Lbhs;

    invoke-virtual {p1, p2}, Lbjq;->h(Lbhs;)V

    return-void

    :cond_2
    sget-object v0, Lbgo;->F:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_4

    iget-object p1, p0, Lbhb;->o:Lbig;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lbhb;->c:Lbjq;

    invoke-virtual {v0, p1}, Lbjq;->j(Lbhs;)V

    :cond_3
    iget-object p1, p0, Lbhb;->d:Lxc;

    invoke-virtual {p1}, Lxc;->f()V

    iget-object p1, p0, Lbhb;->e:Lxc;

    invoke-virtual {p1}, Lxc;->f()V

    new-instance p1, Lbig;

    invoke-direct {p1, p2, v1}, Lbig;-><init>(Lbkc;[B)V

    iput-object p1, p0, Lbhb;->o:Lbig;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    iget-object p1, p0, Lbhb;->c:Lbjq;

    iget-object p2, p0, Lbhb;->o:Lbig;

    invoke-virtual {p1, p2}, Lbjq;->h(Lbhs;)V

    :cond_4
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbhb;->a:Ljava/lang/String;

    return-object v0
.end method
