.class public final synthetic Ldrh;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;I)V
    .locals 0

    iput p2, p0, Ldrh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldrh;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lckd;I)V
    .locals 0

    iput p2, p0, Ldrh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldrh;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldri;I)V
    .locals 0

    iput p2, p0, Ldrh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldrh;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldrj;I)V
    .locals 0

    iput p2, p0, Ldrh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldrh;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldru;I)V
    .locals 0

    iput p2, p0, Ldrh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldrh;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldug;I)V
    .locals 0

    iput p2, p0, Ldrh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldrh;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ldwx;I)V
    .locals 0

    iput p2, p0, Ldrh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldrh;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ldzx;I)V
    .locals 0

    iput p2, p0, Ldrh;->b:I

    iput-object p1, p0, Ldrh;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ldzz;I)V
    .locals 0

    iput p2, p0, Ldrh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldrh;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lebj;I)V
    .locals 0

    iput p2, p0, Ldrh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldrh;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    iput p2, p0, Ldrh;->b:I

    iput-object p1, p0, Ldrh;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkeb;I)V
    .locals 0

    iput p2, p0, Ldrh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldrh;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lkpb;I)V
    .locals 0

    iput p2, p0, Ldrh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldrh;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Logd;I)V
    .locals 0

    iput p2, p0, Ldrh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldrh;->a:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Loiw;I)V
    .locals 0

    iput p2, p0, Ldrh;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ldrh;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget v0, p0, Ldrh;->b:I

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lkad;->close()V

    return-void

    :pswitch_0
    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    check-cast v0, Lebj;

    invoke-virtual {v0, v1}, Lebj;->c(F)V

    return-void

    :pswitch_1
    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    move-object v2, v0

    check-cast v2, Lebj;

    invoke-virtual {v2, v1}, Lebj;->c(F)V

    iget-object v1, v2, Lebj;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    check-cast v0, Lebj;

    iput-object v4, v0, Lebj;->c:Ljava/util/concurrent/Future;

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :pswitch_2
    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    check-cast v0, Lebj;

    const/high16 v1, 0x3f000000    # 0.5f

    invoke-virtual {v0, v1}, Lebj;->c(F)V

    return-void

    :pswitch_3
    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    check-cast v0, Ldzz;

    invoke-virtual {v0}, Ldzz;->b()V

    return-void

    :pswitch_4
    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v1, p0, Ldrh;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1

    :pswitch_5
    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    check-cast v0, Ldzx;

    iget-object v1, v0, Ldzx;->f:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, v0, Ldzx;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, v0, Ldzx;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroySurface(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    check-cast v0, Ldzx;

    iget-object v1, v0, Ldzx;->f:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v2, v0, Ldzx;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    iget-object v0, v0, Ldzx;->d:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v2, v0}, Ljavax/microedition/khronos/egl/EGL10;->eglDestroyContext(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    check-cast v0, Ldzx;

    iget-object v1, v0, Ldzx;->f:Ljavax/microedition/khronos/egl/EGL10;

    iget-object v0, v0, Ldzx;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    sget-object v2, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v3, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_SURFACE:Ljavax/microedition/khronos/egl/EGLSurface;

    sget-object v5, Ljavax/microedition/khronos/egl/EGL10;->EGL_NO_CONTEXT:Ljavax/microedition/khronos/egl/EGLContext;

    invoke-interface {v1, v0, v2, v3, v5}, Ljavax/microedition/khronos/egl/EGL10;->eglMakeCurrent(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLSurface;Ljavax/microedition/khronos/egl/EGLContext;)Z

    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    check-cast v0, Ldzx;

    iput-object v4, v0, Ldzx;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    iput-object v4, v0, Ldzx;->d:Ljavax/microedition/khronos/egl/EGLContext;

    iput-object v4, v0, Ldzx;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    invoke-static {}, Landroid/opengl/EGL14;->eglReleaseThread()Z

    return-void

    :pswitch_6
    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    check-cast v0, Ldzx;

    iget-object v0, v0, Ldzx;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Ldrh;->a:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ldzx;

    iget-object v2, v2, Ldzx;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Ldzx;

    iget-object v2, v2, Ldzx;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Ldzx;

    iget-object v2, v2, Ldzx;->j:Ldzw;

    check-cast v1, Ldzx;

    iget-object v1, v1, Ldzx;->g:Ljavax/microedition/khronos/opengles/GL10;

    check-cast v2, Lfng;

    iget-object v2, v2, Lfng;->q:Lewz;

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lewz;->onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V

    :cond_0
    iget-object v1, p0, Ldrh;->a:Ljava/lang/Object;

    move-object v2, v1

    check-cast v2, Ldzx;

    iget-object v2, v2, Ldzx;->f:Ljavax/microedition/khronos/egl/EGL10;

    move-object v4, v1

    check-cast v4, Ldzx;

    iget-object v4, v4, Ldzx;->c:Ljavax/microedition/khronos/egl/EGLDisplay;

    check-cast v1, Ldzx;

    iget-object v1, v1, Ldzx;->e:Ljavax/microedition/khronos/egl/EGLSurface;

    invoke-interface {v2, v4, v1}, Ljavax/microedition/khronos/egl/EGL10;->eglSwapBuffers(Ljavax/microedition/khronos/egl/EGLDisplay;Ljavax/microedition/khronos/egl/EGLSurface;)Z

    iget-object v1, p0, Ldrh;->a:Ljava/lang/Object;

    check-cast v1, Ldzx;

    iput-boolean v3, v1, Ldzx;->h:Z

    :cond_1
    iget-object v1, p0, Ldrh;->a:Ljava/lang/Object;

    check-cast v1, Ldzx;

    iget-object v1, v1, Ldzx;->k:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0

    return-void

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    throw v1

    :pswitch_7
    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "https://support.google.com/googlecamera/answer/9937175"

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_8
    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "https://support.google.com/googlecamera/answer/9937175"

    const-string v3, "android.intent.action.VIEW"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_9
    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ldxc;->c()V

    return-void

    :pswitch_a
    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    check-cast v0, Lckd;

    invoke-virtual {v0}, Lckd;->b()V

    return-void

    :pswitch_b
    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    invoke-virtual {v0}, Ldja;->g()V

    return-void

    :pswitch_c
    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ldug;

    iget-object v1, v1, Ldug;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3
    move-object v2, v0

    check-cast v2, Ldug;

    iget-object v2, v2, Ldug;->c:Lkmm;

    if-eqz v2, :cond_2

    invoke-interface {v2}, Lkmm;->close()V

    check-cast v0, Ldug;

    iput-object v4, v0, Ldug;->c:Lkmm;

    :cond_2
    monitor-exit v1

    return-void

    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    throw v0

    :pswitch_d
    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ldug;

    iget-object v1, v1, Ldug;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_4
    move-object v2, v0

    check-cast v2, Ldug;

    iget-object v2, v2, Ldug;->c:Lkmm;

    if-nez v2, :cond_3

    move-object v2, v0

    check-cast v2, Ldug;

    iget-object v2, v2, Ldug;->a:Lkmn;

    const-string v3, "FeatureCentral"

    invoke-interface {v2, v3}, Lkmn;->a(Ljava/lang/String;)Lkmm;

    move-result-object v2

    check-cast v0, Ldug;

    iput-object v2, v0, Ldug;->c:Lkmm;

    :cond_3
    monitor-exit v1

    return-void

    :catchall_4
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    throw v0

    :pswitch_e
    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    invoke-interface {v0}, Lkeb;->b()Lkeg;

    move-result-object v1

    sget-object v2, Ldsq;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v3, 0x46f

    invoke-interface {v2, v3}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    if-eqz v1, :cond_4

    iget-wide v3, v1, Lkeg;->b:J

    goto :goto_0

    :cond_4
    const-wide/16 v3, -0x1

    :goto_0
    const-string v1, "Dropped frame%d because the feature extraction took too long"

    invoke-interface {v2, v1, v3, v4}, Lnah;->q(Ljava/lang/String;J)V

    invoke-interface {v0}, Lkeb;->close()V

    return-void

    :pswitch_f
    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    check-cast v0, Ldru;

    invoke-virtual {v0}, Ldru;->c()V

    return-void

    :pswitch_10
    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Ldrj;

    iget-object v1, v1, Ldrj;->a:Ljava/lang/Object;

    monitor-enter v1

    :try_start_5
    invoke-static {v2}, Lcom/google/android/apps/camera/jni/faceobfuscation/GpuRedactorNative;->createRedactor(Z)J

    move-result-wide v2

    check-cast v0, Ldrj;

    iput-wide v2, v0, Ldrj;->b:J

    monitor-exit v1

    return-void

    :catchall_5
    move-exception v0

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    throw v0

    :pswitch_11
    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    check-cast v0, Ldri;

    iget-object v0, v0, Ldri;->a:Lmqp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsf;

    invoke-interface {v0, v2}, Ldsf;->d(Z)V

    return-void

    :pswitch_12
    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    invoke-interface {v0}, Logd;->get()Ljava/lang/Object;

    return-void

    :pswitch_13
    iget-object v0, p0, Ldrh;->a:Ljava/lang/Object;

    check-cast v0, Ldri;

    iget-object v0, v0, Ldri;->a:Lmqp;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldsf;

    invoke-interface {v0, v3}, Ldsf;->d(Z)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
