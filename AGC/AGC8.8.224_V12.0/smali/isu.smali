.class public Lisu;
.super Lisk;


# instance fields
.field private a:F

.field final synthetic b:Lita;


# direct methods
.method public constructor <init>(Lita;)V
    .locals 0

    iput-object p1, p0, Lisu;->b:Lita;

    invoke-direct {p0}, Lisk;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lisu;->b:Lita;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lita;->A(Z)V

    return-void
.end method

.method public cq()V
    .locals 1

    iget-object v0, p0, Lisu;->b:Lita;

    invoke-virtual {v0}, Lita;->G()V

    return-void
.end method

.method public final f()V
    .locals 7

    iget-object v0, p0, Lisu;->b:Lita;

    iget v0, v0, Lita;->E:F

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "max zoom value hasn\'t been initialized properly"

    invoke-static {v0, v1}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v0, p0, Lisu;->b:Lita;

    iget-object v0, v0, Lita;->j:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lisu;->a:F

    iget-object v0, p0, Lisu;->b:Lita;

    iget-boolean v1, v0, Lita;->D:Z

    if-eqz v1, :cond_1

    iget v1, v0, Lita;->E:F

    goto :goto_1

    :cond_1
    iget v1, v0, Lita;->F:F

    :goto_1
    iget-object v4, v0, Lita;->o:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v6, v5, [F

    iget-object v0, v0, Lita;->j:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    aput v0, v6, v3

    aput v1, v6, v2

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object v0, p0, Lisu;->b:Lita;

    iget-object v0, v0, Lita;->j:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lisu;->b:Lita;

    iget v2, v1, Lita;->E:F

    iget v3, v1, Lita;->F:F

    sub-float/2addr v2, v3

    div-float/2addr v0, v2

    iget-object v1, v1, Lita;->o:Landroid/animation/ValueAnimator;

    const/high16 v2, 0x44fa0000    # 2000.0f

    mul-float v0, v0, v2

    float-to-int v0, v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lisu;->b:Lita;

    iget-object v0, v0, Lita;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    iget-object v0, p0, Lisu;->b:Lita;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lita;->L(I)V

    iget-object v0, p0, Lisu;->b:Lita;

    iget-object v0, v0, Lita;->l:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    invoke-virtual {v0, v5}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setAccessibilityLiveRegion(I)V

    return-void
.end method

.method public final g()V
    .locals 4

    iget-object v0, p0, Lisu;->b:Lita;

    iget v1, p0, Lisu;->a:F

    iget-object v2, v0, Lita;->j:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x7

    invoke-virtual {v0, v3, v1, v2}, Lita;->J(IFF)V

    iget-object v0, p0, Lisu;->b:Lita;

    iget-object v0, v0, Lita;->o:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    return-void
.end method
