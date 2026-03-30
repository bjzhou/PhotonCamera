.class abstract Lsug;
.super Ljava/util/concurrent/atomic/AtomicReference;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static final a:Ljava/lang/Runnable;

.field private static final b:Ljava/lang/Runnable;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m(Ljava/lang/Thread;)V
    .locals 7

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Ljava/lang/Thread;->interrupted()Z

    move-result v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lsug;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_4
    move-object v1, v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0, v6}, Lsug;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_22

    nop

    :goto_7
    sget-object v5, Lsug;->b:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lsug;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v2, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_c
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_23

    nop

    :goto_10
    sget-object v6, Lsug;->b:Ljava/lang/Runnable;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    :goto_13
    const/16 v6, 0x3e8

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_31

    nop

    nop

    :goto_15
    goto/32 :goto_38

    nop

    nop

    :goto_16
    instance-of v5, v0, Lsuf;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_18
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    move v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Ljava/lang/Thread;->interrupt()V

    :goto_1b
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1c
    if-ne v0, v6, :cond_3

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0x9

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v1, Lsuf;

    nop

    :goto_1f
    goto/32 :goto_17

    nop

    nop

    :goto_20
    check-cast v0, Ljava/lang/Runnable;

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

    :goto_21
    if-eqz v5, :cond_4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move v4, v3

    nop

    :goto_25
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-gt v4, v6, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int/2addr v4, v5

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_28
    if-eq v0, v5, :cond_6

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto :goto_1f

    nop

    :goto_2b
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_2c
    invoke-static {}, Ljava/lang/Thread;->yield()V

    :goto_2d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_7
    :goto_2f
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_30
    goto :goto_35

    nop

    nop

    :goto_31
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

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

    nop

    :goto_33
    check-cast v0, Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move v3, v5

    nop

    nop

    :goto_35
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_36
    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->park(Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v3, :cond_8

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_38
    move v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lsug;->a:Ljava/lang/Runnable;

    nop

    nop

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

    :goto_1
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_4
    invoke-direct {v0, v1}, Lngq;-><init>(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 v1, 0x12

    nop

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

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lngq;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, v1}, Lngq;-><init>(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    sput-object v0, Lsug;->b:Ljava/lang/Runnable;

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

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    const v0, 0x2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    new-instance v0, Lngq;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method


# virtual methods
.method public abstract a()Ljava/lang/Object;
.end method

.method public abstract b()Ljava/lang/String;
.end method

.method public abstract d(Ljava/lang/Throwable;)V
.end method

.method public abstract e(Ljava/lang/Object;)V
.end method

.method public abstract g()Z
.end method

.method final h()V
    .locals 3

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :catchall_0
    move-exception v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0, v1}, Lsug;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Lsug;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-static {v1}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p0, Ljava/lang/Runnable;

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

    :goto_6
    new-instance v1, Lsuf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-ne p0, v2, :cond_0

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v2, Lsug;->b:Ljava/lang/Runnable;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Ljava/util/concurrent/locks/LockSupport;->unpark(Ljava/lang/Thread;)V

    :goto_c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v0, Lsug;->b:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    check-cast v0, Ljava/lang/Thread;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    check-cast p0, Ljava/lang/Runnable;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_10
    sget-object v2, Lsug;->a:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_11
    sget-object v0, Lsug;->a:Ljava/lang/Runnable;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    goto :goto_c

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    :goto_14
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_17
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_2
    :try_start_0
    move-object v1, v0

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/lang/Thread;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_11

    nop

    nop

    :goto_18
    if-eq p0, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_19
    throw v1

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    instance-of v1, v0, Ljava/lang/Thread;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v2}, Lsuf;->a(Ljava/lang/Thread;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v1, p0}, Lsuf;-><init>(Lsug;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1e
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1f
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lsug;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v0, Ljava/lang/Runnable;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, v2}, Lsug;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop
.end method

.method public final run()V
    .locals 4

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0, v1}, Lsug;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_4
    invoke-direct {p0, v0}, Lsug;->33f5b80483094659737b73d90f80a8a4m(Ljava/lang/Thread;)V

    :goto_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, v0}, Lsug;->33f5b80483094659737b73d90f80a8a4m(Ljava/lang/Thread;)V

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v1}, Lsug;->e(Ljava/lang/Object;)V

    :goto_9
    goto/32 :goto_23

    nop

    nop

    :goto_a
    if-nez v3, :cond_0

    nop

    goto/32 :goto_26

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

    :goto_b
    if-eqz v2, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw v2

    nop

    :goto_e
    goto/32 :goto_1b

    nop

    nop

    :goto_f
    sget-object v1, Lsug;->a:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    sget-object v3, Lsug;->a:Ljava/lang/Runnable;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v2}, Lsug;->d(Ljava/lang/Throwable;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v3, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    :goto_14
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0, v0}, Lsug;->33f5b80483094659737b73d90f80a8a4m(Ljava/lang/Thread;)V

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_e

    nop

    nop

    nop

    :catchall_0
    move-exception v2

    nop

    nop

    :try_start_0
    invoke-static {v2}, Lsgj;->G(Ljava/lang/Throwable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v2

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v2, :cond_3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1b
    sget-object v3, Lsug;->a:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v0, v3}, Lsug;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1e
    if-eqz v1, :cond_4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_19

    nop

    nop

    :goto_21
    invoke-virtual {p0, v1}, Lsug;->e(Ljava/lang/Object;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_5
    goto/32 :goto_1f

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_5

    nop

    :goto_26
    goto/32 :goto_4

    nop

    nop

    :goto_27
    invoke-virtual {p0, v0, v3}, Lsug;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    nop

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

    :goto_28
    invoke-virtual {p0, v1, v0}, Lsug;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_29
    const v0, 0x19

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Lsug;->g()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2b
    if-eqz v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :try_start_1
    invoke-virtual {p0}, Lsug;->a()Ljava/lang/Object;

    move-result-object v1

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_17

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "running=[INTERRUPTED]"

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v1, Lsug;->a:Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Ljava/lang/Runnable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Ljava/lang/Thread;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_19

    nop

    nop

    :goto_c
    const v0, 0x19

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_f
    if-eq v0, v1, :cond_1

    nop

    goto/32 :goto_17

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    :goto_10
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lsug;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    instance-of v1, v0, Ljava/lang/Thread;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_26

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    :goto_19
    const-string v0, "]"

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-string v0, ", "

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1b
    const-string v2, "running=[RUNNING ON "

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v1, :cond_3

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_26

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    instance-of v1, v0, Lsuf;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2b

    nop

    nop

    :goto_22
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x10

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

    :goto_24
    invoke-virtual {p0}, Lsug;->b()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_25
    const-string v0, "running=[NOT STARTED YET]"

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_28
    goto :goto_26

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_12

    nop

    nop

    :goto_2a
    const-string v0, "running=[DONE]"

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

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

    :goto_2c
    rem-int v0, v0, v1

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
.end method
