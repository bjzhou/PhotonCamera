.class public final Lgkv;
.super Lkfg;


# static fields
.field private static final b:Lnak;


# instance fields
.field public final a:Ljvk;

.field private final c:Ljava/util/concurrent/Executor;

.field private final d:Lfmo;

.field private final e:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/common/ActiveCameraMonitor"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgkv;->b:Lnak;

    return-void
.end method

.method public constructor <init>(Ljvk;Lfmo;ZLjava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Lkfg;-><init>()V

    iput-object p1, p0, Lgkv;->a:Ljvk;

    iput-boolean p3, p0, Lgkv;->e:Z

    iput-object p2, p0, Lgkv;->d:Lfmo;

    iput-object p4, p0, Lgkv;->c:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final declared-synchronized bC(Lkou;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-boolean v1, p0, Lgkv;->e:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lgkv;->d:Lfmo;

    iget-object v1, v1, Lfmo;->a:Lj$/util/Optional;

    new-instance v2, Lgdn;

    const/4 v3, 0x3

    invoke-direct {v2, p1, v0, v3}, Lgdn;-><init>(Lkou;Ljava/lang/String;I)V

    invoke-virtual {v1, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p1

    :goto_1
    if-eqz v0, :cond_2

    iget-object p1, p0, Lgkv;->a:Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_2

    :try_start_1
    iget-object p1, p0, Lgkv;->c:Ljava/util/concurrent/Executor;

    new-instance v1, Lfqt;

    const/16 v2, 0x12

    invoke-direct {v1, p0, v0, v2}, Lfqt;-><init>(Lgkv;Ljava/lang/String;I)V

    invoke-interface {p1, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catch_0
    move-exception p1

    :try_start_2
    sget-object v0, Lgkv;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Update operation couldn\'t be completed."

    const/16 v2, 0xb90

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
