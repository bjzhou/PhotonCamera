.class final Lkts;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/Deque;

.field private b:D

.field private c:D

.field private d:D

.field private e:D

.field private f:Lktr;

.field private g:Lktr;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayDeque;

    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    iput-object v0, p0, Lkts;->a:Ljava/util/Deque;

    return-void
.end method


# virtual methods
.method final declared-synchronized a(D)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkts;->f:Lktr;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Lkts;->d:D

    cmpl-double v3, p1, v1

    if-lez v3, :cond_0

    invoke-interface {v0, p1, p2}, Lktr;->a(D)V

    :cond_0
    iget-object v0, p0, Lkts;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    sub-double v1, p1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    div-double/2addr v1, v3

    iget-object v0, p0, Lkts;->g:Lktr;

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lkts;->e:D

    cmpl-double v5, v1, v3

    if-lez v5, :cond_1

    invoke-interface {v0, v1, v2}, Lktr;->a(D)V

    :cond_1
    iget-object v0, p0, Lkts;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    const/16 v1, 0x78

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lkts;->a:Ljava/util/Deque;

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    iget-wide v2, p0, Lkts;->b:D

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lkts;->b:D

    iget-wide v2, p0, Lkts;->c:D

    mul-double v0, v0, v0

    sub-double/2addr v2, v0

    iput-wide v2, p0, Lkts;->c:D

    :cond_2
    iget-wide v0, p0, Lkts;->b:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lkts;->b:D

    iget-wide v0, p0, Lkts;->c:D

    mul-double v2, p1, p1

    add-double/2addr v0, v2

    iput-wide v0, p0, Lkts;->c:D

    iget-object v0, p0, Lkts;->a:Ljava/util/Deque;

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized b(DLktr;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-wide p1, p0, Lkts;->d:D

    iput-object p3, p0, Lkts;->f:Lktr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized c(Lktr;)V
    .locals 2

    monitor-enter p0

    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    :try_start_0
    iput-wide v0, p0, Lkts;->e:D

    iput-object p1, p0, Lkts;->g:Lktr;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
