.class public final Lcom/google/android/libraries/performance/primes/transmitter/LifeboatReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    const-string p1, "Unable to parse the payload of MetricSnapshot."

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_3
    const-string v2, "Transmitters"

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lt v6, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    :goto_7
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_b
    invoke-interface {p1, p2, p0}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    goto/32 :goto_17

    nop

    :goto_e
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    invoke-static {}, Ltjv;->a()Ltjv;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    sget-object v4, Lquj;->a:Lquj;

    nop

    array-length v5, v1

    nop

    const/4 v6, 0x0

    nop

    invoke-static {v4, v1, v6, v5, v3}, Ltkg;->q(Ltkg;[BIILtjv;)Ltkg;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ltkg;->E(Ltkg;)V

    check-cast v1, Lquj;

    nop

    nop
    :try_end_0
    .catch Ltky; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_13
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_32

    nop

    :goto_17
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

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

    nop

    :goto_19
    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v2, :cond_3

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

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1b
    add-int/lit8 v6, v6, 0x1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    aget-object v3, p2, v6

    nop

    :try_start_1
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    invoke-virtual {v4, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    check-cast v4, Lquk;

    nop

    invoke-interface {v4, p1, v1}, Lquk;->a(Landroid/content/Context;Lquj;)Lsui;

    move-result-object v4

    nop

    nop

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1f
    goto/32 :goto_2e

    nop

    nop

    :goto_20
    const-string v0, "PrimesLifeboatReceiver"

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

    :goto_21
    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p2, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_23
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v1, "MetricSnapshot"

    nop

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

    :goto_26
    const-string v5, "Unable to transmit the crash using %s."

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

    :goto_27
    new-instance p2, Lqlc;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_28
    array-length v3, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_29
    invoke-direct {p2, p0, v0}, Lqlc;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_5

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v4

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_2b
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {v2}, Lsgj;->U(Ljava/lang/Iterable;)Lsui;

    move-result-object p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Lcom/google/android/libraries/performance/primes/transmitter/LifeboatReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p0

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

    :goto_2e
    array-length v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p2, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_31
    return-void

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_d

    nop

    nop
.end method
