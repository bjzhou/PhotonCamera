.class final Lazq;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lazu;


# direct methods
.method public constructor <init>(Lazu;)V
    .locals 0

    iput-object p1, p0, Lazq;->a:Lazu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 16

    move-object/from16 v1, p0

    iget-object v0, v1, Lazq;->a:Lazu;

    iget-object v2, v0, Lazu;->g:Ljava/util/List;

    monitor-enter v2

    :try_start_0
    iget-object v0, v1, Lazq;->a:Lazu;

    iget-object v3, v0, Lazu;->g:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    iput-object v3, v0, Lazu;->h:Landroid/content/Intent;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    iget-object v0, v1, Lazq;->a:Lazu;

    iget-object v0, v0, Lazu;->h:Landroid/content/Intent;

    if-eqz v0, :cond_1a

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    iget-object v0, v1, Lazq;->a:Lazu;

    iget-object v0, v0, Lazu;->h:Landroid/content/Intent;

    const-string v3, "KEY_START_ID"

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    invoke-static {}, Laxq;->a()Laxq;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Processing command "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lazq;->a:Lazu;

    iget-object v3, v3, Lazu;->h:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v1, Lazq;->a:Lazu;

    iget-object v0, v0, Lazu;->b:Landroid/content/Context;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " ("

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lbds;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    :try_start_1
    invoke-static {}, Laxq;->a()Laxq;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Acquiring operation wake lock ("

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ") "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v8, v1, Lazq;->a:Lazu;

    iget-object v0, v8, Lazu;->f:Lazl;

    iget-object v5, v8, Lazu;->h:Landroid/content/Intent;

    const-string v6, " , requires KEY_WORKSPEC_ID ."

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    const-string v10, "ACTION_CONSTRAINTS_CHANGED"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_7

    invoke-static {}, Laxq;->a()Laxq;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Handling constraints changed "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget v5, Lazn;->a:I

    iget-object v0, v0, Lazl;->b:Landroid/content/Context;

    iget-object v5, v8, Lazu;->e:Lazd;

    iget-object v5, v5, Lazd;->i:Lbbc;

    new-instance v6, Lbad;

    const/4 v9, 0x0

    invoke-direct {v6, v5, v9}, Lbad;-><init>(Lbbc;Lbab;)V

    iget-object v5, v8, Lazu;->e:Lazd;

    iget-object v5, v5, Lazd;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->B()Lbck;

    move-result-object v5

    invoke-interface {v5}, Lbck;->c()Ljava/util/List;

    move-result-object v5

    sget v9, Lazm;->a:I

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_2

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lbcj;

    iget-object v15, v15, Lbcj;->i:Laxf;

    iget-boolean v4, v15, Laxf;->d:Z

    or-int/2addr v10, v4

    iget-boolean v4, v15, Laxf;->b:Z

    or-int/2addr v12, v4

    iget-boolean v4, v15, Laxf;->e:Z

    or-int/2addr v13, v4

    iget v4, v15, Laxf;->i:I

    if-eq v4, v11, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    or-int/2addr v14, v4

    if-eqz v10, :cond_1

    if-eqz v12, :cond_1

    if-eqz v13, :cond_1

    if-eqz v14, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    :goto_2
    new-instance v4, Landroid/content/Intent;

    const-string v9, "androidx.work.impl.background.systemalarm.UpdateProxies"

    invoke-direct {v4, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v9, Landroid/content/ComponentName;

    const-class v11, Landroidx/work/impl/background/systemalarm/ConstraintProxyUpdateReceiver;

    invoke-direct {v9, v0, v11}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v4, v9}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v9, "KEY_BATTERY_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {v4, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "KEY_BATTERY_CHARGING_PROXY_ENABLED"

    invoke-virtual {v9, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "KEY_STORAGE_NOT_LOW_PROXY_ENABLED"

    invoke-virtual {v9, v10, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    move-result-object v9

    const-string v10, "KEY_NETWORK_STATE_PROXY_ENABLED"

    invoke-virtual {v9, v10, v14}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-virtual {v0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    invoke-virtual {v6, v5}, Lbad;->a(Ljava/lang/Iterable;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v9

    invoke-direct {v4, v9}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lbcj;

    iget-object v12, v11, Lbcj;->a:Ljava/lang/String;

    invoke-virtual {v11}, Lbcj;->a()J

    move-result-wide v13

    cmp-long v15, v9, v13

    if-ltz v15, :cond_3

    invoke-virtual {v11}, Lbcj;->c()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-virtual {v6, v12}, Lbad;->c(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_3

    :cond_4
    invoke-interface {v4, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_5
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    const/4 v9, 0x0

    :goto_4
    if-ge v9, v5, :cond_6

    invoke-interface {v4, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lbcj;

    iget-object v11, v10, Lbcj;->a:Ljava/lang/String;

    invoke-static {v10}, Lbbi;->b(Lbcj;)Lbbx;

    move-result-object v10

    invoke-static {v0, v10}, Lazl;->c(Landroid/content/Context;Lbbx;)Landroid/content/Intent;

    move-result-object v10

    invoke-static {}, Laxq;->a()Laxq;

    iget-object v11, v8, Lazu;->j:Lva;

    iget-object v11, v11, Lva;->b:Ljava/lang/Object;

    new-instance v12, Lazr;

    invoke-direct {v12, v8, v10, v7}, Lazr;-><init>(Lazu;Landroid/content/Intent;I)V

    invoke-interface {v11, v12}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_6
    invoke-virtual {v6}, Lbad;->b()V

    goto/16 :goto_d

    :cond_7
    const-string v4, "ACTION_RESCHEDULE"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-static {}, Laxq;->a()Laxq;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Handling reschedule "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    iget-object v0, v8, Lazu;->e:Lazd;

    invoke-virtual {v0}, Lazd;->g()V

    goto/16 :goto_d

    :cond_8
    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    new-array v10, v11, [Ljava/lang/String;

    const-string v12, "KEY_WORKSPEC_ID"

    const/4 v13, 0x0

    aput-object v12, v10, v13

    if-eqz v4, :cond_18

    invoke-virtual {v4}, Landroid/os/Bundle;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_9

    goto/16 :goto_c

    :cond_9
    const/4 v12, 0x0

    :goto_5
    if-gtz v12, :cond_a

    aget-object v13, v10, v12

    invoke-virtual {v4, v13}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v13

    if-eqz v13, :cond_18

    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_a
    const-string v4, "ACTION_SCHEDULE_WORK"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-static {v5}, Lazl;->e(Landroid/content/Intent;)Lbbx;

    move-result-object v4

    invoke-static {}, Laxq;->a()Laxq;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handling schedule work for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v5, v8, Lazu;->e:Lazd;

    iget-object v5, v5, Lazd;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v5}, Lapt;->m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    :try_start_2
    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->B()Lbck;

    move-result-object v6

    iget-object v9, v4, Lbbx;->a:Ljava/lang/String;

    invoke-interface {v6, v9}, Lbck;->a(Ljava/lang/String;)Lbcj;

    move-result-object v6

    if-nez v6, :cond_b

    invoke-static {}, Laxq;->a()Laxq;

    sget-object v0, Lazl;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping scheduling "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " because it\'s no longer in the DB"

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_6
    :try_start_3
    invoke-virtual {v5}, Lapt;->o()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/16 :goto_d

    :cond_b
    :try_start_4
    iget v9, v6, Lbcj;->r:I

    invoke-static {v9}, Lej;->f(I)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-static {}, Laxq;->a()Laxq;

    sget-object v0, Lazl;->a:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Skipping scheduling "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "because it is finished."

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    invoke-virtual {v6}, Lbcj;->a()J

    move-result-wide v9

    invoke-virtual {v6}, Lbcj;->c()Z

    move-result v6

    if-nez v6, :cond_d

    invoke-static {}, Laxq;->a()Laxq;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting up Alarms for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "at "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lazl;->b:Landroid/content/Context;

    invoke-static {v0, v5, v4, v9, v10}, Lazk;->b(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lbbx;J)V

    goto :goto_7

    :cond_d
    invoke-static {}, Laxq;->a()Laxq;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Opportunistically setting an alarm for "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, "at "

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget-object v6, v0, Lazl;->b:Landroid/content/Context;

    invoke-static {v6, v5, v4, v9, v10}, Lazk;->b(Landroid/content/Context;Landroidx/work/impl/WorkDatabase;Lbbx;J)V

    iget-object v0, v0, Lazl;->b:Landroid/content/Context;

    invoke-static {v0}, Lazl;->b(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    iget-object v4, v8, Lazu;->j:Lva;

    iget-object v4, v4, Lva;->b:Ljava/lang/Object;

    new-instance v6, Lazr;

    invoke-direct {v6, v8, v0, v7}, Lazr;-><init>(Lazu;Landroid/content/Intent;I)V

    invoke-interface {v4, v6}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_7
    invoke-virtual {v5}, Lapt;->q()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_6

    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v5}, Lapt;->o()V

    throw v0

    :cond_e
    const-string v4, "ACTION_DELAY_MET"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_12

    iget-object v4, v0, Lazl;->d:Ljava/lang/Object;

    monitor-enter v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    invoke-static {v5}, Lazl;->e(Landroid/content/Intent;)Lbbx;

    move-result-object v11

    invoke-static {}, Laxq;->a()Laxq;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Handing delay met for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    iget-object v5, v0, Lazl;->c:Ljava/util/Map;

    invoke-interface {v5, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_11

    new-instance v12, Lazp;

    iget-object v6, v0, Lazl;->b:Landroid/content/Context;

    iget-object v5, v0, Lazl;->e:Lbby;

    invoke-virtual {v5, v11}, Lbby;->F(Lbbx;)Lbkb;

    move-result-object v9

    const/4 v10, 0x0

    move-object v5, v12

    invoke-direct/range {v5 .. v10}, Lazp;-><init>(Landroid/content/Context;ILazu;Lbkb;[B)V

    iget-object v0, v0, Lazl;->c:Ljava/util/Map;

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v12, Lazp;->c:Lbbx;

    iget-object v0, v0, Lbbx;->a:Ljava/lang/String;

    iget-object v5, v12, Lazp;->a:Landroid/content/Context;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v12, Lazp;->b:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lbds;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v5

    iput-object v5, v12, Lazp;->i:Landroid/os/PowerManager$WakeLock;

    invoke-static {}, Laxq;->a()Laxq;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Acquiring wakelock "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v12, Lazp;->i:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "for WorkSpec "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v12, Lazp;->i:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v5}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v5, v12, Lazp;->d:Lazu;

    iget-object v5, v5, Lazu;->e:Lazd;

    iget-object v5, v5, Lazd;->d:Landroidx/work/impl/WorkDatabase;

    invoke-virtual {v5}, Landroidx/work/impl/WorkDatabase;->B()Lbck;

    move-result-object v5

    invoke-interface {v5, v0}, Lbck;->a(Ljava/lang/String;)Lbcj;

    move-result-object v0

    if-nez v0, :cond_f

    iget-object v0, v12, Lazp;->g:Ljava/util/concurrent/Executor;

    new-instance v5, Lazo;

    const/4 v6, 0x0

    invoke-direct {v5, v12, v6}, Lazo;-><init>(Lazp;I)V

    invoke-interface {v0, v5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_8

    :cond_f
    invoke-virtual {v0}, Lbcj;->c()Z

    move-result v5

    iput-boolean v5, v12, Lazp;->j:Z

    if-nez v5, :cond_10

    invoke-static {}, Laxq;->a()Laxq;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v12, v0}, Lazp;->e(Ljava/util/List;)V

    goto :goto_8

    :cond_10
    iget-object v5, v12, Lazp;->e:Lbad;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v5, v0}, Lbad;->a(Ljava/lang/Iterable;)V

    goto :goto_8

    :cond_11
    invoke-static {}, Laxq;->a()Laxq;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WorkSpec "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " is is already being handled for ACTION_DELAY_MET"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_8
    monitor-exit v4

    goto/16 :goto_d

    :catchall_1
    move-exception v0

    monitor-exit v4
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    throw v0

    :cond_12
    const-string v4, "ACTION_STOP_WORK"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_16

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "KEY_WORKSPEC_ID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "KEY_WORKSPEC_GENERATION"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_14

    const-string v6, "KEY_WORKSPEC_GENERATION"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v11}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v7, v0, Lazl;->e:Lbby;

    new-instance v9, Lbbx;

    invoke-direct {v9, v5, v4}, Lbbx;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v7, v9}, Lbby;->E(Lbbx;)Lbkb;

    move-result-object v4

    if-eqz v4, :cond_13

    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_9

    :cond_13
    goto :goto_9

    :cond_14
    iget-object v4, v0, Lazl;->e:Lbby;

    invoke-virtual {v4, v5}, Lbby;->a(Ljava/lang/String;)Ljava/util/List;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_19

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbkb;

    invoke-static {}, Laxq;->a()Laxq;

    iget-object v6, v8, Lazu;->e:Lazd;

    invoke-virtual {v6, v5}, Lazd;->i(Lbkb;)V

    iget-object v6, v0, Lazl;->b:Landroid/content/Context;

    iget-object v7, v8, Lazu;->e:Lazd;

    iget-object v7, v7, Lazd;->d:Landroidx/work/impl/WorkDatabase;

    iget-object v9, v5, Lbkb;->a:Ljava/lang/Object;

    sget v10, Lazk;->a:I

    invoke-virtual {v7}, Landroidx/work/impl/WorkDatabase;->y()Lbbs;

    move-result-object v7

    move-object v10, v9

    check-cast v10, Lbbx;

    invoke-static {v7, v10}, Lazc;->b(Lbbs;Lbbx;)Lbbr;

    move-result-object v10

    if-eqz v10, :cond_15

    iget v10, v10, Lbbr;->c:I

    move-object v12, v9

    check-cast v12, Lbbx;

    invoke-static {v6, v12, v10}, Lazk;->a(Landroid/content/Context;Lbbx;I)V

    invoke-static {}, Laxq;->a()Laxq;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Removing SystemIdInfo for workSpecId ("

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v10, ")"

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object v6, v9

    check-cast v6, Lbbx;

    iget-object v6, v6, Lbbx;->a:Ljava/lang/String;

    check-cast v9, Lbbx;

    iget v9, v9, Lbbx;->b:I

    move-object v10, v7

    check-cast v10, Lbbw;

    iget-object v10, v10, Lbbw;->a:Lapt;

    invoke-virtual {v10}, Lapt;->l()V

    move-object v10, v7

    check-cast v10, Lbbw;

    iget-object v10, v10, Lbbw;->b:Laqa;

    invoke-virtual {v10}, Laqa;->e()Larf;

    move-result-object v10

    invoke-virtual {v10, v11, v6}, Lare;->g(ILjava/lang/String;)V

    int-to-long v12, v9

    const/4 v6, 0x2

    invoke-virtual {v10, v6, v12, v13}, Lare;->e(IJ)V

    move-object v6, v7

    check-cast v6, Lbbw;

    iget-object v6, v6, Lbbw;->a:Lapt;

    invoke-virtual {v6}, Lapt;->m()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    invoke-virtual {v10}, Larf;->a()I

    move-object v6, v7

    check-cast v6, Lbbw;

    iget-object v6, v6, Lbbw;->a:Lapt;

    invoke-virtual {v6}, Lapt;->q()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    move-object v6, v7

    check-cast v6, Lbbw;

    iget-object v6, v6, Lbbw;->a:Lapt;

    invoke-virtual {v6}, Lapt;->o()V

    check-cast v7, Lbbw;

    iget-object v6, v7, Lbbw;->b:Laqa;

    invoke-virtual {v6, v10}, Laqa;->g(Larf;)V

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object v4, v7

    check-cast v4, Lbbw;

    iget-object v4, v4, Lbbw;->a:Lapt;

    invoke-virtual {v4}, Lapt;->o()V

    check-cast v7, Lbbw;

    iget-object v4, v7, Lbbw;->b:Laqa;

    invoke-virtual {v4, v10}, Laqa;->g(Larf;)V

    throw v0

    :cond_15
    :goto_b
    iget-object v5, v5, Lbkb;->a:Ljava/lang/Object;

    check-cast v5, Lbbx;

    const/4 v6, 0x0

    invoke-virtual {v8, v5, v6}, Lazu;->a(Lbbx;Z)V

    goto/16 :goto_a

    :cond_16
    const-string v4, "ACTION_EXECUTION_COMPLETED"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-static {v5}, Lazl;->e(Landroid/content/Intent;)Lbbx;

    move-result-object v4

    invoke-virtual {v5}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    const-string v8, "KEY_NEEDS_RESCHEDULE"

    invoke-virtual {v6, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {}, Laxq;->a()Laxq;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Handling onExecutionCompleted "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v6}, Lazl;->a(Lbbx;Z)V

    goto :goto_d

    :cond_17
    invoke-static {}, Laxq;->a()Laxq;

    sget-object v0, Lazl;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring intent "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_18
    :goto_c
    invoke-static {}, Laxq;->a()Laxq;

    sget-object v0, Lazl;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid request for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :cond_19
    :goto_d
    invoke-static {}, Laxq;->a()Laxq;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Releasing operation wake lock ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, v1, Lazq;->a:Lazu;

    iget-object v2, v0, Lazu;->j:Lva;

    iget-object v2, v2, Lva;->b:Ljava/lang/Object;

    new-instance v3, Lazt;

    invoke-direct {v3, v0}, Lazt;-><init>(Lazu;)V

    :goto_e
    invoke-interface {v2, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void

    :catchall_3
    move-exception v0

    :try_start_a
    invoke-static {}, Laxq;->a()Laxq;

    sget-object v4, Lazu;->a:Ljava/lang/String;

    const-string v5, "Unexpected error in onHandleIntent"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    invoke-static {}, Laxq;->a()Laxq;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Releasing operation wake lock ("

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v0, v1, Lazq;->a:Lazu;

    iget-object v2, v0, Lazu;->j:Lva;

    iget-object v2, v2, Lva;->b:Ljava/lang/Object;

    new-instance v3, Lazt;

    invoke-direct {v3, v0}, Lazt;-><init>(Lazu;)V

    goto :goto_e

    :catchall_4
    move-exception v0

    invoke-static {}, Laxq;->a()Laxq;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Releasing operation wake lock ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v2, v1, Lazq;->a:Lazu;

    iget-object v3, v2, Lazu;->j:Lva;

    iget-object v3, v3, Lva;->b:Ljava/lang/Object;

    new-instance v4, Lazt;

    invoke-direct {v4, v2}, Lazt;-><init>(Lazu;)V

    invoke-interface {v3, v4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    throw v0

    :cond_1a
    return-void

    :catchall_5
    move-exception v0

    :try_start_b
    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    goto :goto_10

    :goto_f
    throw v0

    :goto_10
    goto :goto_f
.end method
