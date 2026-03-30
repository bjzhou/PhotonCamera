.class final Leta;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lete;


# direct methods
.method public constructor <init>(Lete;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p1, p0, Leta;->a:Lete;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 15

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Leta;->a:Lete;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_3
    iget-object v1, p0, Leta;->a:Lete;

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

    :goto_4
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_5
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    iget-object v3, v3, Lete;->b:Landroid/content/Context;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, v1, Lete;->g:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, p0}, Letd;-><init>(Lete;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v5, Ljava/lang/StringBuilder;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    iget-object p0, p0, Leta;->a:Lete;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Leta;->a:Lete;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_d
    goto :goto_e

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    move-object v1, v7

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Levf;

    nop

    iget-object v1, v1, Levf;->a:Left;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Left;->n()V

    throw v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    :try_start_1
    check-cast v7, Levf;

    nop

    iget-object v1, v7, Levf;->b:Lega;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v9}, Lega;->f(Lein;)V

    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_e
    iget-object v1, v1, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    check-cast v1, Levg;

    nop

    invoke-virtual {v3, v1, v4}, Lete;->a(Levg;Z)V

    goto/16 :goto_42

    nop

    nop

    nop

    nop

    :cond_2
    const-string v0, "ACTION_EXECUTION_COMPLETED"

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-eqz v0, :cond_3

    nop

    nop

    invoke-static {v6}, Lesv;->e(Landroid/content/Intent;)Levg;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    const-string v3, "KEY_NEEDS_RESCHEDULE"

    nop

    nop

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop

    invoke-static {}, Leqh;->b()V

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lesv;->a(Levg;Z)V

    goto :goto_10

    nop

    nop

    nop

    :cond_3
    invoke-static {}, Leqh;->b()V

    sget-object v0, Lesv;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v1, "Ignoring intent "

    nop

    nop

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    nop

    invoke-virtual {v1, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_f
    invoke-static {}, Leqh;->b()V

    sget-object v1, Lesv;->a:Ljava/lang/String;

    nop

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :cond_5
    :goto_10
    goto/32 :goto_34

    nop

    nop

    :goto_11
    sget-object v2, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/ADF/UKeap;->twXRpsIW:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_12
    const-string v0, "Invalid request for "

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v3, v2}, Leww;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    nop

    nop

    nop

    :try_start_2
    invoke-static {}, Leqh;->b()V

    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v3, p0, Leta;->a:Lete;

    nop

    iget-object v5, v3, Lete;->f:Lesv;

    nop

    nop

    nop

    nop

    iget-object v6, v3, Lete;->h:Landroid/content/Intent;

    nop

    nop

    nop

    nop

    nop

    const-string v7, " , requires KEY_WORKSPEC_ID ."

    nop

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    nop

    nop

    const-string v9, "ACTION_CONSTRAINTS_CHANGED"

    nop

    nop

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    nop

    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_c

    nop

    invoke-static {}, Leqh;->b()V

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    sget v0, Lesx;->a:I

    nop

    nop

    iget-object v0, v5, Lesv;->b:Landroid/content/Context;

    nop

    nop

    nop

    iget-object v5, v3, Lete;->e:Lese;

    nop

    nop

    nop

    nop

    iget-object v5, v5, Lese;->j:Lhwy;

    nop

    nop

    nop

    nop

    nop

    new-instance v6, Lfdn;

    nop

    invoke-direct {v6, v5}, Lfdn;-><init>(Lhwy;)V

    iget-object v5, v3, Lete;->e:Lese;

    nop

    nop

    nop

    nop

    iget-object v5, v5, Lese;->c:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->B()Levr;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5}, Levr;->c()Ljava/util/List;

    move-result-object v5

    nop

    sget v7, Lesw;->a:I

    nop

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    nop

    nop

    nop

    nop

    move v8, v4

    nop

    nop

    nop

    move v9, v8

    nop

    nop

    nop

    nop

    move v11, v9

    nop

    nop

    nop

    nop

    nop

    move v12, v11

    nop

    nop

    nop

    nop

    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    nop

    nop

    nop

    nop

    nop

    if-eqz v13, :cond_8

    nop

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    nop

    nop

    nop

    nop

    nop

    check-cast v13, Levq;

    nop

    nop

    nop

    nop

    nop

    iget-object v13, v13, Levq;->i:Leps;

    nop

    nop

    nop

    iget-boolean v14, v13, Leps;->e:Z

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v8, v14

    nop

    nop

    iget-boolean v14, v13, Leps;->c:Z

    nop

    nop

    nop

    nop

    or-int/2addr v9, v14

    nop

    nop

    nop

    nop

    iget-boolean v14, v13, Leps;->f:Z

    nop

    nop

    nop

    nop

    or-int/2addr v11, v14

    nop

    nop

    nop

    nop

    nop

    iget v13, v13, Leps;->j:I

    nop

    nop

    if-eq v13, v10, :cond_7

    nop

    move v13, v10

    nop

    goto :goto_14

    nop

    nop

    nop

    :cond_7
    move v13, v4

    nop

    nop

    nop

    nop

    :goto_14
    or-int/2addr v12, v13

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_6

    nop

    if-eqz v9, :cond_6

    nop

    nop

    nop

    nop

    if-eqz v11, :cond_6

    nop

    nop

    nop

    if-eqz v12, :cond_6

    nop

    nop

    nop

    nop

    :cond_8
    new-instance v7, Landroid/content/Intent;

    nop

    nop

    nop

    const-string v10, "androidx.work.impl.background.systemalarm.UpdateProxies"

    nop

    nop

    nop

    invoke-direct {v7, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v10, Landroid/content/ComponentName;

    nop

    nop

    const-class v13, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;

    nop

    nop

    nop

    invoke-direct {v10, v0, v13}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v7, v10}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v10, "KEY_BATTERY_NOT_LOW_PROXY_ENABLED"

    nop

    nop

    nop

    invoke-virtual {v7, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v8

    nop

    const-string v10, "KEY_BATTERY_CHARGING_PROXY_ENABLED"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v10, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v8

    nop

    nop

    nop

    nop

    const-string v9, "KEY_STORAGE_NOT_LOW_PROXY_ENABLED"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v9, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v8

    nop

    const-string v9, "KEY_NETWORK_STATE_PROXY_ENABLED"

    nop

    nop

    nop

    invoke-virtual {v8, v9, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    new-instance v7, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v8

    nop

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    nop

    nop

    nop

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    :cond_9
    :goto_15
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    nop

    nop

    if-eqz v10, :cond_b

    nop

    nop

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    check-cast v10, Levq;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Levq;->a()J

    move-result-wide v11

    nop

    nop

    nop

    cmp-long v11, v8, v11

    nop

    if-ltz v11, :cond_9

    nop

    invoke-virtual {v10}, Levq;->b()Z

    move-result v11

    nop

    nop

    nop

    nop

    nop

    if-eqz v11, :cond_a

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v10}, Lfdn;->D(Levq;)Z

    move-result v11

    nop

    nop

    if-eqz v11, :cond_9

    nop

    :cond_a
    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_15

    nop

    nop

    nop

    :cond_b
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    nop

    nop

    nop

    nop

    :goto_16
    if-ge v4, v5, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Levq;

    nop

    nop

    nop

    nop

    iget-object v8, v6, Levq;->a:Ljava/lang/String;

    nop

    invoke-static {v6}, Lebm;->e(Levq;)Levg;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v6}, Lesv;->c(Landroid/content/Context;Levg;)Landroid/content/Intent;

    move-result-object v6

    nop

    nop

    nop

    invoke-static {}, Leqh;->b()V

    iget-object v8, v3, Lete;->k:Lts;

    nop

    nop

    iget-object v8, v8, Lts;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    new-instance v9, Letb;

    nop

    invoke-direct {v9, v3, v6, v1}, Letb;-><init>(Lete;Landroid/content/Intent;I)V

    invoke-interface {v8, v9}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    goto :goto_16

    nop

    nop

    nop

    nop

    :cond_c
    const-string v9, "ACTION_RESCHEDULE"

    nop

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_d

    nop

    nop

    invoke-static {}, Leqh;->b()V

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v0, v3, Lete;->e:Lese;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lese;->d()V

    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_d
    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v9

    nop

    const/4 v11, 0x0

    nop

    nop

    sget-object v11, Lcom/google/android/apps/camera/whitebalance/YD/hwKuVzZ;->RRF:Ljava/lang/String;

    nop

    filled-new-array {v11}, [Ljava/lang/String;

    move-result-object v11

    nop

    nop

    if-eqz v9, :cond_4

    nop

    invoke-virtual {v9}, Landroid/os/Bundle;->isEmpty()Z

    move-result v12

    nop

    if-eqz v12, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_e
    aget-object v11, v11, v4

    nop

    invoke-virtual {v9, v11}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    if-eqz v9, :cond_4

    nop

    nop

    const-string v0, "ACTION_SCHEDULE_WORK"

    nop

    nop

    nop

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    if-eqz v0, :cond_10

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Lesv;->e(Landroid/content/Intent;)Levg;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {}, Leqh;->b()V

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v4, v3, Lete;->e:Lese;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lese;->c:Landroidx/work/impl/WorkDatabase;

    nop

    invoke-virtual {v4}, Left;->l()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v4}, Landroidx/work/impl/WorkDatabase;->B()Levr;

    move-result-object v6

    nop

    nop

    nop

    nop

    iget-object v7, v0, Levg;->a:Ljava/lang/String;

    nop

    nop

    nop

    invoke-interface {v6, v7}, Levr;->a(Ljava/lang/String;)Levq;

    move-result-object v6

    nop

    nop

    nop

    nop

    if-nez v6, :cond_17

    nop

    nop

    invoke-static {}, Leqh;->b()V

    sget-object v1, Lesv;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v3, "Skipping scheduling "

    nop

    const-string v5, " because it\'s no longer in the DB"

    nop

    nop

    invoke-static {v0, v3, v5}, La;->bn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    :goto_17
    :try_start_4
    invoke-virtual {v4}, Left;->n()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_50

    nop

    nop

    :goto_18
    iget-object p0, p0, Lete;->k:Lts;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lete;->k:Lts;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_1c
    iget-object v1, p0, Leta;->a:Lete;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

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

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    :try_start_5
    invoke-static {}, Leqh;->b()V

    sget-object v1, Lete;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v3, "Unexpected error in onHandleIntent"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/32 :goto_46

    nop

    nop

    :goto_20
    const v1, 0x1f

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_21
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

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

    :goto_22
    const-string v3, "KEY_START_ID"

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_23
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_1d

    nop

    nop

    :goto_24
    new-instance v0, Letd;

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_f

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_30

    nop

    :goto_26
    iget-object p0, p0, Lts;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-direct {v1, p0}, Letd;-><init>(Lete;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_29
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    iget-object v2, p0, Leta;->a:Lete;

    nop

    nop

    nop

    iget-object v3, v2, Lete;->g:Ljava/util/List;

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    check-cast v3, Landroid/content/Intent;

    nop

    iput-object v3, v2, Lete;->h:Landroid/content/Intent;

    nop

    nop

    monitor-exit v1

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2d
    new-instance v0, Letd;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2e
    iget-object v1, v1, Lete;->h:Landroid/content/Intent;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return-void

    nop

    nop

    nop

    nop

    :catchall_4
    move-exception p0

    nop

    nop

    nop

    nop

    :try_start_7
    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_37

    nop

    nop

    :goto_31
    goto/32 :goto_12

    nop

    nop

    :goto_32
    iget-object v3, p0, Leta;->a:Lete;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_33
    iget-object v3, v3, Lete;->h:Landroid/content/Intent;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v3, p0, Leta;->a:Lete;

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

    :goto_36
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p0, p0, Lts;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v0, p0}, Letd;-><init>(Lete;)V

    :goto_3b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    rem-int v0, v0, v1

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

    :goto_3d
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_3e
    new-instance v1, Letd;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    :try_start_8
    invoke-virtual {v4}, Left;->n()V

    throw v0

    nop

    nop

    nop

    nop

    nop

    :cond_10
    const-string v0, "ACTION_DELAY_MET"

    nop

    nop

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_14

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v5, Lesv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v0

    nop
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    invoke-static {v6}, Lesv;->e(Landroid/content/Intent;)Levg;

    move-result-object v6

    nop

    nop

    nop

    invoke-static {}, Leqh;->b()V

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v7, v5, Lesv;->c:Ljava/util/Map;

    nop

    nop

    invoke-interface {v7, v6}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    nop

    if-nez v7, :cond_13

    nop

    nop

    nop

    nop

    nop

    new-instance v7, Lesz;

    nop

    nop

    nop

    nop

    nop

    iget-object v8, v5, Lesv;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    iget-object v9, v5, Lesv;->e:Lerj;

    nop

    invoke-interface {v9, v6}, Lerj;->d(Levg;)Lfdn;

    move-result-object v9

    nop

    nop

    nop

    nop

    invoke-direct {v7, v8, v1, v3, v9}, Lesz;-><init>(Landroid/content/Context;ILete;Lfdn;)V

    iget-object v1, v5, Lesv;->c:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v7, Lesz;->c:Levg;

    nop

    nop

    iget-object v1, v1, Levg;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    iget-object v3, v7, Lesz;->a:Landroid/content/Context;

    nop

    new-instance v5, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ("

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v7, Lesz;->b:I

    nop

    nop

    nop

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ")"

    nop

    nop

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    invoke-static {v3, v5}, Leww;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    nop

    nop

    nop

    nop

    iput-object v3, v7, Lesz;->h:Landroid/os/PowerManager$WakeLock;

    nop

    nop

    nop

    nop

    invoke-static {}, Leqh;->b()V

    iget-object v3, v7, Lesz;->h:Landroid/os/PowerManager$WakeLock;

    nop

    nop

    nop

    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v3, v7, Lesz;->h:Landroid/os/PowerManager$WakeLock;

    nop

    nop

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v3, v7, Lesz;->d:Lete;

    nop

    iget-object v3, v3, Lete;->e:Lese;

    nop

    nop

    nop

    iget-object v3, v3, Lese;->c:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->B()Levr;

    move-result-object v3

    nop

    nop

    invoke-interface {v3, v1}, Levr;->a(Ljava/lang/String;)Levq;

    move-result-object v1

    nop

    nop

    nop

    if-nez v1, :cond_11

    nop

    nop

    nop

    iget-object v1, v7, Lesz;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lesy;

    nop

    invoke-direct {v3, v7, v10}, Lesy;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_40

    nop

    :cond_11
    invoke-virtual {v1}, Levq;->b()Z

    move-result v3

    nop

    nop

    nop

    nop

    iput-boolean v3, v7, Lesz;->i:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v3, :cond_12

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Leqh;->b()V

    iget-object v1, v7, Lesz;->f:Ljava/util/concurrent/Executor;

    nop

    new-instance v3, Lesy;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v7, v4}, Lesy;-><init>(Ljava/lang/Object;I)V

    invoke-interface {v1, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_40

    nop

    nop

    nop

    nop

    :cond_12
    iget-object v3, v7, Lesz;->l:Lfdn;

    nop

    nop

    nop

    iget-object v4, v7, Lesz;->j:Lufp;

    nop

    nop

    nop

    invoke-static {v3, v1, v4, v7}, Letr;->a(Lfdn;Levq;Lufp;Leto;)Lugy;

    move-result-object v1

    nop

    nop

    nop

    iput-object v1, v7, Lesz;->k:Lugy;

    nop

    nop

    nop

    goto :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_13
    invoke-static {}, Leqh;->b()V

    invoke-static {v6}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :goto_40
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/16 :goto_10

    nop

    nop

    nop

    :catchall_6
    move-exception v1

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_6

    :try_start_a
    throw v1

    nop

    nop

    nop

    nop

    :cond_14
    const-string v0, "ACTION_STOP_WORK"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    nop

    nop

    nop

    nop

    const-string v1, "KEY_WORKSPEC_ID"

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    const-string v6, "KEY_WORKSPEC_GENERATION"

    nop

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_15

    nop

    nop

    const-string v6, "KEY_WORKSPEC_GENERATION"

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    new-instance v6, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v6, v10}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v7, v5, Lesv;->e:Lerj;

    nop

    nop

    nop

    nop

    new-instance v8, Levg;

    nop

    invoke-direct {v8, v1, v0}, Levg;-><init>(Ljava/lang/String;I)V

    invoke-interface {v7, v8}, Lerj;->c(Levg;)Lfdn;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_16

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    nop

    :cond_15
    iget-object v0, v5, Lesv;->e:Lerj;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lerj;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    nop

    :cond_16
    :goto_41
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_42
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lfdn;

    nop

    invoke-static {}, Leqh;->b()V

    iget-object v6, v3, Lete;->j:Leur;

    nop

    nop

    nop

    nop

    invoke-static {v6, v1}, Ldxp;->k(Leur;Lfdn;)V

    iget-object v6, v5, Lesv;->b:Landroid/content/Context;

    nop

    nop

    nop

    iget-object v7, v3, Lete;->e:Lese;

    nop

    nop

    nop

    iget-object v7, v7, Lese;->c:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    nop

    iget-object v8, v1, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    sget v9, Lesu;->a:I

    nop

    nop

    nop

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->y()Levb;

    move-result-object v7

    nop

    move-object v9, v8

    nop

    nop

    nop

    nop

    nop

    check-cast v9, Levg;

    nop

    nop

    nop

    nop

    invoke-static {v7, v9}, Leao;->f(Levb;Levg;)Leva;

    move-result-object v9

    nop

    nop

    nop

    if-eqz v9, :cond_1

    nop

    nop

    nop

    nop

    iget v9, v9, Leva;->c:I

    nop

    nop

    nop

    move-object v11, v8

    nop

    nop

    check-cast v11, Levg;

    nop

    nop

    invoke-static {v6, v11, v9}, Lesu;->a(Landroid/content/Context;Levg;I)V

    invoke-static {}, Leqh;->b()V

    invoke-static {v8}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-object v6, v8

    nop

    nop

    nop

    check-cast v6, Levg;

    nop

    iget-object v6, v6, Levg;->a:Ljava/lang/String;

    nop

    nop

    nop

    check-cast v8, Levg;

    nop

    nop

    nop

    iget v8, v8, Levg;->b:I

    nop

    move-object v9, v7

    nop

    check-cast v9, Levf;

    nop

    nop

    iget-object v9, v9, Levf;->a:Left;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Left;->k()V

    move-object v9, v7

    nop

    nop

    nop

    nop

    check-cast v9, Levf;

    nop

    nop

    iget-object v9, v9, Levf;->b:Lega;

    nop

    invoke-virtual {v9}, Lega;->d()Lein;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9, v10, v6}, Leim;->g(ILjava/lang/String;)V

    const/4 v6, 0x2

    nop

    int-to-long v11, v8

    nop

    invoke-virtual {v9, v6, v11, v12}, Leim;->e(IJ)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    move-object v6, v7

    nop

    check-cast v6, Levf;

    nop

    nop

    iget-object v6, v6, Levf;->a:Left;

    nop

    nop

    nop

    invoke-virtual {v6}, Left;->l()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :try_start_c
    invoke-virtual {v9}, Lein;->a()V

    move-object v6, v7

    nop

    nop

    nop

    nop

    check-cast v6, Levf;

    nop

    nop

    nop

    iget-object v6, v6, Levf;->a:Left;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Left;->p()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    move-object v6, v7

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Levf;

    nop

    nop

    iget-object v6, v6, Levf;->a:Left;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Left;->n()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    :try_start_e
    check-cast v7, Levf;

    nop

    nop

    nop

    iget-object v6, v7, Levf;->b:Lega;

    nop

    invoke-virtual {v6, v9}, Lega;->f(Lein;)V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_44
    throw v0

    nop

    nop

    :goto_45
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_49
    const-string v2, ")"

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

    :goto_4a
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_4b
    invoke-static {v3}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-static {v2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4e
    iget-object v2, v1, Lete;->h:Landroid/content/Intent;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const v0, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_10

    nop

    nop

    :cond_17
    :try_start_f
    iget v7, v6, Levq;->v:I

    nop

    invoke-static {v7}, Ldwx;->e(I)Z

    move-result v7

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_18

    nop

    invoke-static {}, Leqh;->b()V

    sget-object v1, Lesv;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v3, "Skipping scheduling "

    nop

    const-string v5, "because it is finished."

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0, v3, v5}, La;->bn(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_17

    nop

    :cond_18
    invoke-virtual {v6}, Levq;->a()J

    move-result-wide v7

    nop

    invoke-virtual {v6}, Levq;->b()Z

    move-result v6

    nop

    nop

    if-nez v6, :cond_19

    nop

    nop

    invoke-static {}, Leqh;->b()V

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v1, v5, Lesv;->b:Landroid/content/Context;

    nop

    nop

    invoke-static {v1, v4, v0, v7, v8}, Lesu;->b(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Levg;J)V

    goto :goto_51

    nop

    :cond_19
    invoke-static {}, Leqh;->b()V

    invoke-static {v0}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    iget-object v6, v5, Lesv;->b:Landroid/content/Context;

    nop

    nop

    invoke-static {v6, v4, v0, v7, v8}, Lesu;->b(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Levg;J)V

    iget-object v0, v5, Lesv;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Lesv;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    nop

    nop

    nop

    nop

    iget-object v5, v3, Lete;->k:Lts;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v5, Lts;->c:Ljava/lang/Object;

    nop

    nop

    new-instance v6, Letb;

    nop

    invoke-direct {v6, v3, v0, v1}, Letb;-><init>(Lete;Landroid/content/Intent;I)V

    invoke-interface {v5, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_51
    invoke-virtual {v4}, Left;->p()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop
.end method
