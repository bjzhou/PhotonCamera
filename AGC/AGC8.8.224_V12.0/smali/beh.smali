.class final Lbeh;
.super Lbea;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lbea;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lbei;Lbei;)V
    .locals 0

    iput-object p2, p1, Lbei;->c:Lbei;

    return-void
.end method

.method public final b(Lbei;Ljava/lang/Thread;)V
    .locals 0

    iput-object p2, p1, Lbei;->b:Ljava/lang/Thread;

    return-void
.end method

.method public final c(Lbej;Lbee;Lbee;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lbej;->e:Lbee;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lbej;->e:Lbee;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final d(Lbej;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lbej;->d:Ljava/lang/Object;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lbej;->d:Ljava/lang/Object;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method public final e(Lbej;Lbei;Lbei;)Z
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lbej;->f:Lbei;

    if-ne v0, p2, :cond_0

    iput-object p3, p1, Lbej;->f:Lbei;

    monitor-exit p1

    const/4 p1, 0x1

    return p1

    :cond_0
    monitor-exit p1

    const/4 p1, 0x0

    return p1

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
