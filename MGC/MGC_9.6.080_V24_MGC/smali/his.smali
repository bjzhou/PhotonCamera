.class public Lhis;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;


# instance fields
.field private final b:Ljava/util/Deque;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lhis;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "his"

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
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Lhis;->b:Ljava/util/Deque;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Ljava/util/ArrayDeque;

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method final declared-synchronized a()Lrss;
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_1
    iget-object v0, p0, Lhis;->b:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->getLast()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lhdu;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    throw v0

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    iget-object v0, p0, Lhis;->b:Ljava/util/Deque;

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    sget-object v0, Lrsa;->a:Lrsa;

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_3

    nop

    nop
.end method

.method public final declared-synchronized b()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lhis;->b:Ljava/util/Deque;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    sget-object v0, Lhis;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0x3f3

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    check-cast v0, Lscz;

    nop

    const-string v1, "onCameraEnd. Resource Q is empty!"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const v1, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :cond_1
    :try_start_2
    iget-object v0, p0, Lhis;->b:Ljava/util/Deque;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lhdu;

    nop

    nop

    nop

    iget-object v0, v0, Lhdu;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Libx;

    nop

    const-string v1, "camera-coach-session"

    nop

    invoke-virtual {v0, v1}, Libx;->j(Ljava/lang/String;)V

    iget-object v0, p0, Lhis;->b:Ljava/util/Deque;

    nop

    nop

    invoke-interface {v0}, Ljava/util/Deque;->size()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-exit p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public final declared-synchronized c(Lhdu;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_2
    goto/32 :goto_c

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, p1, Lhdu;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Libx;

    nop

    nop

    const-string v1, "camera-coach-session"

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Libx;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lhis;->b:Ljava/util/Deque;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    iget-object p1, p0, Lhis;->b:Ljava/util/Deque;

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Deque;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x1c

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
