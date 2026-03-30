.class public final Lquo;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicReference;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private volatile c:Lohe;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

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

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_8
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x17

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Lquo;->a:Ljava/util/concurrent/atomic/AtomicReference;

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

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    :goto_10
    const v0, 0x3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Lquo;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

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
.end method


# virtual methods
.method public final a(Landroid/content/Context;ZZ)Lsui;
    .locals 4

    goto/32 :goto_1a

    nop

    nop

    :goto_0
    iput p1, v3, Loje;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-class p3, Ljava/lang/Throwable;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p3, Lolo;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4
    iput-object p3, v3, Loje;->b:Lojf;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, v3, Loje;->d:[Logb;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_6
    iget-object p2, p0, Lquo;->c:Lohe;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_7
    iget-object p2, p0, Lquo;->a:Ljava/util/concurrent/atomic/AtomicReference;

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_8
    invoke-static {p0}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    sget-object p3, Lorg;->a:Logb;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_b
    throw p1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p2, p0, p3}, Lqby;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x16

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_f
    invoke-static {p1, p3, v1}, Lolx;->at(Ljava/lang/Object;Landroid/os/Looper;Ljava/lang/String;)Loiz;

    move-result-object p1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p1, p0}, Lqun;-><init>(Lquo;)V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_11
    new-instance p1, Lqun;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    check-cast p2, Ljava/lang/Boolean;

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_13
    new-instance v3, Loje;

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_14
    invoke-direct {p3, p2, v3}, Lolo;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p1}, Lpuq;->s(Loqy;)Lsui;

    move-result-object p1

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_16
    invoke-static {p0, p3, p1, p2}, Lsrv;->i(Lsui;Ljava/lang/Class;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_17
    const-class v1, Lorq;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_1
    goto/32 :goto_24

    nop

    :goto_19
    iget-object p3, p3, Loro;->b:Lort;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object p2, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1c
    iget-object p1, p0, Lquo;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_1d
    new-instance v1, Lorh;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1e
    const/4 p3, 0x7

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_20
    invoke-static {p1, p0, p2}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {p2}, Lrpl;->a(Lrsk;)Lrsk;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_22
    goto/32 :goto_25

    nop

    nop

    :goto_23
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_34

    nop

    nop

    :goto_25
    goto/32 :goto_46

    nop

    nop

    :goto_26
    const/4 v3, 0x4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_27
    invoke-direct {v1, p2, p1, p3, v2}, Lorh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/16 p2, 0xa

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p2, p1}, Lohe;->k(Lhon;)Loqy;

    :goto_2a
    goto/32 :goto_2e

    nop

    nop

    :goto_2b
    if-eqz p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance p2, Lqby;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2d
    new-instance p1, Lqkq;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p2}, Lohe;->g()Loqy;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2f
    const/16 p1, 0x119b

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_30
    iget-object p3, p2, Lohe;->f:Landroid/os/Looper;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_31
    iget-object p3, p2, Lohe;->d:Logy;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v3}, Loje;->a()Lhon;

    move-result-object p1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_33
    return-object p0

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result p1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_36
    new-array p1, v0, [Logb;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v2, 0x0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    return-object p0

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iput-object v1, v3, Loje;->a:Lojf;

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

    :goto_3b
    check-cast p3, Loro;

    nop

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

    :goto_3c
    iput-object p1, v3, Loje;->c:Loiz;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-eqz p2, :cond_3

    nop

    goto/32 :goto_39

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {p2}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-eqz p2, :cond_4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_45

    nop

    nop

    :goto_40
    invoke-direct {v3}, Loje;-><init>()V

    goto/32 :goto_3a

    nop

    nop

    :goto_41
    sget-object p2, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_42
    return-object p0

    nop

    nop

    :goto_43
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    add-int v0, v0, v1

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_45
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object p2, p0, Lquo;->c:Lohe;

    nop

    if-nez p2, :cond_5

    nop

    nop

    nop

    nop

    nop

    new-instance p2, Lohe;

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Loro;

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Loro;-><init>()V

    invoke-direct {p2, p1, v1}, Lohe;-><init>(Landroid/content/Context;Loro;)V

    iput-object p2, p0, Lquo;->c:Lohe;

    nop

    nop

    nop

    nop

    :cond_5
    monitor-exit p0

    nop

    goto/16 :goto_c

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    monitor-exit p0

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

    :goto_46
    const/4 v0, 0x1

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_47
    invoke-direct {p1, p2}, Lqkq;-><init>(I)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_48
    if-eqz p1, :cond_6

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_49
    invoke-static {p1}, Lsub;->q(Lsui;)Lsub;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_4a
    aput-object p3, p1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop
.end method
