.class public final synthetic Lerq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Luaz;


# instance fields
.field public final synthetic a:Lerr;


# direct methods
.method public synthetic constructor <init>(Lerr;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p1, p0, Lerq;->a:Lerr;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/Object;
    .locals 68

    goto/32 :goto_28

    nop

    nop

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1
    iget-object v3, v2, Lerr;->d:Ljava/util/List;

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

    nop

    :goto_2
    goto/16 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    move-object/from16 v20, v3

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v3, Levp;

    nop

    nop

    invoke-direct {v3, v1, v13}, Levp;-><init>(Ljava/lang/String;I)V

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_8

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_4
    goto :goto_6

    nop

    nop

    nop

    :catchall_0
    move-exception v0

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

    :goto_5
    move-object/from16 v20, v3

    nop

    :goto_6
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move-object/from16 v20, v3

    nop

    nop

    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    nop

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many workers with contentUriTriggers are enqueued:\ncontentUriTrigger workers limit: "

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";\nalready enqueued count: "

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ";\ncurrent enqueue operation count: "

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ".\nTo address this issue you can: \n1. enqueue less workers or batch some of workers with content uri triggers together;\n2. increase limit via Configuration.Builder.setContentUriTriggerWorkersLimit;\nPlease beware that workers with content uri triggers immediately occupy slots in JobScheduler so no updates to content uris are missed."

    nop

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    move-object/from16 v20, v3

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual {v7}, Lefz;->j()V

    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :catchall_2
    move-exception v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    :goto_9
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_52

    nop

    nop

    :goto_a
    iget-object v3, v2, Lerr;->d:Ljava/util/List;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v3}, Left;->l()V

    :try_start_2
    iget-object v1, v1, Lese;->h:Lqpe;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    nop

    nop

    nop

    new-array v4, v1, [Lerr;

    nop

    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    aput-object v2, v4, v5

    nop

    nop

    nop

    nop

    invoke-static {v4}, Lrkm;->ag([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    nop

    nop

    nop

    move v6, v5

    nop

    :goto_c
    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v7

    nop

    nop

    if-nez v7, :cond_5

    nop

    nop

    invoke-static {v4}, Lrkm;->am(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v7

    nop

    check-cast v7, Lerr;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v7, Lerr;->c:Ljava/util/List;

    nop

    nop

    invoke-interface {v7}, Ljava/util/Collection;->isEmpty()Z

    move-result v8

    nop

    nop

    nop

    if-eqz v8, :cond_1

    nop

    nop

    nop

    move v8, v5

    nop

    nop

    goto :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    nop

    nop

    move v8, v5

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :goto_d
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    nop

    if-eqz v9, :cond_4

    nop

    nop

    nop

    nop

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    check-cast v9, Lhdu;

    nop

    iget-object v9, v9, Lhdu;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v9, Levq;

    nop

    nop

    nop

    iget-object v9, v9, Levq;->i:Leps;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v9}, Leps;->b()Z

    move-result v9

    nop

    nop

    nop

    nop

    nop

    if-eqz v9, :cond_2

    nop

    nop

    nop

    nop

    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    nop

    nop

    if-ltz v8, :cond_3

    nop

    nop

    goto :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    new-instance v0, Ljava/lang/ArithmeticException;

    nop

    nop

    nop

    nop

    const-string v1, "Count overflow has happened."

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    :cond_4
    :goto_e
    add-int/2addr v6, v8

    nop

    nop

    goto/16 :goto_c

    nop

    nop

    :cond_5
    if-nez v6, :cond_6

    nop

    nop

    nop

    goto/16 :goto_14

    nop

    :cond_6
    invoke-virtual {v3}, Landroidx/work/impl/WorkDatabase;->B()Levr;

    move-result-object v4

    nop

    nop

    nop

    const-string v7, "Select COUNT(*) FROM workspec WHERE LENGTH(content_uri_triggers)<>0 AND state NOT IN (2, 3, 5)"

    nop

    nop

    invoke-static {v7, v5}, Lefz;->a(Ljava/lang/String;I)Lefz;

    move-result-object v7

    nop

    nop

    nop

    move-object v8, v4

    nop

    nop

    check-cast v8, Lewk;

    nop

    nop

    nop

    iget-object v8, v8, Lewk;->a:Left;

    nop

    invoke-virtual {v8}, Left;->k()V

    check-cast v4, Lewk;

    nop

    nop

    iget-object v4, v4, Lewk;->a:Left;

    nop

    nop

    nop

    nop

    invoke-static {v4, v7}, Ldvw;->C(Left;Leid;)Landroid/database/Cursor;

    move-result-object v4

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-interface {v4}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v8

    nop

    nop

    nop

    if-eqz v8, :cond_0

    nop

    invoke-interface {v4, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    nop

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    move v8, v5

    nop

    nop

    :goto_13
    :try_start_4
    invoke-interface {v4}, Landroid/database/Cursor;->close()V

    invoke-virtual {v7}, Lefz;->j()V

    add-int v4, v8, v6

    nop

    nop

    nop

    nop

    nop

    const/16 v7, 0x8

    nop

    if-gt v4, v7, :cond_21

    nop

    :goto_14
    new-instance v4, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-object v6, v2, Lerr;->b:Lese;

    nop

    nop

    nop

    nop

    iget-object v7, v2, Lerr;->c:Ljava/util/List;

    nop

    new-array v8, v5, [Ljava/lang/String;

    nop

    nop

    nop

    invoke-interface {v4, v8}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, [Ljava/lang/String;

    nop

    iget-object v8, v6, Lese;->h:Lqpe;

    nop

    nop

    iget-object v8, v8, Lqpe;->h:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    nop

    nop

    iget-object v10, v6, Lese;->c:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    if-eqz v4, :cond_8

    nop

    nop

    nop

    nop

    nop

    array-length v11, v4

    nop

    nop

    nop

    nop

    if-lez v11, :cond_8

    nop

    nop

    move v11, v1

    nop

    nop

    nop

    nop

    goto :goto_15

    nop

    nop

    :cond_8
    move v11, v5

    nop

    :goto_15
    const/4 v12, 0x6

    nop

    nop

    const/4 v13, 0x4

    nop

    nop

    nop

    nop

    nop

    if-eqz v11, :cond_d

    nop

    array-length v14, v4

    nop

    move/from16 v16, v1

    nop

    nop

    nop

    nop

    nop

    move v15, v5

    nop

    move/from16 v17, v15

    nop

    nop

    move/from16 v18, v17

    nop

    nop

    nop

    :goto_16
    if-ge v15, v14, :cond_e

    nop

    nop

    nop

    nop

    aget-object v5, v4, v15

    nop

    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->B()Levr;

    move-result-object v1

    nop

    invoke-interface {v1, v5}, Levr;->a(Ljava/lang/String;)Levq;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    invoke-static {}, Leqh;->b()V

    sget-object v0, Lewp;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prerequisite "

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " doesn\'t exist; not enqueuing"

    nop

    nop

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v2

    nop

    nop

    move-object/from16 v20, v3

    nop

    nop

    :goto_17
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/16 :goto_25

    nop

    nop

    nop

    :cond_9
    iget v1, v1, Levq;->v:I

    nop

    nop

    const/4 v5, 0x3

    nop

    if-ne v1, v5, :cond_a

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    goto :goto_19

    nop

    :cond_a
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    and-int v16, v16, v5

    nop

    nop

    nop

    nop

    if-ne v1, v13, :cond_b

    nop

    nop

    nop

    nop

    const/16 v17, 0x1

    nop

    nop

    nop

    goto :goto_1a

    nop

    nop

    :cond_b
    if-ne v1, v12, :cond_c

    nop

    nop

    nop

    const/16 v18, 0x1

    nop

    :cond_c
    :goto_1a
    add-int/lit8 v15, v15, 0x1

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    nop

    goto/16 :goto_16

    nop

    nop

    :cond_d
    const/16 v16, 0x1

    nop

    nop

    nop

    const/16 v17, 0x0

    nop

    nop

    nop

    nop

    nop

    const/16 v18, 0x0

    nop

    nop

    nop

    nop

    :cond_e
    const/4 v1, 0x0

    nop

    nop

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    if-nez v5, :cond_12

    nop

    nop

    nop

    nop

    nop

    if-nez v11, :cond_12

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->B()Levr;

    move-result-object v14

    nop

    nop

    nop

    nop

    nop

    const-string v15, "SELECT id, state FROM workspec WHERE id IN (SELECT work_spec_id FROM workname WHERE name=?)"

    nop

    const/4 v12, 0x1

    nop

    nop

    invoke-static {v15, v12}, Lefz;->a(Ljava/lang/String;I)Lefz;

    move-result-object v15

    nop

    invoke-virtual {v15, v12, v1}, Lefz;->g(ILjava/lang/String;)V

    move-object v12, v14

    nop

    nop

    nop

    check-cast v12, Lewk;

    nop

    nop

    iget-object v12, v12, Lewk;->a:Left;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v12}, Left;->k()V

    check-cast v14, Lewk;

    nop

    nop

    iget-object v12, v14, Lewk;->a:Left;

    nop

    nop

    nop

    invoke-static {v12, v15}, Ldvw;->C(Left;Leid;)Landroid/database/Cursor;

    move-result-object v12

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    new-instance v14, Ljava/util/ArrayList;

    nop

    invoke-interface {v12}, Landroid/database/Cursor;->getCount()I

    move-result v13

    nop

    nop

    nop

    nop

    invoke-direct {v14, v13}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1b
    invoke-interface {v12}, Landroid/database/Cursor;->moveToNext()Z

    move-result v13

    nop

    nop

    if-eqz v13, :cond_7

    nop

    nop

    nop

    nop

    const/4 v13, 0x0

    nop

    nop

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    const/4 v13, 0x1

    nop

    nop

    nop

    invoke-interface {v12, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v20

    nop

    nop

    nop

    nop

    invoke-static/range {v20 .. v20}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;->r(I)I

    move-result v13

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1c
    move-object/from16 v20, v3

    nop

    nop

    nop

    :try_start_6
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    invoke-virtual {v15}, Lefz;->j()V

    invoke-interface {v14}, Ljava/util/List;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    nop

    if-nez v1, :cond_13

    nop

    nop

    nop

    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :cond_f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_11

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Levp;

    nop

    nop

    nop

    nop

    nop

    iget v1, v1, Levp;->b:I

    nop

    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v3, :cond_10

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    if-ne v1, v3, :cond_f

    nop

    nop

    nop

    move-object v0, v2

    nop

    nop

    nop

    nop

    goto/16 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_10
    move-object v0, v2

    nop

    nop

    nop

    nop

    move v1, v3

    nop

    nop

    nop

    nop

    goto/16 :goto_18

    nop

    :cond_11
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    throw v0

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    move-object/from16 v20, v3

    nop

    nop

    :goto_1d
    invoke-interface {v12}, Landroid/database/Cursor;->close()V

    invoke-virtual {v15}, Lefz;->j()V

    throw v0

    nop

    nop

    nop

    :cond_12
    move-object/from16 v20, v3

    nop

    nop

    :cond_13
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    if-eqz v7, :cond_1e

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    check-cast v7, Lhdu;

    nop

    nop

    nop

    iget-object v12, v7, Lhdu;->a:Ljava/lang/Object;

    nop

    if-eqz v11, :cond_16

    nop

    nop

    nop

    nop

    if-nez v16, :cond_16

    nop

    nop

    nop

    nop

    nop

    if-eqz v17, :cond_14

    nop

    move-object v13, v12

    nop

    nop

    nop

    check-cast v13, Levq;

    nop

    const/4 v14, 0x4

    nop

    nop

    nop

    nop

    nop

    iput v14, v13, Levq;->v:I

    nop

    const/4 v15, 0x6

    nop

    nop

    nop

    nop

    goto :goto_1f

    nop

    :cond_14
    const/4 v14, 0x4

    nop

    nop

    if-eqz v18, :cond_15

    nop

    nop

    move-object v13, v12

    nop

    nop

    nop

    nop

    check-cast v13, Levq;

    nop

    nop

    nop

    const/4 v15, 0x6

    nop

    iput v15, v13, Levq;->v:I

    nop

    goto :goto_1f

    nop

    nop

    nop

    :cond_15
    const/4 v15, 0x6

    nop

    move-object v13, v12

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

    const/4 v14, 0x5

    nop

    nop

    nop

    nop

    iput v14, v13, Levq;->v:I

    nop

    nop

    goto :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_16
    const/4 v15, 0x6

    nop

    nop

    nop

    nop

    move-object v13, v12

    nop

    check-cast v13, Levq;

    nop

    nop

    nop

    nop

    nop

    iput-wide v8, v13, Levq;->l:J

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object v13, v12

    nop

    nop

    nop

    check-cast v13, Levq;

    nop

    iget v13, v13, Levq;->v:I

    nop

    nop

    nop

    nop

    const/4 v14, 0x1

    nop

    if-ne v13, v14, :cond_17

    nop

    nop

    nop

    nop

    const/16 v19, 0x0

    nop

    nop

    nop

    nop

    nop

    goto :goto_20

    nop

    nop

    nop

    :cond_17
    move/from16 v19, v14

    nop

    nop

    nop

    :goto_20
    xor-int/lit8 v13, v19, 0x1

    nop

    or-int/2addr v3, v13

    nop

    nop

    invoke-virtual {v10}, Landroidx/work/impl/WorkDatabase;->B()Levr;

    move-result-object v13

    nop

    nop

    nop

    iget-object v14, v6, Lese;->d:Ljava/util/List;

    nop

    nop

    nop

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-class v14, Ljava/lang/String;

    nop

    nop

    nop

    move-object v15, v12

    nop

    nop

    nop

    nop

    nop

    check-cast v15, Levq;

    nop

    iget-object v15, v15, Levq;->d:Lepu;

    nop

    nop

    nop

    nop

    invoke-virtual {v15, v0, v14}, Lepu;->d(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v14

    nop

    nop

    nop

    const-class v15, Ljava/lang/String;

    nop

    nop

    nop

    nop

    move-object/from16 v21, v1

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    sget-object v1, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/ADF/UKeap;->OdwKa:Ljava/lang/String;

    nop

    nop

    nop

    move/from16 v22, v3

    nop

    nop

    nop

    nop

    move-object v3, v12

    nop

    nop

    nop

    nop

    check-cast v3, Levq;

    nop

    nop

    nop

    iget-object v3, v3, Levq;->d:Lepu;

    nop

    nop

    nop

    invoke-virtual {v3, v1, v15}, Lepu;->d(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v1

    nop

    nop

    const-class v3, Ljava/lang/String;

    nop

    nop

    const-string v15, "androidx.work.impl.workers.RemoteListenableWorker.ARGUMENT_CLASS_NAME"

    nop

    move-object/from16 v23, v6

    nop

    move-object v6, v12

    nop

    nop

    check-cast v6, Levq;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v6, Levq;->d:Lepu;

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v15, v3}, Lepu;->d(Ljava/lang/String;Ljava/lang/Class;)Z

    move-result v3

    nop

    nop

    if-nez v14, :cond_19

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_19

    nop

    nop

    nop

    if-eqz v3, :cond_19

    nop

    move-object v1, v12

    nop

    nop

    check-cast v1, Levq;

    nop

    nop

    nop

    nop

    iget-object v1, v1, Levq;->b:Ljava/lang/String;

    nop

    nop

    new-instance v3, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    move-object v6, v12

    nop

    nop

    nop

    nop

    nop

    check-cast v6, Levq;

    nop

    iget-object v6, v6, Levq;->d:Lepu;

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, Lepu;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v3}, Landroidx/wear/ambient/SharedLibraryVersion;->c(Ljava/util/Map;Ljava/util/Map;)V

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v3}, Landroidx/wear/ambient/SharedLibraryVersion;->b(Ljava/util/Map;)Lepu;

    move-result-object v29

    nop

    move-object v1, v12

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Levq;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v1, Levq;->a:Ljava/lang/String;

    nop

    nop

    move-object v3, v12

    nop

    nop

    nop

    check-cast v3, Levq;

    nop

    nop

    iget v3, v3, Levq;->v:I

    nop

    nop

    move-object v6, v12

    nop

    check-cast v6, Levq;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v6, Levq;->c:Ljava/lang/String;

    nop

    nop

    nop

    move-object v14, v12

    nop

    nop

    nop

    nop

    nop

    check-cast v14, Levq;

    nop

    nop

    nop

    iget-object v14, v14, Levq;->e:Lepu;

    nop

    nop

    move-object v15, v12

    nop

    nop

    check-cast v15, Levq;

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v57, v8

    nop

    nop

    nop

    nop

    nop

    iget-wide v8, v15, Levq;->f:J

    nop

    nop

    move-object v15, v12

    nop

    nop

    check-cast v15, Levq;

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v59, v4

    nop

    nop

    nop

    nop

    move/from16 v60, v5

    nop

    nop

    nop

    iget-wide v4, v15, Levq;->g:J

    nop

    nop

    nop

    nop

    move-object v15, v12

    nop

    nop

    check-cast v15, Levq;

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v61, v10

    nop

    nop

    nop

    move/from16 v62, v11

    nop

    nop

    iget-wide v10, v15, Levq;->h:J

    nop

    move-object v15, v12

    nop

    nop

    nop

    nop

    nop

    check-cast v15, Levq;

    nop

    nop

    nop

    iget-object v15, v15, Levq;->i:Leps;

    nop

    move-object/from16 v63, v0

    nop

    nop

    nop

    move-object v0, v12

    nop

    nop

    nop

    check-cast v0, Levq;

    nop

    nop

    nop

    nop

    iget v0, v0, Levq;->j:I

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v64, v2

    nop

    nop

    move-object v2, v12

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Levq;

    nop

    nop

    iget v2, v2, Levq;->w:I

    nop

    nop

    move-object/from16 v65, v7

    nop

    move-object v7, v12

    nop

    nop

    nop

    nop

    check-cast v7, Levq;

    nop

    nop

    nop

    nop

    move-wide/from16 v35, v10

    nop

    nop

    nop

    nop

    nop

    iget-wide v10, v7, Levq;->k:J

    nop

    nop

    move-object v7, v12

    nop

    nop

    check-cast v7, Levq;

    nop

    nop

    nop

    move-wide/from16 v40, v10

    nop

    nop

    nop

    nop

    nop

    iget-wide v10, v7, Levq;->l:J

    nop

    move-object v7, v12

    nop

    check-cast v7, Levq;

    nop

    nop

    nop

    nop

    move-wide/from16 v42, v10

    nop

    nop

    nop

    nop

    nop

    iget-wide v10, v7, Levq;->m:J

    nop

    nop

    nop

    nop

    move-object v7, v12

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Levq;

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v44, v10

    nop

    nop

    nop

    nop

    nop

    iget-wide v10, v7, Levq;->n:J

    nop

    nop

    move-object v7, v12

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Levq;

    nop

    iget-boolean v7, v7, Levq;->o:Z

    nop

    nop

    nop

    move-object/from16 v66, v13

    nop

    move-object v13, v12

    nop

    nop

    check-cast v13, Levq;

    nop

    nop

    nop

    nop

    nop

    iget v13, v13, Levq;->x:I

    nop

    nop

    nop

    nop

    move/from16 v48, v7

    nop

    nop

    nop

    move-object v7, v12

    nop

    nop

    nop

    nop

    check-cast v7, Levq;

    nop

    nop

    nop

    nop

    iget v7, v7, Levq;->p:I

    nop

    nop

    nop

    nop

    nop

    move/from16 v50, v7

    nop

    move-object v7, v12

    nop

    check-cast v7, Levq;

    nop

    nop

    nop

    iget v7, v7, Levq;->q:I

    nop

    nop

    nop

    move/from16 v51, v7

    nop

    move-object v7, v12

    nop

    check-cast v7, Levq;

    nop

    nop

    nop

    move-wide/from16 v46, v10

    nop

    nop

    nop

    nop

    iget-wide v10, v7, Levq;->r:J

    nop

    move-object v7, v12

    nop

    nop

    nop

    check-cast v7, Levq;

    nop

    nop

    iget v7, v7, Levq;->s:I

    nop

    nop

    move/from16 v54, v7

    nop

    nop

    nop

    nop

    move-object v7, v12

    nop

    nop

    check-cast v7, Levq;

    nop

    nop

    nop

    nop

    iget v7, v7, Levq;->t:I

    nop

    nop

    nop

    check-cast v12, Levq;

    nop

    nop

    nop

    nop

    nop

    iget-object v12, v12, Levq;->u:Ljava/lang/String;

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_18

    nop

    nop

    const-string v27, "androidx.work.multiprocess.RemoteListenableDelegatingWorker"

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz v2, :cond_18

    nop

    nop

    nop

    nop

    if-eqz v13, :cond_18

    nop

    new-instance v67, Levq;

    nop

    nop

    move-object/from16 v24, v67

    nop

    nop

    move-object/from16 v25, v1

    nop

    nop

    move/from16 v26, v3

    nop

    nop

    nop

    nop

    move-object/from16 v28, v6

    nop

    nop

    nop

    move-object/from16 v30, v14

    nop

    nop

    nop

    move-wide/from16 v31, v8

    nop

    nop

    nop

    nop

    nop

    move-wide/from16 v33, v4

    nop

    nop

    nop

    nop

    move-object/from16 v37, v15

    nop

    nop

    nop

    nop

    move/from16 v38, v0

    nop

    nop

    nop

    nop

    move/from16 v39, v2

    nop

    nop

    nop

    move/from16 v49, v13

    nop

    nop

    nop

    move-wide/from16 v52, v10

    nop

    nop

    move/from16 v55, v7

    nop

    nop

    nop

    nop

    move-object/from16 v56, v12

    nop

    nop

    nop

    nop

    invoke-direct/range {v24 .. v56}, Levq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lepu;Lepu;JJJLeps;IIJJJJZIIIJIILjava/lang/String;)V

    move-object/from16 v12, v67

    nop

    nop

    nop

    goto :goto_21

    nop

    nop

    nop

    nop

    :cond_18
    const/4 v0, 0x0

    nop

    nop

    nop

    throw v0

    nop

    :cond_19
    move-object/from16 v63, v0

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v64, v2

    nop

    nop

    nop

    nop

    move-object/from16 v59, v4

    nop

    nop

    nop

    nop

    move/from16 v60, v5

    nop

    nop

    nop

    nop

    move-object/from16 v65, v7

    nop

    nop

    nop

    move-wide/from16 v57, v8

    nop

    nop

    nop

    nop

    move-object/from16 v61, v10

    nop

    nop

    nop

    nop

    move/from16 v62, v11

    nop

    nop

    nop

    nop

    move-object/from16 v66, v13

    nop

    nop

    nop

    nop

    :goto_21
    move-object/from16 v13, v66

    nop

    nop

    nop

    check-cast v13, Lewk;

    nop

    iget-object v0, v13, Lewk;->a:Left;

    nop

    invoke-virtual {v0}, Left;->k()V

    move-object/from16 v13, v66

    nop

    nop

    nop

    nop

    nop

    check-cast v13, Lewk;

    nop

    nop

    iget-object v0, v13, Lewk;->a:Left;

    nop

    nop

    invoke-virtual {v0}, Left;->l()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    move-object/from16 v13, v66

    nop

    nop

    nop

    nop

    nop

    check-cast v13, Lewk;

    nop

    nop

    nop

    iget-object v0, v13, Lewk;->b:Lefc;

    nop

    nop

    nop

    invoke-virtual {v0, v12}, Lefc;->a(Ljava/lang/Object;)V

    move-object/from16 v13, v66

    nop

    nop

    nop

    check-cast v13, Lewk;

    nop

    nop

    nop

    nop

    iget-object v0, v13, Lewk;->a:Left;

    nop

    nop

    invoke-virtual {v0}, Left;->p()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_7

    :try_start_8
    move-object/from16 v13, v66

    nop

    nop

    nop

    nop

    check-cast v13, Lewk;

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v13, Lewk;->a:Left;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Left;->n()V

    if-eqz v62, :cond_1a

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v4, v59

    nop

    nop

    nop

    nop

    nop

    array-length v0, v4

    nop

    const/4 v1, 0x0

    nop

    :goto_22
    if-ge v1, v0, :cond_1b

    nop

    nop

    nop

    nop

    nop

    aget-object v2, v4, v1

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Leur;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v65 .. v65}, Lhdu;->p()Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    invoke-direct {v3, v5, v2}, Leur;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {v61 .. v61}, Landroidx/work/impl/WorkDatabase;->w()Leus;

    move-result-object v2

    nop

    nop

    nop

    move-object v5, v2

    nop

    nop

    check-cast v5, Leuu;

    nop

    nop

    nop

    iget-object v5, v5, Leuu;->a:Left;

    nop

    nop

    invoke-virtual {v5}, Left;->k()V

    move-object v5, v2

    nop

    nop

    nop

    nop

    nop

    check-cast v5, Leuu;

    nop

    nop

    nop

    iget-object v5, v5, Leuu;->a:Left;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Left;->l()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :try_start_9
    move-object v5, v2

    nop

    nop

    nop

    nop

    check-cast v5, Leuu;

    nop

    nop

    nop

    iget-object v5, v5, Leuu;->b:Lefc;

    nop

    invoke-virtual {v5, v3}, Lefc;->a(Ljava/lang/Object;)V

    move-object v3, v2

    nop

    check-cast v3, Leuu;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Leuu;->a:Left;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Left;->p()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    check-cast v2, Leuu;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Leuu;->a:Left;

    nop

    nop

    invoke-virtual {v2}, Left;->n()V

    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto :goto_22

    nop

    nop

    nop

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    nop

    check-cast v2, Leuu;

    nop

    nop

    nop

    nop

    iget-object v1, v2, Leuu;->a:Left;

    nop

    invoke-virtual {v1}, Left;->n()V

    throw v0

    nop

    nop

    :cond_1a
    move-object/from16 v4, v59

    nop

    nop

    nop

    nop

    :cond_1b
    invoke-virtual/range {v61 .. v61}, Landroidx/work/impl/WorkDatabase;->C()Lewl;

    move-result-object v1

    nop

    invoke-virtual/range {v65 .. v65}, Lhdu;->p()Ljava/lang/String;

    move-result-object v0

    nop

    move-object/from16 v7, v65

    nop

    iget-object v2, v7, Lhdu;->b:Ljava/lang/Object;

    nop

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_1c

    nop

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Ljava/lang/String;

    nop

    nop

    new-instance v5, Lezz;

    nop

    nop

    invoke-direct {v5, v3, v0}, Lezz;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v3, v1

    nop

    nop

    nop

    check-cast v3, Lewo;

    nop

    nop

    nop

    iget-object v3, v3, Lewo;->a:Left;

    nop

    invoke-virtual {v3}, Left;->k()V

    move-object v3, v1

    nop

    nop

    nop

    nop

    check-cast v3, Lewo;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Lewo;->a:Left;

    nop

    invoke-virtual {v3}, Left;->l()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :try_start_b
    move-object v3, v1

    nop

    nop

    check-cast v3, Lewo;

    nop

    nop

    iget-object v3, v3, Lewo;->b:Lefc;

    nop

    invoke-virtual {v3, v5}, Lefc;->a(Ljava/lang/Object;)V

    move-object v3, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lewo;

    nop

    nop

    nop

    iget-object v3, v3, Lewo;->a:Left;

    nop

    nop

    invoke-virtual {v3}, Left;->p()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_5

    :try_start_c
    move-object v3, v1

    nop

    check-cast v3, Lewo;

    nop

    nop

    nop

    iget-object v3, v3, Lewo;->a:Left;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Left;->n()V

    goto :goto_23

    nop

    nop

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    check-cast v1, Lewo;

    nop

    nop

    nop

    iget-object v1, v1, Lewo;->a:Left;

    nop

    nop

    nop

    invoke-virtual {v1}, Left;->n()V

    throw v0

    nop

    :cond_1c
    if-nez v60, :cond_1d

    nop

    invoke-virtual/range {v61 .. v61}, Landroidx/work/impl/WorkDatabase;->z()Levh;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    new-instance v0, Lebm;

    nop

    nop

    invoke-virtual {v7}, Lhdu;->p()Ljava/lang/String;

    const/4 v2, 0x0

    nop

    nop

    invoke-direct {v0, v2}, Lebm;-><init>([B)V

    move-object v3, v1

    nop

    nop

    nop

    nop

    check-cast v3, Levj;

    nop

    nop

    nop

    nop

    iget-object v3, v3, Levj;->a:Left;

    nop

    nop

    nop

    nop

    invoke-virtual {v3}, Left;->k()V

    move-object v3, v1

    nop

    nop

    nop

    check-cast v3, Levj;

    nop

    iget-object v3, v3, Levj;->a:Left;

    nop

    nop

    invoke-virtual {v3}, Left;->l()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    move-object v3, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Levj;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Levj;->b:Lefc;

    nop

    invoke-virtual {v3, v0}, Lefc;->a(Ljava/lang/Object;)V

    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Levj;

    nop

    nop

    nop

    iget-object v0, v0, Levj;->a:Left;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Left;->p()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :try_start_e
    check-cast v1, Levj;

    nop

    nop

    iget-object v0, v1, Levj;->a:Left;

    nop

    nop

    nop

    invoke-virtual {v0}, Left;->n()V

    goto :goto_24

    nop

    nop

    nop

    nop

    nop

    :catchall_6
    move-exception v0

    nop

    nop

    check-cast v1, Levj;

    nop

    nop

    nop

    iget-object v1, v1, Levj;->a:Left;

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

    :cond_1d
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move-object/from16 v1, v21

    nop

    move/from16 v3, v22

    nop

    nop

    nop

    move-object/from16 v6, v23

    nop

    move-wide/from16 v8, v57

    nop

    nop

    nop

    nop

    move/from16 v5, v60

    nop

    nop

    nop

    nop

    move-object/from16 v10, v61

    nop

    nop

    nop

    nop

    nop

    move/from16 v11, v62

    nop

    nop

    nop

    nop

    move-object/from16 v0, v63

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v2, v64

    nop

    goto/16 :goto_1e

    nop

    :catchall_7
    move-exception v0

    nop

    nop

    move-object/from16 v13, v66

    nop

    check-cast v13, Lewk;

    nop

    iget-object v1, v13, Lewk;->a:Left;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Left;->n()V

    throw v0

    nop

    :cond_1e
    move-object v0, v2

    nop

    move v5, v3

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    :goto_25
    iput-boolean v1, v0, Lerr;->e:Z

    nop

    nop

    invoke-virtual/range {v20 .. v20}, Left;->p()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_27
    const-string v2, ")"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v5, :cond_1f

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_1f
    goto/32 :goto_43

    nop

    nop

    :goto_2a
    invoke-interface {v3, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2b
    throw v0

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    move-object/from16 v3, v20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v2, v2, Lerq;->a:Lerr;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2f
    if-nez v5, :cond_20

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_30
    new-instance v0, Ljava/lang/IllegalStateException;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sget-object v1, Lewp;->a:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v1, v2, v0}, Leri;->a(Lqpe;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V

    :goto_34
    goto/32 :goto_4e

    nop

    nop

    :goto_35
    invoke-interface {v1, v3}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_36
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {v1, v3}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v0, v0, Lese;->d:Ljava/util/List;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_39
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_3a
    move-object/from16 v2, p0

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

    :goto_3b
    const-string v0, "androidx.work.multiprocess.RemoteListenableDelegatingWorker.ARGUMENT_REMOTE_LISTENABLE_WORKER_NAME"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_3c
    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    :catchall_8
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v1, v2, Lerr;->b:Lese;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_3e
    new-instance v3, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    return-object v0

    nop

    nop

    nop

    nop

    :cond_21
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_41
    if-lez v0, :cond_22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :cond_22
    goto/32 :goto_4f

    nop

    :goto_42
    if-nez v5, :cond_23

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_45
    new-instance v1, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_46
    invoke-virtual/range {v20 .. v20}, Left;->n()V

    goto/32 :goto_42

    nop

    nop

    :goto_47
    invoke-virtual/range {v20 .. v20}, Left;->n()V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v3, v1, Lese;->c:Landroidx/work/impl/WorkDatabase;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_49
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_4c
    iget-object v1, v0, Lese;->h:Lqpe;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    sget-object v0, Ltyg;->a:Ltyg;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_51
    check-cast v5, Ljava/lang/String;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const/4 v1, 0x0

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

    :goto_54
    const-string v3, "WorkContinuation has cycles ("

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

    nop

    nop

    :goto_55
    iget-object v2, v0, Lese;->c:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v0, v0, Lerr;->b:Lese;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_58
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method
