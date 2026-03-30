.class public final Lkxd;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkxc;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lkxb;I)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p2, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lkxd;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iput p2, p0, Lkxd;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lkxd;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public constructor <init>(Lkxe;I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput p2, p0, Lkxd;->c:I

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

    :goto_2
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lkxd;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lkxd;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 6

    goto/32 :goto_a

    nop

    nop

    :goto_0
    check-cast v0, Lkxe;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter v2

    nop

    nop

    nop

    nop

    :try_start_0
    move-object v3, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lkxb;

    nop

    nop

    iget v3, v3, Lkxb;->e:I

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v3, v1

    nop

    nop

    move-object v1, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lkxb;

    nop

    nop

    nop

    iput v3, v1, Lkxb;->e:I

    nop

    move-object v1, p0

    nop

    nop

    nop

    check-cast v1, Lkxb;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Lkxb;->d:Loyp;

    nop

    move-object v3, p0

    nop

    nop

    nop

    nop

    check-cast v3, Lkxb;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Lkxb;->a()I

    move-result v3

    nop

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    iput-object v3, v1, Loyp;->a:Ljava/lang/Object;

    nop

    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, v0, Lkxb;->d:Loyp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Loyp;->a()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lkxd;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_a
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, v0, Lkxb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_c
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

    nop

    :try_start_1
    monitor-exit v2

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v0, :cond_1

    nop

    goto/32 :goto_2a

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

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

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lkxd;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    :goto_14
    iget v0, p0, Lkxd;->c:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_15
    throw v4

    nop

    :cond_3
    :try_start_2
    throw v4

    nop

    :catchall_1
    move-exception p0

    nop

    monitor-exit v1

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, v0, Lkxb;->d:Loyp;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    :goto_1a
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lkxd;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    :goto_1f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_20
    check-cast v0, Lkxb;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_21
    iget-object v2, v0, Lkxb;->b:Ljava/lang/Object;

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

    nop

    :goto_22
    iget-object v0, v0, Lkxe;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_23
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    move-object v1, p0

    nop

    nop

    nop

    check-cast v1, Loxv;

    nop

    nop

    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    add-int/lit8 v1, v1, -0x1

    nop

    nop

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    check-cast p0, Loxv;

    nop

    nop

    invoke-virtual {p0, v1}, Loxv;->a(Ljava/lang/Object;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-void

    nop

    :catchall_2
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_24
    monitor-enter v1

    nop

    nop

    :try_start_4
    move-object v2, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lkxb;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lkxb;->c:Ljava/util/LinkedList;

    nop

    nop

    invoke-virtual {v2}, Ljava/util/LinkedList;->peekFirst()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    check-cast v2, Lscn;

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_5

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    return-void

    nop

    :cond_5
    move-object v3, p0

    nop

    nop

    nop

    check-cast v3, Lkxb;

    nop

    nop

    nop

    nop

    nop

    iget-boolean v3, v3, Lkxb;->f:Z

    nop

    nop

    const/4 v4, 0x0

    nop

    if-eqz v3, :cond_3

    nop

    new-instance v3, Lkxf;

    nop

    const-string v5, "FiniteTicketPool is closed."

    nop

    nop

    nop

    nop

    invoke-direct {v3, v5}, Lkxf;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Lscn;->a:Ljava/lang/Object;

    nop

    move-object v2, p0

    nop

    check-cast v2, Lkxb;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lkxb;->c:Ljava/util/LinkedList;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-object v2, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lkxb;

    nop

    iget-object v2, v2, Lkxb;->d:Loyp;

    nop

    nop

    nop

    nop

    check-cast p0, Lkxb;

    nop

    nop

    invoke-virtual {p0}, Lkxb;->a()I

    move-result p0

    nop

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    iput-object p0, v2, Loyp;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_16

    nop

    nop

    :goto_25
    move-object v0, p0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Lkxd;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Loyp;->a()V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_29
    throw p0

    nop

    :goto_2a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop
.end method
