.class final Lnnl;
.super Lnnj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnnj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lnnm;)I
    .locals 1

    monitor-enter p1

    :try_start_0
    iget v0, p1, Lnnm;->remaining:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p1, Lnnm;->remaining:I

    monitor-exit p1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final b(Lnnm;Ljava/util/Set;)V
    .locals 1

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Lnnm;->seenExceptions:Ljava/util/Set;

    if-nez v0, :cond_0

    iput-object p2, p1, Lnnm;->seenExceptions:Ljava/util/Set;

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method
