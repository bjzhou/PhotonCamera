.class public Lisw;
.super Lisk;


# instance fields
.field final synthetic b:Lita;


# direct methods
.method public constructor <init>(Lita;)V
    .locals 0

    iput-object p1, p0, Lisw;->b:Lita;

    invoke-direct {p0}, Lisk;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lisw;->b:Lita;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lita;->A(Z)V

    return-void
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lisw;->b:Lita;

    iget-boolean v1, v0, Lita;->H:Z

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lita;->E()V

    :cond_0
    return-void
.end method

.method public final d(FI)V
    .locals 4

    iget-object v0, p0, Lisw;->b:Lita;

    iget-object v1, v0, Lita;->j:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    invoke-static {p2}, Lita;->I(I)I

    move-result v2

    invoke-virtual {v0, v2, v1, p1}, Lita;->J(IFF)V

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    iget-object p2, p0, Lisw;->b:Lita;

    iget-boolean v1, p2, Lita;->G:Z

    if-eqz v1, :cond_0

    invoke-virtual {p2}, Lita;->E()V

    :cond_0
    iget-object p2, p0, Lisw;->b:Lita;

    iget-object v1, p2, Lita;->q:Landroid/animation/ValueAnimator;

    const/4 v2, 0x2

    new-array v2, v2, [F

    iget-object p2, p2, Lita;->j:Ljwb;

    invoke-interface {p2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result p2

    const/4 v3, 0x0

    aput p2, v2, v3

    aput p1, v2, v0

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    iget-object p1, p0, Lisw;->b:Lita;

    iget-object p1, p1, Lita;->q:Landroid/animation/ValueAnimator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lisw;->b:Lita;

    iget-object v0, v0, Lita;->m:Landroid/widget/SeekBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lisw;->b:Lita;

    iget-object v0, v0, Lita;->x:Ldhi;

    sget-object v2, Ldho;->am:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lisw;->b:Lita;

    iget-object v0, v0, Lita;->t:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lisw;->b:Lita;

    iget-object v0, v0, Lita;->l:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setEnabled(Z)V

    iget-object v0, p0, Lisw;->b:Lita;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lita;->L(I)V

    iget-object v0, p0, Lisw;->b:Lita;

    invoke-virtual {v0}, Lita;->H()V

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lisw;->b:Lita;

    iget-object v0, v0, Lita;->m:Landroid/widget/SeekBar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    iget-object v0, p0, Lisw;->b:Lita;

    iget-object v0, v0, Lita;->x:Ldhi;

    sget-object v2, Ldho;->am:Ldhj;

    invoke-interface {v0, v2}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lisw;->b:Lita;

    iget-object v0, v0, Lita;->t:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lisw;->b:Lita;

    iget-object v0, v0, Lita;->l:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setEnabled(Z)V

    return-void
.end method

.method public j()V
    .locals 0

    return-void
.end method

.method public k()V
    .locals 1

    iget-object v0, p0, Lisw;->b:Lita;

    invoke-virtual {v0}, Lita;->E()V

    return-void
.end method

.method public l(I)V
    .locals 1

    iget-object v0, p0, Lisw;->b:Lita;

    invoke-virtual {v0, p1}, Lita;->M(I)V

    return-void
.end method
