.class public final Lbhc;
.super Lbgv;


# instance fields
.field private final c:Ljava/lang/String;

.field private final d:Z

.field private final e:Lxc;

.field private final f:Lxc;

.field private final g:Landroid/graphics/RectF;

.field private final h:I

.field private final i:Lbhs;

.field private final j:Lbhs;

.field private final k:Lbhs;

.field private l:Lbig;

.field private final m:I


# direct methods
.method public constructor <init>(Lbgj;Lbjq;Lbje;)V
    .locals 11

    iget v0, p3, Lbje;->l:I

    invoke-static {v0}, Lbze;->Y(I)Landroid/graphics/Paint$Cap;

    move-result-object v4

    iget v0, p3, Lbje;->m:I

    invoke-static {v0}, Lbze;->W(I)Landroid/graphics/Paint$Join;

    move-result-object v5

    iget v6, p3, Lbje;->g:F

    iget-object v7, p3, Lbje;->c:Lbir;

    iget-object v8, p3, Lbje;->f:Lbip;

    iget-object v9, p3, Lbje;->h:Ljava/util/List;

    iget-object v10, p3, Lbje;->i:Lbip;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v10}, Lbgv;-><init>(Lbgj;Lbjq;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLbir;Lbip;Ljava/util/List;Lbip;)V

    new-instance v0, Lxc;

    invoke-direct {v0}, Lxc;-><init>()V

    iput-object v0, p0, Lbhc;->e:Lxc;

    new-instance v0, Lxc;

    invoke-direct {v0}, Lxc;-><init>()V

    iput-object v0, p0, Lbhc;->f:Lxc;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lbhc;->g:Landroid/graphics/RectF;

    iget-object v0, p3, Lbje;->a:Ljava/lang/String;

    iput-object v0, p0, Lbhc;->c:Ljava/lang/String;

    iget v0, p3, Lbje;->k:I

    iput v0, p0, Lbhc;->m:I

    iget-boolean v0, p3, Lbje;->j:Z

    iput-boolean v0, p0, Lbhc;->d:Z

    iget-object p1, p1, Lbgj;->a:Lbga;

    invoke-virtual {p1}, Lbga;->a()F

    move-result p1

    const/high16 v0, 0x42000000    # 32.0f

    div-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lbhc;->h:I

    iget-object p1, p3, Lbje;->b:Lbiq;

    invoke-virtual {p1}, Lbiq;->a()Lbhs;

    move-result-object p1

    iput-object p1, p0, Lbhc;->i:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    invoke-virtual {p2, p1}, Lbjq;->h(Lbhs;)V

    iget-object p1, p3, Lbje;->d:Lbit;

    invoke-virtual {p1}, Lbit;->a()Lbhs;

    move-result-object p1

    iput-object p1, p0, Lbhc;->j:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    invoke-virtual {p2, p1}, Lbjq;->h(Lbhs;)V

    iget-object p1, p3, Lbje;->e:Lbit;

    invoke-virtual {p1}, Lbit;->a()Lbhs;

    move-result-object p1

    iput-object p1, p0, Lbhc;->k:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    invoke-virtual {p2, p1}, Lbjq;->h(Lbhs;)V

    return-void
.end method

