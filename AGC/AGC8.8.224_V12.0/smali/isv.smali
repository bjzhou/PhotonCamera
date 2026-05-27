.class public Lisv;
.super Lisk;


# instance fields
.field final synthetic b:Lita;


# direct methods
.method public constructor <init>(Lita;)V
    .locals 0

    iput-object p1, p0, Lisv;->b:Lita;

    invoke-direct {p0}, Lisk;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lisv;->b:Lita;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lita;->A(Z)V

    return-void
.end method

.method public final f()V
    .locals 8

    iget-object v0, p0, Lisv;->b:Lita;

    iget v0, v0, Lita;->E:F

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v4, "max zoom value hasn\'t been initialized properly"

    invoke-static {v0, v4}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v0, p0, Lisv;->b:Lita;

    iget v0, v0, Lita;->F:F

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    const-string v4, "min zoom value hasn\'t been initialized properly"

    invoke-static {v0, v4}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v0, p0, Lisv;->b:Lita;

    iget-boolean v4, v0, Lita;->G:Z

    if-eqz v4, :cond_2

    iget-boolean v4, v0, Lita;->H:Z

    if-nez v4, :cond_2

    invoke-virtual {v0}, Lita;->D()V

    :cond_2
    iget-object v0, p0, Lisv;->b:Lita;

    iget-object v0, v0, Lita;->w:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lika;

    sget-object v4, Lika;->g:Lika;

    invoke-virtual {v0, v4}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lisv;->b:Lita;

    iget v0, v0, Lita;->F:F

    goto :goto_2

    :cond_3
    iget-object v0, p0, Lisv;->b:Lita;

    iget v0, v0, Lita;->r:F

    :goto_2
    iget-object v4, p0, Lisv;->b:Lita;

    iget-object v4, v4, Lita;->J:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lisv;->b:Lita;

    iget-object v4, v4, Lita;->J:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v4, v4, v3

    if-lez v4, :cond_4

    iget-object v0, p0, Lisv;->b:Lita;

    iget-object v0, v0, Lita;->J:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v4, p0, Lisv;->b:Lita;

    iget-object v4, v4, Lita;->w:Ljvs;

    invoke-interface {v4}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lika;

    sget-object v5, Lika;->g:Lika;

    invoke-virtual {v4, v5}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    iget-object v0, p0, Lisv;->b:Lita;

    iget-object v0, v0, Lita;->x:Ldhi;

    sget-object v4, Ldib;->g:Ldhj;

    invoke-interface {v0, v4}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_3

    :cond_5
    add-float/2addr v0, v0

    goto :goto_3

    :cond_6
    const/high16 v0, 0x40f00000    # 7.5f

    :goto_3
    iget-object v4, p0, Lisv;->b:Lita;

    iget-object v4, v4, Lita;->i:Ldbx;

    invoke-interface {v4}, Ldbx;->d()Lklv;

    move-result-object v4

    sget-object v5, Lklv;->a:Lklv;

    invoke-virtual {v4, v5}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    iget-object v4, p0, Lisv;->b:Lita;

    iget-object v4, v4, Lita;->j:Ljwb;

    invoke-interface {v4}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lisv;->b:Lita;

    iget v6, v5, Lita;->K:F

    cmpl-float v4, v4, v6

    if-eqz v4, :cond_7

    move v0, v6

    goto/16 :goto_4

    :cond_7
    iget-object v4, v5, Lita;->J:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v4

    if-nez v4, :cond_8

    iget-object v0, p0, Lisv;->b:Lita;

    iget v0, v0, Lita;->F:F

    goto/16 :goto_4

    :cond_8
    iget-object v4, p0, Lisv;->b:Lita;

    iget-object v4, v4, Lita;->J:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lisv;->b:Lita;

    iget v6, v5, Lita;->K:F

    const v7, 0x3f99999a    # 1.2f

    mul-float v6, v6, v7

    cmpl-float v4, v4, v6

    if-gtz v4, :cond_f

    iget-object v4, v5, Lita;->J:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lisv;->b:Lita;

    iget v6, v5, Lita;->K:F

    mul-float v6, v6, v7

    cmpg-float v4, v4, v6

    if-gez v4, :cond_9

    iget-object v4, v5, Lita;->J:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    iget-object v5, p0, Lisv;->b:Lita;

    iget v5, v5, Lita;->K:F

    cmpl-float v4, v4, v5

    if-gtz v4, :cond_a

    :cond_9
    iget-object v4, p0, Lisv;->b:Lita;

    iget-object v4, v4, Lita;->J:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    cmpl-float v3, v4, v3

    if-nez v3, :cond_b

    :cond_a
    iget-object v3, p0, Lisv;->b:Lita;

    iget v3, v3, Lita;->K:F

    mul-float v0, v0, v3

    goto :goto_4

    :cond_b
    iget-object v0, p0, Lisv;->b:Lita;

    iget v0, v0, Lita;->F:F

    goto :goto_4

    :cond_c
    iget-object v3, p0, Lisv;->b:Lita;

    iget-object v3, v3, Lita;->j:Ljwb;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    iget-object v4, p0, Lisv;->b:Lita;

    iget v5, v4, Lita;->K:F

    cmpl-float v3, v3, v5

    if-eqz v3, :cond_d

    move v0, v5

    goto :goto_4

    :cond_d
    iget-object v3, v4, Lita;->J:Lmqp;

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, p0, Lisv;->b:Lita;

    iget v3, v3, Lita;->K:F

    mul-float v0, v0, v3

    goto :goto_4

    :cond_e
    iget-object v0, p0, Lisv;->b:Lita;

    iget v0, v0, Lita;->F:F

    :cond_f
    :goto_4
    iget-object v3, p0, Lisv;->b:Lita;

    iget-object v3, v3, Lita;->v:Lmqp;

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, p0, Lisv;->b:Lita;

    iget-object v3, v3, Lita;->v:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhei;

    invoke-interface {v3, v0}, Lhei;->k(F)V

    iget-object v3, p0, Lisv;->b:Lita;

    iget-object v3, v3, Lita;->v:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhei;

    iget-object v4, p0, Lisv;->b:Lita;

    iget v4, v4, Lita;->K:F

    invoke-interface {v3, v4}, Lhei;->j(F)V

    :cond_10
    iget-object v3, p0, Lisv;->b:Lita;

    iget v4, v3, Lita;->E:F

    cmpl-float v5, v0, v4

    if-lez v5, :cond_11

    move v0, v4

    goto :goto_5

    :cond_11
    iget v4, v3, Lita;->F:F

    cmpg-float v4, v0, v4

    if-gez v4, :cond_12

    const/high16 v0, 0x40000000    # 2.0f

    :cond_12
    :goto_5
    iget v4, v3, Lita;->K:F

    const/4 v5, 0x2

    cmpl-float v4, v0, v4

    if-nez v4, :cond_13

    iget-object v4, v3, Lita;->j:Ljwb;

    invoke-interface {v4}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    const/4 v6, 0x3

    invoke-virtual {v3, v6, v4, v0}, Lita;->J(IFF)V

    iget-object v3, p0, Lisv;->b:Lita;

    iget-object v3, v3, Lita;->k:Lfbz;

    invoke-interface {v3, v6, v0}, Lfbz;->ab(IF)V

    goto :goto_6

    :cond_13
    iget-object v4, v3, Lita;->j:Ljwb;

    invoke-interface {v4}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    invoke-virtual {v3, v5, v4, v0}, Lita;->J(IFF)V

    iget-object v3, p0, Lisv;->b:Lita;

    iget-object v3, v3, Lita;->k:Lfbz;

    invoke-interface {v3, v5, v0}, Lfbz;->ab(IF)V

    :goto_6
    iget-object v3, p0, Lisv;->b:Lita;

    iget-object v4, v3, Lita;->n:Landroid/animation/ValueAnimator;

    new-array v6, v5, [F

    iget-object v3, v3, Lita;->j:Ljwb;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    aput v3, v6, v2

    aput v0, v6, v1

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lisv;->b:Lita;

    iget-object v0, v0, Lita;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lisv;->b:Lita;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lita;->L(I)V

    iget-object v0, p0, Lisv;->b:Lita;

    iget-object v0, v0, Lita;->l:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    invoke-virtual {v0, v5}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setAccessibilityLiveRegion(I)V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lisv;->b:Lita;

    iget-object v0, v0, Lita;->n:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lisv;->b:Lita;

    invoke-virtual {v0}, Lita;->G()V

    return-void
.end method
