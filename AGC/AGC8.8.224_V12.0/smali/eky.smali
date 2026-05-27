.class public final Leky;
.super Landroid/os/Handler;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lekz;Landroid/os/Looper;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Leky;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p0, Leky;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekz;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    return-void

    :pswitch_0
    invoke-virtual {p0}, Leky;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->quitSafely()V

    return-void

    :pswitch_1
    iget-object p1, v0, Lekz;->c:Lekt;

    invoke-virtual {p1}, Lekt;->a()V

    return-void

    :pswitch_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    int-to-long v1, v1

    iget v3, p1, Landroid/os/Message;->arg2:I

    int-to-long v3, v3

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, [F

    iget-object v0, v0, Lekz;->b:Lekw;

    iget-boolean v5, v0, Lekw;->g:Z

    if-nez v5, :cond_1

    sget-object p1, Lekw;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string v1, "Received a frame to process, but the encoder either hasn\'t started or has already stopped. This should not happen."

    const/16 v2, 0x62b

    invoke-static {p1, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-virtual {v0}, Lekw;->f()V

    return-void

    :cond_1
    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    const/16 v5, 0x20

    shl-long/2addr v1, v5

    iget-object v5, v0, Lekw;->d:Llts;

    invoke-virtual {v5}, Llts;->b()V

    iget-object v5, v0, Lekw;->h:Lcvr;

    invoke-virtual {v5, p1}, Lcvr;->I([F)V

    invoke-virtual {v0}, Lekw;->f()V

    iget-object p1, v0, Lekw;->d:Llts;

    iget-object v5, p1, Llts;->a:Landroid/opengl/EGLDisplay;

    iget-object p1, p1, Llts;->b:Landroid/opengl/EGLSurface;

    or-long/2addr v1, v3

    invoke-static {v5, p1, v1, v2}, Landroid/opengl/EGLExt;->eglPresentationTimeANDROID(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;J)Z

    iget-object p1, v0, Lekw;->d:Llts;

    iget-object v1, p1, Llts;->a:Landroid/opengl/EGLDisplay;

    iget-object p1, p1, Llts;->b:Landroid/opengl/EGLSurface;

    invoke-static {v1, p1}, Landroid/opengl/EGL14;->eglSwapBuffers(Landroid/opengl/EGLDisplay;Landroid/opengl/EGLSurface;)Z

    iget p1, v0, Lekw;->f:I

    add-int/lit8 p1, p1, 0x1

    iput p1, v0, Lekw;->f:I

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
