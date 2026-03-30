.class public final Lppj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lppe;


# instance fields
.field public final a:Ljava/util/List;

.field public b:I

.field public final c:Lnar;

.field private final d:Landroid/hardware/SensorManager;

.field private final e:Ljava/util/Set;

.field private final f:Landroid/hardware/SensorEventListener;

.field private final g:Landroid/hardware/Sensor;


# direct methods
.method private final declared-synchronized 33f5b80483094659737b73d90f80a8a4m()V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_7
    const v0, 0xa

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lppj;->d:Landroid/hardware/SensorManager;

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lppj;->f:Landroid/hardware/SensorEventListener;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    const v1, 0x5

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

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;)V
    .locals 17

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v4, v0, Lppj;->a:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2
    const v0, 0x18

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v16, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    const-wide/16 v9, 0x0

    nop

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

    :goto_6
    iput-object v2, v0, Lppj;->e:Ljava/util/Set;

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

    :goto_7
    goto/16 :goto_35

    nop

    nop

    :goto_8
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v15, Lppf;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-object v5, v15

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v2, 0x1770

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_c
    move-object v2, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_d
    const/16 v2, 0x1770

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_10
    if-lt v3, v2, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x1e

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/16 v6, 0x68

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_14
    new-instance v2, Lnar;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v2, v0, Lppj;->c:Lnar;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v14, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    iput-object v1, v0, Lppj;->g:Landroid/hardware/Sensor;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_18
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    :goto_1b
    invoke-direct {v3, v1}, Lppg;-><init>(I)V

    goto/32 :goto_30

    nop

    nop

    :goto_1c
    const-wide/16 v11, -0x1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v1, v0, Lppj;->d:Landroid/hardware/SensorManager;

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

    :goto_1e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_20
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v2, Ljava/util/HashSet;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v8, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {v2, v0}, Lppi;-><init>(Lppj;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v3, Lppg;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v1, 0x0

    nop

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

    :goto_27
    invoke-direct {v2, v3, v1}, Lnar;-><init>(Lpcl;I)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_28
    const/4 v13, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v2, Lppi;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2a
    move-object/from16 v1, p1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2b
    iput v1, v0, Lppj;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2e
    iput-object v2, v0, Lppj;->f:Landroid/hardware/SensorEventListener;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2f
    move/from16 v15, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_30
    const/16 v1, 0x1770

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput-object v1, v0, Lppj;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_32
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_33
    invoke-direct/range {v5 .. v15}, Lppf;-><init>(IIIJJFFF)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move v3, v1

    nop

    :goto_35
    goto/32 :goto_10

    nop

    nop

    :goto_36
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_37
    new-instance v1, Ljava/util/ArrayList;

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

    :goto_38
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3

    nop

    nop
.end method

.method private final declared-synchronized da190e616797844b591057d0190e7728m()V
    .locals 4

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

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

    nop

    :catchall_0
    move-exception v0

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

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_4
    monitor-enter p0

    nop

    :try_start_1
    iget-object v0, p0, Lppj;->d:Landroid/hardware/SensorManager;

    nop

    nop

    iget-object v1, p0, Lppj;->f:Landroid/hardware/SensorEventListener;

    nop

    nop

    nop

    iget-object v2, p0, Lppj;->g:Landroid/hardware/Sensor;

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    throw v0

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1c

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lppd;
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

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

    :goto_4
    throw p1

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lppj;->e:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lppj;->da190e616797844b591057d0190e7728m()V

    :cond_1
    new-instance v0, Lpph;

    nop

    nop

    const/4 v1, 0x0

    nop

    invoke-direct {v0, p0, p1, v1}, Lpph;-><init>(Lppj;Ljava/lang/String;I)V

    iget-object p1, p0, Lppj;->e:Ljava/util/Set;

    nop

    nop

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final declared-synchronized b(Lppd;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lppj;->e:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    iget-object p1, p0, Lppj;->e:Ljava/util/Set;

    nop

    nop

    nop

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    invoke-direct {p0}, Lppj;->33f5b80483094659737b73d90f80a8a4m()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

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

    :goto_3
    monitor-exit p0

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop
.end method
