.class public final Landroidx/work/impl/workers/DiagnosticsWorker;
.super Landroidx/work/Worker;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final b()Landroidx/wear/ambient/WearableControllerProvider;
    .locals 85

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual/range {v20 .. v20}, Lefz;->j()V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->z()Levh;

    move-result-object v3

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

    nop

    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_3
    invoke-static {v0, v8}, Ldvw;->C(Left;Leid;)Landroid/database/Cursor;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    const-string v0, "id"

    nop

    nop

    nop

    nop

    invoke-static {v5, v0}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    nop

    const-string v6, "state"

    nop

    nop

    nop

    nop

    invoke-static {v5, v6}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    nop

    nop

    nop

    nop

    const-string v9, "worker_class_name"

    nop

    nop

    nop

    nop

    invoke-static {v5, v9}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    nop

    const-string v10, "input_merger_class_name"

    nop

    nop

    nop

    nop

    invoke-static {v5, v10}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    nop

    nop

    const-string v11, "input"

    nop

    nop

    nop

    invoke-static {v5, v11}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    nop

    nop

    nop

    const-string v12, "output"

    nop

    invoke-static {v5, v12}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    nop

    const-string v13, "initial_delay"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v13}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    nop

    nop

    nop

    nop

    nop

    const-string v14, "interval_duration"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v14}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    nop

    nop

    nop

    nop

    nop

    const-string v15, "flex_duration"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v15}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    nop

    nop

    nop

    nop

    const-string v7, "run_attempt_count"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v7}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    nop

    nop

    nop

    nop

    move-object/from16 v16, v1

    nop

    nop

    nop

    nop

    const-string v1, "backoff_policy"

    nop

    invoke-static {v5, v1}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    nop

    move-object/from16 v17, v3

    nop

    nop

    nop

    const-string v3, "backoff_delay_duration"

    nop

    nop

    nop

    invoke-static {v5, v3}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    nop

    nop

    move-object/from16 v18, v4

    nop

    nop

    const-string v4, "last_enqueue_time"

    nop

    invoke-static {v5, v4}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    nop

    move-object/from16 v19, v2

    nop

    nop

    nop

    nop

    nop

    const-string v2, "minimum_retention_duration"

    nop

    nop

    nop

    invoke-static {v5, v2}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0, v7}, Lefz;->a(Ljava/lang/String;I)Lefz;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, v7, v8}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v7

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

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, v0, Lqpe;->h:Ljava/lang/Object;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    move-object/from16 v2, v17

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    sget v2, Lexn;->a:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_b
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object v0, v2

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_d
    move-object/from16 v3, v18

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v0, "SELECT * FROM workspec WHERE last_enqueue_time >= ? AND state IN (2, 3, 5) ORDER BY last_enqueue_time DESC"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->y()Levb;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_10
    const v1, 0x1a

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface/range {v19 .. v19}, Levr;->i()Ljava/util/List;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_12
    goto/16 :goto_35

    nop

    :goto_13
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v2, v3, v4, v1}, Lexn;->a(Levh;Lewl;Levb;Ljava/util/List;)V

    :goto_15
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    :goto_17
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-eqz v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_4c

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    throw v0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v5, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :cond_4
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1b

    nop

    :goto_1e
    goto/32 :goto_38

    nop

    nop

    :goto_1f
    move-object/from16 v4, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_20
    new-instance v0, Leqf;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_21
    const-wide/16 v7, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface/range {v19 .. v19}, Levr;->b()Ljava/util/List;

    move-result-object v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v2, v3, v4, v8}, Lexn;->a(Levh;Lewl;Levb;Ljava/util/List;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v0, Lewk;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_27
    move-object/from16 v4, v16

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

    :goto_28
    invoke-static {v2, v3, v4, v0}, Lexn;->a(Levh;Lewl;Levb;Ljava/util/List;)V

    :goto_29
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2b
    sget v0, Lexn;->a:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->C()Lewl;

    move-result-object v4

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

    :goto_2d
    goto/32 :goto_1e

    nop

    nop

    :goto_2e
    invoke-virtual {v8, v7, v5, v6}, Lefz;->e(IJ)V

    goto/32 :goto_c

    nop

    nop

    :goto_2f
    invoke-virtual {v1}, Landroidx/work/impl/WorkDatabase;->B()Levr;

    move-result-object v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_30
    iget-object v0, v0, Leqg;->a:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_33
    move-object/from16 v2, v17

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_34
    move-object/from16 v3, v18

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_36
    invoke-static {v0}, Lese;->b(Landroid/content/Context;)Lese;

    move-result-object v0

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v5

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

    nop

    :goto_38
    move-object/from16 v0, p0

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

    :goto_39
    invoke-virtual {v5}, Left;->k()V

    goto/32 :goto_3e

    nop

    nop

    :goto_3a
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3b
    invoke-interface {v8}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3c
    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v5, v0, Lewk;->a:Left;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v0, v0, Lewk;->a:Left;

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

    :goto_3f
    move/from16 v39, v2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_40
    return-object v0

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_41
    sub-long/2addr v5, v7

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-object v1, v0, Lese;->c:Landroidx/work/impl/WorkDatabase;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_43
    invoke-virtual/range {v20 .. v20}, Lefz;->j()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_44
    sget v5, Lexn;->a:I

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-direct {v0}, Leqf;-><init>()V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_55

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const/4 v7, 0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_49
    const v0, 0x13

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    move/from16 v0, v39

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_4b
    move-object/from16 v20, v8

    nop

    nop

    nop

    nop

    :try_start_1
    const-string v8, "schedule_requested_at"

    nop

    nop

    invoke-static {v5, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    nop

    nop

    move/from16 v21, v8

    nop

    nop

    const-string v8, "run_in_foreground"

    nop

    nop

    nop

    nop

    invoke-static {v5, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    nop

    nop

    move/from16 v22, v8

    nop

    nop

    nop

    nop

    const-string v8, "out_of_quota_policy"

    nop

    nop

    nop

    invoke-static {v5, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    move/from16 v23, v8

    nop

    nop

    nop

    nop

    nop

    const-string v8, "period_count"

    nop

    invoke-static {v5, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    move/from16 v24, v8

    nop

    const-string v8, "generation"

    nop

    nop

    nop

    nop

    invoke-static {v5, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    nop

    nop

    move/from16 v25, v8

    nop

    nop

    nop

    const-string v8, "next_schedule_time_override"

    nop

    nop

    nop

    invoke-static {v5, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    nop

    move/from16 v26, v8

    nop

    nop

    nop

    nop

    const-string v8, "next_schedule_time_override_generation"

    nop

    nop

    invoke-static {v5, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    move/from16 v27, v8

    nop

    nop

    nop

    nop

    const-string v8, "stop_reason"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    move/from16 v28, v8

    nop

    const-string v8, "trace_tag"

    nop

    invoke-static {v5, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    move/from16 v29, v8

    nop

    nop

    nop

    const-string v8, "required_network_type"

    nop

    invoke-static {v5, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    move/from16 v30, v8

    nop

    nop

    nop

    nop

    const-string v8, "required_network_request"

    nop

    nop

    invoke-static {v5, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    nop

    move/from16 v31, v8

    nop

    nop

    nop

    nop

    const-string v8, "requires_charging"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    move/from16 v32, v8

    nop

    nop

    nop

    const-string v8, "requires_device_idle"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    nop

    nop

    move/from16 v33, v8

    nop

    const-string v8, "requires_battery_not_low"

    nop

    nop

    invoke-static {v5, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    nop

    move/from16 v34, v8

    nop

    const-string v8, "requires_storage_not_low"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    move/from16 v35, v8

    nop

    nop

    nop

    nop

    const-string v8, "trigger_content_update_delay"

    nop

    nop

    invoke-static {v5, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    nop

    nop

    move/from16 v36, v8

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    sget-object v8, Lcom/google/android/apps/camera/ui/eduimageview/JrT/cUhjhcVVea;->fORePFu:Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {v5, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    move/from16 v37, v8

    nop

    const-string v8, "content_uri_triggers"

    nop

    nop

    nop

    nop

    invoke-static {v5, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    move/from16 v38, v8

    nop

    nop

    nop

    nop

    new-instance v8, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    move/from16 v39, v2

    nop

    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    move-result v2

    nop

    nop

    nop

    invoke-direct {v8, v2}, Ljava/util/ArrayList;-><init>(I)V

    :goto_4c
    invoke-interface {v5}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    nop

    if-eqz v2, :cond_3

    nop

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v41

    nop

    nop

    invoke-interface {v5, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    nop

    nop

    invoke-static {v2}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;->r(I)I

    move-result v42

    nop

    nop

    nop

    nop

    invoke-interface {v5, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v43

    nop

    nop

    invoke-interface {v5, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v44

    nop

    invoke-interface {v5, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    nop

    nop

    invoke-static {v2}, Lepu;->a([B)Lepu;

    move-result-object v45

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v12}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2}, Lepu;->a([B)Lepu;

    move-result-object v46

    nop

    invoke-interface {v5, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    nop

    nop

    invoke-interface {v5, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v49

    nop

    invoke-interface {v5, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v51

    nop

    nop

    nop

    nop

    invoke-interface {v5, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v54

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    nop

    invoke-static {v2}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;->o(I)I

    move-result v55

    nop

    nop

    nop

    nop

    invoke-interface {v5, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v56

    nop

    nop

    invoke-interface {v5, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v58

    nop

    nop

    nop

    nop

    nop

    move/from16 v2, v39

    nop

    nop

    nop

    nop

    invoke-interface {v5, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v60

    nop

    nop

    nop

    move/from16 v39, v0

    nop

    nop

    move/from16 v0, v21

    nop

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v62

    nop

    nop

    nop

    nop

    move/from16 v21, v0

    nop

    nop

    nop

    move/from16 v0, v22

    nop

    nop

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v22

    nop

    nop

    nop

    nop

    nop

    const/16 v40, 0x0

    nop

    nop

    if-eqz v22, :cond_5

    nop

    nop

    move/from16 v22, v0

    nop

    nop

    nop

    nop

    nop

    move/from16 v0, v23

    nop

    nop

    const/16 v64, 0x1

    nop

    nop

    nop

    goto :goto_4d

    nop

    :cond_5
    move/from16 v22, v0

    nop

    nop

    nop

    nop

    nop

    move/from16 v0, v23

    nop

    move/from16 v64, v40

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v23

    nop

    nop

    nop

    nop

    invoke-static/range {v23 .. v23}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;->q(I)I

    move-result v65

    nop

    move/from16 v23, v0

    nop

    nop

    nop

    move/from16 v0, v24

    nop

    nop

    nop

    nop

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v66

    nop

    nop

    move/from16 v24, v0

    nop

    nop

    move/from16 v0, v25

    nop

    nop

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v67

    nop

    nop

    nop

    nop

    nop

    move/from16 v25, v0

    nop

    nop

    nop

    move/from16 v0, v26

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v68

    nop

    nop

    move/from16 v26, v0

    nop

    nop

    nop

    nop

    move/from16 v0, v27

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v70

    nop

    nop

    nop

    nop

    nop

    move/from16 v27, v0

    nop

    move/from16 v0, v28

    nop

    nop

    nop

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v71

    nop

    nop

    nop

    move/from16 v28, v0

    nop

    nop

    move/from16 v0, v29

    nop

    nop

    invoke-interface {v5, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v29

    nop

    if-eqz v29, :cond_6

    nop

    nop

    nop

    nop

    const/16 v29, 0x0

    nop

    nop

    nop

    nop

    :goto_4e
    move-object/from16 v72, v29

    nop

    move/from16 v29, v0

    nop

    nop

    nop

    nop

    nop

    move/from16 v0, v30

    nop

    nop

    nop

    goto :goto_4f

    nop

    nop

    :cond_6
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v29

    nop

    nop

    nop

    nop

    nop

    goto :goto_4e

    nop

    :goto_4f
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v30 .. v30}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;->p(I)I

    move-result v75

    nop

    nop

    move/from16 v30, v0

    nop

    nop

    move/from16 v0, v31

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v31

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v31 .. v31}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;->l([B)Lewr;

    move-result-object v74

    nop

    nop

    nop

    nop

    nop

    move/from16 v31, v0

    nop

    nop

    nop

    nop

    nop

    move/from16 v0, v32

    nop

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    nop

    nop

    nop

    nop

    nop

    if-eqz v32, :cond_7

    nop

    nop

    nop

    nop

    move/from16 v32, v0

    nop

    nop

    nop

    move/from16 v0, v33

    nop

    nop

    const/16 v76, 0x1

    nop

    nop

    nop

    nop

    goto :goto_50

    nop

    :cond_7
    move/from16 v32, v0

    nop

    nop

    nop

    move/from16 v0, v33

    nop

    nop

    nop

    nop

    nop

    move/from16 v76, v40

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    nop

    nop

    nop

    nop

    if-eqz v33, :cond_8

    nop

    nop

    nop

    move/from16 v33, v0

    nop

    nop

    move/from16 v0, v34

    nop

    const/16 v77, 0x1

    nop

    nop

    goto :goto_51

    nop

    nop

    nop

    nop

    nop

    :cond_8
    move/from16 v33, v0

    nop

    nop

    nop

    nop

    nop

    move/from16 v0, v34

    nop

    nop

    nop

    nop

    nop

    move/from16 v77, v40

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v34

    nop

    nop

    nop

    if-eqz v34, :cond_9

    nop

    nop

    nop

    move/from16 v34, v0

    nop

    nop

    move/from16 v0, v35

    nop

    nop

    nop

    nop

    nop

    const/16 v78, 0x1

    nop

    nop

    goto :goto_52

    nop

    nop

    nop

    nop

    nop

    :cond_9
    move/from16 v34, v0

    nop

    nop

    nop

    nop

    move/from16 v0, v35

    nop

    nop

    nop

    nop

    nop

    move/from16 v78, v40

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v35

    nop

    nop

    nop

    nop

    nop

    if-eqz v35, :cond_a

    nop

    nop

    nop

    move/from16 v35, v0

    nop

    nop

    nop

    nop

    nop

    move/from16 v0, v36

    nop

    nop

    nop

    nop

    const/16 v79, 0x1

    nop

    nop

    nop

    nop

    goto :goto_53

    nop

    :cond_a
    move/from16 v35, v0

    nop

    move/from16 v0, v36

    nop

    nop

    nop

    nop

    nop

    move/from16 v79, v40

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v80

    nop

    nop

    move/from16 v36, v0

    nop

    nop

    nop

    nop

    nop

    move/from16 v0, v37

    nop

    nop

    nop

    nop

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v82

    nop

    nop

    nop

    nop

    move/from16 v37, v0

    nop

    nop

    nop

    nop

    move/from16 v0, v38

    nop

    nop

    nop

    invoke-interface {v5, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v38

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v38 .. v38}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;->m([B)Ljava/util/Set;

    move-result-object v84

    nop

    nop

    nop

    nop

    nop

    new-instance v53, Leps;

    nop

    nop

    nop

    move-object/from16 v73, v53

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v73 .. v84}, Leps;-><init>(Lewr;IZZZZJJLjava/util/Set;)V

    move/from16 v38, v0

    nop

    nop

    nop

    nop

    new-instance v0, Levq;

    nop

    nop

    move-object/from16 v40, v0

    nop

    nop

    nop

    invoke-direct/range {v40 .. v72}, Levq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lepu;Lepu;JJJLeps;IIJJJJZIIIJIILjava/lang/String;)V

    invoke-interface {v8, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4a

    nop

    nop

    :goto_54
    move-object/from16 v20, v8

    nop

    :goto_55
    goto/32 :goto_b

    nop

    nop

    :goto_56
    iget-object v0, v0, Lese;->h:Lqpe;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_57
    add-int v0, v0, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop
.end method
