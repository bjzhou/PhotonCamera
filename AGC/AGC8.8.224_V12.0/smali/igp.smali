.class final Ligp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/SurfaceHolder$Callback2;


# instance fields
.field final synthetic a:Ligq;


# direct methods
.method public constructor <init>(Ligq;)V
    .locals 0

    iput-object p1, p0, Ligp;->a:Ligq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 8

    iget-object v0, p0, Ligp;->a:Ligq;

    iget-boolean v0, v0, Ligq;->f:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Ligp;->a:Ligq;

    iget-object v0, v0, Ligq;->d:Lkbc;

    const-string v1, "surfaceChanged"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    new-instance v0, Lkaf;

    invoke-direct {v0, p3, p4}, Lkaf;-><init>(II)V

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v1

    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurfaceFrame()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {v0}, Ljzr;->g(Lkaf;)Ljzr;

    move-result-object v2

    iget-object v3, p0, Ligp;->a:Ligq;

    iget-object v3, v3, Ligq;->a:Lkaq;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v5

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "SurfaceEvent: surfaceChanged (newSize: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", newRatio: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", surfaceFrame: "

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "x"

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v3, p1}, Lkaq;->b(Ljava/lang/String;)V

    iget-object p1, p0, Ligp;->a:Ligq;

    iget-object p1, p1, Ligq;->g:Lnph;

    invoke-virtual {p1}, Lnph;->isDone()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Ligp;->a:Ligq;

    invoke-virtual {v1}, Landroid/view/Surface;->isValid()Z

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-static {v0}, Ljzr;->g(Lkaf;)Ljzr;

    move-result-object v0

    iget-object v2, p1, Ligq;->e:Lihb;

    iget-object v2, v2, Lihb;->b:Ljzr;

    invoke-virtual {v2}, Ljzr;->f()Ljzr;

    move-result-object v2

    invoke-static {v0, v2}, Lmoz;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    iget-object p1, p1, Ligq;->a:Lkaq;

    invoke-virtual {v0}, Ljzr;->f()Ljzr;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2}, Ljzr;->f()Ljzr;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Aspect ratios do not match! surface: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " preview: "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lkaq;->h(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Ligp;->a:Ligq;

    iget-object v0, p1, Ligq;->a:Lkaq;

    iget-object p1, p1, Ligq;->e:Lihb;

    iget-object p1, p1, Lihb;->a:Lkaf;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v2, "Surface request is set. size="

    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkaq;->f(Ljava/lang/String;)V

    iget-object p1, p0, Ligp;->a:Ligq;

    iget-object p1, p1, Ligq;->h:Lhkh;

    sget-object v0, Lhko;->b:Lhko;

    invoke-virtual {p1, v0}, Lhkh;->h(Ljava/lang/Enum;)V

    iget-object p1, p0, Ligp;->a:Ligq;

    iget-object p1, p1, Ligq;->d:Lkbc;

    const-string v0, "surfaceRequest.set"

    invoke-interface {p1, v0}, Lkbc;->e(Ljava/lang/String;)V

    iget-object p1, p0, Ligp;->a:Ligq;

    iget-object p1, p1, Ligq;->g:Lnph;

    new-instance v0, Lkaf;

    invoke-direct {v0, p3, p4}, Lkaf;-><init>(II)V

    invoke-virtual {v0}, Lkaf;->c()Landroid/util/Size;

    move-result-object p3

    new-instance p4, Liha;

    invoke-direct {p4, v1, p2, p3}, Liha;-><init>(Landroid/view/Surface;ILandroid/util/Size;)V

    invoke-virtual {p1, p4}, Lnph;->e(Ljava/lang/Object;)Z

    iget-object p1, p0, Ligp;->a:Ligq;

    iget-object p1, p1, Ligq;->d:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    :cond_2
    :goto_0
    iget-object p1, p0, Ligp;->a:Ligq;

    iget-object p1, p1, Ligq;->d:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-void
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object p1, p0, Ligp;->a:Ligq;

    iget-boolean p1, p1, Ligq;->f:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lmoz;->p(Z)V

    iget-object p1, p0, Ligp;->a:Ligq;

    iget-object p1, p1, Ligq;->h:Lhkh;

    sget-object v0, Lhko;->a:Lhko;

    invoke-virtual {p1, v0}, Lhkh;->h(Ljava/lang/Enum;)V

    iget-object p1, p0, Ligp;->a:Ligq;

    iget-object p1, p1, Ligq;->a:Lkaq;

    const-string v0, "SurfaceEvent: surfaceCreated"

    invoke-interface {p1, v0}, Lkaq;->b(Ljava/lang/String;)V

    iget-object p1, p0, Ligp;->a:Ligq;

    iget-object p1, p1, Ligq;->g:Lnph;

    invoke-virtual {p1}, Lnph;->isDone()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ligp;->a:Ligq;

    iget-object v0, p1, Ligq;->a:Lkaq;

    iget-object p1, p1, Ligq;->g:Lnph;

    invoke-static {p1}, Ljvd;->r(Lnou;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "surfaceChanged was already called or cancelled? Value: "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Lkaq;->i(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 2

    iget-object p1, p0, Ligp;->a:Ligq;

    iget-boolean p1, p1, Ligq;->f:Z

    const/4 v0, 0x1

    xor-int/2addr p1, v0

    invoke-static {p1}, Lmoz;->p(Z)V

    iget-object p1, p0, Ligp;->a:Ligq;

    iget-object p1, p1, Ligq;->a:Lkaq;

    const-string v1, "SurfaceEvent: surfaceDestroyed"

    invoke-interface {p1, v1}, Lkaq;->b(Ljava/lang/String;)V

    iget-object p1, p0, Ligp;->a:Ligq;

    const-string v1, "Surface has been destroyed."

    invoke-virtual {p1, v1}, Ligq;->a(Ljava/lang/String;)V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v1

    iput-object v1, p1, Ligq;->g:Lnph;

    iget-object p1, p0, Ligp;->a:Ligq;

    iget-object p1, p1, Ligq;->h:Lhkh;

    invoke-virtual {p1}, Lhkh;->close()V

    iget-object p1, p0, Ligp;->a:Ligq;

    iget-object p1, p1, Ligq;->c:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Ligp;->a:Ligq;

    iget-object p1, p1, Ligq;->c:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object p1, p1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast p1, Lert;

    iget-object v1, p1, Lert;->h:Ligx;

    invoke-virtual {v1}, Ligx;->g()V

    iget-object v1, p1, Lert;->T:Lcdi;

    invoke-virtual {v1}, Lcdi;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Lert;->T:Lcdi;

    invoke-virtual {v1}, Lcdi;->g()Z

    move-result v1

    if-nez v1, :cond_0

    iput-boolean v0, p1, Lert;->E:Z

    iget-object p1, p1, Lert;->p:Lchk;

    invoke-virtual {p1}, Lchk;->q()V

    :cond_0
    return-void
.end method

.method public final surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 1

    iget-object p1, p0, Ligp;->a:Ligq;

    iget-boolean p1, p1, Ligq;->f:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Lmoz;->p(Z)V

    iget-object p1, p0, Ligp;->a:Ligq;

    iget-object p1, p1, Ligq;->a:Lkaq;

    const-string v0, "SurfaceEvent: surfaceRedrawNeeded"

    invoke-interface {p1, v0}, Lkaq;->b(Ljava/lang/String;)V

    return-void
.end method
