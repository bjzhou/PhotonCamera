.class public final Lecw;
.super Lecx;
.source "PG"


# instance fields
.field public volatile a:Lecv;

.field public volatile b:Lecv;

.field public c:Ljava/util/List;

.field private k:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Lecx;-><init>(Landroid/content/Context;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

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


# virtual methods
.method public final a()V
    .locals 4

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    :goto_2
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lecw;->a:Lecv;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-boolean v0, v0, Lecv;->a:Z

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    :goto_7
    iget-object v0, p0, Lecw;->k:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_8
    if-ne v1, v3, :cond_2

    nop

    goto/32 :goto_2f

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 v0, p0, -0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lecw;->a:Lecv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    iget-object v0, v0, Lecz;->c:Ljava/util/concurrent/FutureTask;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget p0, v0, Lecz;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lecw;->k:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    goto/32 :goto_1c

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

    :goto_12
    goto/32 :goto_29

    nop

    nop

    :goto_13
    const v1, 0x8

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_4

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lecw;->k:Ljava/util/concurrent/Executor;

    nop

    nop

    :goto_16
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-ne v0, v2, :cond_5

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_19
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v1, v0, Lecz;->f:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v0, "Cannot execute task: the task has already been executed (a task can be executed only once)"

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1e
    iput v2, v0, Lecz;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    :goto_20
    goto/32 :goto_32

    nop

    nop

    :goto_21
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_2d

    nop

    nop

    :goto_23
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lecw;->a:Lecv;

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

    nop

    :goto_25
    add-int v0, v0, v1

    nop

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

    :goto_26
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2a
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v0, 0x15

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

    :goto_2c
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lecw;->b:Lecv;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    throw p0

    nop

    :goto_2f
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_30
    if-ne v0, v3, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_17

    nop

    nop

    :goto_31
    if-eqz v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_7
    goto/32 :goto_2a

    nop

    nop

    :goto_32
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const-string v0, "We should never reach this state"

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_35
    const-string v0, "Cannot execute task: the task is already running."

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop
.end method

.method public final b(Ljava/util/List;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1
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

    :goto_2
    invoke-static {v0}, Lecq;->b(I)Z

    move-result v0

    nop

    goto/32 :goto_5

    nop

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

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    :goto_7
    iget-object p0, p0, Lecx;->j:Lecr;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Lebf;->h(Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Lecw;->c:Ljava/util/List;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, p1}, Lebf;->i(Ljava/lang/Object;)V

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_13
    if-eq v0, v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    :goto_14
    invoke-static {p0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :goto_15
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_19
    const v1, 0x11

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
.end method

.method final c(Lecv;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-object p1, p0, Lecw;->b:Lecv;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lecw;->b:Lecv;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    if-eq v0, p1, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lecw;->a()V

    :goto_6
    goto/32 :goto_7

    nop

    nop

    :goto_7
    return-void

    nop

    nop
.end method

.method public final d()V
    .locals 3

    goto/32 :goto_21

    nop

    nop

    :goto_0
    iget-object v0, p0, Lecw;->a:Lecv;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    :goto_3
    iput-object v0, p0, Lecw;->a:Lecv;

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lecw;->a:Lecv;

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

    :goto_6
    invoke-virtual {v0, v1}, Ljava/util/concurrent/FutureTask;->cancel(Z)Z

    move-result v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    iget-boolean v0, v0, Lecv;->a:Z

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

    :goto_9
    iget-object v0, p0, Lecw;->a:Lecv;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-boolean v0, v0, Lecv;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    iget-object v0, v0, Lecz;->c:Ljava/util/concurrent/FutureTask;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v0, p0, Lecw;->b:Lecv;

    nop

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lecw;->a:Lecv;

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

    :goto_15
    const/4 v0, 0x0

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

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lecw;->b:Lecv;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_18
    iput-boolean v1, p0, Lecx;->i:Z

    nop

    nop

    :goto_19
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1a
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_3
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1b
    const v1, 0xe

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lecw;->a:Lecv;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x1

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

    :goto_1f
    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v2, v0, Lecz;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-boolean v0, p0, Lecx;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_0

    nop

    nop

    nop
.end method
