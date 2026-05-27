.class final Lbmr;
.super Ljava/lang/Object;


# instance fields
.field private a:Landroid/hardware/Camera$Parameters;

.field private final b:Landroid/hardware/Camera;


# direct methods
.method public constructor <init>(Landroid/hardware/Camera;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbmr;->b:Landroid/hardware/Camera;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Landroid/hardware/Camera$Parameters;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbmr;->a:Landroid/hardware/Camera$Parameters;

    if-nez v0, :cond_1

    iget-object v0, p0, Lbmr;->b:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v0

    iput-object v0, p0, Lbmr;->a:Landroid/hardware/Camera$Parameters;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lbmv;->a:Lboc;

    const-string v1, "Camera object returned null parameters!"

    invoke-static {v0, v1}, Lbod;->a(Lboc;Ljava/lang/String;)V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "camera.getParameters returned null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lbmr;->a:Landroid/hardware/Camera$Parameters;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
