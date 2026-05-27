.class public final Lhax;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Landroid/hardware/camera2/CameraManager;

.field public final c:Ljava/util/concurrent/Executor;

.field private final d:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/sideline/SidelineCameraAvailabilityChecker"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhax;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhax;->b:Landroid/hardware/camera2/CameraManager;

    iput-object p2, p0, Lhax;->c:Ljava/util/concurrent/Executor;

    iput-object p3, p0, Lhax;->d:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 6

    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lhax;->b:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v1}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v1, :cond_1

    array-length v2, v1

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v2, Lhaw;

    iget-object v3, p0, Lhax;->d:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-direct {v2, v1, v3}, Lhaw;-><init>([Ljava/lang/String;Ljava/util/concurrent/ScheduledExecutorService;)V

    new-instance v1, Lktk;

    invoke-direct {v1, p0, v2, v0}, Lktk;-><init>(Lhax;Lhaw;I)V

    invoke-static {v1}, Lqh;->b(Lxw;)Lnou;

    move-result-object v0

    new-instance v1, Lgps;

    const/16 v3, 0x10

    invoke-direct {v1, p0, v2, v3}, Lgps;-><init>(Lhax;Lhaw;I)V

    iget-object v2, p0, Lhax;->c:Ljava/util/concurrent/Executor;

    invoke-interface {v0, v1, v2}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lhax;->d:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/32 v4, 0xea60

    invoke-static {v0, v4, v5, v1, v2}, Lnsy;->I(Lnou;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lnou;

    move-result-object v0

    new-instance v1, Lfnq;

    invoke-direct {v1, v3}, Lfnq;-><init>(I)V

    iget-object v2, p0, Lhax;->c:Ljava/util/concurrent/Executor;

    const-class v3, Ljava/util/concurrent/TimeoutException;

    invoke-static {v0, v3, v1, v2}, Lnml;->i(Lnou;Ljava/lang/Class;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0
.end method
