.class public abstract Lbgv;
.super Ljava/lang/Object;

# interfaces
.implements Lbhn;
.implements Lbhe;
.implements Lbgy;


# instance fields
.field protected final a:Lbjq;

.field final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/PathMeasure;

.field private final d:Landroid/graphics/Path;

.field private final e:Landroid/graphics/Path;

.field private final f:Landroid/graphics/RectF;

.field private final g:Lbgj;

.field private final h:Ljava/util/List;

.field private final i:[F

.field private final j:Lbhs;

.field private final k:Lbhs;

.field private final l:Ljava/util/List;

.field private final m:Lbhs;

.field private n:Lbhs;


# direct methods
.method public constructor <init>(Lbgj;Lbjq;Landroid/graphics/Paint$Cap;Landroid/graphics/Paint$Join;FLbir;Lbip;Ljava/util/List;Lbip;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/graphics/PathMeasure;

    invoke-direct {v0}, Landroid/graphics/PathMeasure;-><init>()V

    iput-object v0, p0, Lbgv;->c:Landroid/graphics/PathMeasure;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lbgv;->d:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lbgv;->e:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lbgv;->f:Landroid/graphics/RectF;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbgv;->h:Ljava/util/List;

    new-instance v0, Lbgu;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lbgu;-><init>(I)V

    iput-object v0, p0, Lbgv;->b:Landroid/graphics/Paint;

    iput-object p1, p0, Lbgv;->g:Lbgj;

    iput-object p2, p0, Lbgv;->a:Lbjq;

    sget-object p1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    invoke-virtual {v0, p5}, Landroid/graphics/Paint;->setStrokeMiter(F)V

    invoke-virtual {p6}, Lbir;->a()Lbhs;

    move-result-object p1

    iput-object p1, p0, Lbgv;->k:Lbhs;

    invoke-virtual {p7}, Lbip;->a()Lbhs;

    move-result-object p1

    iput-object p1, p0, Lbgv;->j:Lbhs;

    if-nez p9, :cond_0

    const/4 p1, 0x0

    iput-object p1, p0, Lbgv;->m:Lbhs;

    goto :goto_0

    :cond_0
    invoke-virtual {p9}, Lbip;->a()Lbhs;

    move-result-object p1

    iput-object p1, p0, Lbgv;->m:Lbhs;

    :goto_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p3

    invoke-direct {p1, p3}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lbgv;->l:Ljava/util/List;

    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [F

    iput-object p1, p0, Lbgv;->i:[F

    const/4 p1, 0x0

    const/4 p3, 0x0

    :goto_1
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_1

    iget-object p4, p0, Lbgv;->l:Ljava/util/List;

    invoke-interface {p8, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lbip;

    invoke-virtual {p5}, Lbip;->a()Lbhs;

    move-result-object p5

    invoke-interface {p4, p5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p3, p3, 0x1

    goto :goto_1

    :cond_1
    iget-object p3, p0, Lbgv;->k:Lbhs;

    invoke-virtual {p2, p3}, Lbjq;->h(Lbhs;)V

    iget-object p3, p0, Lbgv;->j:Lbhs;

    invoke-virtual {p2, p3}, Lbjq;->h(Lbhs;)V

    const/4 p3, 0x0

    :goto_2
    iget-object p4, p0, Lbgv;->l:Ljava/util/List;

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    if-ge p3, p4, :cond_2

    iget-object p4, p0, Lbgv;->l:Ljava/util/List;

    invoke-interface {p4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lbhs;

    invoke-virtual {p2, p4}, Lbjq;->h(Lbhs;)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_2

    :cond_2
    iget-object p3, p0, Lbgv;->m:Lbhs;

    if-eqz p3, :cond_3

    invoke-virtual {p2, p3}, Lbjq;->h(Lbhs;)V

    :cond_3
    iget-object p2, p0, Lbgv;->k:Lbhs;

    invoke-virtual {p2, p0}, Lbhs;->g(Lbhn;)V

    iget-object p2, p0, Lbgv;->j:Lbhs;

    invoke-virtual {p2, p0}, Lbhs;->g(Lbhn;)V

    :goto_3
    invoke-interface {p8}, Ljava/util/List;->size()I

    move-result p2

    if-ge p1, p2, :cond_4

    iget-object p2, p0, Lbgv;->l:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lbhs;

    invoke-virtual {p2, p0}, Lbhs;->g(Lbhn;)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_3

    :cond_4
    iget-object p1, p0, Lbgv;->m:Lbhs;

    if-eqz p1, :cond_5

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    :cond_5
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    sget-object v3, Lbls;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v3}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [F

    const/4 v4, 0x0

    const/4 v5, 0x0

    aput v5, v3, v4

    const/4 v6, 0x1

    aput v5, v3, v6

    const/4 v7, 0x2

    const v8, 0x471212bb

    aput v8, v3, v7

    const/4 v8, 0x3

    const v9, 0x471a973c

    aput v9, v3, v8

    invoke-virtual {v2, v3}, Landroid/graphics/Matrix;->mapPoints([F)V

    aget v9, v3, v4

    aget v7, v3, v7

    cmpl-float v7, v9, v7

    if-eqz v7, :cond_14

    aget v6, v3, v6

    aget v3, v3, v8

    cmpl-float v3, v6, v3

    if-nez v3, :cond_0

    goto/16 :goto_e

    :cond_0
    move/from16 v3, p3

    int-to-float v3, v3

    iget-object v6, v0, Lbgv;->k:Lbhs;

    check-cast v6, Lbhw;

    invoke-virtual {v6}, Lbhw;->d()Lblt;

    move-result-object v7

    invoke-virtual {v6}, Lbhw;->b()F

    move-result v8

    invoke-virtual {v6, v7, v8}, Lbhw;->k(Lblt;F)I

    move-result v6

    const/high16 v7, 0x437f0000    # 255.0f

    div-float/2addr v3, v7

    int-to-float v6, v6

    iget-object v8, v0, Lbgv;->b:Landroid/graphics/Paint;

    mul-float v3, v3, v6

    const/high16 v6, 0x42c80000    # 100.0f

    div-float/2addr v3, v6

    mul-float v3, v3, v7

    float-to-int v3, v3

    invoke-static {v3}, Lbln;->e(I)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v3, v0, Lbgv;->b:Landroid/graphics/Paint;

    iget-object v7, v0, Lbgv;->j:Lbhs;

    check-cast v7, Lbhu;

    invoke-virtual {v7}, Lbhu;->k()F

    move-result v7

    invoke-static/range {p2 .. p2}, Lbls;->b(Landroid/graphics/Matrix;)F

    move-result v8

    mul-float v7, v7, v8

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v3, v0, Lbgv;->b:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v3

    cmpg-float v3, v3, v5

    if-lez v3, :cond_13

    iget-object v3, v0, Lbgv;->l:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    const/high16 v7, 0x3f800000    # 1.0f

    if-eqz v3, :cond_1

    invoke-static {}, Lbfv;->a()V

    goto :goto_3

    :cond_1
    invoke-static/range {p2 .. p2}, Lbls;->b(Landroid/graphics/Matrix;)F

    move-result v3

    const/4 v8, 0x0

    :goto_0
    iget-object v9, v0, Lbgv;->l:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    if-ge v8, v9, :cond_4

    iget-object v9, v0, Lbgv;->i:[F

    iget-object v10, v0, Lbgv;->l:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lbhs;

    invoke-virtual {v10}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    aput v10, v9, v8

    rem-int/lit8 v9, v8, 0x2

    if-nez v9, :cond_2

    iget-object v9, v0, Lbgv;->i:[F

    aget v10, v9, v8

    cmpg-float v10, v10, v7

    if-gez v10, :cond_3

    aput v7, v9, v8

    goto :goto_1

    :cond_2
    iget-object v9, v0, Lbgv;->i:[F

    aget v10, v9, v8

    const v11, 0x3dcccccd    # 0.1f

    cmpg-float v10, v10, v11

    if-gez v10, :cond_3

    aput v11, v9, v8

    :cond_3
    :goto_1
    iget-object v9, v0, Lbgv;->i:[F

    aget v10, v9, v8

    mul-float v10, v10, v3

    aput v10, v9, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_4
    iget-object v8, v0, Lbgv;->m:Lbhs;

    if-nez v8, :cond_5

    const/4 v8, 0x0

    goto :goto_2

    :cond_5
    invoke-virtual {v8}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    mul-float v8, v8, v3

    :goto_2
    iget-object v3, v0, Lbgv;->b:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/DashPathEffect;

    iget-object v10, v0, Lbgv;->i:[F

    invoke-direct {v9, v10, v8}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v9}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    invoke-static {}, Lbfv;->a()V

    :goto_3
    iget-object v3, v0, Lbgv;->n:Lbhs;

    if-eqz v3, :cond_6

    iget-object v8, v0, Lbgv;->b:Landroid/graphics/Paint;

    invoke-virtual {v3}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/ColorFilter;

    invoke-virtual {v8, v3}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    const/4 v3, 0x0

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    iget-object v8, v0, Lbgv;->h:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v3, v8, :cond_12

    iget-object v8, v0, Lbgv;->h:Ljava/util/List;

    invoke-interface {v8, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ldne;

    iget-object v9, v8, Ldne;->b:Ljava/lang/Object;

    if-eqz v9, :cond_10

    iget-object v9, v0, Lbgv;->d:Landroid/graphics/Path;

    invoke-virtual {v9}, Landroid/graphics/Path;->reset()V

    iget-object v9, v8, Ldne;->a:Ljava/lang/Object;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    :goto_5
    if-ltz v9, :cond_7

    iget-object v10, v0, Lbgv;->d:Landroid/graphics/Path;

    iget-object v11, v8, Ldne;->a:Ljava/lang/Object;

    invoke-interface {v11, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lbhg;

    invoke-interface {v11}, Lbhg;->i()Landroid/graphics/Path;

    move-result-object v11

    invoke-virtual {v10, v11, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    :cond_7
    iget-object v9, v0, Lbgv;->c:Landroid/graphics/PathMeasure;

    iget-object v10, v0, Lbgv;->d:Landroid/graphics/Path;

    invoke-virtual {v9, v10, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v9, v0, Lbgv;->c:Landroid/graphics/PathMeasure;

    invoke-virtual {v9}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v9

    :goto_6
    iget-object v10, v0, Lbgv;->c:Landroid/graphics/PathMeasure;

    invoke-virtual {v10}, Landroid/graphics/PathMeasure;->nextContour()Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, v0, Lbgv;->c:Landroid/graphics/PathMeasure;

    invoke-virtual {v10}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v10

    add-float/2addr v9, v10

    goto :goto_6

    :cond_8
    iget-object v10, v8, Ldne;->b:Ljava/lang/Object;

    check-cast v10, Lbhm;

    iget-object v10, v10, Lbhm;->d:Lbhs;

    invoke-virtual {v10}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Float;

    invoke-virtual {v10}, Ljava/lang/Float;->floatValue()F

    move-result v10

    mul-float v10, v10, v9

    iget-object v11, v8, Ldne;->b:Ljava/lang/Object;

    check-cast v11, Lbhm;

    iget-object v11, v11, Lbhm;->b:Lbhs;

    invoke-virtual {v11}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/Float;

    invoke-virtual {v11}, Ljava/lang/Float;->floatValue()F

    move-result v11

    mul-float v11, v11, v9

    iget-object v12, v8, Ldne;->b:Ljava/lang/Object;

    check-cast v12, Lbhm;

    iget-object v12, v12, Lbhm;->c:Lbhs;

    invoke-virtual {v12}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v12

    mul-float v12, v12, v9

    iget-object v13, v8, Ldne;->a:Ljava/lang/Object;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    const/4 v14, 0x0

    :goto_7
    if-ltz v13, :cond_f

    div-float v15, v12, v6

    div-float v16, v11, v6

    const/high16 v17, 0x43b40000    # 360.0f

    div-float v17, v10, v17

    iget-object v6, v0, Lbgv;->e:Landroid/graphics/Path;

    iget-object v5, v8, Ldne;->a:Ljava/lang/Object;

    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbhg;

    invoke-interface {v5}, Lbhg;->i()Landroid/graphics/Path;

    move-result-object v5

    invoke-virtual {v6, v5}, Landroid/graphics/Path;->set(Landroid/graphics/Path;)V

    iget-object v5, v0, Lbgv;->e:Landroid/graphics/Path;

    invoke-virtual {v5, v2}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-object v5, v0, Lbgv;->c:Landroid/graphics/PathMeasure;

    iget-object v6, v0, Lbgv;->e:Landroid/graphics/Path;

    invoke-virtual {v5, v6, v4}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    iget-object v5, v0, Lbgv;->c:Landroid/graphics/PathMeasure;

    invoke-virtual {v5}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v5

    add-float v15, v15, v17

    cmpl-float v6, v15, v9

    add-float v16, v16, v17

    if-lez v6, :cond_a

    sub-float v6, v15, v9

    add-float v17, v14, v5

    cmpg-float v17, v6, v17

    if-gez v17, :cond_a

    cmpg-float v17, v14, v6

    if-gez v17, :cond_a

    cmpl-float v15, v16, v9

    if-lez v15, :cond_9

    sub-float v16, v16, v9

    div-float v15, v16, v5

    goto :goto_8

    :cond_9
    const/4 v15, 0x0

    :goto_8
    div-float/2addr v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    iget-object v4, v0, Lbgv;->e:Landroid/graphics/Path;

    const/4 v7, 0x0

    invoke-static {v4, v15, v6, v7}, Lbls;->d(Landroid/graphics/Path;FFF)V

    iget-object v4, v0, Lbgv;->e:Landroid/graphics/Path;

    iget-object v6, v0, Lbgv;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v6, 0x0

    goto :goto_b

    :cond_a
    add-float v4, v14, v5

    cmpg-float v6, v4, v16

    if-ltz v6, :cond_e

    cmpl-float v6, v14, v15

    if-gtz v6, :cond_e

    cmpg-float v6, v4, v15

    if-gtz v6, :cond_b

    cmpg-float v6, v16, v14

    if-gez v6, :cond_b

    iget-object v4, v0, Lbgv;->e:Landroid/graphics/Path;

    iget-object v6, v0, Lbgv;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    const/4 v6, 0x0

    goto :goto_b

    :cond_b
    cmpg-float v6, v16, v14

    if-gez v6, :cond_c

    const/4 v7, 0x0

    goto :goto_9

    :cond_c
    sub-float v16, v16, v14

    div-float v7, v16, v5

    :goto_9
    cmpl-float v4, v15, v4

    if-lez v4, :cond_d

    const/high16 v15, 0x3f800000    # 1.0f

    goto :goto_a

    :cond_d
    sub-float/2addr v15, v14

    div-float/2addr v15, v5

    :goto_a
    iget-object v4, v0, Lbgv;->e:Landroid/graphics/Path;

    const/4 v6, 0x0

    invoke-static {v4, v7, v15, v6}, Lbls;->d(Landroid/graphics/Path;FFF)V

    iget-object v4, v0, Lbgv;->e:Landroid/graphics/Path;

    iget-object v7, v0, Lbgv;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v7}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_b

    :cond_e
    const/4 v6, 0x0

    :goto_b
    add-float/2addr v14, v5

    add-int/lit8 v13, v13, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_7

    :cond_f
    const/4 v6, 0x0

    invoke-static {}, Lbfv;->a()V

    goto :goto_d

    :cond_10
    const/4 v6, 0x0

    iget-object v4, v0, Lbgv;->d:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, v8, Ldne;->a:Ljava/lang/Object;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_c
    if-ltz v4, :cond_11

    iget-object v5, v0, Lbgv;->d:Landroid/graphics/Path;

    iget-object v7, v8, Ldne;->a:Ljava/lang/Object;

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lbhg;

    invoke-interface {v7}, Lbhg;->i()Landroid/graphics/Path;

    move-result-object v7

    invoke-virtual {v5, v7, v2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v4, v4, -0x1

    goto :goto_c

    :cond_11
    invoke-static {}, Lbfv;->a()V

    iget-object v4, v0, Lbgv;->d:Landroid/graphics/Path;

    iget-object v5, v0, Lbgv;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-static {}, Lbfv;->a()V

    :goto_d
    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, 0x42c80000    # 100.0f

    const/high16 v7, 0x3f800000    # 1.0f

    goto/16 :goto_4

    :cond_12
    invoke-static {}, Lbfv;->a()V

    return-void

    :cond_13
    invoke-static {}, Lbfv;->a()V

    return-void

    :cond_14
    :goto_e
    invoke-static {}, Lbfv;->a()V

    return-void
.end method

.method public final b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 5

    iget-object p3, p0, Lbgv;->d:Landroid/graphics/Path;

    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    const/4 p3, 0x0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lbgv;->h:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lbgv;->h:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldne;

    const/4 v2, 0x0

    :goto_1
    iget-object v3, v1, Ldne;->a:Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lbgv;->d:Landroid/graphics/Path;

    iget-object v4, v1, Ldne;->a:Ljava/lang/Object;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbhg;

    invoke-interface {v4}, Lbhg;->i()Landroid/graphics/Path;

    move-result-object v4

    invoke-virtual {v3, v4, p2}, Landroid/graphics/Path;->addPath(Landroid/graphics/Path;Landroid/graphics/Matrix;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lbgv;->d:Landroid/graphics/Path;

    iget-object v0, p0, Lbgv;->f:Landroid/graphics/RectF;

    invoke-virtual {p2, v0, p3}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object p2, p0, Lbgv;->j:Lbhs;

    check-cast p2, Lbhu;

    invoke-virtual {p2}, Lbhu;->k()F

    move-result p2

    iget-object p3, p0, Lbgv;->f:Landroid/graphics/RectF;

    iget v0, p3, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr p2, v1

    sub-float/2addr v0, p2

    iget-object v1, p0, Lbgv;->f:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr v1, p2

    iget-object v2, p0, Lbgv;->f:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    add-float/2addr v2, p2

    iget-object v3, p0, Lbgv;->f:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p2

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p2, p0, Lbgv;->f:Landroid/graphics/RectF;

    invoke-virtual {p1, p2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

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

    invoke-static {}, Lbfv;->a()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lbgv;->g:Lbgj;

    invoke-virtual {v0}, Lbgj;->invalidateSelf()V

    return-void
.end method

.method public final d(Lbik;ILjava/util/List;Lbik;)V
    .locals 0

    invoke-static {p1, p2, p3, p4, p0}, Lbln;->d(Lbik;ILjava/util/List;Lbik;Lbhe;)V

    return-void
.end method

.method public final e(Ljava/util/List;Ljava/util/List;)V
    .locals 6

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    const/4 v3, 0x2

    if-ltz v0, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbgw;

    instance-of v5, v4, Lbhm;

    if-eqz v5, :cond_0

    check-cast v4, Lbhm;

    iget v5, v4, Lbhm;->e:I

    if-ne v5, v3, :cond_0

    move-object v2, v4

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    if-eqz v2, :cond_2

    invoke-virtual {v2, p0}, Lbhm;->a(Lbhn;)V

    :cond_2
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_7

    invoke-interface {p2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbgw;

    instance-of v4, v0, Lbhm;

    if-eqz v4, :cond_4

    move-object v4, v0

    check-cast v4, Lbhm;

    iget v5, v4, Lbhm;->e:I

    if-ne v5, v3, :cond_4

    if-eqz v1, :cond_3

    iget-object v0, p0, Lbgv;->h:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v0, Ldne;

    invoke-direct {v0, v4}, Ldne;-><init>(Lbhm;)V

    invoke-virtual {v4, p0}, Lbhm;->a(Lbhn;)V

    move-object v1, v0

    goto :goto_2

    :cond_4
    instance-of v4, v0, Lbhg;

    if-eqz v4, :cond_6

    if-nez v1, :cond_5

    new-instance v1, Ldne;

    invoke-direct {v1, v2}, Ldne;-><init>(Lbhm;)V

    :cond_5
    iget-object v4, v1, Ldne;->a:Ljava/lang/Object;

    check-cast v0, Lbhg;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    :goto_2
    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_7
    if-eqz v1, :cond_8

    iget-object p1, p0, Lbgv;->h:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    return-void
.end method

.method public f(Ljava/lang/Object;Lbkc;)V
    .locals 1

    sget-object v0, Lbgo;->d:Ljava/lang/Integer;

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lbgv;->k:Lbhs;

    :goto_0
    iput-object p2, p1, Lbhs;->d:Lbkc;

    return-void

    :cond_0
    sget-object v0, Lbgo;->q:Ljava/lang/Float;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lbgv;->j:Lbhs;

    goto :goto_0

    :cond_1
    sget-object v0, Lbgo;->E:Landroid/graphics/ColorFilter;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lbgv;->n:Lbhs;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lbgv;->a:Lbjq;

    invoke-virtual {v0, p1}, Lbjq;->j(Lbhs;)V

    :cond_2
    new-instance p1, Lbig;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lbig;-><init>(Lbkc;[B)V

    iput-object p1, p0, Lbgv;->n:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    iget-object p1, p0, Lbgv;->a:Lbjq;

    iget-object p2, p0, Lbgv;->n:Lbhs;

    invoke-virtual {p1, p2}, Lbjq;->h(Lbhs;)V

    :cond_3
    return-void
.end method
