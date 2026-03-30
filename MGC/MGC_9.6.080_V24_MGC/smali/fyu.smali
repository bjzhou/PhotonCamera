.class public final Lfyu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfxy;


# instance fields
.field public a:Z

.field public final b:Lfyv;

.field private c:J

.field private d:Ljava/util/concurrent/ScheduledFuture;

.field private e:Ljava/util/concurrent/ScheduledExecutorService;

.field private f:Lpog;

.field private final g:Landroid/content/res/Resources;

.field private final h:Lfxo;

.field private final i:Loyd;

.field private final j:Loyd;

.field private final k:Loyd;

.field private final l:Loyd;

.field private m:Lfyb;

.field private n:Lfyc;

.field private final o:Lmjv;

.field private final p:Lhoh;

.field private final q:Lmhz;


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m()Z
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    move v0, v2

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    const v0, 0x17

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ne v1, v2, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    :goto_6
    const v1, 0x1c

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

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-ne p0, v1, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return v0

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p0}, Lfyb;->c()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    iget-object p0, p0, Lfyu;->m:Lfyb;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    if-nez p0, :cond_3

    nop

    goto/32 :goto_1

    nop

    :cond_3
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_1

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {p0}, Lfyb;->c()I

    move-result v1

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

    :goto_16
    return v2

    nop

    nop

    :goto_17
    goto/32 :goto_0

    nop

    nop

    :goto_18
    const/4 v0, 0x0

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
.end method

.method private final declared-synchronized 19e596a3e324281407eb5c11093c0152m(J)Ljava/util/concurrent/ScheduledFuture;
    .locals 3

    goto/32 :goto_a

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lfyu;->e:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    if-nez v0, :cond_0

    nop

    nop

    nop

    const-string v0, "scn-dist"

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lolx;->bf(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    nop

    nop

    iput-object v0, p0, Lfyu;->e:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v0, p0, Lfyu;->e:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    new-instance v1, Lfxf;

    nop

    nop

    const/4 v2, 0x6

    nop

    invoke-direct {v1, p0, v2}, Lfxf;-><init>(Ljava/lang/Object;I)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_b

    nop

    nop

    :goto_7
    return-object p1

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1a

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

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

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop
.end method

.method public constructor <init>(Lmhz;Lfyv;Landroid/content/res/Resources;Lmjv;Loyd;Loyd;Loyd;Loyd;Lhoh;)V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x17

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1}, Lfxo;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lfyu;->q:Lmhz;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lfyu;->m:Lfyb;

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

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_6
    new-instance p1, Lfxo;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    iput-object p3, p0, Lfyu;->g:Landroid/content/res/Resources;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p6, p0, Lfyu;->j:Loyd;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_9
    iput-object p4, p0, Lfyu;->o:Lmjv;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    iput-wide v0, p0, Lfyu;->c:J

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    iput-object p2, p0, Lfyu;->b:Lfyv;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p8, p0, Lfyu;->l:Loyd;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    const-wide/16 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p9, p0, Lfyu;->p:Lhoh;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Lfyu;->h:Lfxo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_14
    const v0, 0x1c

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p7, p0, Lfyu;->k:Loyd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p5, p0, Lfyu;->i:Loyd;

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
.end method


