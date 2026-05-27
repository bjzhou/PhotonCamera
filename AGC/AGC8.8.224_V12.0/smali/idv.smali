.class public final Lidv;
.super Ljava/lang/Object;

# interfaces
.implements Lidu;


# instance fields
.field final synthetic a:Lfng;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfng;)V
    .locals 0

    iput-object p1, p0, Lidv;->a:Lfng;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Landroid/view/GestureDetector$OnGestureListener;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final b()Landroid/view/View$OnTouchListener;
    .locals 1

    iget-object v0, p0, Lidv;->a:Lfng;

    iget-object v0, v0, Lfng;->M:Landroid/view/View$OnTouchListener;

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lidv;->a:Lfng;

    invoke-virtual {v0}, Lfng;->I()V

    return-void
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    iget-object v0, p0, Lidv;->a:Lfng;

    iget-object v1, v0, Lfng;->I:Ldzx;

    if-eqz v1, :cond_0

    sget-object p1, Lfng;->b:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string p2, "onCameraAvailable queued before onSurfaceTextureAvailable"

    const/16 p3, 0x94b

    invoke-static {p1, p2, p3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_0
    iput p2, v0, Lfng;->w:I

    iput p3, v0, Lfng;->x:I

    invoke-virtual {v0}, Lfng;->y()V

    iget-object p2, p0, Lidv;->a:Lfng;

    iget-object p2, p2, Lfng;->s:Lcgy;

    invoke-interface {p2}, Lcgy;->g()Lcha;

    move-result-object p2

    invoke-interface {p2}, Lcha;->b()V

    iget-object p2, p0, Lidv;->a:Lfng;

    iget-object p2, p2, Lfng;->s:Lcgy;

    invoke-interface {p2}, Lcgy;->g()Lcha;

    move-result-object p2

    check-cast p2, Lcie;

    iget-object p3, p2, Lcie;->t:Landroid/graphics/SurfaceTexture;

    if-eqz p3, :cond_2

    iget-object v0, p2, Lcie;->r:Lidr;

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lidr;->b()I

    move-result v0

    iget-object p2, p2, Lcie;->r:Lidr;

    invoke-interface {p2}, Lidr;->a()I

    move-result p2

    invoke-virtual {p3, v0, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p2, Lcie;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    const-string p3, "Could not set SurfaceTexture default buffer dimensions, not yet setup"

    const/16 v0, 0xbe

    invoke-static {p2, p3, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :goto_1
    iget-object p2, p0, Lidv;->a:Lfng;

    iget-object p2, p2, Lfng;->s:Lcgy;

    invoke-interface {p2}, Lcgy;->g()Lcha;

    move-result-object p2

    invoke-interface {p2}, Lcha;->n()V

    iget-object p2, p0, Lidv;->a:Lfng;

    new-instance p3, Ldzx;

    iget-object v0, p0, Lidv;->a:Lfng;

    iget-object v1, v0, Lfng;->H:Landroid/os/Handler;

    invoke-direct {p3, p1, v1, v0}, Ldzx;-><init>(Landroid/graphics/SurfaceTexture;Landroid/os/Handler;Ldzw;)V

    iput-object p3, p2, Lfng;->I:Ldzx;

    iget-object p1, p0, Lidv;->a:Lfng;

    iget-object p2, p1, Lfng;->i:Lewd;

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Lfng;->H()V

    :cond_3
    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    iget-object p1, p0, Lidv;->a:Lfng;

    invoke-virtual {p1}, Lfng;->G()V

    const/4 p1, 0x1

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object p1, p0, Lidv;->a:Lfng;

    iput p2, p1, Lfng;->w:I

    iput p3, p1, Lfng;->x:I

    iget-object p1, p1, Lfng;->H:Landroid/os/Handler;

    if-eqz p1, :cond_0

    const/4 v0, 0x2

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    return-void
.end method

.method public final surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Module does NOT support Surface-backed Preview."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Module does NOT support Surface-backed Preview."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Module does NOT support Surface-backed Preview."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final surfaceRedrawNeeded(Landroid/view/SurfaceHolder;)V
    .locals 1

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Module does NOT support Surface-backed Preview."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
