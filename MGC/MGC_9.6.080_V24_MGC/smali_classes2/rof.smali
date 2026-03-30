.class public final Lrof;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicLong;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final c:Lsuu;

.field public final d:Lstx;

.field private final e:Ljava/util/concurrent/atomic/AtomicReference;

.field private final f:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lssw;Ljava/util/concurrent/Executor;)V
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v1, p0, Lrof;->d:Lstx;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1, p1, p2, v2}, Lstx;-><init>(Lssw;Ljava/util/concurrent/Executor;I)V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-static {v1, v1}, Lrof;->b(II)J

    move-result-wide v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v1, Lsut;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_b
    const/4 v1, 0x0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Lrof;->e:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_15

    nop

    nop

    :goto_e
    iput-object v0, p0, Lrof;->c:Lsuu;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Lrof;->a:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v1, Lstx;

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

    nop

    :goto_11
    const v0, 0x6

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    const/high16 v1, -0x80000000

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lrof;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_c

    nop

    nop

    :goto_17
    goto/32 :goto_1f

    nop

    nop

    :goto_18
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v0, Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v0, Lstd;->a:Lstd;

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

    :goto_1c
    invoke-virtual {v0, v1, p0}, Lsuu;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v1, v0}, Lsut;-><init>(Ljava/util/concurrent/Executor;)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_21
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v1, p0, Lrof;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop
.end method

.method public static a(J)I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    long-to-int p0, p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    ushr-long/2addr p0, v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v0, 0x20

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

    nop

    nop

    :goto_3
    return p0

    nop

    nop
.end method

.method public static b(II)J
    .locals 4

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    or-long/2addr p0, v0

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

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_3
    and-long/2addr p0, v2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_5
    int-to-long p0, p1

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

    :goto_6
    const/16 v2, 0x20

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    int-to-long v0, p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    shl-long/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    return-wide p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-wide v2, 0xffffffffL

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


# virtual methods
.method public final c()Lsui;
    .locals 7

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lrof;->e:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v1, Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v3, 0x2

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v1}, Lrpl;->b(Lssw;)Lssw;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_4
    const v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5
    iget-object v4, p0, Lrof;->a:Ljava/util/concurrent/atomic/AtomicLong;

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

    :goto_6
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    :goto_9
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v1, v5, v3, v4}, Lsrv;->j(Lsui;Ljava/lang/Class;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_28

    nop

    nop

    :goto_c
    invoke-virtual {v0, v2, p0}, Lsuu;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_6

    nop

    nop

    :goto_d
    invoke-virtual {v4, v0, v1, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->compareAndSet(JJ)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_f
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_10
    iget-object v0, p0, Lrof;->c:Lsuu;

    nop

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

    :goto_11
    new-instance v1, Lrod;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v2, p0, v0, v1}, Lroc;-><init>(Lrof;Lsuu;Lrod;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_b

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v3, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v3}, Lrpl;->c(Lssx;)Lssx;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1b
    const-class v5, Ljava/lang/Throwable;

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

    :goto_1c
    new-instance v3, Lrob;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lrof;->c:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0, v1}, Lrof;->a(J)I

    move-result v2

    nop

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

    nop

    :goto_1f
    new-instance v1, Lqcb;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_20
    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v3, p0, v2, v4}, Lrob;-><init>(Ljava/lang/Object;II)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_14

    nop

    :goto_23
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Lsuu;->isDone()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_26
    iget-object v0, p0, Lrof;->a:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_27
    invoke-static {v1, v3}, Lsgj;->T(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v1}, Lsuu;->f(Lsui;)Z

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v2, Lroc;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2b
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v1, p0, v2, v3}, Lqcb;-><init>(Ljava/lang/Object;II)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2e
    long-to-int v3, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v1, p0, v2}, Lrod;-><init>(Lrof;I)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v4, p0, Lrof;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_32
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_33
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_3
    goto/32 :goto_22

    nop

    :goto_34
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v0, Lsuu;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_36
    invoke-static {v2, v3}, Lrof;->b(II)J

    move-result-wide v5

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
.end method

.method public final d(I)Lsui;
    .locals 3

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_17

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1}, Lrof;->a(J)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0}, Lroe;->f(Lsui;)Z

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-object v0

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_a
    const/4 p1, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    invoke-virtual {v0, p1}, Lssk;->cancel(Z)Z

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lrof;->a:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {}, Lsgj;->M()Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    iget-object p1, p1, Lstx;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Lrof;->a:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p1, p0, Lrof;->d:Lstx;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_0

    nop

    goto/32 :goto_25

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_1

    nop

    goto/32 :goto_27

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    :goto_14
    iget-object v2, p0, Lrof;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_15
    iget v2, v1, Lroe;->a:I

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_16
    return-object v0

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    :goto_1a
    new-instance v0, Lroe;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v1, Lroe;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_1d
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {p0, v0, p1}, La;->aS(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v1}, Lrpl;->b(Lssw;)Lssw;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v1, v2}, Lrof;->a(J)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-object p0

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {v0, p1}, Lroe;-><init>(I)V

    :goto_25
    goto/32 :goto_36

    nop

    nop

    :goto_26
    goto/16 :goto_3b

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v1, p1, Lstx;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2a
    goto :goto_27

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p0, p0, Lrof;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2d
    if-gt v0, p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2f
    if-gt v1, p1, :cond_5

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_5
    goto/32 :goto_a

    nop

    nop

    :goto_30
    const v1, 0x1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-static {}, Lsgj;->M()Lsui;

    move-result-object p0

    nop

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

    nop

    :goto_32
    if-nez v1, :cond_6

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_23

    nop

    :goto_34
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-le v2, p1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_7
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v1, p0, Lrof;->b:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_37
    invoke-static {p0, p1}, Lsgj;->T(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v2, v1, v0}, La;->aS(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

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

    nop

    :goto_39
    iget-object p0, p0, Lrof;->c:Lsuu;

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_3a
    invoke-virtual {v0, p0}, Lroe;->f(Lsui;)Z

    :goto_3b
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method
