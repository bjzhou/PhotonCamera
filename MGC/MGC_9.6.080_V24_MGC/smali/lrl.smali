.class public final Llrl;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Llrm;

.field private c:Ljava/lang/Object;

.field private d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Llrm;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Llrl;->c:Ljava/lang/Object;

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

    :goto_1
    new-instance p1, Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

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

    :goto_3
    iput-object p3, p0, Llrl;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Llrl;->b:Llrm;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Llrl;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Llrl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    throw p0

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Llrl;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-object p0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

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
.end method

.method public final close()V
    .locals 8

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :try_start_0
    iput-object v1, p0, Llrl;->d:Ljava/lang/Object;

    nop

    nop

    iput-object v1, p0, Llrl;->c:Ljava/lang/Object;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_1
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    const-string v1, "LruPool.sizeOf() is reporting inconsistent results!"

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v4

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    throw p0

    nop

    nop

    :cond_2
    :goto_a
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :catchall_2
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_4

    nop

    nop

    :goto_b
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_4
    iget-object v1, p0, Llrl;->d:Ljava/lang/Object;

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Llrl;->b:Llrm;

    nop

    iget-object v3, p0, Llrl;->c:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v4, v2, Llrm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-enter v4

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v5, v2, Llrm;->b:Lrkg;

    nop

    nop

    invoke-virtual {v2, v1}, Llrm;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v5, Lrkg;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v2

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    iget-object v6, v5, Lrkg;->d:Ljava/lang/Object;

    nop

    nop

    check-cast v6, Ljava/util/LinkedList;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v3}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    iget-object v6, v5, Lrkg;->b:Ljava/lang/Object;

    nop

    nop

    check-cast v6, Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    nop

    nop

    nop

    nop

    if-nez v6, :cond_3

    nop

    new-instance v6, Ljava/util/LinkedList;

    nop

    nop

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    iget-object v7, v5, Lrkg;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v7, Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {v7, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_d

    nop

    nop

    nop

    nop

    :cond_3
    iget-object v6, v5, Lrkg;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v6, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    move-object v6, v3

    nop

    check-cast v6, Ljava/util/Queue;

    nop

    :goto_d
    invoke-interface {v6, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    iget v1, v5, Lrkg;->a:I

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Lrkg;->b()V

    add-int/lit8 v1, v1, 0x1

    nop

    nop

    iput v1, v5, Lrkg;->a:I

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v1, v5, Lrkg;->a:I

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    if-le v1, v3, :cond_6

    nop

    iget-object v1, v5, Lrkg;->d:Ljava/lang/Object;

    nop

    nop

    check-cast v1, Ljava/util/LinkedList;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v5, Lrkg;->d:Ljava/lang/Object;

    nop

    nop

    check-cast v1, Ljava/util/LinkedList;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    if-nez v1, :cond_4

    nop

    goto :goto_f

    nop

    :cond_4
    iget-object v3, v5, Lrkg;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    check-cast v3, Ljava/util/Queue;

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v3}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    nop

    if-eqz v3, :cond_5

    nop

    nop

    nop

    iget-object v3, v5, Lrkg;->b:Ljava/lang/Object;

    nop

    check-cast v3, Ljava/util/HashMap;

    nop

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    iget v1, v5, Lrkg;->a:I

    nop

    invoke-static {}, Lrkg;->b()V

    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    iput v1, v5, Lrkg;->a:I

    nop

    nop

    nop

    nop

    goto :goto_e

    nop

    :cond_6
    :goto_f
    iget v1, v5, Lrkg;->a:I

    nop

    nop

    nop

    if-ltz v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v5, Lrkg;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/util/LinkedList;

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_7

    nop

    nop

    nop

    nop

    nop

    iget v1, v5, Lrkg;->a:I

    nop

    nop

    if-nez v1, :cond_1

    nop

    nop

    :cond_7
    monitor-exit v2

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    monitor-exit v4

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x1e

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

    :goto_11
    iget-object v0, p0, Llrl;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method
