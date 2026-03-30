.class public final synthetic Lhdp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field private final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput p1, p0, Lhdp;->a:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v3, Lcom/google/android/apps/camera/filmstrip/transition/KkW/xCXUu;->WNptTeGyfBlfF:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v1}, Lehv;->h()V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2
    if-ne v0, v2, :cond_0

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_41

    nop

    :cond_1
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v3}, Lehv;->h()V

    goto/32 :goto_8

    nop

    nop

    :goto_7
    const-string v4, "shot_id"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_8
    return-object v1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_9
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Lfdn;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_b
    throw v0

    nop

    :goto_c
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_d
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    move-object/from16 v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_f
    if-ne v0, v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v2, 0x1

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

    nop

    :goto_11
    const-string v1, "DELETE FROM EnumerationErrorCounts"

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

    nop

    nop

    :goto_12
    const/4 v3, 0x3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    check-cast v0, Lfdn;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_14
    const/4 v1, 0x0

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_15
    invoke-interface {v1}, Lehv;->h()V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v3}, Lehv;->h()V

    goto/32 :goto_46

    nop

    nop

    :goto_17
    const-string v2, "SELECT * FROM shot_log ORDER BY shot_id DESC, sequence"

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_3f

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1}, Lfdn;->J(Ljava/lang/String;)Legz;

    move-result-object v1

    nop

    nop

    nop

    :try_start_0
    invoke-interface {v1}, Lehv;->k()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move-object/from16 v0, p1

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_1b
    goto/16 :goto_3f

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_1c
    throw v2

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_62

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    :goto_1f
    throw v2

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_26

    nop

    nop

    :cond_4
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v1}, Lehv;->h()V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget v0, v0, Lhdp;->a:I

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

    nop

    :goto_24
    move-object v2, v1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0, v3}, Lfdn;->J(Ljava/lang/String;)Legz;

    move-result-object v3

    nop

    nop

    :try_start_1
    invoke-static {v3, v4}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v0

    nop

    const/4 v4, 0x0

    nop

    nop

    sget-object v4, Lcom/google/android/apps/camera/whitebalance/YD/hwKuVzZ;->tmOcjCj:Ljava/lang/String;

    nop

    nop

    nop

    nop

    invoke-static {v3, v4}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v4

    nop

    nop

    const-string v6, "start_millis"

    nop

    nop

    nop

    invoke-static {v3, v6}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v6

    nop

    nop

    nop

    nop

    const-string v7, "persisted_millis"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v7}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v7

    nop

    const-string v8, "canceled_millis"

    nop

    invoke-static {v3, v8}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    const-string v9, "deleted_millis"

    nop

    invoke-static {v3, v9}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    const-string v10, "most_recent_event_millis"

    nop

    invoke-static {v3, v10}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v10

    nop

    nop

    nop

    nop

    nop

    const-string v11, "capture_session_type"

    nop

    nop

    nop

    invoke-static {v3, v11}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v11

    nop

    nop

    nop

    const-string v12, "capture_session_shot_id"

    nop

    nop

    nop

    invoke-static {v3, v12}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v12

    nop

    nop

    nop

    const-string v13, "pid"

    nop

    invoke-static {v3, v13}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v13

    nop

    nop

    const-string v14, "stuck"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v14}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v14

    nop

    nop

    const-string v15, "failed"

    nop

    nop

    nop

    invoke-static {v3, v15}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v15

    nop

    nop

    nop

    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    :goto_26
    invoke-interface {v3}, Lehv;->k()Z

    move-result v16

    nop

    nop

    nop

    nop

    nop

    if-eqz v16, :cond_4

    nop

    nop

    new-instance v5, Lhrn;

    nop

    invoke-direct {v5}, Lhrn;-><init>()V

    move-object/from16 p1, v2

    nop

    nop

    nop

    invoke-interface {v3, v0}, Lehv;->b(I)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    iput-wide v1, v5, Lhrn;->a:J

    nop

    nop

    invoke-interface {v3, v4}, Lehv;->j(I)Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v5, Lhrn;->b:Ljava/lang/String;

    nop

    nop

    goto :goto_27

    nop

    nop

    nop

    :cond_5
    invoke-interface {v3, v4}, Lehv;->d(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    iput-object v1, v5, Lhrn;->b:Ljava/lang/String;

    nop

    :goto_27
    invoke-interface {v3, v6}, Lehv;->b(I)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    iput-wide v1, v5, Lhrn;->c:J

    nop

    nop

    invoke-interface {v3, v7}, Lehv;->b(I)J

    move-result-wide v1

    nop

    iput-wide v1, v5, Lhrn;->d:J

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v8}, Lehv;->b(I)J

    move-result-wide v1

    nop

    nop

    nop

    iput-wide v1, v5, Lhrn;->e:J

    nop

    nop

    invoke-interface {v3, v9}, Lehv;->b(I)J

    move-result-wide v1

    nop

    nop

    iput-wide v1, v5, Lhrn;->f:J

    nop

    nop

    nop

    invoke-interface {v3, v10}, Lehv;->b(I)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    iput-wide v1, v5, Lhrn;->g:J

    nop

    nop

    invoke-interface {v3, v11}, Lehv;->j(I)Z

    move-result v1

    nop

    nop

    nop

    if-eqz v1, :cond_6

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v5, Lhrn;->h:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto :goto_28

    nop

    nop

    nop

    :cond_6
    invoke-interface {v3, v11}, Lehv;->d(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    iput-object v1, v5, Lhrn;->h:Ljava/lang/String;

    nop

    nop

    :goto_28
    invoke-interface {v3, v12}, Lehv;->j(I)Z

    move-result v1

    nop

    if-eqz v1, :cond_7

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    iput-object v1, v5, Lhrn;->i:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto :goto_29

    nop

    :cond_7
    invoke-interface {v3, v12}, Lehv;->d(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v5, Lhrn;->i:Ljava/lang/String;

    nop

    nop

    nop

    :goto_29
    invoke-interface {v3, v13}, Lehv;->b(I)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    iput-wide v1, v5, Lhrn;->j:J

    nop

    nop

    nop

    invoke-interface {v3, v14}, Lehv;->b(I)J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    long-to-int v1, v1

    nop

    nop

    nop

    if-eqz v1, :cond_8

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_2a

    nop

    nop

    nop

    nop

    :cond_8
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_2a
    iput-boolean v1, v5, Lhrn;->k:Z

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v15}, Lehv;->b(I)J

    move-result-wide v1

    nop

    long-to-int v1, v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_9

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    goto :goto_2b

    nop

    nop

    nop

    :cond_9
    const/4 v1, 0x0

    nop

    nop

    :goto_2b
    iput-boolean v1, v5, Lhrn;->l:Z

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v1, p1

    nop

    nop

    nop

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2c
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v3, 0x2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    throw v0

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_30
    if-ne v0, v3, :cond_a

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

    :cond_a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v1, 0x10

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_32
    const-string v3, "SELECT shot_id, capture_session_type FROM shots WHERE NOT failed AND  persisted_millis = 0 AND canceled_millis = 0 AND deleted_millis = 0"

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_33
    move-object/from16 v0, p1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-ne v0, v3, :cond_b

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_35
    invoke-interface {v1}, Lehv;->h()V

    goto/32 :goto_1f

    nop

    nop

    :goto_36
    check-cast v0, Lfdn;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, v1}, Lfdn;->J(Ljava/lang/String;)Legz;

    move-result-object v1

    nop

    nop

    nop

    nop

    :try_start_2
    invoke-interface {v1}, Lehv;->k()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_39
    throw v0

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v1, "UPDATE EnumerationErrorCounts SET rebootCount = rebootCount+1"

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_3c
    const/4 v3, 0x4

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-interface {v2}, Lehv;->h()V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v1}, Lehv;->h()V

    :goto_3f
    goto/32 :goto_2c

    nop

    nop

    :goto_40
    invoke-virtual {v0, v2}, Lfdn;->J(Ljava/lang/String;)Legz;

    move-result-object v2

    nop

    nop

    nop

    nop

    :try_start_3
    const-string v0, "sequence"

    nop

    nop

    nop

    nop

    invoke-static {v2, v0}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    invoke-static {v2, v4}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v3

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    sget-object v4, Lcom/google/android/libraries/mdi/download/workmanager/workers/UTR/fllg;->DbLr:Ljava/lang/String;

    nop

    invoke-static {v2, v4}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    const-string v5, "message"

    nop

    invoke-static {v2, v5}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v5

    nop

    nop

    nop

    nop

    new-instance v6, Ljava/util/ArrayList;

    nop

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_41
    invoke-interface {v2}, Lehv;->k()Z

    move-result v7

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_1

    nop

    nop

    nop

    new-instance v7, Lhrr;

    nop

    nop

    nop

    invoke-direct {v7}, Lhrr;-><init>()V

    invoke-interface {v2, v0}, Lehv;->b(I)J

    move-result-wide v8

    nop

    nop

    long-to-int v8, v8

    nop

    nop

    iput v8, v7, Lhrr;->a:I

    nop

    nop

    invoke-interface {v2, v3}, Lehv;->b(I)J

    move-result-wide v8

    nop

    nop

    nop

    nop

    iput-wide v8, v7, Lhrr;->b:J

    nop

    nop

    nop

    invoke-interface {v2, v4}, Lehv;->b(I)J

    move-result-wide v8

    nop

    nop

    nop

    iput-wide v8, v7, Lhrr;->c:J

    nop

    nop

    invoke-interface {v2, v5}, Lehv;->j(I)Z

    move-result v8

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_c

    nop

    nop

    nop

    iput-object v1, v7, Lhrr;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto :goto_42

    nop

    :cond_c
    invoke-interface {v2, v5}, Lehv;->d(I)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    iput-object v8, v7, Lhrr;->d:Ljava/lang/String;

    nop

    nop

    :goto_42
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_43
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_44
    invoke-virtual {v0, v1}, Lfdn;->J(Ljava/lang/String;)Legz;

    move-result-object v1

    nop

    nop

    :try_start_4
    invoke-interface {v1}, Lehv;->k()Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_45
    move-object/from16 v0, p1

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_46
    return-object v0

    nop

    nop

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_48
    throw v2

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    move-object/from16 v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_4b
    move-object/from16 v0, p1

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

    :goto_4c
    check-cast v0, Lfdn;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4d
    check-cast v0, Lfdn;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_4e
    move-object v2, v0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4f
    check-cast v0, Lfdn;

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

    :goto_50
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_4

    nop

    nop

    :goto_53
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_54
    return-object v6

    nop

    :catchall_5
    move-exception v0

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_55
    move-object v1, v2

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

    :goto_56
    invoke-virtual {v0, v3}, Lfdn;->J(Ljava/lang/String;)Legz;

    move-result-object v3

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_57
    invoke-interface {v1}, Lehv;->h()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_58
    invoke-interface {v3}, Lehv;->h()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_59
    const v0, 0x5

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_5a
    const-string v1, "UPDATE FatalErrorCounts SET rebootCount = rebootCount+1"

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

    :goto_5b
    invoke-interface {v2}, Lehv;->h()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5c
    move-object v2, v0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_5d
    invoke-interface {v3}, Lehv;->h()V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_5e
    move-object v2, v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez v0, :cond_d

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-lez v0, :cond_e

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_51

    nop

    :goto_61
    if-nez v3, :cond_f

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :cond_f
    :try_start_5
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_62
    invoke-interface {v3}, Lehv;->k()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_3

    nop

    nop

    nop

    nop

    new-instance v4, Lhrm;

    nop

    nop

    nop

    invoke-direct {v4}, Lhrm;-><init>()V

    invoke-interface {v3, v5}, Lehv;->b(I)J

    move-result-wide v6

    nop

    nop

    iput-wide v6, v4, Lhrm;->a:J

    nop

    nop

    nop

    invoke-interface {v3, v2}, Lehv;->j(I)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_10

    nop

    nop

    nop

    nop

    nop

    iput-object v1, v4, Lhrm;->b:Ljava/lang/String;

    nop

    goto :goto_63

    nop

    :cond_10
    invoke-interface {v3, v2}, Lehv;->d(I)Ljava/lang/String;

    move-result-object v6

    nop

    iput-object v6, v4, Lhrm;->b:Ljava/lang/String;

    nop

    :goto_63
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    goto/32 :goto_1e

    nop

    nop

    nop
.end method
