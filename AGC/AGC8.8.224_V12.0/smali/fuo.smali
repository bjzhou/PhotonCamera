.class final Lfuo;
.super Landroid/hardware/camera2/CameraManager$AvailabilityCallback;


# instance fields
.field private final a:Lfum;

.field private final b:Lkll;

.field private final c:Lmwn;


# direct methods
.method public constructor <init>(Lfum;Lkll;Lmwn;)V
    .locals 0

    invoke-direct {p0}, Landroid/hardware/camera2/CameraManager$AvailabilityCallback;-><init>()V

    iput-object p1, p0, Lfuo;->a:Lfum;

    iput-object p2, p0, Lfuo;->b:Lkll;

    iput-object p3, p0, Lfuo;->c:Lmwn;

    return-void
.end method


# virtual methods
.method public final declared-synchronized onCameraAvailable(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfuo;->b:Lkll;

    iget-object v0, v0, Lkll;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lfuo;->a:Lfum;

    iget-object p1, p1, Lfum;->b:Lnph;

    invoke-virtual {p1}, Lnph;->isDone()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lfuo;->a:Lfum;

    iget-object v0, p0, Lfuo;->c:Lmwn;

    iget-object v1, p1, Lfum;->b:Lnph;

    invoke-virtual {v1}, Lnph;->isDone()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Lfun;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lfun;-><init>(Lfum;I)V

    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    iget-object p1, p1, Lfum;->b:Lnph;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lnph;->e(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object p1, p0, Lfuo;->c:Lmwn;

    iget-object v0, p0, Lfuo;->a:Lfum;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lfun;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lfun;-><init>(Lfum;I)V

    invoke-static {p1, v1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPhysicalCameraAvailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfuo;->b:Lkll;

    iget-object v0, v0, Lkll;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lfuo;->a:Lfum;

    invoke-virtual {p1, p2}, Lfum;->a(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized onPhysicalCameraUnavailable(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lfuo;->b:Lkll;

    iget-object v0, v0, Lkll;->a:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lfuo;->a:Lfum;

    invoke-virtual {p1, p2}, Lfum;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
