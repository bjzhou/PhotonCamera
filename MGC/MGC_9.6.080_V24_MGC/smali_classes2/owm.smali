.class public final Lowm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lggp;Lows;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lowm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

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
    iput p3, p0, Lowm;->b:I

    nop

    nop

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

    nop

    nop

    :goto_4
    iput-object p2, p0, Lowm;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lown;I)V
    .locals 0

    goto/32 :goto_6

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

    :goto_1
    const/4 p2, 0x0

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lowm;->a:Ljava/lang/Object;

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

    nop

    :goto_5
    iput-object p1, p0, Lowm;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    iput p2, p0, Lowm;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 5

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v3, v0, Lown;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Lggp;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_8
    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_7

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

    :catchall_0
    move-exception p0

    nop

    :try_start_0
    monitor-exit v3

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_24

    nop

    nop

    :goto_b
    if-nez v1, :cond_1

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

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lowm;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lowm;->c:Ljava/lang/Object;

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

    nop

    :goto_11
    invoke-interface {p0}, Lpci;->close()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    :goto_13
    iget-object v0, v0, Lown;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    iget-object p0, v0, Lown;->a:Lpci;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_16
    monitor-enter v0

    nop

    nop

    nop

    :try_start_1
    iget-object v2, p0, Lowm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    move-object v3, v2

    nop

    nop

    nop

    nop

    check-cast v3, Lown;

    nop

    nop

    nop

    nop

    iget v3, v3, Lown;->b:I

    nop

    nop

    nop

    nop

    add-int/lit8 v3, v3, -0x1

    nop

    check-cast v2, Lown;

    nop

    nop

    nop

    nop

    nop

    iput v3, v2, Lown;->b:I

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    if-ltz v3, :cond_3

    nop

    move v3, v1

    nop

    nop

    nop

    goto :goto_17

    nop

    nop

    nop

    :cond_3
    move v3, v2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v4, "The number of handles should never be negative."

    nop

    nop

    nop

    invoke-static {v3, v4}, Lrrf;->m(ZLjava/lang/Object;)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_20

    nop

    nop

    :goto_1a
    goto/32 :goto_1b

    nop

    nop

    :goto_1b
    iget v0, p0, Lowm;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1c
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lowm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v0, Lown;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v0, Lown;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_22
    monitor-enter v0

    nop

    :try_start_2
    iget-object p0, p0, Lowm;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast p0, Lows;

    nop

    invoke-virtual {p0}, Lows;->close()V

    monitor-exit v0

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_23
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_24
    throw p0

    nop

    :catchall_2
    move-exception p0

    nop

    :try_start_3
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lowm;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_26
    iget-object v0, v0, Lggp;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_27
    monitor-enter v3

    nop

    nop

    :try_start_4
    move-object v4, p0

    nop

    nop

    nop

    check-cast v4, Lown;

    nop

    nop

    iget-boolean v4, v4, Lown;->f:Z

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_5

    nop

    monitor-exit v3

    nop

    nop

    return-void

    nop

    nop

    :cond_5
    move-object v4, p0

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Lown;

    nop

    nop

    nop

    nop

    iget v4, v4, Lown;->b:I

    nop

    if-nez v4, :cond_7

    nop

    nop

    nop

    nop

    move-object v4, p0

    nop

    check-cast v4, Lown;

    nop

    iget-object v4, v4, Lown;->c:Loxi;

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_6

    nop

    nop

    nop

    nop

    check-cast p0, Lown;

    nop

    nop

    nop

    iget-object p0, p0, Lown;->e:Ljava/lang/Runnable;

    nop

    nop

    nop

    invoke-virtual {v4, p0}, Loxi;->b(Ljava/lang/Runnable;)V

    goto :goto_28

    nop

    nop

    nop

    nop

    :cond_6
    check-cast p0, Lown;

    nop

    nop

    nop

    iput-boolean v1, p0, Lown;->f:Z

    nop

    nop

    nop

    goto :goto_29

    nop

    nop

    nop

    nop

    :cond_7
    :goto_28
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_29
    monitor-exit v3

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method
