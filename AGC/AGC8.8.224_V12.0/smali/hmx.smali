.class public final Lhmx;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Landroid/os/PowerManager;

.field public c:Z

.field public d:Z

.field public final e:Ljava/util/concurrent/Executor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/temperature/PowerManagerProxy"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhmx;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/os/PowerManager;Ljava/util/concurrent/Executor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lhmx;->c:Z

    iput-boolean v0, p0, Lhmx;->d:Z

    iput-object p1, p0, Lhmx;->b:Landroid/os/PowerManager;

    iput-object p2, p0, Lhmx;->e:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method final a()I
    .locals 1

    iget-object v0, p0, Lhmx;->b:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->getCurrentThermalStatus()I

    move-result v0

    return v0
.end method

.method final declared-synchronized b(Landroid/os/PowerManager$OnThermalStatusChangedListener;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lhmx;->c:Z

    iget-object v0, p0, Lhmx;->e:Ljava/util/concurrent/Executor;

    new-instance v1, Lhdg;

    const/16 v2, 0x13

    invoke-direct {v1, p0, p1, v2}, Lhdg;-><init>(Lhmx;Landroid/os/PowerManager$OnThermalStatusChangedListener;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
