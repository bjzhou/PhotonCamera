.class public Lisz;
.super Lisk;


# instance fields
.field final synthetic b:Lita;


# direct methods
.method public constructor <init>(Lita;)V
    .locals 0

    iput-object p1, p0, Lisz;->b:Lita;

    invoke-direct {p0}, Lisk;-><init>()V

    return-void
.end method


# virtual methods
.method public final f()V
    .locals 4

    iget-object v0, p0, Lisz;->b:Lita;

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

    iget-object v0, p0, Lisz;->b:Lita;

    iget-object v0, v0, Lita;->x:Ldhi;

    sget-object v1, Ldho;->ag:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lisz;->b:Lita;

    iget v0, v0, Lita;->F:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    const-string v0, "min zoom value hasn\'t been initialized properly"

    invoke-static {v2, v0}, Lmoz;->f(ZLjava/lang/Object;)V

    :cond_2
    iget-object v0, p0, Lisz;->b:Lita;

    iget-boolean v1, v0, Lita;->G:Z

    if-eqz v1, :cond_3

    iget-boolean v1, v0, Lita;->H:Z

    if-nez v1, :cond_3

    invoke-virtual {v0}, Lita;->D()V

    :cond_3
    iget-object v0, p0, Lisz;->b:Lita;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lita;->L(I)V

    iget-object v0, p0, Lisz;->b:Lita;

    iget-object v0, v0, Lita;->l:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->setAccessibilityLiveRegion(I)V

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public m()V
    .locals 2

    iget-object v0, p0, Lisz;->b:Lita;

    iget-boolean v1, v0, Lita;->G:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lita;->z()V

    iget-object v0, p0, Lisz;->b:Lita;

    invoke-virtual {v0}, Lita;->F()V

    :cond_0
    iget-object v0, p0, Lisz;->b:Lita;

    invoke-virtual {v0}, Lita;->G()V

    return-void
.end method

.method public p()V
    .locals 2

    iget-object v0, p0, Lisz;->b:Lita;

    iget-boolean v1, v0, Lita;->G:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lita;->z()V

    iget-object v0, p0, Lisz;->b:Lita;

    invoke-virtual {v0}, Lita;->F()V

    :cond_0
    iget-object v0, p0, Lisz;->b:Lita;

    invoke-virtual {v0}, Lita;->G()V

    return-void
.end method

.method public q()V
    .locals 2

    iget-object v0, p0, Lisz;->b:Lita;

    iget-boolean v1, v0, Lita;->G:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lita;->z()V

    iget-object v0, p0, Lisz;->b:Lita;

    invoke-virtual {v0}, Lita;->F()V

    :cond_0
    iget-object v0, p0, Lisz;->b:Lita;

    invoke-virtual {v0}, Lita;->G()V

    return-void
.end method

.method public final t(F)V
    .locals 3

    iget-object v0, p0, Lisz;->b:Lita;

    iget-object v0, v0, Lita;->j:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {p1, v0}, Lkba;->q(FF)F

    move-result p1

    iget-object v0, p0, Lisz;->b:Lita;

    iget v1, v0, Lita;->E:F

    cmpl-float v2, p1, v1

    if-lez v2, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    iget v1, v0, Lita;->F:F

    cmpg-float v2, p1, v1

    if-gez v2, :cond_1

    move p1, v1

    :cond_1
    :goto_0
    iget-object v0, v0, Lita;->j:Ljwb;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object p1, p0, Lisz;->b:Lita;

    invoke-virtual {p1}, Lita;->z()V

    return-void
.end method
