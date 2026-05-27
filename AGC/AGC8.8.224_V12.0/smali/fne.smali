.class final Lfne;
.super Landroid/os/Handler;


# instance fields
.field private final a:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lfng;)V
    .locals 1

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lfne;->a:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    iget-object v0, p0, Lfne;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lfng;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    new-instance v0, Ljava/lang/AssertionError;

    iget p1, p1, Landroid/os/Message;->what:I

    invoke-direct {v0, p1}, Ljava/lang/AssertionError;-><init>(I)V

    throw v0

    :pswitch_0
    invoke-virtual {v0}, Lfng;->E()V

    return-void

    :pswitch_1
    iget-object p1, v0, Lfng;->m:Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;

    iget-object v1, p1, Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;->b:Lgxa;

    iget-object v1, v1, Lgxa;->d:Lgxv;

    invoke-virtual {v1}, Lgxv;->b()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object p1, Lfng;->b:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string v1, "Could not create temporary mosaic file. Not able to stitch."

    const/16 v2, 0x95a

    invoke-static {p1, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lgxv;->a()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lfng;->c:Lgqa;

    invoke-interface {v2}, Lgqa;->a()J

    move-result-wide v2

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    iget-boolean v4, v0, Lfng;->G:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_3

    sget-object v4, Lewr;->a:Ljava/lang/Object;

    invoke-static {}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->GetNumCapturedTargets()I

    move-result v4

    if-gtz v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    :goto_0
    long-to-int v3, v2

    sget-object v2, Lewr;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    invoke-static {v6, v1, v1, v3}, Lcom/google/android/apps/lightcycle/panorama/LightCycleNative;->FinishCapture(ZLjava/lang/String;Ljava/lang/String;I)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lewr;->b:Ljava/lang/Boolean;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v1, Lfxf;

    invoke-direct {v1, v0, p1}, Lfxf;-><init>(Lfng;Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;)V

    new-instance v2, Lexw;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, v3}, Lexw;-><init>(Lcom/google/android/apps/camera/legacy/lightcycle/storage/LocalSessionStorage;Lfxf;[B)V

    invoke-virtual {v2}, Lexw;->start()V

    :goto_1
    invoke-virtual {v0}, Lfng;->E()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :pswitch_2
    return-void

    :pswitch_3
    invoke-virtual {v0}, Lfng;->w()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x65
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
