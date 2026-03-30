.class public final Leri;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final synthetic a:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v3, 0x249

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

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    aput-object v0, v1, v3

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

    nop

    :goto_3
    invoke-static {v3, v4, v1}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_6
    goto/32 :goto_e

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    const-string v0, "Schedulers"

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x19

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

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    nop

    :goto_10
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x1

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
.end method

.method public static a(Lqpe;Landroidx/work/impl/WorkDatabase;Ljava/util/List;)V
    .locals 103

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v4, :cond_0

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

    :cond_0
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v2, Lerg;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v4, "id"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    invoke-virtual/range {p1 .. p1}, Left;->l()V

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_5
    check-cast v3, Lerg;

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

    :goto_6
    invoke-interface {v4, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_1c

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

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1b

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

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

    :goto_a
    new-array v1, v1, [Levq;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    move-object/from16 v18, v3

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v10, "backoff_policy"

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_f
    const-string v3, "period_count"

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz v3, :cond_2

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_13
    move-object/from16 v22, v6

    nop

    nop

    :try_start_0
    invoke-static {v7, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    nop

    nop

    nop

    nop

    move-object/from16 v37, v8

    nop

    nop

    nop

    move-object/from16 v8, v21

    nop

    nop

    nop

    nop

    move/from16 v21, v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    nop

    nop

    nop

    nop

    move-object/from16 v38, v8

    nop

    nop

    nop

    move-object/from16 v8, v20

    nop

    move/from16 v20, v6

    nop

    nop

    nop

    invoke-static {v7, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    nop

    nop

    nop

    move-object/from16 v39, v8

    nop

    nop

    nop

    move-object/from16 v8, v19

    nop

    nop

    nop

    nop

    nop

    move/from16 v19, v6

    nop

    invoke-static {v7, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    nop

    move-object/from16 v40, v8

    nop

    nop

    move-object/from16 v8, v18

    nop

    move/from16 v18, v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v41, v8

    nop

    nop

    move-object/from16 v8, v17

    nop

    nop

    nop

    nop

    move/from16 v17, v6

    nop

    nop

    nop

    invoke-static {v7, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v42, v8

    nop

    nop

    nop

    move-object/from16 v8, v16

    nop

    nop

    nop

    move/from16 v16, v6

    nop

    nop

    nop

    nop

    invoke-static {v7, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v6

    nop

    nop

    move-object/from16 v43, v8

    nop

    nop

    nop

    nop

    const-string v8, "next_schedule_time_override_generation"

    nop

    nop

    nop

    nop

    invoke-static {v7, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    move/from16 v44, v8

    nop

    nop

    nop

    const-string v8, "stop_reason"

    nop

    nop

    nop

    nop

    invoke-static {v7, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    move/from16 v45, v8

    nop

    const-string v8, "trace_tag"

    nop

    nop

    invoke-static {v7, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    move/from16 v46, v8

    nop

    const-string v8, "required_network_type"

    nop

    nop

    nop

    invoke-static {v7, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    move/from16 v47, v8

    nop

    nop

    const-string v8, "required_network_request"

    nop

    nop

    invoke-static {v7, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    move/from16 v48, v8

    nop

    nop

    nop

    const-string v8, "requires_charging"

    nop

    nop

    nop

    nop

    invoke-static {v7, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    move/from16 v49, v8

    nop

    const-string v8, "requires_device_idle"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    move/from16 v50, v8

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    sget-object v8, Lcom/google/android/apps/camera/imax/cyclops/processing/jQJ/fbmdK;->vfuOIFzMrijpEj:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v7, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    move/from16 v51, v8

    nop

    nop

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v8, Lwireless/android/learning/acmi/p11/metadata/eGU/nQGhNZMKfLcyQ;->AaLXfvZZJsFGy:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    move/from16 v52, v8

    nop

    nop

    nop

    nop

    const-string v8, "trigger_content_update_delay"

    nop

    nop

    invoke-static {v7, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    nop

    nop

    move/from16 v53, v8

    nop

    nop

    const-string v8, "trigger_max_content_delay"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    nop

    nop

    move/from16 v54, v8

    nop

    nop

    nop

    nop

    nop

    const-string v8, "content_uri_triggers"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    move/from16 v55, v8

    nop

    new-instance v8, Ljava/util/ArrayList;

    nop

    nop

    nop

    move/from16 v56, v6

    nop

    nop

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v6

    nop

    nop

    nop

    nop

    invoke-direct {v8, v6}, Ljava/util/ArrayList;-><init>(I)V

    :goto_14
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v57, v8

    nop

    nop

    if-eqz v6, :cond_b

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v59

    nop

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;->r(I)I

    move-result v60

    nop

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v61

    nop

    nop

    nop

    nop

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v62

    nop

    nop

    nop

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6}, Lepu;->a([B)Lepu;

    move-result-object v63

    nop

    nop

    nop

    nop

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v6

    nop

    invoke-static {v6}, Lepu;->a([B)Lepu;

    move-result-object v64

    nop

    nop

    nop

    invoke-interface {v7, v15}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v65

    nop

    nop

    nop

    invoke-interface {v7, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v67

    nop

    nop

    invoke-interface {v7, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v69

    nop

    invoke-interface {v7, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v72

    nop

    nop

    nop

    nop

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    nop

    nop

    nop

    invoke-static {v6}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;->o(I)I

    move-result v73

    nop

    nop

    nop

    nop

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v74

    nop

    nop

    nop

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v76

    nop

    nop

    nop

    move/from16 v6, v21

    nop

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v78

    nop

    nop

    nop

    nop

    nop

    move/from16 v8, v20

    nop

    nop

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v80

    nop

    move/from16 v20, v0

    nop

    nop

    nop

    move/from16 v0, v19

    nop

    nop

    nop

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    nop

    nop

    nop

    nop

    if-eqz v19, :cond_3

    nop

    nop

    nop

    nop

    nop

    move/from16 v19, v0

    nop

    nop

    move/from16 v0, v18

    nop

    nop

    nop

    const/16 v82, 0x1

    nop

    nop

    nop

    nop

    goto :goto_15

    nop

    :cond_3
    move/from16 v19, v0

    nop

    nop

    nop

    nop

    nop

    move/from16 v0, v18

    nop

    const/16 v82, 0x0

    nop

    :goto_15
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v18 .. v18}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;->q(I)I

    move-result v83

    nop

    nop

    nop

    move/from16 v18, v0

    nop

    nop

    nop

    nop

    move/from16 v0, v17

    nop

    nop

    nop

    nop

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v84

    nop

    nop

    nop

    nop

    move/from16 v17, v0

    nop

    move/from16 v0, v16

    nop

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v85

    nop

    nop

    nop

    nop

    nop

    move/from16 v16, v0

    nop

    nop

    nop

    move/from16 v0, v56

    nop

    nop

    nop

    nop

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v86

    nop

    nop

    nop

    nop

    nop

    move/from16 v56, v0

    nop

    nop

    nop

    nop

    nop

    move/from16 v0, v44

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v88

    nop

    nop

    nop

    move/from16 v44, v0

    nop

    nop

    nop

    move/from16 v0, v45

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v89

    nop

    move/from16 v45, v0

    nop

    nop

    nop

    nop

    move/from16 v0, v46

    nop

    nop

    nop

    invoke-interface {v7, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v46

    nop

    nop

    if-eqz v46, :cond_4

    nop

    nop

    nop

    const/16 v46, 0x0

    nop

    nop

    :goto_16
    move-object/from16 v90, v46

    nop

    nop

    nop

    nop

    nop

    move/from16 v46, v0

    nop

    nop

    nop

    move/from16 v0, v47

    nop

    goto :goto_17

    nop

    nop

    :cond_4
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v46

    nop

    nop

    nop

    goto :goto_16

    nop

    nop

    :goto_17
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v47

    nop

    nop

    nop

    nop

    invoke-static/range {v47 .. v47}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;->p(I)I

    move-result v93

    nop

    nop

    nop

    nop

    move/from16 v47, v0

    nop

    nop

    move/from16 v0, v48

    nop

    nop

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v48

    nop

    invoke-static/range {v48 .. v48}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;->l([B)Lewr;

    move-result-object v92

    nop

    nop

    nop

    nop

    move/from16 v48, v0

    nop

    move/from16 v0, v49

    nop

    nop

    nop

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v49

    nop

    nop

    if-eqz v49, :cond_5

    nop

    nop

    nop

    move/from16 v49, v0

    nop

    nop

    nop

    nop

    move/from16 v0, v50

    nop

    nop

    const/16 v94, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_5
    move/from16 v49, v0

    nop

    move/from16 v0, v50

    nop

    nop

    const/16 v94, 0x0

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v50

    nop

    nop

    nop

    nop

    nop

    if-eqz v50, :cond_6

    nop

    nop

    nop

    move/from16 v50, v0

    nop

    nop

    nop

    nop

    nop

    move/from16 v0, v51

    nop

    nop

    const/16 v95, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_6
    move/from16 v50, v0

    nop

    nop

    nop

    nop

    nop

    move/from16 v0, v51

    nop

    const/16 v95, 0x0

    nop

    nop

    nop

    :goto_19
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v51

    nop

    nop

    nop

    nop

    if-eqz v51, :cond_7

    nop

    move/from16 v51, v0

    nop

    nop

    nop

    move/from16 v0, v52

    nop

    const/16 v96, 0x1

    nop

    nop

    goto :goto_1a

    nop

    nop

    :cond_7
    move/from16 v51, v0

    nop

    nop

    nop

    nop

    nop

    move/from16 v0, v52

    nop

    nop

    const/16 v96, 0x0

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v52

    nop

    if-eqz v52, :cond_8

    nop

    nop

    nop

    nop

    nop

    move/from16 v52, v0

    nop

    nop

    nop

    move/from16 v0, v53

    nop

    const/16 v97, 0x1

    nop

    nop

    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_8
    move/from16 v52, v0

    nop

    nop

    move/from16 v0, v53

    nop

    const/16 v97, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v98

    nop

    nop

    move/from16 v53, v0

    nop

    nop

    nop

    nop

    move/from16 v0, v54

    nop

    nop

    nop

    nop

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v100

    nop

    nop

    nop

    nop

    nop

    move/from16 v54, v0

    nop

    nop

    nop

    nop

    nop

    move/from16 v0, v55

    nop

    nop

    nop

    nop

    invoke-interface {v7, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v21

    nop

    nop

    nop

    nop

    invoke-static/range {v21 .. v21}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;->m([B)Ljava/util/Set;

    move-result-object v102

    nop

    new-instance v71, Leps;

    nop

    move-object/from16 v91, v71

    nop

    nop

    invoke-direct/range {v91 .. v102}, Leps;-><init>(Lewr;IZZZZJJLjava/util/Set;)V

    move/from16 v55, v0

    nop

    nop

    new-instance v0, Levq;

    nop

    move-object/from16 v58, v0

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v58 .. v90}, Levq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lepu;Lepu;JJJLeps;IIJJJJZIIIJIILjava/lang/String;)V

    move/from16 v58, v1

    nop

    nop

    nop

    nop

    move-object/from16 v1, v57

    nop

    nop

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1c
    check-cast v1, [Levq;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v7, "minimum_retention_duration"

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_52

    nop

    nop

    nop

    :cond_9
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lefz;->j()V

    move-object/from16 v0, p0

    nop

    iget-object v0, v0, Lqpe;->h:Ljava/lang/Object;

    nop

    nop

    nop

    move-object/from16 v0, v23

    nop

    nop

    nop

    invoke-static {v0, v4}, Leri;->b(Levr;Ljava/util/List;)V

    move-object/from16 v1, v57

    nop

    nop

    invoke-interface {v4, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-interface {v0}, Levr;->i()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {p1 .. p1}, Left;->p()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-interface {v2, v0}, Lerg;->c([Levq;)V

    goto/32 :goto_66

    nop

    nop

    :goto_20
    goto/16 :goto_4b

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_21
    const-string v9, "backoff_delay_duration"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

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
    invoke-virtual/range {p1 .. p1}, Landroidx/work/impl/WorkDatabase;->B()Levr;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_24
    move-object/from16 v19, v4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual/range {p1 .. p1}, Left;->n()V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_26
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_27
    move/from16 v0, v20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v15, "output"

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move-object/from16 v23, v5

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-static {v7, v4}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    nop

    move-object/from16 v24, v4

    nop

    invoke-static {v7, v3}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    move-object/from16 v25, v3

    nop

    nop

    invoke-static {v7, v2}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    nop

    nop

    move-object/from16 v26, v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v1}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    nop

    nop

    move-object/from16 v27, v1

    nop

    nop

    nop

    nop

    invoke-static {v7, v0}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v28, v0

    nop

    invoke-static {v7, v15}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    nop

    nop

    move-object/from16 v29, v15

    nop

    invoke-static {v7, v14}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    nop

    nop

    move-object/from16 v30, v14

    nop

    nop

    nop

    invoke-static {v7, v13}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    nop

    nop

    move-object/from16 v31, v13

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v12}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    nop

    nop

    move-object/from16 v32, v12

    nop

    nop

    nop

    nop

    invoke-static {v7, v11}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v33, v11

    nop

    invoke-static {v7, v10}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    nop

    nop

    move-object/from16 v34, v10

    nop

    invoke-static {v7, v9}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    nop

    nop

    move-object/from16 v35, v9

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_63

    nop

    nop

    :goto_2a
    invoke-interface {v2}, Lerg;->d()Z

    move-result v3

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v11, "run_attempt_count"

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_30
    move-object/from16 v21, v6

    nop

    nop

    :try_start_3
    const-string v6, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 AND LENGTH(content_uri_triggers)<>0 ORDER BY last_enqueue_time"

    nop

    nop

    nop

    nop

    move-object/from16 v22, v7

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    invoke-static {v6, v7}, Lefz;->a(Ljava/lang/String;I)Lefz;

    move-result-object v6

    nop

    nop

    nop

    nop

    move-object v7, v5

    nop

    check-cast v7, Lewk;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v7, Lewk;->a:Left;

    nop

    nop

    invoke-virtual {v7}, Left;->k()V

    move-object v7, v5

    nop

    nop

    check-cast v7, Lewk;

    nop

    nop

    nop

    nop

    iget-object v7, v7, Lewk;->a:Left;

    nop

    nop

    nop

    nop

    invoke-static {v7, v6}, Ldvw;->C(Left;Leid;)Landroid/database/Cursor;

    move-result-object v7

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move-object/from16 v17, v2

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const-string v8, "last_enqueue_time"

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-interface {v3}, Lerg;->d()Z

    move-result v4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_34
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_36
    move/from16 v21, v6

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

    nop

    :goto_37
    move-object/from16 v1, v57

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v22 .. v22}, Lefz;->j()V

    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v2, v28

    nop

    iget-object v3, v0, Lqpe;->h:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v3, v23

    nop

    nop

    nop

    invoke-static {v3, v1}, Leri;->b(Levr;Ljava/util/List;)V

    iget v4, v0, Lqpe;->a:I

    nop

    nop

    nop

    nop

    const-string v4, "SELECT * FROM workspec WHERE state=0 AND schedule_requested_at=-1 ORDER BY last_enqueue_time LIMIT (SELECT MAX(?-COUNT(*), 0) FROM workspec WHERE schedule_requested_at<>-1 AND LENGTH(content_uri_triggers)=0 AND state NOT IN (2, 3, 5))"

    nop

    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    invoke-static {v4, v5}, Lefz;->a(Ljava/lang/String;I)Lefz;

    move-result-object v4

    nop

    nop

    nop

    nop

    const-wide/16 v6, 0x14

    nop

    invoke-virtual {v4, v5, v6, v7}, Lefz;->e(IJ)V

    move-object v6, v3

    nop

    nop

    check-cast v6, Lewk;

    nop

    iget-object v6, v6, Lewk;->a:Left;

    nop

    invoke-virtual {v6}, Left;->k()V

    move-object v6, v3

    nop

    nop

    nop

    nop

    check-cast v6, Lewk;

    nop

    nop

    nop

    iget-object v6, v6, Lewk;->a:Left;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v4}, Ldvw;->C(Left;Leid;)Landroid/database/Cursor;

    move-result-object v6

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_38
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_39
    move-object/from16 v16, v1

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual/range {p1 .. p1}, Left;->n()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast v0, [Levq;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-string v6, "schedule_requested_at"

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_3e
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_40
    const-string v0, "input"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_41
    throw v0

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_43
    move-object/from16 v16, v4

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const-string v3, "state"

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const-string v5, "run_in_foreground"

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_46
    invoke-interface {v3, v1}, Lerg;->c([Levq;)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-gtz v1, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_4a
    move-object/from16 v16, v4

    nop

    nop

    :goto_4b
    :try_start_5
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v16 .. v16}, Lefz;->j()V

    throw v0

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    goto :goto_4c

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v22, v6

    nop

    nop

    nop

    :goto_4c
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    invoke-virtual/range {v22 .. v22}, Lefz;->j()V

    throw v0

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    nop

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

    nop

    :goto_4d
    goto/16 :goto_14

    nop

    nop

    :cond_b
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    move-object/from16 v20, v5

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move-object/from16 v7, v24

    nop

    nop

    nop

    nop

    nop

    :try_start_6
    invoke-static {v6, v7}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v7

    nop

    move-object/from16 v8, v25

    nop

    nop

    nop

    invoke-static {v6, v8}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v9, v26

    nop

    nop

    invoke-static {v6, v9}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v9

    nop

    nop

    nop

    nop

    move-object/from16 v10, v27

    nop

    nop

    nop

    nop

    invoke-static {v6, v10}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v2}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v2

    nop

    nop

    nop

    move-object/from16 v11, v29

    nop

    nop

    nop

    invoke-static {v6, v11}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v11

    nop

    nop

    move-object/from16 v12, v30

    nop

    nop

    nop

    nop

    invoke-static {v6, v12}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v12

    nop

    move-object/from16 v13, v31

    nop

    nop

    invoke-static {v6, v13}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v13

    nop

    nop

    move-object/from16 v14, v32

    nop

    invoke-static {v6, v14}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v14

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v15, v33

    nop

    invoke-static {v6, v15}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v15

    nop

    nop

    nop

    move-object/from16 v5, v34

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v5}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v5

    nop

    nop

    nop

    nop

    move-object/from16 v57, v1

    nop

    nop

    move-object/from16 v1, v35

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v1}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v1

    nop

    nop

    nop

    nop

    move-object/from16 v23, v3

    nop

    nop

    nop

    nop

    move-object/from16 v3, v36

    nop

    nop

    nop

    nop

    invoke-static {v6, v3}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v0, v37

    nop

    nop

    nop

    nop

    invoke-static {v6, v0}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v0

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_50
    if-nez v3, :cond_c

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_51
    move-object/from16 v4, v38

    nop

    nop

    nop

    nop

    :try_start_7
    invoke-static {v6, v4}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    move/from16 v17, v4

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v4, v39

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v4}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    move/from16 v18, v4

    nop

    move-object/from16 v4, v40

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v4}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    move/from16 v19, v4

    nop

    nop

    nop

    move-object/from16 v4, v41

    nop

    nop

    nop

    nop

    invoke-static {v6, v4}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    move/from16 v20, v4

    nop

    move-object/from16 v4, v42

    nop

    nop

    nop

    nop

    invoke-static {v6, v4}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    nop

    nop

    move/from16 v22, v4

    nop

    move-object/from16 v4, v43

    nop

    invoke-static {v6, v4}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    move/from16 v24, v4

    nop

    nop

    nop

    nop

    const-string v4, "next_schedule_time_override_generation"

    nop

    invoke-static {v6, v4}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    nop

    nop

    move/from16 v25, v4

    nop

    nop

    nop

    nop

    const-string v4, "stop_reason"

    nop

    nop

    invoke-static {v6, v4}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    nop

    move/from16 v26, v4

    nop

    nop

    nop

    nop

    nop

    const-string v4, "trace_tag"

    nop

    invoke-static {v6, v4}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    nop

    move/from16 v27, v4

    nop

    nop

    const/4 v4, 0x0

    nop

    sget-object v4, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/ADF/UKeap;->bwiIS:Ljava/lang/String;

    nop

    nop

    nop

    invoke-static {v6, v4}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    move/from16 v28, v4

    nop

    nop

    nop

    const-string v4, "required_network_request"

    nop

    nop

    nop

    invoke-static {v6, v4}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    move/from16 v29, v4

    nop

    nop

    nop

    const-string v4, "requires_charging"

    nop

    nop

    nop

    nop

    invoke-static {v6, v4}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    nop

    move/from16 v30, v4

    nop

    nop

    nop

    const-string v4, "requires_device_idle"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v4}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    move/from16 v31, v4

    nop

    const-string v4, "requires_battery_not_low"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v6, v4}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    nop

    move/from16 v32, v4

    nop

    const-string v4, "requires_storage_not_low"

    nop

    invoke-static {v6, v4}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    move/from16 v33, v4

    nop

    const-string v4, "trigger_content_update_delay"

    nop

    nop

    invoke-static {v6, v4}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    move/from16 v34, v4

    nop

    const-string v4, "trigger_max_content_delay"

    nop

    nop

    invoke-static {v6, v4}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    nop

    move/from16 v35, v4

    nop

    nop

    nop

    nop

    nop

    const-string v4, "content_uri_triggers"

    nop

    nop

    nop

    invoke-static {v6, v4}, Lebm;->c(Landroid/database/Cursor;Ljava/lang/String;)I

    move-result v4

    nop

    move/from16 v36, v4

    nop

    nop

    nop

    nop

    new-instance v4, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    move/from16 v37, v0

    nop

    nop

    nop

    nop

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v0

    nop

    nop

    nop

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    :goto_52
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_9

    nop

    nop

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v59

    nop

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;->r(I)I

    move-result v60

    nop

    nop

    nop

    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v61

    nop

    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v62

    nop

    nop

    nop

    invoke-interface {v6, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    nop

    nop

    nop

    invoke-static {v0}, Lepu;->a([B)Lepu;

    move-result-object v63

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6, v11}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v0

    nop

    invoke-static {v0}, Lepu;->a([B)Lepu;

    move-result-object v64

    nop

    nop

    nop

    nop

    invoke-interface {v6, v12}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v65

    nop

    invoke-interface {v6, v13}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v67

    nop

    nop

    invoke-interface {v6, v14}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v69

    nop

    nop

    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v72

    nop

    nop

    nop

    invoke-interface {v6, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    nop

    invoke-static {v0}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;->o(I)I

    move-result v73

    nop

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v74

    nop

    nop

    invoke-interface {v6, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v76

    nop

    move/from16 v0, v37

    nop

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v78

    nop

    nop

    move/from16 v37, v0

    nop

    nop

    nop

    move/from16 v0, v17

    nop

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v80

    nop

    nop

    nop

    nop

    nop

    move/from16 v17, v0

    nop

    nop

    nop

    nop

    nop

    move/from16 v0, v18

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v18

    nop

    nop

    if-eqz v18, :cond_d

    nop

    nop

    nop

    move/from16 v18, v0

    nop

    move/from16 v0, v19

    nop

    nop

    const/16 v82, 0x1

    nop

    nop

    nop

    goto :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_d
    move/from16 v18, v0

    nop

    nop

    nop

    nop

    move/from16 v0, v19

    nop

    nop

    nop

    nop

    const/16 v82, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v19

    nop

    nop

    nop

    nop

    nop

    invoke-static/range {v19 .. v19}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;->q(I)I

    move-result v83

    nop

    nop

    nop

    nop

    move/from16 v19, v0

    nop

    nop

    move/from16 v0, v20

    nop

    nop

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v84

    nop

    nop

    nop

    nop

    nop

    move/from16 v20, v0

    nop

    move/from16 v0, v22

    nop

    nop

    nop

    nop

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v85

    nop

    nop

    nop

    nop

    nop

    move/from16 v22, v0

    nop

    move/from16 v0, v24

    nop

    nop

    nop

    nop

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v86

    nop

    nop

    nop

    nop

    nop

    move/from16 v24, v0

    nop

    nop

    nop

    nop

    nop

    move/from16 v0, v25

    nop

    nop

    nop

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v88

    nop

    nop

    nop

    move/from16 v25, v0

    nop

    move/from16 v0, v26

    nop

    nop

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v89

    nop

    nop

    nop

    nop

    nop

    move/from16 v26, v0

    nop

    nop

    move/from16 v0, v27

    nop

    invoke-interface {v6, v0}, Landroid/database/Cursor;->isNull(I)Z

    move-result v27

    nop

    if-eqz v27, :cond_e

    nop

    nop

    nop

    nop

    nop

    const/16 v27, 0x0

    nop

    nop

    :goto_54
    move-object/from16 v90, v27

    nop

    nop

    nop

    nop

    move/from16 v27, v0

    nop

    nop

    nop

    nop

    nop

    move/from16 v0, v28

    nop

    nop

    nop

    nop

    goto :goto_55

    nop

    nop

    :cond_e
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v27

    nop

    nop

    nop

    nop

    nop

    goto :goto_54

    nop

    nop

    :goto_55
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v28

    nop

    nop

    nop

    invoke-static/range {v28 .. v28}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;->p(I)I

    move-result v40

    nop

    move/from16 v28, v0

    nop

    nop

    nop

    nop

    move/from16 v0, v29

    nop

    nop

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v29

    nop

    nop

    nop

    nop

    invoke-static/range {v29 .. v29}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;->l([B)Lewr;

    move-result-object v39

    nop

    nop

    move/from16 v29, v0

    nop

    nop

    nop

    nop

    move/from16 v0, v30

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v30

    nop

    nop

    nop

    if-eqz v30, :cond_f

    nop

    move/from16 v30, v0

    nop

    move/from16 v0, v31

    nop

    nop

    nop

    nop

    const/16 v41, 0x1

    nop

    nop

    nop

    nop

    goto :goto_56

    nop

    nop

    nop

    :cond_f
    move/from16 v30, v0

    nop

    nop

    nop

    move/from16 v0, v31

    nop

    nop

    const/16 v41, 0x0

    nop

    nop

    nop

    :goto_56
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v31

    nop

    if-eqz v31, :cond_10

    nop

    nop

    nop

    nop

    move/from16 v31, v0

    nop

    move/from16 v0, v32

    nop

    nop

    const/16 v42, 0x1

    nop

    nop

    nop

    nop

    goto :goto_57

    nop

    nop

    :cond_10
    move/from16 v31, v0

    nop

    nop

    nop

    nop

    move/from16 v0, v32

    nop

    nop

    const/16 v42, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v32

    nop

    nop

    nop

    if-eqz v32, :cond_11

    nop

    move/from16 v32, v0

    nop

    nop

    nop

    move/from16 v0, v33

    nop

    nop

    const/16 v43, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_58

    nop

    nop

    nop

    nop

    nop

    :cond_11
    move/from16 v32, v0

    nop

    nop

    nop

    nop

    move/from16 v0, v33

    nop

    const/16 v43, 0x0

    nop

    :goto_58
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v33

    nop

    nop

    nop

    nop

    if-eqz v33, :cond_12

    nop

    nop

    move/from16 v33, v0

    nop

    nop

    nop

    nop

    move/from16 v0, v34

    nop

    nop

    nop

    const/16 v44, 0x1

    nop

    nop

    nop

    goto :goto_59

    nop

    nop

    nop

    nop

    :cond_12
    move/from16 v33, v0

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

    const/16 v44, 0x0

    nop

    nop

    nop

    :goto_59
    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v45

    nop

    nop

    nop

    nop

    nop

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

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v47

    nop

    nop

    nop

    move/from16 v35, v0

    nop

    move/from16 v0, v36

    nop

    nop

    nop

    nop

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v36

    nop

    nop

    nop

    nop

    invoke-static/range {v36 .. v36}, Landroidx/wear/ambient/AmbientLifecycleObserver$AmbientLifecycleCallback$-CC;->m([B)Ljava/util/Set;

    move-result-object v49

    nop

    nop

    nop

    nop

    new-instance v71, Leps;

    nop

    nop

    move-object/from16 v38, v71

    nop

    nop

    nop

    invoke-direct/range {v38 .. v49}, Leps;-><init>(Lewr;IZZZZJJLjava/util/Set;)V

    move/from16 v36, v0

    nop

    nop

    nop

    nop

    new-instance v0, Levq;

    nop

    nop

    nop

    nop

    move-object/from16 v58, v0

    nop

    nop

    invoke-direct/range {v58 .. v90}, Levq;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Lepu;Lepu;JJJLeps;IIJJJJZIIIJIILjava/lang/String;)V

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_5a
    const-string v12, "flex_duration"

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_5b
    move/from16 v20, v8

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_2e

    nop

    :goto_5d
    goto/16 :goto_35

    nop

    nop

    :goto_5e
    goto/32 :goto_3a

    nop

    nop

    :goto_5f
    move-object v8, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    move-object/from16 v0, p0

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_61
    const-string v1, "next_schedule_time_override"

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const-string v4, "out_of_quota_policy"

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    move-object/from16 v36, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const-string v13, "interval_duration"

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_65
    move/from16 v1, v58

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_66
    goto/16 :goto_3f

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

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_67
    if-eqz v20, :cond_13

    nop

    goto/32 :goto_12

    nop

    :cond_13
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_68
    const-string v1, "input_merger_class_name"

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_69
    if-gtz v1, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    :cond_14
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const-string v2, "worker_class_name"

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6b
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_6c
    const-string v2, "generation"

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

    :goto_6d
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v20

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_6e
    if-lez v0, :cond_15

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_2d

    nop

    :goto_6f
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v1

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_70
    move-object/from16 v8, v22

    nop

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

    :goto_71
    new-array v1, v1, [Levq;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_72
    if-nez v2, :cond_16

    nop

    goto/32 :goto_42

    nop

    :cond_16
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_73
    const-string v14, "initial_delay"

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop
.end method

.method private static b(Levr;Ljava/util/List;)V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v2, Levq;

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

    :goto_1
    goto/16 :goto_13

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_6
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-gtz v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v2, :cond_1

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

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    :goto_c
    iget-object v2, v2, Levq;->a:Ljava/lang/String;

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

    nop

    nop

    :goto_d
    const v0, 0xd

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0, v2, v0, v1}, Levr;->j(Ljava/lang/String;J)V

    goto/32 :goto_1

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

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

    :goto_15
    goto/32 :goto_a

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop
.end method
