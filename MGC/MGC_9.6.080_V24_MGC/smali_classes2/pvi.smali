.class final Lpvi;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final a:Ljava/util/Deque;

.field private b:D

.field private c:D

.field private d:D

.field private e:D

.field private f:Lpvh;

.field private g:Lpvh;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lpvi;->a:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_4
    new-instance v0, Ljava/util/ArrayDeque;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final declared-synchronized a(D)V
    .locals 5

    goto/32 :goto_8

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    :goto_5
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1b

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lpvi;->f:Lpvh;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-wide v1, p0, Lpvi;->d:D

    nop

    cmpl-double v1, p1, v1

    nop

    nop

    if-lez v1, :cond_1

    nop

    invoke-interface {v0, p1, p2}, Lpvh;->a(D)V

    :cond_1
    iget-object v0, p0, Lpvi;->a:Ljava/util/Deque;

    nop

    invoke-interface {v0}, Ljava/util/Deque;->peekLast()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Ljava/lang/Double;

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v1

    nop

    nop

    sub-double v1, p1, v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    nop

    nop

    nop

    nop

    div-double/2addr v1, v3

    nop

    iget-object v0, p0, Lpvi;->g:Lpvh;

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    iget-wide v3, p0, Lpvi;->e:D

    nop

    nop

    nop

    nop

    cmpl-double v3, v1, v3

    nop

    nop

    if-lez v3, :cond_2

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, v2}, Lpvh;->a(D)V

    :cond_2
    iget-object v0, p0, Lpvi;->a:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    const/16 v1, 0x78

    nop

    nop

    nop

    nop

    nop

    if-le v0, v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpvi;->a:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->remove()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Ljava/lang/Double;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    iget-wide v2, p0, Lpvi;->b:D

    nop

    nop

    sub-double/2addr v2, v0

    nop

    nop

    iput-wide v2, p0, Lpvi;->b:D

    nop

    nop

    iget-wide v2, p0, Lpvi;->c:D

    nop

    nop

    nop

    mul-double/2addr v0, v0

    nop

    sub-double/2addr v2, v0

    nop

    nop

    nop

    nop

    nop

    iput-wide v2, p0, Lpvi;->c:D

    nop

    nop

    :cond_3
    iget-wide v0, p0, Lpvi;->b:D

    nop

    nop

    add-double/2addr v0, p1

    nop

    nop

    nop

    nop

    iput-wide v0, p0, Lpvi;->b:D

    nop

    nop

    nop

    nop

    nop

    iget-wide v0, p0, Lpvi;->c:D

    nop

    nop

    nop

    nop

    mul-double v2, p1, p1

    nop

    nop

    add-double/2addr v0, v2

    nop

    nop

    nop

    iput-wide v0, p0, Lpvi;->c:D

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpvi;->a:Ljava/util/Deque;

    nop

    nop

    nop

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method final declared-synchronized b(DLpvh;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iput-wide p1, p0, Lpvi;->d:D

    nop

    nop

    iput-object p3, p0, Lpvi;->f:Lpvh;

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method final declared-synchronized c(Lpvh;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    const-wide/high16 v0, 0x3fd0000000000000L    # 0.25

    nop

    :try_start_1
    iput-wide v0, p0, Lpvi;->e:D

    nop

    nop

    nop

    iput-object p1, p0, Lpvi;->g:Lpvh;

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method
