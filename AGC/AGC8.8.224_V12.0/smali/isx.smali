.class public Lisx;
.super Lisk;


# instance fields
.field final synthetic b:Lita;


# direct methods
.method public constructor <init>(Lita;)V
    .locals 0

    iput-object p1, p0, Lisx;->b:Lita;

    invoke-direct {p0}, Lisk;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lisx;->b:Lita;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lita;->A(Z)V

    return-void
.end method

.method public c()V
    .locals 0

    return-void
.end method

.method public d(FI)V
    .locals 3

    iget-object v0, p0, Lisx;->b:Lita;

    iget-object v1, v0, Lita;->j:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {p2}, Lita;->I(I)I

    move-result p2

    invoke-virtual {v0, p2, v1, p1}, Lita;->J(IFF)V

    iget-object p2, p0, Lisx;->b:Lita;

    iget-object v0, p2, Lita;->p:Landroid/animation/ValueAnimator;

    const/4 v1, 0x2

    new-array v1, v1, [F

    iget-object p2, p2, Lita;->j:Ljwb;

    invoke-interface {p2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v2, 0x0

    aput p2, v1, v2

    const/4 p2, 0x1

    aput p1, v1, p2

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lisx;->b:Lita;

    iget-object p1, p1, Lita;->p:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lisx;->b:Lita;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lita;->L(I)V

    iget-object v0, p0, Lisx;->b:Lita;

    invoke-virtual {v0}, Lita;->H()V

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public final l(I)V
    .locals 1

    iget-object v0, p0, Lisx;->b:Lita;

    invoke-virtual {v0, p1}, Lita;->M(I)V

    return-void
.end method

.method public m()V
    .locals 0

    return-void
.end method

.method public n()V
    .locals 0

    return-void
.end method

.method public o(Z)V
    .locals 1

    iget-object v0, p0, Lisx;->b:Lita;

    iput-boolean p1, v0, Lita;->D:Z

    return-void
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Lisx;->b:Lita;

    iget-object v0, v0, Lita;->x:Ldhi;

    sget-object v1, Ldho;->am:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lisx;->b:Lita;

    iget-object v0, v0, Lita;->l:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->c(Z)V

    :cond_0
    iget-object v0, p0, Lisx;->b:Lita;

    iget-boolean v1, v0, Lita;->G:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lita;->z()V

    iget-object v0, p0, Lisx;->b:Lita;

    invoke-virtual {v0}, Lita;->F()V

    :cond_1
    return-void
.end method

.method public final q()V
    .locals 3

    iget-object v0, p0, Lisx;->b:Lita;

    iget-boolean v1, v0, Lita;->G:Z

    if-eqz v1, :cond_1

    iget-object v0, v0, Lita;->j:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lisx;->b:Lita;

    iget v2, v1, Lita;->F:F

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget-object v0, v1, Lita;->j:Ljwb;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    :cond_0
    iget-object v0, p0, Lisx;->b:Lita;

    invoke-virtual {v0}, Lita;->z()V

    iget-object v0, p0, Lisx;->b:Lita;

    invoke-virtual {v0}, Lita;->F()V

    :cond_1
    return-void
.end method

.method public final s()V
    .locals 4

    iget-object v0, p0, Lisx;->b:Lita;

    invoke-virtual {v0}, Lita;->D()V

    iget-object v0, p0, Lisx;->b:Lita;

    iget-object v0, v0, Lita;->l:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->c(Z)V

    iget-object v0, p0, Lisx;->b:Lita;

    iget-object v0, v0, Lita;->l:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setAccessibilityLiveRegion(I)V

    iget-object v0, p0, Lisx;->b:Lita;

    iget v1, v0, Lita;->F:F

    iget-object v2, v0, Lita;->j:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/16 v3, 0xa

    invoke-virtual {v0, v3, v1, v2}, Lita;->J(IFF)V

    return-void
.end method
