.class public final Lbjr;
.super Lbjq;


# instance fields
.field private h:Lbhs;

.field private final i:Ljava/util/List;

.field private final j:Landroid/graphics/RectF;

.field private final k:Landroid/graphics/RectF;


# direct methods
.method public constructor <init>(Lbgj;Lbjt;Ljava/util/List;Lbga;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Lbjq;-><init>(Lbgj;Lbjt;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lbjr;->i:Ljava/util/List;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lbjr;->j:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lbjr;->k:Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iget-object p2, p2, Lbjt;->q:Lbip;

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lbip;->a()Lbhs;

    move-result-object p2

    iput-object p2, p0, Lbjr;->h:Lbhs;

    invoke-virtual {p0, p2}, Lbjq;->h(Lbhs;)V

    iget-object p2, p0, Lbjr;->h:Lbhs;

    invoke-virtual {p2, p0}, Lbhs;->g(Lbhn;)V

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lbjr;->h:Lbhs;

    :goto_0
    new-instance p2, Lxc;

    iget-object v1, p4, Lbga;->f:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {p2, v1}, Lxc;-><init>(I)V

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move-object v2, v0

    :goto_1
    const/4 v3, 0x0

    if-ltz v1, :cond_5

    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lbjt;

    iget v5, v4, Lbjt;->t:I

    add-int/lit8 v6, v5, -0x1

    if-eqz v5, :cond_4

    packed-switch v6, :pswitch_data_0

    packed-switch v5, :pswitch_data_1

    const-string v5, "UNKNOWN"

    goto :goto_2

    :pswitch_0
    new-instance v5, Lbjy;

    invoke-direct {v5, p1, v4}, Lbjy;-><init>(Lbgj;Lbjt;)V

    goto :goto_3

    :pswitch_1
    new-instance v5, Lbjv;

    invoke-direct {v5, p1, v4}, Lbjv;-><init>(Lbgj;Lbjt;)V

    goto :goto_3

    :pswitch_2
    new-instance v5, Lbju;

    invoke-direct {v5, p1, v4}, Lbju;-><init>(Lbgj;Lbjt;)V

    goto :goto_3

    :pswitch_3
    new-instance v5, Lbjs;

    invoke-direct {v5, p1, v4}, Lbjs;-><init>(Lbgj;Lbjt;)V

    goto :goto_3

    :pswitch_4
    new-instance v5, Lbjw;

    invoke-direct {v5, p1, v4}, Lbjw;-><init>(Lbgj;Lbjt;)V

    goto :goto_3

    :pswitch_5
    new-instance v5, Lbjr;

    iget-object v6, v4, Lbjt;->f:Ljava/lang/String;

    iget-object v7, p4, Lbga;->a:Ljava/util/Map;

    invoke-interface {v7, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    invoke-direct {v5, p1, v4, v6, p4}, Lbjr;-><init>(Lbgj;Lbjt;Ljava/util/List;Lbga;)V

    goto :goto_3

    :pswitch_6
    const-string v5, "TEXT"

    goto :goto_2

    :pswitch_7
    const-string v5, "SHAPE"

    goto :goto_2

    :pswitch_8
    const-string v5, "NULL"

    goto :goto_2

    :pswitch_9
    const-string v5, "IMAGE"

    goto :goto_2

    :pswitch_a
    const-string v5, "SOLID"

    goto :goto_2

    :pswitch_b
    const-string v5, "PRE_COMP"

    :goto_2
    const-string v6, "Unknown layer type "

    invoke-virtual {v6, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lbll;->a(Ljava/lang/String;)V

    move-object v5, v0

    :goto_3
    if-eqz v5, :cond_3

    iget-object v6, v5, Lbjq;->c:Lbjt;

    iget-wide v6, v6, Lbjt;->d:J

    invoke-virtual {p2, v6, v7, v5}, Lxc;->g(JLjava/lang/Object;)V

    if-eqz v2, :cond_1

    iput-object v5, v2, Lbjq;->e:Lbjq;

    move-object v2, v0

    goto :goto_4

    :cond_1
    iget-object v6, p0, Lbjr;->i:Ljava/util/List;

    invoke-interface {v6, v3, v5}, Ljava/util/List;->add(ILjava/lang/Object;)V

    iget v3, v4, Lbjt;->u:I

    add-int/lit8 v4, v3, -0x1

    if-eqz v3, :cond_2

    packed-switch v4, :pswitch_data_2

    goto :goto_4

    :pswitch_c
    move-object v2, v5

    goto :goto_4

    :cond_2
    throw v0

    :cond_3
    :goto_4
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_1

    :cond_4
    throw v0

    :cond_5
    :goto_5
    invoke-virtual {p2}, Lxc;->b()I

    move-result p1

    if-ge v3, p1, :cond_8

    invoke-virtual {p2, v3}, Lxc;->c(I)J

    move-result-wide p3

    invoke-virtual {p2, p3, p4}, Lxc;->d(J)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lbjq;

    if-nez p1, :cond_6

    goto :goto_6

    :cond_6
    iget-object p3, p1, Lbjq;->c:Lbjt;

    iget-wide p3, p3, Lbjt;->e:J

    invoke-virtual {p2, p3, p4}, Lxc;->d(J)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lbjq;

    if-eqz p3, :cond_7

    iput-object p3, p1, Lbjq;->f:Lbjq;

    :cond_7
    :goto_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_8
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_c
        :pswitch_c
    .end packed-switch
.end method


# virtual methods
.method public final b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V
    .locals 3

    invoke-super {p0, p1, p2, p3}, Lbjq;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p2, p0, Lbjr;->i:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :goto_0
    if-ltz p2, :cond_0

    iget-object p3, p0, Lbjr;->j:Landroid/graphics/RectF;

    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0, v0, v0}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object p3, p0, Lbjr;->i:Ljava/util/List;

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lbjq;

    iget-object v0, p0, Lbjr;->j:Landroid/graphics/RectF;

    iget-object v1, p0, Lbjr;->a:Landroid/graphics/Matrix;

    const/4 v2, 0x1

    invoke-virtual {p3, v0, v1, v2}, Lbjq;->b(Landroid/graphics/RectF;Landroid/graphics/Matrix;Z)V

    iget-object p3, p0, Lbjr;->j:Landroid/graphics/RectF;

    invoke-virtual {p1, p3}, Landroid/graphics/RectF;->union(Landroid/graphics/RectF;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final f(Ljava/lang/Object;Lbkc;)V
    .locals 1

    invoke-super {p0, p1, p2}, Lbjq;->f(Ljava/lang/Object;Lbkc;)V

    sget-object v0, Lbgo;->C:Ljava/lang/Float;

    if-ne p1, v0, :cond_0

    new-instance p1, Lbig;

    const/4 v0, 0x0

    invoke-direct {p1, p2, v0}, Lbig;-><init>(Lbkc;[B)V

    iput-object p1, p0, Lbjr;->h:Lbhs;

    invoke-virtual {p1, p0}, Lbhs;->g(Lbhn;)V

    iget-object p1, p0, Lbjr;->h:Lbhs;

    invoke-virtual {p0, p1}, Lbjq;->h(Lbhs;)V

    :cond_0
    return-void
.end method

.method public final i(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V
    .locals 4

    iget-object v0, p0, Lbjr;->k:Landroid/graphics/RectF;

    iget-object v1, p0, Lbjr;->c:Lbjt;

    iget v2, v1, Lbjt;->n:I

    int-to-float v2, v2

    iget v1, v1, Lbjt;->o:I

    int-to-float v1, v1

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v2, v1}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v0, p0, Lbjr;->k:Landroid/graphics/RectF;

    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget-object v0, p0, Lbjr;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    iget-object v1, p0, Lbjr;->k:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lbjr;->k:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    iget-object v1, p0, Lbjr;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbjq;

    invoke-virtual {v1, p1, p2, p3}, Lbjq;->a(Landroid/graphics/Canvas;Landroid/graphics/Matrix;I)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    invoke-static {}, Lbfv;->a()V

    return-void
.end method

.method public final k(Lbik;ILjava/util/List;Lbik;)V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lbjr;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lbjr;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbjq;

    invoke-virtual {v1, p1, p2, p3, p4}, Lbjq;->d(Lbik;ILjava/util/List;Lbik;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final l(F)V
    .locals 3

    invoke-super {p0, p1}, Lbjq;->l(F)V

    iget-object v0, p0, Lbjr;->h:Lbhs;

    if-eqz v0, :cond_0

    iget-object p1, p0, Lbjr;->b:Lbgj;

    iget-object p1, p1, Lbgj;->a:Lbga;

    invoke-virtual {p1}, Lbga;->b()F

    move-result p1

    const v0, 0x3c23d70a    # 0.01f

    add-float/2addr p1, v0

    iget-object v0, p0, Lbjr;->c:Lbjt;

    iget-object v0, v0, Lbjt;->b:Lbga;

    iget v0, v0, Lbga;->h:F

    iget-object v1, p0, Lbjr;->h:Lbhs;

    invoke-virtual {v1}, Lbhs;->e()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    iget-object v2, p0, Lbjr;->c:Lbjt;

    iget-object v2, v2, Lbjt;->b:Lbga;

    iget v2, v2, Lbga;->j:F

    mul-float v1, v1, v2

    sub-float/2addr v1, v0

    div-float p1, v1, p1

    :cond_0
    iget-object v0, p0, Lbjr;->h:Lbhs;

    if-nez v0, :cond_1

    iget-object v0, p0, Lbjr;->c:Lbjt;

    iget v1, v0, Lbjt;->m:F

    iget-object v0, v0, Lbjt;->b:Lbga;

    invoke-virtual {v0}, Lbga;->b()F

    move-result v0

    div-float/2addr v1, v0

    sub-float/2addr p1, v1

    :cond_1
    iget-object v0, p0, Lbjr;->c:Lbjt;

    iget v1, v0, Lbjt;->l:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    iget-object v0, v0, Lbjt;->c:Ljava/lang/String;

    const-string v1, "__container"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lbjr;->c:Lbjt;

    iget v0, v0, Lbjt;->l:F

    div-float/2addr p1, v0

    :cond_2
    iget-object v0, p0, Lbjr;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_3

    iget-object v1, p0, Lbjr;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbjq;

    invoke-virtual {v1, p1}, Lbjq;->l(F)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    return-void
.end method
