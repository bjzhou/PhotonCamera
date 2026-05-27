.class public final Lbjy;
.super Lbjq;


# instance fields
.field private A:Lbhs;

.field private final h:Ljava/lang/StringBuilder;

.field private final i:Landroid/graphics/RectF;

.field private final j:Landroid/graphics/Matrix;

.field private final k:Landroid/graphics/Paint;

.field private final l:Landroid/graphics/Paint;

.field private final m:Ljava/util/Map;

.field private final n:Lxc;

.field private final o:Lbie;

.field private final p:Lbgj;

.field private final q:Lbga;

.field private r:Lbhs;

.field private s:Lbhs;

.field private t:Lbhs;

.field private u:Lbhs;

.field private v:Lbhs;

.field private w:Lbhs;

.field private x:Lbhs;

.field private y:Lbhs;

.field private z:Lbhs;


# direct methods
.method public constructor <init>(Lbgj;Lbjt;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lbjq;-><init>(Lbgj;Lbjt;)V

    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lbjy;->h:Ljava/lang/StringBuilder;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lbjy;->i:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lbjy;->j:Landroid/graphics/Matrix;

    new-instance v0, Lbjx;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbjx;-><init>([B)V

    iput-object v0, p0, Lbjy;->k:Landroid/graphics/Paint;

    new-instance v0, Lbjx;

    invoke-direct {v0}, Lbjx;-><init>()V

    iput-object v0, p0, Lbjy;->l:Landroid/graphics/Paint;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lbjy;->m:Ljava/util/Map;

    new-instance v0, Lxc;

    invoke-direct {v0}, Lxc;-><init>()V

    iput-object v0, p0, Lbjy;->n:Lxc;

    iput-object p1, p0, Lbjy;->p:Lbgj;

    iget-object p1, p2, Lbjt;->b:Lbga;

    iput-object p1, p0, Lbjy;->q:Lbga;

    iget-object p1, p2, Lbjt;->p:Lbix;

    invoke-virtual {p1}, Lbix;->d()Lbie;

    move-result-object p1

    iput-object p1, p0, Lbjy;->o:Lbie;

    invoke-virtual {p1, p0}, Lbie;->g(Lbhn;)V

    invoke-virtual {p0, p1}, Lbjq;->h(Lbhs;)V

    iget-object p1, p2, Lbjt;->v:Lcvm;

    if-eqz p1, :cond_0

    iget-object p2, p1, Lcvm;->b:Ljava/lang/Object;

    if-eqz p2, :cond_0

    check-cast p2, Lbio;

    invoke-virtual {p2}, Lbio;->a()Lbhs;

    move-result-object p2

    iput-object p2, p0, Lbjy;->r:Lbhs;

    invoke-virtual {p2, p0}, Lbhs;->g(Lbhn;)V

    iget-object p2, p0, Lbjy;->r:Lbhs;

    invoke-virtual {p0, p2}, Lbjq;->h(Lbhs;)V

    :cond_0
    if-eqz p1, :cond_1

    iget-object p2, p1, Lcvm;->c:Ljava/lang/Object;

    if-eqz p2, :cond_1

    check-cast p2, Lbio;

    invoke-virtual {p2}, Lbio;->a()Lbhs;

    move-result-object p2

    iput-object p2, p0, Lbjy;->t:Lbhs;

    invoke-virtual {p2, p0}, Lbhs;->g(Lbhn;)V

    iget-object p2, p0, Lbjy;->t:Lbhs;

    invoke-virtual {p0, p2}, Lbjq;->h(Lbhs;)V

    :cond_1
    if-eqz p1, :cond_2

    iget-object p2, p1, Lcvm;->a:Ljava/lang/Object;

    if-eqz p2, :cond_2

    check-cast p2, Lbip;

    invoke-virtual {p2}, Lbip;->a()Lbhs;

    move-result-object p2

    iput-object p2, p0, Lbjy;->v:Lbhs;

    invoke-virtual {p2, p0}, Lbhs;->g(Lbhn;)V

    iget-object p2, p0, Lbjy;->v:Lbhs;

    invoke-virtual {p0, p2}, Lbjq;->h(Lbhs;)V

    :cond_2
    if-eqz p1, :cond_3

    iget-object p1, p1, Lcvm;->d:Ljava/lang/Object;

    if-eqz p1, :cond_3

    check-cast p1, Lbip;

    invoke-virtual {p1}, Lbip;->a()Lbhs;

    move-result-object p1

    iput-object p1, p0, Lbjy;->x:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    iget-object p1, p0, Lbjy;->x:Lbhs;

    invoke-virtual {p0, p1}, Lbjq;->h(Lbhs;)V

    :cond_3
    return-void
.end method

.method private static final p(ILandroid/graphics/Canvas;F)V
    .locals 1

    if-eqz p0, :cond_0

    add-int/lit8 p0, p0, -0x1

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    return-void

    :pswitch_0
    neg-float p0, p2

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p0, p2

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void

    :pswitch_1
    neg-float p0, p2

    invoke-virtual {p1, p0, v0}, Landroid/graphics/Canvas;->translate(FF)V

    return-void

    :cond_0
    const/4 p0, 0x0

    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static final q(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 8

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v1, p2

    move-object v2, p0

    move-object v7, p1

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private static final r(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V
    .locals 2

    invoke-virtual {p1}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Paint;->getStyle()Landroid/graphics/Paint$Style;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    return-void
.end method

.method private static final s(Ljava/lang/String;)Ljava/util/List;
    .locals 2

    const-string v0, "\r\n"

    const-string v1, "\r"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "\n"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lbjq;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lbjy;->q:Lbga;

    iget-object p2, p2, Lbga;->g:Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result p2

    int-to-float p2, p2

    iget-object p3, p0, Lbjy;->q:Lbga;

    iget-object p3, p3, Lbga;->g:Landroid/graphics/Rect;

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0, p2, p3}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method public final f(Ljava/lang/Object;Lbkc;)V
    .locals 2

    invoke-super {p0, p1, p2}, Lbjq;->f(Ljava/lang/Object;Lbkc;)V

    sget-object v0, Lbgo;->a:Ljava/lang/Integer;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lbjy;->s:Lbhs;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lbjq;->j(Lbhs;)V

    :cond_0
    new-instance p1, Lbig;

    invoke-direct {p1, p2, v1}, Lbig;-><init>(Lbkc;[B)V

    iput-object p1, p0, Lbjy;->s:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    iget-object p1, p0, Lbjy;->s:Lbhs;

    invoke-virtual {p0, p1}, Lbjq;->h(Lbhs;)V

    return-void

    :cond_1
    sget-object v0, Lbgo;->b:Ljava/lang/Integer;

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lbjy;->u:Lbhs;

    if-eqz p1, :cond_2

    invoke-virtual {p0, p1}, Lbjq;->j(Lbhs;)V

    :cond_2
    new-instance p1, Lbig;

    invoke-direct {p1, p2, v1}, Lbig;-><init>(Lbkc;[B)V

    iput-object p1, p0, Lbjy;->u:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    iget-object p1, p0, Lbjy;->u:Lbhs;

    invoke-virtual {p0, p1}, Lbjq;->h(Lbhs;)V

    return-void

    :cond_3
    sget-object v0, Lbgo;->q:Ljava/lang/Float;

    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lbjy;->w:Lbhs;

    if-eqz p1, :cond_4

    invoke-virtual {p0, p1}, Lbjq;->j(Lbhs;)V

    :cond_4
    new-instance p1, Lbig;

    invoke-direct {p1, p2, v1}, Lbig;-><init>(Lbkc;[B)V

    iput-object p1, p0, Lbjy;->w:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    iget-object p1, p0, Lbjy;->w:Lbhs;

    invoke-virtual {p0, p1}, Lbjq;->h(Lbhs;)V

    return-void

    :cond_5
    sget-object v0, Lbgo;->r:Ljava/lang/Float;

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lbjy;->y:Lbhs;

    if-eqz p1, :cond_6

    invoke-virtual {p0, p1}, Lbjq;->j(Lbhs;)V

    :cond_6
    new-instance p1, Lbig;

    invoke-direct {p1, p2, v1}, Lbig;-><init>(Lbkc;[B)V

    iput-object p1, p0, Lbjy;->y:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    iget-object p1, p0, Lbjy;->y:Lbhs;

    invoke-virtual {p0, p1}, Lbjq;->h(Lbhs;)V

    return-void

    :cond_7
    sget-object v0, Lbgo;->D:Ljava/lang/Float;

    if-ne p1, v0, :cond_9

    iget-object p1, p0, Lbjy;->z:Lbhs;

    if-eqz p1, :cond_8

    invoke-virtual {p0, p1}, Lbjq;->j(Lbhs;)V

    :cond_8
    new-instance p1, Lbig;

    invoke-direct {p1, p2, v1}, Lbig;-><init>(Lbkc;[B)V

    iput-object p1, p0, Lbjy;->z:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    iget-object p1, p0, Lbjy;->z:Lbhs;

    invoke-virtual {p0, p1}, Lbjq;->h(Lbhs;)V

    return-void

    :cond_9
    sget-object v0, Lbgo;->G:Landroid/graphics/Typeface;

    if-ne p1, v0, :cond_b

    iget-object p1, p0, Lbjy;->A:Lbhs;

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Lbjq;->j(Lbhs;)V

    :cond_a
    new-instance p1, Lbig;

    invoke-direct {p1, p2, v1}, Lbig;-><init>(Lbkc;[B)V

    iput-object p1, p0, Lbjy;->A:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    iget-object p1, p0, Lbjy;->A:Lbhs;

    invoke-virtual {p0, p1}, Lbjq;->h(Lbhs;)V

    :cond_b
    return-void
.end method

.method public final i(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget-object v2, v0, Lbjy;->p:Lbgj;

    invoke-virtual {v2}, Lbgj;->r()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual/range {p1 .. p2}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    :cond_0
    iget-object v2, v0, Lbjy;->o:Lbie;

    invoke-virtual {v2}, Lbie;->e()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbii;

    iget-object v3, v0, Lbjy;->q:Lbga;

    iget-object v3, v3, Lbga;->c:Ljava/util/Map;

    iget-object v4, v2, Lbii;->b:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lva;

    if-nez v3, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    :cond_1
    iget-object v4, v0, Lbjy;->s:Lbhs;

    if-eqz v4, :cond_2

    iget-object v5, v0, Lbjy;->k:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_2
    iget-object v4, v0, Lbjy;->r:Lbhs;

    if-eqz v4, :cond_3

    iget-object v5, v0, Lbjy;->k:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0

    :cond_3
    iget-object v4, v0, Lbjy;->k:Landroid/graphics/Paint;

    iget v5, v2, Lbii;->g:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    :goto_0
    iget-object v4, v0, Lbjy;->u:Lbhs;

    if-eqz v4, :cond_4

    iget-object v5, v0, Lbjy;->l:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_4
    iget-object v4, v0, Lbjy;->t:Lbhs;

    if-eqz v4, :cond_5

    iget-object v5, v0, Lbjy;->l:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_1

    :cond_5
    iget-object v4, v0, Lbjy;->l:Landroid/graphics/Paint;

    iget v5, v2, Lbii;->h:I

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    :goto_1
    iget-object v4, v0, Lbjy;->g:Lbif;

    iget-object v4, v4, Lbif;->e:Lbhs;

    const/16 v5, 0x64

    if-nez v4, :cond_6

    const/16 v4, 0x64

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_2
    mul-int/lit16 v4, v4, 0xff

    div-int/2addr v4, v5

    iget-object v5, v0, Lbjy;->k:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v5, v0, Lbjy;->l:Landroid/graphics/Paint;

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v4, v0, Lbjy;->w:Lbhs;

    if-eqz v4, :cond_7

    iget-object v5, v0, Lbjy;->l:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    :cond_7
    iget-object v4, v0, Lbjy;->v:Lbhs;

    if-eqz v4, :cond_8

    iget-object v5, v0, Lbjy;->l:Landroid/graphics/Paint;

    invoke-virtual {v4}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto :goto_3

    :cond_8
    invoke-static/range {p2 .. p2}, Lbls;->b(Landroid/graphics/Matrix;)F

    move-result v4

    iget-object v5, v0, Lbjy;->l:Landroid/graphics/Paint;

    iget v6, v2, Lbii;->i:F

    invoke-static {}, Lbls;->a()F

    move-result v7

    mul-float v6, v6, v7

    mul-float v6, v6, v4

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    :goto_3
    iget-object v4, v0, Lbjy;->p:Lbgj;

    invoke-virtual {v4}, Lbgj;->r()Z

    move-result v4

    const/high16 v6, 0x42c80000    # 100.0f

    if-eqz v4, :cond_14

    iget-object v4, v0, Lbjy;->z:Lbhs;

    if-eqz v4, :cond_9

    invoke-virtual {v4}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_4

    :cond_9
    iget v4, v2, Lbii;->c:F

    :goto_4
    invoke-static/range {p2 .. p2}, Lbls;->b(Landroid/graphics/Matrix;)F

    move-result v10

    iget-object v11, v2, Lbii;->a:Ljava/lang/String;

    iget v12, v2, Lbii;->e:F

    invoke-static {}, Lbls;->a()F

    move-result v13

    mul-float v12, v12, v13

    invoke-static {v11}, Lbjy;->s(Ljava/lang/String;)Ljava/util/List;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v13

    const/4 v14, 0x0

    :goto_5
    if-ge v14, v13, :cond_2a

    invoke-interface {v11, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/String;

    const/4 v7, 0x0

    const/4 v9, 0x0

    :goto_6
    div-float v8, v4, v6

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v7, v6, :cond_b

    invoke-virtual {v15, v7}, Ljava/lang/String;->charAt(I)C

    move-result v6

    iget-object v5, v3, Lva;->a:Ljava/lang/Object;

    move/from16 v16, v4

    iget-object v4, v3, Lva;->c:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5, v4}, Lbij;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v5, v0, Lbjy;->q:Lbga;

    iget-object v5, v5, Lbga;->d:Lxg;

    invoke-static {v5, v4}, Lxh;->a(Lxg;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbij;

    if-eqz v4, :cond_a

    float-to-double v5, v9

    float-to-double v8, v8

    move-object/from16 v17, v3

    iget-wide v3, v4, Lbij;->b:D

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v8

    invoke-static {}, Lbls;->a()F

    move-result v8

    float-to-double v8, v8

    move/from16 v18, v14

    move-object/from16 v19, v15

    float-to-double v14, v10

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v8

    invoke-static {v14, v15}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v3, v3, v14

    invoke-static {v5, v6}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v5, v3

    double-to-float v9, v5

    goto :goto_7

    :cond_a
    move-object/from16 v17, v3

    move/from16 v18, v14

    move-object/from16 v19, v15

    :goto_7
    add-int/lit8 v7, v7, 0x1

    move/from16 v4, v16

    move-object/from16 v3, v17

    move/from16 v14, v18

    move-object/from16 v15, v19

    const/high16 v6, 0x42c80000    # 100.0f

    goto :goto_6

    :cond_b
    move-object/from16 v17, v3

    move/from16 v16, v4

    move/from16 v18, v14

    move-object/from16 v19, v15

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v3, v2, Lbii;->k:I

    invoke-static {v3, v1, v9}, Lbjy;->p(ILandroid/graphics/Canvas;F)V

    add-int/lit8 v3, v13, -0x1

    int-to-float v3, v3

    mul-float v3, v3, v12

    move/from16 v9, v18

    int-to-float v4, v9

    mul-float v4, v4, v12

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v3, v5

    sub-float/2addr v4, v3

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    :goto_8
    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v3, v4, :cond_13

    move-object/from16 v15, v19

    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v5, v17

    iget-object v6, v5, Lva;->a:Ljava/lang/Object;

    iget-object v7, v5, Lva;->c:Ljava/lang/Object;

    check-cast v7, Ljava/lang/String;

    check-cast v6, Ljava/lang/String;

    invoke-static {v4, v6, v7}, Lbij;->a(CLjava/lang/String;Ljava/lang/String;)I

    move-result v4

    iget-object v6, v0, Lbjy;->q:Lbga;

    iget-object v6, v6, Lbga;->d:Lxg;

    invoke-static {v6, v4}, Lxh;->a(Lxg;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbij;

    if-nez v4, :cond_c

    move-object/from16 v14, p2

    move-object/from16 v17, v11

    move/from16 v20, v12

    move/from16 v19, v13

    goto/16 :goto_e

    :cond_c
    iget-object v6, v0, Lbjy;->m:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-object v6, v0, Lbjy;->m:Ljava/util/Map;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object/from16 v17, v11

    move/from16 v20, v12

    goto :goto_a

    :cond_d
    iget-object v6, v4, Lbij;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14, v7}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v17, v11

    const/4 v11, 0x0

    :goto_9
    if-ge v11, v7, :cond_e

    invoke-interface {v6, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v19, v6

    move-object/from16 v6, v18

    check-cast v6, Lbjl;

    move/from16 v18, v7

    new-instance v7, Lbgx;

    move/from16 v20, v12

    iget-object v12, v0, Lbjy;->p:Lbgj;

    invoke-direct {v7, v12, v0, v6}, Lbgx;-><init>(Lbgj;Lbjq;Lbjl;)V

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v11, v11, 0x1

    move/from16 v7, v18

    move-object/from16 v6, v19

    move/from16 v12, v20

    goto :goto_9

    :cond_e
    move/from16 v20, v12

    iget-object v6, v0, Lbjy;->m:Ljava/util/Map;

    invoke-interface {v6, v4, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v6, v14

    :goto_a
    const/4 v7, 0x0

    :goto_b
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v11

    if-ge v7, v11, :cond_10

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lbgx;

    invoke-virtual {v11}, Lbgx;->i()Landroid/graphics/Path;

    move-result-object v11

    iget-object v12, v0, Lbjy;->i:Landroid/graphics/RectF;

    const/4 v14, 0x0

    invoke-virtual {v11, v12, v14}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v12, v0, Lbjy;->j:Landroid/graphics/Matrix;

    move-object/from16 v14, p2

    invoke-virtual {v12, v14}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    iget-object v12, v0, Lbjy;->j:Landroid/graphics/Matrix;

    move-object/from16 v18, v6

    iget v6, v2, Lbii;->f:F

    neg-float v6, v6

    invoke-static {}, Lbls;->a()F

    move-result v19

    mul-float v6, v6, v19

    move/from16 v19, v13

    const/4 v13, 0x0

    invoke-virtual {v12, v13, v6}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    iget-object v6, v0, Lbjy;->j:Landroid/graphics/Matrix;

    invoke-virtual {v6, v8, v8}, Landroid/graphics/Matrix;->preScale(FF)Z

    iget-object v6, v0, Lbjy;->j:Landroid/graphics/Matrix;

    invoke-virtual {v11, v6}, Landroid/graphics/Path;->transform(Landroid/graphics/Matrix;)V

    iget-boolean v6, v2, Lbii;->j:Z

    if-eqz v6, :cond_f

    iget-object v6, v0, Lbjy;->k:Landroid/graphics/Paint;

    invoke-static {v11, v6, v1}, Lbjy;->r(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v6, v0, Lbjy;->l:Landroid/graphics/Paint;

    invoke-static {v11, v6, v1}, Lbjy;->r(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_c

    :cond_f
    iget-object v6, v0, Lbjy;->l:Landroid/graphics/Paint;

    invoke-static {v11, v6, v1}, Lbjy;->r(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v6, v0, Lbjy;->k:Landroid/graphics/Paint;

    invoke-static {v11, v6, v1}, Lbjy;->r(Landroid/graphics/Path;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_c
    add-int/lit8 v7, v7, 0x1

    move-object/from16 v6, v18

    move/from16 v13, v19

    goto :goto_b

    :cond_10
    move-object/from16 v14, p2

    move/from16 v19, v13

    iget-wide v6, v4, Lbij;->b:D

    double-to-float v4, v6

    mul-float v4, v4, v8

    invoke-static {}, Lbls;->a()F

    move-result v6

    mul-float v4, v4, v6

    mul-float v4, v4, v10

    iget v6, v2, Lbii;->d:I

    int-to-float v6, v6

    iget-object v7, v0, Lbjy;->y:Lbhs;

    const/high16 v11, 0x41200000    # 10.0f

    div-float/2addr v6, v11

    if-eqz v7, :cond_11

    invoke-virtual {v7}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v6, v7

    goto :goto_d

    :cond_11
    iget-object v7, v0, Lbjy;->x:Lbhs;

    if-eqz v7, :cond_12

    invoke-virtual {v7}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v6, v7

    goto :goto_d

    :cond_12
    :goto_d
    mul-float v6, v6, v10

    add-float/2addr v4, v6

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6}, Landroid/graphics/Canvas;->translate(FF)V

    :goto_e
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v11, v17

    move/from16 v13, v19

    move/from16 v12, v20

    move-object/from16 v17, v5

    move-object/from16 v19, v15

    goto/16 :goto_8

    :cond_13
    move-object/from16 v14, p2

    move/from16 v20, v12

    move/from16 v19, v13

    move-object/from16 v5, v17

    move-object/from16 v17, v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v3, v9, 0x1

    move v14, v3

    move-object v3, v5

    move/from16 v4, v16

    const/high16 v6, 0x42c80000    # 100.0f

    goto/16 :goto_5

    :cond_14
    move-object v5, v3

    iget-object v3, v0, Lbjy;->A:Lbhs;

    if-eqz v3, :cond_15

    invoke-virtual {v3}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Typeface;

    goto/16 :goto_13

    :cond_15
    iget-object v3, v0, Lbjy;->p:Lbgj;

    iget-object v4, v5, Lva;->a:Ljava/lang/Object;

    iget-object v5, v5, Lva;->c:Ljava/lang/Object;

    invoke-virtual {v3}, Lbgj;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v6

    const/4 v7, 0x0

    if-nez v6, :cond_16

    move-object v3, v7

    goto :goto_f

    :cond_16
    iget-object v6, v3, Lbgj;->j:Ldqx;

    if-nez v6, :cond_17

    new-instance v6, Ldqx;

    invoke-virtual {v3}, Lbgj;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v8

    invoke-direct {v6, v8}, Ldqx;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object v6, v3, Lbgj;->j:Ldqx;

    :cond_17
    iget-object v3, v3, Lbgj;->j:Ldqx;

    :goto_f
    if-eqz v3, :cond_1f

    iget-object v6, v3, Ldqx;->e:Ljava/lang/Object;

    move-object v8, v6

    check-cast v8, Lbin;

    iput-object v4, v8, Lbin;->a:Ljava/lang/Object;

    iput-object v5, v8, Lbin;->b:Ljava/lang/Object;

    iget-object v8, v3, Ldqx;->a:Ljava/lang/Object;

    invoke-interface {v8, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Typeface;

    if-eqz v6, :cond_18

    move-object v3, v6

    goto :goto_12

    :cond_18
    iget-object v6, v3, Ldqx;->b:Ljava/lang/Object;

    invoke-interface {v6, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Typeface;

    if-eqz v6, :cond_19

    goto :goto_10

    :cond_19
    iget-object v6, v3, Ldqx;->c:Ljava/lang/Object;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "fonts/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v9, v4

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iget-object v8, v3, Ldqx;->d:Ljava/lang/Object;

    check-cast v8, Landroid/content/res/AssetManager;

    invoke-static {v8, v6}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v6

    iget-object v8, v3, Ldqx;->b:Ljava/lang/Object;

    invoke-interface {v8, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10
    check-cast v5, Ljava/lang/String;

    const-string v4, "Italic"

    invoke-virtual {v5, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v8, "Bold"

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v14

    if-eqz v4, :cond_1b

    if-eqz v14, :cond_1a

    const/4 v14, 0x3

    goto :goto_11

    :cond_1a
    const/4 v14, 0x0

    :cond_1b
    if-eqz v4, :cond_1c

    const/4 v14, 0x2

    goto :goto_11

    :cond_1c
    if-eqz v14, :cond_1d

    const/4 v14, 0x1

    goto :goto_11

    :cond_1d
    const/4 v14, 0x0

    :goto_11
    invoke-virtual {v6}, Landroid/graphics/Typeface;->getStyle()I

    move-result v4

    if-eq v4, v14, :cond_1e

    invoke-static {v6, v14}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v6

    :cond_1e
    iget-object v4, v3, Ldqx;->a:Ljava/lang/Object;

    iget-object v3, v3, Ldqx;->e:Ljava/lang/Object;

    invoke-interface {v4, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v3, v6

    goto :goto_12

    :cond_1f
    move-object v3, v7

    :goto_12
    if-nez v3, :cond_20

    move-object v3, v7

    :cond_20
    :goto_13
    if-eqz v3, :cond_2a

    iget-object v4, v2, Lbii;->a:Ljava/lang/String;

    iget-object v5, v0, Lbjy;->k:Landroid/graphics/Paint;

    invoke-virtual {v5, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v3, v0, Lbjy;->z:Lbhs;

    if-eqz v3, :cond_21

    invoke-virtual {v3}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    goto :goto_14

    :cond_21
    iget v3, v2, Lbii;->c:F

    :goto_14
    iget-object v5, v0, Lbjy;->k:Landroid/graphics/Paint;

    invoke-static {}, Lbls;->a()F

    move-result v6

    mul-float v6, v6, v3

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v5, v0, Lbjy;->l:Landroid/graphics/Paint;

    iget-object v6, v0, Lbjy;->k:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v5, v0, Lbjy;->l:Landroid/graphics/Paint;

    iget-object v6, v0, Lbjy;->k:Landroid/graphics/Paint;

    invoke-virtual {v6}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    iget v5, v2, Lbii;->e:F

    invoke-static {}, Lbls;->a()F

    move-result v6

    mul-float v5, v5, v6

    iget v6, v2, Lbii;->d:I

    int-to-float v6, v6

    iget-object v7, v0, Lbjy;->y:Lbhs;

    const/high16 v8, 0x41200000    # 10.0f

    div-float/2addr v6, v8

    if-eqz v7, :cond_22

    invoke-virtual {v7}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v6, v7

    goto :goto_15

    :cond_22
    iget-object v7, v0, Lbjy;->x:Lbhs;

    if-eqz v7, :cond_23

    invoke-virtual {v7}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Float;

    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    move-result v7

    add-float/2addr v6, v7

    goto :goto_15

    :cond_23
    :goto_15
    invoke-static {}, Lbls;->a()F

    move-result v7

    mul-float v6, v6, v7

    mul-float v6, v6, v3

    invoke-static {v4}, Lbjy;->s(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v14, 0x0

    :goto_16
    if-ge v14, v4, :cond_2a

    const/high16 v7, 0x42c80000    # 100.0f

    div-float v8, v6, v7

    invoke-interface {v3, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, v0, Lbjy;->l:Landroid/graphics/Paint;

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v10

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    add-int/lit8 v11, v11, -0x1

    int-to-float v11, v11

    mul-float v11, v11, v8

    add-float/2addr v10, v11

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    iget v11, v2, Lbii;->k:I

    invoke-static {v11, v1, v10}, Lbjy;->p(ILandroid/graphics/Canvas;F)V

    add-int/lit8 v10, v4, -0x1

    int-to-float v10, v10

    mul-float v10, v10, v5

    int-to-float v11, v14

    mul-float v11, v11, v5

    const/high16 v12, 0x40000000    # 2.0f

    div-float/2addr v10, v12

    sub-float/2addr v11, v10

    const/4 v10, 0x0

    invoke-virtual {v1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v10, 0x0

    :goto_17
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_29

    invoke-virtual {v9, v10}, Ljava/lang/String;->codePointAt(I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Character;->charCount(I)I

    move-result v13

    add-int/2addr v13, v10

    :goto_18
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v15

    if-ge v13, v15, :cond_25

    invoke-virtual {v9, v13}, Ljava/lang/String;->codePointAt(I)I

    move-result v15

    invoke-static {v15}, Ljava/lang/Character;->getType(I)I

    move-result v7

    const/16 v12, 0x10

    if-eq v7, v12, :cond_24

    invoke-static {v15}, Ljava/lang/Character;->getType(I)I

    move-result v7

    const/16 v12, 0x1b

    if-eq v7, v12, :cond_24

    invoke-static {v15}, Ljava/lang/Character;->getType(I)I

    move-result v7

    const/4 v12, 0x6

    if-eq v7, v12, :cond_24

    invoke-static {v15}, Ljava/lang/Character;->getType(I)I

    move-result v7

    const/16 v12, 0x1c

    if-eq v7, v12, :cond_24

    invoke-static {v15}, Ljava/lang/Character;->getType(I)I

    move-result v7

    const/16 v12, 0x13

    if-ne v7, v12, :cond_25

    :cond_24
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v7

    add-int/2addr v13, v7

    mul-int/lit8 v11, v11, 0x1f

    add-int/2addr v11, v15

    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v12, 0x40000000    # 2.0f

    goto :goto_18

    :cond_25
    iget-object v7, v0, Lbjy;->n:Lxc;

    int-to-long v11, v11

    invoke-virtual {v7, v11, v12}, Lxc;->a(J)I

    move-result v7

    if-ltz v7, :cond_26

    iget-object v7, v0, Lbjy;->n:Lxc;

    invoke-virtual {v7, v11, v12}, Lxc;->d(J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    move-object/from16 p2, v3

    goto :goto_1a

    :cond_26
    iget-object v7, v0, Lbjy;->h:Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->setLength(I)V

    move v7, v10

    :goto_19
    if-ge v7, v13, :cond_27

    invoke-virtual {v9, v7}, Ljava/lang/String;->codePointAt(I)I

    move-result v15

    move-object/from16 p2, v3

    iget-object v3, v0, Lbjy;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->appendCodePoint(I)Ljava/lang/StringBuilder;

    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v3

    add-int/2addr v7, v3

    move-object/from16 v3, p2

    const/4 v15, 0x0

    goto :goto_19

    :cond_27
    move-object/from16 p2, v3

    iget-object v3, v0, Lbjy;->h:Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v3, v0, Lbjy;->n:Lxc;

    invoke-virtual {v3, v11, v12, v7}, Lxc;->g(JLjava/lang/Object;)V

    :goto_1a
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v10, v3

    iget-boolean v3, v2, Lbii;->j:Z

    if-eqz v3, :cond_28

    iget-object v3, v0, Lbjy;->k:Landroid/graphics/Paint;

    invoke-static {v7, v3, v1}, Lbjy;->q(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v3, v0, Lbjy;->l:Landroid/graphics/Paint;

    invoke-static {v7, v3, v1}, Lbjy;->q(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    goto :goto_1b

    :cond_28
    iget-object v3, v0, Lbjy;->l:Landroid/graphics/Paint;

    invoke-static {v7, v3, v1}, Lbjy;->q(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    iget-object v3, v0, Lbjy;->k:Landroid/graphics/Paint;

    invoke-static {v7, v3, v1}, Lbjy;->q(Ljava/lang/String;Landroid/graphics/Paint;Landroid/graphics/Canvas;)V

    :goto_1b
    iget-object v3, v0, Lbjy;->k:Landroid/graphics/Paint;

    invoke-virtual {v3, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v3

    add-float/2addr v3, v8

    const/4 v7, 0x0

    invoke-virtual {v1, v3, v7}, Landroid/graphics/Canvas;->translate(FF)V

    move-object/from16 v3, p2

    const/high16 v7, 0x42c80000    # 100.0f

    const/high16 v12, 0x40000000    # 2.0f

    goto/16 :goto_17

    :cond_29
    move-object/from16 p2, v3

    const/4 v7, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_16

    :cond_2a
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method