.method private final h()I
    .locals 4

    iget-object v0, p0, Lbhc;->j:Lbhs;

    iget v0, v0, Lbhs;->c:F

    iget v1, p0, Lbhc;->h:I

    int-to-float v1, v1

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget-object v1, p0, Lbhc;->k:Lbhs;

    iget v1, v1, Lbhs;->c:F

    iget v2, p0, Lbhc;->h:I

    int-to-float v2, v2

    mul-float v1, v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lbhc;->i:Lbhs;

    iget v2, v2, Lbhs;->c:F

    iget v3, p0, Lbhc;->h:I

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

    iget-object v0, p0, Lbhc;->l:Lbig;

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

    iget-boolean v2, v0, Lbhc;->d:Z

    if-eqz v2, :cond_0

    return-void

    :cond_0
    iget-object v2, v0, Lbhc;->g:Landroid/graphics/RectF;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lbgv;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget v2, v0, Lbhc;->m:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    invoke-direct/range {p0 .. p0}, Lbhc;->h()I

    move-result v2

    iget-object v3, v0, Lbhc;->e:Lxc;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lxc;->d(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/LinearGradient;

    if-nez v2, :cond_2

    iget-object v2, v0, Lbhc;->j:Lbhs;

    invoke-virtual {v2}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget-object v3, v0, Lbhc;->k:Lbhs;

    invoke-virtual {v3}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget-object v6, v0, Lbhc;->i:Lbhs;

    invoke-virtual {v6}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldne;

    iget-object v7, v6, Ldne;->b:Ljava/lang/Object;

    check-cast v7, [I

    invoke-direct {v0, v7}, Lbhc;->i([I)[I

    move-result-object v13

    iget-object v6, v6, Ldne;->a:Ljava/lang/Object;

    iget v9, v2, Landroid/graphics/PointF;->x:F

    iget v10, v2, Landroid/graphics/PointF;->y:F

    iget v11, v3, Landroid/graphics/PointF;->x:F

    iget v12, v3, Landroid/graphics/PointF;->y:F

    new-instance v2, Landroid/graphics/LinearGradient;

    sget-object v15, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v14, v6

    check-cast v14, [F

    move-object v8, v2

    invoke-direct/range {v8 .. v15}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v3, v0, Lbhc;->e:Lxc;

    invoke-virtual {v3, v4, v5, v2}, Lxc;->g(JLjava/lang/Object;)V

    goto :goto_0

    :cond_1
    invoke-direct/range {p0 .. p0}, Lbhc;->h()I

    move-result v2

    iget-object v3, v0, Lbhc;->f:Lxc;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lxc;->d(J)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/RadialGradient;

    if-nez v2, :cond_2

    iget-object v2, v0, Lbhc;->j:Lbhs;

    invoke-virtual {v2}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/PointF;

    iget-object v3, v0, Lbhc;->k:Lbhs;

    invoke-virtual {v3}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/PointF;

    iget-object v6, v0, Lbhc;->i:Lbhs;

    invoke-virtual {v6}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ldne;

    iget-object v7, v6, Ldne;->b:Ljava/lang/Object;

    check-cast v7, [I

    invoke-direct {v0, v7}, Lbhc;->i([I)[I

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

    double-to-float v11, v2

    new-instance v2, Landroid/graphics/RadialGradient;

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v13, v6

    check-cast v13, [F

    move-object v8, v2

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    iget-object v3, v0, Lbhc;->f:Lxc;

    invoke-virtual {v3, v4, v5, v2}, Lxc;->g(JLjava/lang/Object;)V

    :cond_2
    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/Shader;->setLocalMatrix(Landroid/graphics/Matrix;)V

    iget-object v3, v0, Lbhc;->b:Landroid/graphics/Paint;

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    invoke-super/range {p0 .. p3}, Lbgv;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    return-void
.end method

.method public final f(Ljava/lang/Object;Lbkc;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lbgv;->f(Ljava/lang/Object;Lbkc;)V

    sget-object v0, Lbgo;->F:[Ljava/lang/Integer;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lbhc;->l:Lbig;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lbhc;->a:Lbjq;

    invoke-virtual {v0, p1}, Lbjq;->j(Lbhs;)V

    :cond_0
    new-instance p1, Lbig;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lbig;-><init>(Lbkc;[B)V

    iput-object p1, p0, Lbhc;->l:Lbig;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    iget-object p1, p0, Lbhc;->a:Lbjq;

    iget-object p2, p0, Lbhc;->l:Lbig;

    invoke-virtual {p1, p2}, Lbjq;->h(Lbhs;)V

    :cond_1
    return-void
.end method

.method public final g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbhc;->c:Ljava/lang/String;

    return-object v0
.end method
