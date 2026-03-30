.class public final Lqcz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lran;


# instance fields
.field public final a:Lpwr;

.field private final b:Landroid/content/Context;

.field private final c:Lqbr;

.field private final d:Ljava/util/concurrent/atomic/AtomicLong;

.field private final e:Ljava/util/concurrent/atomic/AtomicLong;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lqbr;Lpwr;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_a

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lqcz;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lqcz;->c:Lqbr;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_7
    iput-object v0, p0, Lqcz;->e:Ljava/util/concurrent/atomic/AtomicLong;

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

    :goto_8
    iput-object p3, p0, Lqcz;->a:Lpwr;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lqcz;->d:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(I)V
    .locals 5

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    iget-object p1, p1, Lpwr;->c:Lpww;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4
    int-to-long v3, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    sget-object p1, Lpww;->a:Lpww;

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const-string v0, "NetworkUsageMonitor"

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-object v1, v2

    nop

    :goto_b
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_b

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_25

    nop

    nop

    :goto_d
    if-eqz v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lqcz;->e:Ljava/util/concurrent/atomic/AtomicLong;

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

    :goto_12
    iget-object p1, p0, Lqcz;->d:Ljava/util/concurrent/atomic/AtomicLong;

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

    :goto_13
    iget-object p1, p0, Lqcz;->e:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_1e

    nop

    :goto_15
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_18
    if-ne p1, v0, :cond_1

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1a
    if-ne p1, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-static {p1, v0}, Lqbq;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 v0, 0x9

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_6

    nop

    nop

    :goto_22
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_23
    iget-object v1, p0, Lqcz;->b:Landroid/content/Context;

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_24
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_25
    const-string v1, "%s: Couldn\'t retrieve ConnectivityManager."

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_26
    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    goto/32 :goto_1d

    nop

    nop

    :goto_27
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_21

    nop

    :goto_28
    if-ne p1, v0, :cond_4

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_29
    sget p0, Lqbq;->a:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    :goto_2b
    invoke-virtual {p1, v3, v4}, Ljava/util/concurrent/atomic/AtomicLong;->getAndAdd(J)J

    :goto_2c
    goto/32 :goto_37

    nop

    nop

    :goto_2d
    const/16 v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->getType()I

    move-result p1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

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

    :goto_31
    const-string p1, "%s: Fail to get network type "

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_32
    invoke-static {v1, v0}, Lqbq;->d(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object p1, p0, Lqcz;->d:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p1, p1, Lpww;->c:Ljava/lang/String;

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

    :goto_35
    const/4 v2, 0x0

    nop

    :try_start_0
    const-string v3, "connectivity"

    nop

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Landroid/net/ConnectivityManager;

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_36
    if-eqz p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_37
    iget-object p1, p0, Lqcz;->a:Lpwr;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 7

    goto/32 :goto_11

    nop

    nop

    :goto_0
    or-int/lit8 v6, v6, 0x10

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1
    iget-object v0, v1, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v1, p0, v2}, Lgng;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_20

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    :goto_5
    invoke-virtual {v1}, Ltkb;->i()Ltkg;

    move-result-object v1

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

    :goto_6
    iget-object v0, p0, Lqcz;->e:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lqcz;->c:Lqbr;

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

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_a
    check-cast v1, Lpwr;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v6, Lpwr;->a:Lpwr;

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

    :goto_c
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v2, 0x12

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

    :goto_e
    iget-object v4, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_f
    const v1, 0xa

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x5

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

    nop

    :goto_11
    const v0, 0x12

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    const-wide/16 v2, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_14
    iget-object v0, v1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v5, v4, Lpwr;->b:I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1}, Ltkg;->D(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_17
    iget-object v0, v1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0}, Ltkg;->C()Z

    move-result v0

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

    :goto_19
    check-cast v4, Lpwr;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1a
    iget v6, v0, Lpwr;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v1, Lgng;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lqcz;->a:Lpwr;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J

    move-result-wide v4

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

    :goto_1f
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_20
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_22
    iput-wide v2, v4, Lpwr;->h:J

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

    :goto_23
    iput-wide v4, v0, Lpwr;->g:J

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_24
    or-int/lit8 v5, v5, 0x20

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_25
    invoke-static {v0, v1, p0}, Lqrf;->s(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_26
    check-cast v1, Ltkb;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_28
    invoke-interface {v0, v1}, Lqbr;->d(Lpwr;)Lsui;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_29
    check-cast v0, Lpwr;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1, v0}, Ltkb;->r(Ltkg;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2d
    iput v6, v0, Lpwr;->b:I

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2e
    iput v5, v4, Lpwr;->b:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

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

    :goto_30
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_2
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1}, Ltkb;->o()V

    :goto_32
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Lqcz;->d:Ljava/util/concurrent/atomic/AtomicLong;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method
