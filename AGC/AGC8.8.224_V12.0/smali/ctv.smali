.class public final Lctv;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field private a:Landroid/os/HandlerThread;

.field private b:Landroid/os/Handler;

.field private c:Ljud;

.field private d:Z

.field private final e:Ljava/lang/Object;

.field private final f:Lcvr;


# direct methods
.method public constructor <init>(Lcvr;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p0, Lctv;->d:Z

    new-instance p2, Ljava/lang/Object;

    invoke-direct {p2}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lctv;->e:Ljava/lang/Object;

    iput-object p1, p0, Lctv;->f:Lcvr;

    return-void
.end method

.method private final c()V
    .locals 3

    iget-object v0, p0, Lctv;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lctv;->d:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CamcorderCameraHandler"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lctv;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    iget-object v1, p0, Lctv;->a:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {v1}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v1

    iput-object v1, p0, Lctv;->b:Landroid/os/Handler;

    new-instance v1, Ljud;

    iget-object v2, p0, Lctv;->b:Landroid/os/Handler;

    invoke-direct {v1, v2}, Ljud;-><init>(Landroid/os/Handler;)V

    iput-object v1, p0, Lctv;->c:Ljud;

    iget-object v1, p0, Lctv;->f:Lcvr;

    sget-object v2, Lcua;->b:Lcua;

    invoke-virtual {v1, v2}, Lcvr;->q(Lcua;)Ljuf;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljuf;->d(Lkad;)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lctv;->d:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a()Landroid/os/Handler;
    .locals 1

    invoke-direct {p0}, Lctv;->c()V

    iget-object v0, p0, Lctv;->b:Landroid/os/Handler;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final b()Ljud;
    .locals 1

    invoke-direct {p0}, Lctv;->c()V

    iget-object v0, p0, Lctv;->c:Ljud;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Lctv;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lctv;->d:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lctv;->a:Landroid/os/HandlerThread;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/os/HandlerThread;->quit()Z

    :cond_1
    const/4 v1, 0x0

    iput-object v1, p0, Lctv;->a:Landroid/os/HandlerThread;

    iput-object v1, p0, Lctv;->b:Landroid/os/Handler;

    iput-object v1, p0, Lctv;->c:Ljud;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lctv;->d:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
