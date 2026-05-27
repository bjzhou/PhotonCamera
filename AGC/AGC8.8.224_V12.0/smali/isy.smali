.class public Lisy;
.super Lisk;


# instance fields
.field private a:F

.field final synthetic b:Lita;


# direct methods
.method public constructor <init>(Lita;)V
    .locals 0

    iput-object p1, p0, Lisy;->b:Lita;

    invoke-direct {p0}, Lisk;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lisy;->b:Lita;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lita;->A(Z)V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lisy;->b:Lita;

    iget v0, v0, Lita;->E:F

    const/4 v1, 0x0

    const/4 v2, 0x1

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "max zoom value hasn\'t been initialized properly"

    invoke-static {v0, v1}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-object v0, p0, Lisy;->b:Lita;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lita;->L(I)V

    iget-object v0, p0, Lisy;->b:Lita;

    invoke-virtual {v0}, Lita;->z()V

    iget-object v0, p0, Lisy;->b:Lita;

    iget-object v0, v0, Lita;->x:Ldhi;

    sget-object v1, Ldho;->am:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lisy;->b:Lita;

    iget-object v0, v0, Lita;->l:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->c(Z)V

    iget-object v0, p0, Lisy;->b:Lita;

    iget-object v0, v0, Lita;->l:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->d(Z)V

    :cond_1
    iget-object v0, p0, Lisy;->b:Lita;

    iget-object v0, v0, Lita;->j:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lisy;->a:F

    iget-object v0, p0, Lisy;->b:Lita;

    iget-object v0, v0, Lita;->l:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setAccessibilityLiveRegion(I)V

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lisy;->b:Lita;

    iget-object v0, v0, Lita;->l:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->c(Z)V

    return-void
.end method

.method public p()V
    .locals 4

    iget-object v0, p0, Lisy;->b:Lita;

    iget-object v0, v0, Lita;->x:Ldhi;

    sget-object v1, Ldho;->am:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lisy;->b:Lita;

    iget-object v0, v0, Lita;->l:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->c(Z)V

    :cond_0
    iget-object v0, p0, Lisy;->b:Lita;

    iget-boolean v1, v0, Lita;->G:Z

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lita;->z()V

    iget-object v0, p0, Lisy;->b:Lita;

    invoke-virtual {v0}, Lita;->F()V

    :cond_1
    iget-object v0, p0, Lisy;->b:Lita;

    iget v1, p0, Lisy;->a:F

    iget-object v2, v0, Lita;->j:Ljwb;

    invoke-interface {v2}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1, v2}, Lita;->J(IFF)V

    iget-object v0, p0, Lisy;->b:Lita;

    invoke-virtual {v0}, Lita;->G()V

    return-void
.end method
