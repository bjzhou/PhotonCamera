.class public Lrdx;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lrdv;

.field public b:J

.field private final c:J

.field private final d:J

.field private final e:J

.field private final f:J

.field private final g:Lqop;


# direct methods
.method public constructor <init>(Lrdy;)V
    .locals 17

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x19

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1
    move-object/from16 v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v3, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;

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

    :goto_5
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    invoke-static {}, Ltjv;->a()Ltjv;

    move-result-object v2

    nop

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

    :goto_7
    invoke-interface {v2}, Lrdv;->initializeIsolationCallback()J

    move-result-wide v11

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    invoke-direct {v3, v0, v0, v2, v4}, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;-><init>(Lrdx;Lrdx;Ltjv;[B)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v5, v0, Lrdx;->a:Lrdv;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_0
    goto/32 :goto_34

    nop

    :goto_b
    iput-object v2, v0, Lrdx;->a:Lrdv;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_c
    invoke-direct {v2}, Lrdw;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eq v3, v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_1
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v2, v0, Lrdx;->a:Lrdv;

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-wide v11, v0, Lrdx;->f:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    invoke-virtual/range {p1 .. p1}, Ltis;->h()[B

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v2, :cond_2

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_2
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v4, v0, Lrdx;->a:Lrdv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_13
    const/4 v4, 0x6

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_14
    iput-object v2, v0, Lrdx;->g:Lqop;

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_17
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    :goto_18
    check-cast v3, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_19
    invoke-direct {v3, v0, v0, v2}, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;-><init>(Lrdx;Lrdx;Ltjv;)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1a
    if-nez v2, :cond_3

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3d

    nop

    nop

    :goto_1b
    iget v3, v1, Lrdy;->c:I

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-object v3, v0, Lrdx;->a:Lrdv;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v3, v1, Lrdy;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1f
    if-nez v3, :cond_4

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget v2, v1, Lrdy;->b:I

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_21
    iput-wide v2, v0, Lrdx;->c:J

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_22
    const-wide/16 v15, 0x0

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_23
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_24
    invoke-interface {v4, v2, v3}, Lrdv;->initializeFrameBufferReleaseCallback(J)J

    move-result-wide v7

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v3, :cond_5

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

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_28
    iput-wide v9, v0, Lrdx;->e:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2a
    const/4 v4, 0x5

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_2b
    new-instance v2, Lrdw;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2c
    invoke-direct {v2}, Lqop;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_15

    nop

    nop

    :goto_2e
    goto/32 :goto_4b

    nop

    nop

    :goto_2f
    iput-wide v7, v0, Lrdx;->d:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_30
    sget-object v2, Ltlz;->a:Ltlz;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_31
    if-eq v3, v4, :cond_6

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_32
    return-void

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_36
    iget-object v2, v0, Lrdx;->a:Lrdv;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_37
    new-instance v3, Lcom/google/android/libraries/vision/visionkit/pipeline/NativePipelineImpl;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto :goto_43

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_3a
    invoke-direct {v2}, Lqop;-><init>()V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast v3, Ljava/lang/Boolean;

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

    :goto_3c
    goto/32 :goto_35

    nop

    :goto_3d
    new-instance v2, Lqop;

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

    :goto_3e
    iget v3, v1, Lrdy;->c:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {v2}, Lrdv;->initializeFrameManager()J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_40
    sget-object v2, Ltjv;->a:Ltjv;

    nop

    :goto_41
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iput-object v3, v0, Lrdx;->a:Lrdv;

    nop

    :goto_43
    goto/32 :goto_20

    nop

    nop

    :goto_44
    iget-object v2, v0, Lrdx;->a:Lrdv;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_45
    iput-object v2, v0, Lrdx;->g:Lqop;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_46
    invoke-interface/range {v5 .. v16}, Lrdv;->initialize([BJJJJJ)J

    move-result-wide v1

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_47
    iget-object v3, v1, Lrdy;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-interface {v2}, Lrdv;->initializeResultsCallback()J

    move-result-wide v9

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_49
    const-wide/16 v13, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4a
    and-int/lit8 v2, v2, 0x20

    nop

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

    :goto_4b
    new-instance v2, Lqop;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4c
    iput-wide v1, v0, Lrdx;->b:J

    nop

    goto/32 :goto_32

    nop

    nop
.end method


# virtual methods
.method public a(J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrdx;->g:Lqop;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2}, Lqop;->c(J)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public b(Lrea;)V
    .locals 3

    goto/32 :goto_13

    nop

    nop

    :goto_0
    const-string v2, "Pipeline received results: "

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

    :goto_1
    new-array v1, v1, [Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x10

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

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

    :goto_9
    const/4 v1, 0x0

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

    :goto_a
    sget-object v0, Lrdj;->a:Lrdj;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    invoke-virtual {v0, p0, p1, v1}, Lrdj;->b(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v2}, Lrdj;->d(I)Z

    move-result v2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c()V
    .locals 17

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    return-void

    nop

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
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_4
    monitor-enter p0

    nop

    :try_start_1
    iget-wide v2, v1, Lrdx;->b:J

    nop

    const-wide/16 v4, 0x0

    nop

    cmp-long v0, v2, v4

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v0, v1, Lrdx;->a:Lrdv;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2, v3}, Lrdv;->stop(J)Z

    iget-object v6, v1, Lrdx;->a:Lrdv;

    nop

    nop

    nop

    iget-wide v7, v1, Lrdx;->b:J

    nop

    nop

    nop

    iget-wide v9, v1, Lrdx;->c:J

    nop

    nop

    nop

    iget-wide v11, v1, Lrdx;->d:J

    nop

    nop

    nop

    nop

    iget-wide v13, v1, Lrdx;->e:J

    nop

    nop

    iget-wide v2, v1, Lrdx;->f:J

    nop

    nop

    nop

    nop

    move-wide v15, v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface/range {v6 .. v16}, Lrdv;->close(JJJJJ)V

    iput-wide v4, v1, Lrdx;->b:J

    nop

    nop

    nop

    nop

    iget-object v0, v1, Lrdx;->a:Lrdv;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lrdv;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object/from16 v1, p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    goto/32 :goto_b

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    throw v0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xa

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    monitor-exit p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method
