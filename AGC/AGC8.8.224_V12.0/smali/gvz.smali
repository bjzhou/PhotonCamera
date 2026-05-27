.class public final Lgvz;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/hardware/SensorManager;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Landroid/hardware/Sensor;

.field public final d:Ljava/lang/Object;

.field public final e:[F

.field public final f:[F

.field public final g:[F

.field public final h:Ljava/util/Set;

.field public i:Z

.field public final j:Ldus;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Ljava/util/concurrent/Executor;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgvz;->d:Ljava/lang/Object;

    const/16 v0, 0x9

    new-array v1, v0, [F

    iput-object v1, p0, Lgvz;->e:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lgvz;->f:[F

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Lgvz;->g:[F

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lgvz;->h:Ljava/util/Set;

    iput-object p1, p0, Lgvz;->a:Landroid/hardware/SensorManager;

    iput-object p2, p0, Lgvz;->b:Ljava/util/concurrent/Executor;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    iput-object p1, p0, Lgvz;->c:Landroid/hardware/Sensor;

    new-instance p1, Ldus;

    const/4 p2, 0x4

    invoke-direct {p1, p0, p2}, Ldus;-><init>(Lgvz;I)V

    iput-object p1, p0, Lgvz;->j:Ldus;

    return-void
.end method


# virtual methods
.method public final a(Lgvx;)V
    .locals 2

    iget-object v0, p0, Lgvz;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgvz;->h:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lgvz;->h:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    iput-boolean v1, p0, Lgvz;->i:Z

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    iget-object p1, p0, Lgvz;->b:Ljava/util/concurrent/Executor;

    new-instance v0, Lgot;

    const/16 v1, 0xf

    invoke-direct {v0, p0, v1}, Lgot;-><init>(Lgvz;I)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method
