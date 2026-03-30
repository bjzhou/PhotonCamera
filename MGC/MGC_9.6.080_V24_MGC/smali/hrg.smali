.class public final synthetic Lhrg;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lubk;


# instance fields
.field public final synthetic a:J

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(JI)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iput p3, p0, Lhrg;->b:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-wide p1, p0, Lhrg;->a:J

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

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 16

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v1}, Lehv;->h()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v3}, Lehv;->h()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_4
    if-ne v1, v2, :cond_1

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

    :cond_1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_5
    const-string v5, "SELECT * FROM shot_log WHERE shot_id = ? ORDER BY sequence"

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

    :goto_6
    const v1, 0x19

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

    :goto_7
    iget-wide v5, v0, Lhrg;->a:J

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-interface {v1, v2, v5, v6}, Lehv;->e(IJ)V

    const-string v0, "sequence"

    nop

    nop

    invoke-static {v1, v0}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    invoke-static {v1, v3}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    const-string v3, "time_millis"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v3}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v3

    nop

    nop

    nop

    const-string v5, "message"

    nop

    nop

    invoke-static {v1, v5}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    new-instance v6, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    :goto_8
    invoke-interface {v1}, Lehv;->k()Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_a

    nop

    nop

    new-instance v7, Lhrr;

    nop

    nop

    nop

    nop

    invoke-direct {v7}, Lhrr;-><init>()V

    invoke-interface {v1, v0}, Lehv;->b(I)J

    move-result-wide v8

    nop

    nop

    nop

    long-to-int v8, v8

    nop

    nop

    nop

    iput v8, v7, Lhrr;->a:I

    nop

    invoke-interface {v1, v2}, Lehv;->b(I)J

    move-result-wide v8

    nop

    nop

    nop

    nop

    iput-wide v8, v7, Lhrr;->b:J

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3}, Lehv;->b(I)J

    move-result-wide v8

    nop

    nop

    nop

    iput-wide v8, v7, Lhrr;->c:J

    nop

    nop

    invoke-interface {v1, v5}, Lehv;->j(I)Z

    move-result v8

    nop

    nop

    nop

    nop

    if-eqz v8, :cond_2

    nop

    nop

    iput-object v4, v7, Lhrr;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    nop

    :cond_2
    invoke-interface {v1, v5}, Lehv;->d(I)Ljava/lang/String;

    move-result-object v8

    nop

    iput-object v8, v7, Lhrr;->d:Ljava/lang/String;

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v1, v5}, Lfdn;->J(Ljava/lang/String;)Legz;

    move-result-object v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v1}, Lehv;->h()V

    goto/32 :goto_2f

    nop

    nop

    :goto_c
    throw v0

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    :goto_e
    check-cast v1, Lfdn;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x16

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    move-object/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_11
    return-object v4

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
    throw v0

    nop

    nop

    :goto_13
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    move-object v4, v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_15
    invoke-interface {v1}, Lehv;->h()V

    goto/32 :goto_11

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_17
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_18
    move-object v0, v4

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_15

    nop

    nop

    :goto_1a
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1c
    const-string v5, "SELECT * FROM shots WHERE shot_id = ?"

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

    nop

    :goto_1d
    check-cast v1, Lfdn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v1, Lfdn;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v4, 0x0

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

    :goto_20
    const-string v3, "DELETE FROM shots WHERE start_millis < ?"

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

    :goto_21
    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    :goto_22
    invoke-interface {v3}, Lehv;->h()V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_23
    invoke-interface {v1}, Lehv;->h()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-string v3, "shot_id"

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_25
    iget-wide v5, v0, Lhrg;->a:J

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-interface {v1, v2, v5, v6}, Lehv;->e(IJ)V

    invoke-static {v1, v3}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v0

    nop

    nop

    const-string v3, "title"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v3}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v3

    nop

    nop

    nop

    const-string v5, "start_millis"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v5}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    const-string v6, "persisted_millis"

    nop

    nop

    nop

    invoke-static {v1, v6}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v6

    nop

    nop

    const-string v7, "canceled_millis"

    nop

    nop

    nop

    nop

    nop

    invoke-static {v1, v7}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v7

    nop

    const-string v8, "deleted_millis"

    nop

    invoke-static {v1, v8}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v8

    nop

    const-string v9, "most_recent_event_millis"

    nop

    invoke-static {v1, v9}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v9

    nop

    nop

    nop

    nop

    const-string v10, "capture_session_type"

    nop

    nop

    nop

    nop

    invoke-static {v1, v10}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v10

    nop

    nop

    const-string v11, "capture_session_shot_id"

    nop

    nop

    invoke-static {v1, v11}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v11

    nop

    nop

    nop

    nop

    const-string v12, "pid"

    nop

    nop

    invoke-static {v1, v12}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v12

    nop

    nop

    nop

    const-string v13, "stuck"

    nop

    nop

    nop

    invoke-static {v1, v13}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v13

    nop

    nop

    nop

    nop

    nop

    const-string v14, "failed"

    nop

    invoke-static {v1, v14}, Ldvx;->g(Lehv;Ljava/lang/String;)I

    move-result v14

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Lehv;->k()Z

    move-result v15

    nop

    if-eqz v15, :cond_3

    nop

    nop

    nop

    nop

    new-instance v15, Lhrn;

    nop

    invoke-direct {v15}, Lhrn;-><init>()V

    move/from16 p0, v5

    nop

    invoke-interface {v1, v0}, Lehv;->b(I)J

    move-result-wide v4

    nop

    iput-wide v4, v15, Lhrn;->a:J

    nop

    nop

    invoke-interface {v1, v3}, Lehv;->j(I)Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    const/4 v0, 0x0

    nop

    iput-object v0, v15, Lhrn;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    :goto_26
    move/from16 v0, p0

    nop

    nop

    goto :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_4
    invoke-interface {v1, v3}, Lehv;->d(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    iput-object v0, v15, Lhrn;->b:Ljava/lang/String;

    nop

    goto :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-interface {v1, v0}, Lehv;->b(I)J

    move-result-wide v3

    nop

    nop

    iput-wide v3, v15, Lhrn;->c:J

    nop

    nop

    invoke-interface {v1, v6}, Lehv;->b(I)J

    move-result-wide v3

    nop

    nop

    iput-wide v3, v15, Lhrn;->d:J

    nop

    nop

    invoke-interface {v1, v7}, Lehv;->b(I)J

    move-result-wide v3

    nop

    nop

    nop

    iput-wide v3, v15, Lhrn;->e:J

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v8}, Lehv;->b(I)J

    move-result-wide v3

    nop

    nop

    iput-wide v3, v15, Lhrn;->f:J

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v9}, Lehv;->b(I)J

    move-result-wide v3

    nop

    nop

    iput-wide v3, v15, Lhrn;->g:J

    nop

    nop

    invoke-interface {v1, v10}, Lehv;->j(I)Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_5

    nop

    nop

    nop

    const/4 v0, 0x0

    nop

    iput-object v0, v15, Lhrn;->h:Ljava/lang/String;

    nop

    nop

    goto :goto_28

    nop

    nop

    nop

    nop

    :cond_5
    invoke-interface {v1, v10}, Lehv;->d(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    iput-object v0, v15, Lhrn;->h:Ljava/lang/String;

    nop

    :goto_28
    invoke-interface {v1, v11}, Lehv;->j(I)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_6

    nop

    nop

    const/4 v0, 0x0

    nop

    iput-object v0, v15, Lhrn;->i:Ljava/lang/String;

    nop

    nop

    goto :goto_29

    nop

    :cond_6
    invoke-interface {v1, v11}, Lehv;->d(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    iput-object v0, v15, Lhrn;->i:Ljava/lang/String;

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v1, v12}, Lehv;->b(I)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    nop

    iput-wide v3, v15, Lhrn;->j:J

    nop

    nop

    nop

    nop

    invoke-interface {v1, v13}, Lehv;->b(I)J

    move-result-wide v3

    nop

    nop

    nop

    nop

    long-to-int v0, v3

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_7

    nop

    nop

    move v0, v2

    nop

    goto :goto_2a

    nop

    :cond_7
    move v0, v3

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput-boolean v0, v15, Lhrn;->k:Z

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v14}, Lehv;->b(I)J

    move-result-wide v4

    nop

    nop

    nop

    nop

    long-to-int v0, v4

    nop

    if-eqz v0, :cond_8

    nop

    nop

    goto :goto_2b

    nop

    nop

    nop

    :cond_8
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput-boolean v2, v15, Lhrn;->l:Z

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_14

    nop

    nop

    :goto_2c
    invoke-virtual {v1, v5}, Lfdn;->J(Ljava/lang/String;)Legz;

    move-result-object v1

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2d
    iget v1, v0, Lhrg;->b:I

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2e
    if-nez v1, :cond_9

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    throw v0

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_36

    nop

    nop

    :goto_31
    const/4 v2, 0x1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-wide v4, v0, Lhrg;->a:J

    nop

    nop

    nop

    :try_start_2
    invoke-interface {v3, v2, v4, v5}, Lehv;->e(IJ)V

    invoke-interface {v3}, Lehv;->k()Z

    invoke-static {v1}, Ldvx;->i(Lfdn;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_33
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_34
    invoke-virtual {v1, v3}, Lfdn;->J(Ljava/lang/String;)Legz;

    move-result-object v3

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

    :goto_35
    return-object v0

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_36
    move-object/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_8

    nop

    nop

    :cond_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_38
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return-object v6

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop
.end method
