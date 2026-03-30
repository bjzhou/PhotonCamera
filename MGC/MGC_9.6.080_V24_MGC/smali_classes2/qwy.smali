.class public final Lqwy;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Z

.field public final b:Ljava/lang/Object;

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Z)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lqwy;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean p4, p0, Lqwy;->a:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return-void

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
    iput-object p1, p0, Lqwy;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iput-object p3, p0, Lqwy;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ltud;Ltud;Ltud;Lrss;)V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lqwy;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p1}, Lfdn;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lqwy;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lqwy;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p4, p1}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    :goto_8
    new-instance v0, Lfdn;

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

    :goto_9
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    iput-boolean p1, p0, Lqwy;->a:Z

    nop

    nop

    nop

    goto/32 :goto_b

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

    nop

    :goto_c
    new-instance p1, Lfdn;

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

    :goto_d
    invoke-direct {p1, p2}, Lfdn;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public constructor <init>(ZLjava/util/Set;Lqxs;Lqxs;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iput-object p4, p0, Lqwy;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lqwy;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Lqwy;->a:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    iput-object p3, p0, Lqwy;->c:Ljava/lang/Object;

    nop

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

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    :try_start_0
    iget-object p0, p0, Lqwy;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, p2}, Lqxs;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const-string p2, "Invalid Phenotype flag value for flag "

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

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

    :goto_5
    return-object p0

    nop

    nop

    nop

    :goto_6
    const-string p2, "PhenotypeCombinedFlags"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Lqvl;Ljava/lang/String;)Lqxd;
    .locals 6

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v2, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, ""

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2
    const-string v5, "com.google.android.gms.phenotype.UPDATE"

    nop

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

    :goto_3
    sget-object v1, Lqxh;->a:Ljava/util/concurrent/ConcurrentMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_4
    const v0, 0x1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_35

    nop

    nop

    :goto_6
    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v5, 0x2

    nop

    :try_start_0
    invoke-virtual {p1, v2, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :try_start_1
    sput-boolean v3, Lqxn;->b:Z

    nop

    nop

    nop

    nop

    :cond_2
    :goto_8
    monitor-exit v1

    nop

    nop

    nop

    nop

    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3b

    nop

    :goto_a
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    sget-boolean v2, Lqxn;->b:Z

    nop

    if-nez v2, :cond_2

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    nop

    const-string v4, "com.google.android.gms"

    nop

    nop

    nop

    invoke-static {v2, v4}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, v1, Lqnt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v2, Lqxc;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v3, p0, p2}, Lrrf;->q(ZLjava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_4
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_f
    check-cast v0, Lqxd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_10
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v1, 0xd

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v1, Lqxd;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_14
    invoke-direct {p0, p2, v0}, Lrsu;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_b

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v2}, Lqxn;-><init>()V

    goto/32 :goto_36

    nop

    nop

    :goto_17
    check-cast v0, Lqxd;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v1, 0x15

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_19
    const-string p0, "Package %s cannot be registered both with and without stickyAccountSupport"

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

    :goto_1a
    new-instance p1, Lqpd;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1b
    if-eqz v1, :cond_5

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lqwy;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p1, p1, Lqvl;->d:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1e
    sget-object v1, Lqxd;->i:Lqnt;

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

    :goto_1f
    iget-object v1, v1, Lqnt;->a:Ljava/lang/Object;

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

    nop

    :goto_20
    sget-boolean v1, Lqxn;->b:Z

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

    :goto_21
    invoke-direct {p1, v0, v1}, Lqpd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_22
    new-instance v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-boolean p0, v0, Lqxd;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_24
    invoke-interface {v2, p0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_20

    nop

    nop

    :goto_25
    goto/32 :goto_3c

    nop

    :goto_26
    sget-object v1, Lqxn;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

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

    :goto_28
    new-instance p0, Lrsu;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_29
    invoke-direct {v2, p1, p2, v0, p0}, Lqxc;-><init>(Lqvl;Ljava/lang/String;ZLjava/util/Set;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v1, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2b
    throw p0

    nop

    :goto_2c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2e
    move-object v0, v1

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_17

    nop

    nop

    :goto_30
    const/4 v3, 0x1

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

    :goto_31
    return-object v0

    nop

    :goto_32
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v1, v0, v2}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_34
    sget-object v2, Lqxn;->c:Ljava/util/concurrent/ConcurrentMap;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {v2}, Lrtm;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_36
    new-instance v4, Landroid/content/IntentFilter;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {v1, p0, v0}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_38
    new-instance v2, Lqxn;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_39
    iget-boolean v0, p0, Lqwy;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v0, p0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_39

    nop

    nop

    nop

    nop
.end method

.method public final c(Lkuc;)Lkuc;
    .locals 9

    goto/32 :goto_11

    nop

    nop

    :goto_0
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2
    move-object v3, p1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move-object v4, v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v5, Lfdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lqwy;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    return-object p1

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    move-object v5, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_a
    move-object v6, p0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_c
    move-object v2, v8

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

    :goto_d
    if-lez v0, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    :goto_e
    invoke-interface {p0}, Ltud;->a()Ljava/lang/Object;

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

    :goto_f
    invoke-direct/range {v2 .. v7}, Lldt;-><init>(Lkuc;Lfdn;Lfdn;Lljk;I)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_12
    iget-object p0, p0, Lqwy;->b:Ljava/lang/Object;

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

    :goto_13
    iget-boolean v0, p0, Lqwy;->a:Z

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_14
    return-object v8

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    :goto_16
    check-cast v4, Lfdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v6, Lljk;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v8, Lldt;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lqwy;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method
