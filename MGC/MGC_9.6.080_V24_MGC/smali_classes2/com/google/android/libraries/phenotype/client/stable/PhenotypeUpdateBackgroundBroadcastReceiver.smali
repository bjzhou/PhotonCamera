.class public final Lcom/google/android/libraries/phenotype/client/stable/PhenotypeUpdateBackgroundBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 9

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_0
    goto/32 :goto_43

    nop

    nop

    :goto_1
    const v1, 0x13

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1, v3, v4, v1, v2}, Lsgj;->V(Lsui;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lsui;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_3
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    invoke-static {p1}, Lqxf;->a(Landroid/content/Context;)Ljava/util/Map;

    move-result-object p1

    nop

    goto/32 :goto_24

    nop

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
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v0, "/.."

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_a
    iget-object p1, v2, Lqxf;->b:Lsvt;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Lqvl;->b()Lsul;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_d
    check-cast v2, Lqxf;

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

    :goto_e
    const-string v0, "com.google.android.gms.phenotype.PACKAGE_NAME"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v1, p0}, Lssk;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_13

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v6, 0x0

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v7, 0x0

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
    invoke-virtual {v0}, Lqvl;->b()Lsul;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_17
    const-string p0, "Got an invalid config package for P/H that includes \'..\': "

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_19
    invoke-static {p1}, Lqvl;->a(Landroid/content/Context;)Lqvl;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v1, Lqby;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v1}, Lsvt;->equals(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_1c
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_8

    nop

    nop

    :goto_1d
    move-object v2, p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct/range {v1 .. v6}, Lpzf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I[C)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {v0}, Lqxh;->b(Lqvl;)Lrbs;

    move-result-object p1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_36

    nop

    nop

    :goto_22
    invoke-static {}, Lqvl;->c()V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const-wide/16 v3, 0x19

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Lrbs;->a()Lsui;

    move-result-object p1

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_26
    invoke-static {p2, p0, p1}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    :cond_4
    goto/32 :goto_4a

    nop

    :goto_28
    new-instance v8, Lpzf;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_29
    invoke-static {p1}, Lsub;->q(Lsui;)Lsub;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v0, :cond_5

    nop

    goto/32 :goto_7

    nop

    :cond_5
    goto/32 :goto_22

    nop

    nop

    :goto_2b
    const-string v0, "../"

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2c
    sget-object v1, Lsvt;->d:Lsvt;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-direct {v1, p2, v3}, Lqby;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Lqvl;->b()Lsul;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_30
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v1, Lqxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {v1, p1, p2, p0, v7}, Lqxm;-><init>(Lsub;Ljava/lang/String;Landroid/content/BroadcastReceiver$PendingResult;I)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_33
    const-string p1, "PhenotypeBackgroundRecv"

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const v0, 0x20

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {p1}, Lsub;->q(Lsui;)Lsub;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {p1, v1, v3}, Lsso;->i(Lsui;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p1

    nop

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

    :goto_38
    invoke-static {p1, v8, v1}, Lsso;->j(Lsui;Lssx;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/16 v3, 0xa

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_3a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez p2, :cond_6

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-static {v7}, Lrrf;->x(Z)V

    goto/32 :goto_6

    nop

    nop

    :goto_3f
    check-cast p1, Lsub;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-nez p1, :cond_7

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_46

    nop

    nop

    :goto_41
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0}, Lqvl;->b()Lsul;

    move-result-object v3

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_30

    nop

    :goto_44
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move-object v4, v0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p0}, Lcom/google/android/libraries/phenotype/client/stable/PhenotypeUpdateBackgroundBroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_47
    move-object v3, p2

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const-string p1, ". Exiting."

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

    :goto_49
    const/16 v5, 0x13

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    move-object v1, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop
.end method