# virtual methods
.method public final a(Lpro;)V
    .locals 4

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lsjl;->a:Lsjl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    :cond_0
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-ne v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_5b

    nop

    :cond_1
    :goto_3
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v1}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x2

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_8
    sget-object v2, Lhmq;->a:Ljava/lang/Float;

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_b
    sget-object v1, Lmmo;->a:Lmmo;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_25

    nop

    nop

    :goto_d
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5a

    nop

    nop

    :goto_10
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lfyu;->f:Lpog;

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v1}, Lhoh;->p(Lhmn;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Lfyu;->d:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p1, p0, Lfyu;->m:Lfyb;

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

    :goto_15
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-ltz p1, :cond_2

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

    :cond_2
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_3
    goto/32 :goto_55

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lfyu;->o:Lmjv;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_1d
    cmp-long p1, v0, v2

    nop

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

    :goto_1e
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_4
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, v1}, Lmmo;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_21
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_23
    iput v2, v1, Lsjl;->b:I

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v1, Lhmq;->bF:Lhmn;

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

    :goto_27
    iget-object v1, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_28
    if-nez p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_53

    nop

    nop

    :goto_2a
    cmpg-float v0, v0, v1

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0}, Lfyv;->c()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_2c
    const v2, 0x7f140056

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_2d
    sget-object v1, Lpog;->a:Lpog;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Lfyu;->c()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2f
    check-cast v0, Ljava/lang/Integer;

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

    :goto_30
    goto/16 :goto_5b

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_32
    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const-wide/16 v2, 0x7d0

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

    :goto_34
    invoke-direct {p0}, Lfyu;->1478a1c7833aac5e360e0ba4b0c0c568m()Z

    move-result p1

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_36
    iput v2, v1, Lsjl;->c:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v0, v0, Lmhz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_38
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_39
    cmpl-float v1, v1, v2

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_3a
    sget-object v0, Lskc;->B:Lskc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_9d

    nop

    nop

    :goto_3c
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3d
    if-nez p0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :cond_7
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    sget-object p1, Lskd;->a:Lskd;

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_3f
    iget-object v0, p0, Lfyu;->l:Loyd;

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iput v0, v1, Lskd;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_41
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p1, p0, Lfyu;->n:Lfyc;

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_43
    sget-object v0, Lnyl;->a:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_44
    iget-object p0, p0, Lfyu;->d:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_45
    return-void

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0}, Ltkb;->o()V

    :goto_48
    goto/32 :goto_52

    nop

    nop

    :goto_49
    invoke-virtual {p0}, Lfyu;->c()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p1}, Ltkb;->o()V

    :goto_4c
    goto/32 :goto_89

    nop

    nop

    :goto_4d
    iget v2, v1, Lsjl;->b:I

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-wide v2, p0, Lfyu;->c:J

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_51
    check-cast v0, Lmmo;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_53
    iput-object v0, v1, Lskd;->F:Lsjl;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_54
    check-cast v0, Lsjl;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_56
    iget-object v0, p0, Lfyu;->q:Lmhz;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_57
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget v0, v1, Lskd;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_59
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_5a
    invoke-virtual {p0}, Lfyu;->g()V

    :goto_5b
    goto/32 :goto_9c

    nop

    nop

    :goto_5c
    if-eqz v1, :cond_8

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_5d
    sget-object v2, Lfxm;->a:Lfsh;

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_5e
    if-nez v0, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v0, v1}, Lmmn;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    check-cast v1, Lsjl;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_62
    sget-object p1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_63
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_64
    if-gez v1, :cond_a

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iput-wide v0, p0, Lfyu;->c:J

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v0}, Ltkb;->i()Ltkg;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_67
    sub-long/2addr v0, v2

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    check-cast v1, Lskd;

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_69
    if-nez p1, :cond_b

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    if-nez p1, :cond_c

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

    :cond_c
    goto/32 :goto_62

    nop

    nop

    :goto_6b
    if-lez v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_d
    goto/32 :goto_9a

    nop

    nop

    :goto_6c
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_6d
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget v0, v0, Lskc;->aG:I

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_6f
    if-lez v0, :cond_e

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_3b

    nop

    :goto_70
    iget-object v0, p0, Lfyu;->b:Lfyv;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iget-object v1, p0, Lfyu;->g:Landroid/content/res/Resources;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_72
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_73
    if-nez v0, :cond_f

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_2e

    nop

    nop

    :goto_74
    invoke-static {v1, v1, v2, v3, v0}, Lfxm;->a(Ljava/lang/String;Ljava/lang/String;Lfsh;ZI)Lokp;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_75
    check-cast v1, Lskd;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    const v0, 0x9

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_77
    check-cast v0, Lmmn;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_78
    check-cast v0, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_79
    iget-object v0, p0, Lfyu;->p:Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_7a
    iget-object v1, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object v1, p1, Ltkb;->b:Ltkg;

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    or-int/lit8 v0, v0, 0x8

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_7e
    if-eqz p1, :cond_10

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget-object v1, p0, Lfyu;->k:Loyd;

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

    nop

    nop

    :goto_81
    iput v0, v1, Lskd;->b:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_82
    sub-long/2addr v2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_83
    if-eqz v1, :cond_11

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_8f

    nop

    nop

    :goto_84
    sget-object v1, Lmmn;->a:Lmmn;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_85
    iget v0, v1, Lskd;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-direct {p0, v2, v3}, Lfyu;->19e596a3e324281407eb5c11093c0152m(J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_87
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v1, p1, Ltkb;->b:Ltkg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_8a
    or-int/2addr v2, v3

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_8c
    invoke-virtual {p1, v0}, Lfyc;->a(Lokp;)Lfyb;

    move-result-object p1

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

    nop

    :goto_8d
    iget-object v1, v0, Ltkb;->b:Ltkg;

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v0}, Ltkg;->m()Ltkb;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p1}, Ltkb;->o()V

    :goto_90
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {p0, p1}, Lmjv;->J(Ltkb;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_92
    iget-boolean v0, p0, Lfyu;->a:Z

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_94
    if-nez v0, :cond_12

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_95
    iput v0, v1, Lskd;->c:I

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_96
    const/4 v0, 0x4

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_98
    if-eqz v0, :cond_13

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_99
    iget-object v0, p0, Lfyu;->i:Loyd;

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iget-object v0, p0, Lfyu;->j:Loyd;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    return-void

    nop

    nop

    :goto_9d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-interface {p1}, Lfyb;->c()I

    move-result p1

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_9f
    if-nez p1, :cond_14

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    if-eqz v1, :cond_15

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {p0}, Lfyu;->c()V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    if-ne p1, v0, :cond_16

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :cond_16
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_a3
    if-nez v0, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    if-nez v0, :cond_18

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_92

    nop

    nop

    :goto_a5
    or-int/2addr v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {p1}, Ltkg;->m()Ltkb;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_a7
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v1}, Ltkg;->C()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop
.end method

.method public final b()Lfxw;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    iget-object p0, p0, Lfyu;->b:Lfyv;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c()V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_8
    throw v0

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0}, Lfyu;->g()V

    iget-object v0, p0, Lfyu;->e:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    iput-object v1, p0, Lfyu;->e:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    :cond_1
    iput-object v1, p0, Lfyu;->d:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x15

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

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Lpnx;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(Lpnu;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Lpnu;->l()Lpog;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lfyu;->f:Lpog;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lfyu;->g()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final f(Lfyc;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lfyu;->n:Lfyc;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-object p1, p0, Lfyu;->m:Lfyb;

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lfyu;->h:Lfxo;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final g()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lfyu;->m:Lfyb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lfyu;->1478a1c7833aac5e360e0ba4b0c0c568m()Z

    move-result p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-interface {v0}, Lfyb;->a()V

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_5

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop
.end method
