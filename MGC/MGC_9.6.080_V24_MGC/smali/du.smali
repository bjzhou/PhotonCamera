.class public final Ldu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/Executor;


# instance fields
.field final a:Ljava/util/Queue;

.field final b:Ljava/util/concurrent/Executor;

.field c:Ljava/lang/Runnable;

.field private final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/ArrayDeque;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-object p1, p0, Ldu;->b:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/util/ArrayDeque;-><init>()V

    goto/32 :goto_6

    nop

    nop

    :goto_5
    iput-object v0, p0, Ldu;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    iput-object v0, p0, Ldu;->a:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Ldu;->a:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    iput-object v1, p0, Ldu;->c:Ljava/lang/Runnable;

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    iget-object p0, p0, Ldu;->b:Ljava/util/concurrent/Executor;

    nop

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :cond_0
    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Ldu;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x10

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 5

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Ldu;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    const v0, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Ldu;->a:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    new-instance v2, Lat;

    nop

    nop

    nop

    nop

    const/4 v3, 0x7

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, p1, v3, v4}, Lat;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    invoke-interface {v1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Ldu;->c:Ljava/lang/Runnable;

    nop

    nop

    nop

    if-nez p1, :cond_1

    nop

    nop

    invoke-virtual {p0}, Ldu;->a()V

    :cond_1
    monitor-exit v0

    nop

    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop
.end method
