.class public final Livy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field public final a:Landroid/hardware/SensorManager;

.field public final b:Landroid/hardware/Sensor;

.field public final c:Landroid/hardware/Sensor;

.field private final d:Liic;

.field private e:J

.field private f:I

.field private final g:[F

.field private final h:[F

.field private final i:[F

.field private j:D

.field private k:D

.field private l:D


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;I)V
    .locals 9

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_1
    const/high16 v6, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_3
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

    :goto_4
    const/high16 v5, 0x43340000    # 180.0f

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

    nop

    :goto_5
    new-array v3, v1, [F

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_6
    move-object v4, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_7
    iput-wide v1, p0, Livy;->e:J

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Livy;->d:Liic;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_9
    const/16 v1, 0x10

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_b
    new-array v2, v1, [F

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

    :goto_c
    goto/32 :goto_16

    nop

    :goto_d
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_f
    new-array p1, v1, [F

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

    :goto_10
    const/4 v3, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    const v0, 0x15

    nop

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

    :goto_12
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_13
    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_14
    new-array p0, v1, [F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_21

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_19
    iput-object v2, p0, Livy;->g:[F

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-array v3, v1, [F

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object p1, p0, Livy;->a:Landroid/hardware/SensorManager;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

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

    :goto_1e
    iput-object v3, p0, Livy;->i:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput v1, p0, Livy;->f:I

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_20
    invoke-virtual {p1, v0}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_21
    goto/32 :goto_d

    nop

    :goto_22
    move-object v3, p1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_24
    int-to-float v5, p2

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v0, p0, Livy;->b:Landroid/hardware/Sensor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-object v3, p0, Livy;->h:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_28
    rem-int v0, v0, v1

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

    :goto_29
    const-wide/16 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2a
    invoke-static {}, Liic;->b()Liic;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2b
    iput-wide v3, p0, Livy;->l:D

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2c
    iput-wide v3, p0, Livy;->j:D

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_2d
    const v1, 0x1e

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->setRotateM([FIFFFF)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move-object v3, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_30
    const-wide/16 v3, 0x0

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_31
    const/high16 v8, 0x3f800000    # 1.0f

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

    :goto_32
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput-object p1, p0, Livy;->c:Landroid/hardware/Sensor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_34
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_35
    iput-wide v3, p0, Livy;->k:D

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_36
    move-object v6, p1

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
.end method


# virtual methods
.method public final declared-synchronized a()D
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    throw v0

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

    :goto_4
    const v1, 0xe

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-wide v0

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
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-wide v0, p0, Livy;->l:D

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    :goto_c
    const v0, 0x19

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
.end method

.method public final declared-synchronized b()D
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-wide v0, p0, Livy;->j:D

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

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_7
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x1e

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

    :goto_a
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    return-wide v0

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop
.end method

.method public final declared-synchronized c()D
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    return-wide v0

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

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    :goto_6
    monitor-enter p0

    nop

    :try_start_1
    iget-wide v0, p0, Livy;->k:D

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

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

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop
.end method

.method public final declared-synchronized d(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    :goto_2
    monitor-enter p0

    nop

    :try_start_0
    iput p1, p0, Livy;->f:I

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p0, Livy;->d:Liic;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Liic;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized e([F)V
    .locals 4

    goto/32 :goto_3

    nop

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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    throw p1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1e

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
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Livy;->i:[F

    nop

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    aget v2, v0, v1

    nop

    nop

    aput v2, p1, v1

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    aget v2, v0, v1

    nop

    nop

    nop

    nop

    aput v2, p1, v1

    nop

    nop

    nop

    nop

    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    aget v2, v0, v1

    nop

    aput v2, p1, v1

    nop

    nop

    const/4 v1, 0x4

    nop

    nop

    nop

    aget v2, v0, v1

    nop

    const/4 v3, 0x3

    nop

    nop

    nop

    nop

    nop

    aput v2, p1, v3

    nop

    const/4 v2, 0x5

    nop

    nop

    nop

    aget v3, v0, v2

    nop

    nop

    nop

    nop

    aput v3, p1, v1

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x6

    nop

    nop

    nop

    aget v3, v0, v1

    nop

    nop

    nop

    nop

    aput v3, p1, v2

    nop

    nop

    nop

    nop

    const/16 v2, 0x8

    nop

    aget v3, v0, v2

    nop

    aput v3, p1, v1

    nop

    const/16 v1, 0x9

    nop

    nop

    nop

    aget v1, v0, v1

    nop

    nop

    const/4 v3, 0x7

    nop

    nop

    nop

    nop

    aput v1, p1, v3

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0xa

    nop

    nop

    nop

    nop

    nop

    aget v0, v0, v1

    nop

    nop

    nop

    aput v0, p1, v2

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x19

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_c
    goto/32 :goto_7

    nop
.end method

.method final declared-synchronized f([FIJ)V
    .locals 15

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-wide v5, v1, Livy;->e:J

    nop

    nop

    const-wide/16 v7, 0x0

    nop

    nop

    cmp-long v5, v5, v7

    nop

    nop

    nop

    nop

    nop

    if-nez v5, :cond_0

    nop

    nop

    iget-object v5, v1, Livy;->d:Liic;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Liic;->e()V

    :cond_0
    iput-wide v3, v1, Livy;->e:J

    nop

    nop

    const/4 v5, 0x1

    nop

    nop

    if-ne v2, v5, :cond_1

    nop

    nop

    nop

    nop

    iget-object v2, v1, Livy;->d:Liic;

    nop

    nop

    nop

    invoke-virtual {v2, v0, v3, v4}, Liic;->c([FJ)V

    goto :goto_1

    nop

    nop

    :cond_1
    const/4 v5, 0x4

    nop

    nop

    nop

    if-ne v2, v5, :cond_2

    nop

    iget-object v2, v1, Livy;->d:Liic;

    nop

    nop

    nop

    invoke-virtual {v2, v0, v3, v4}, Liic;->d([FJ)V

    :cond_2
    :goto_1
    iget-object v0, v1, Livy;->d:Liic;

    nop

    nop

    nop

    invoke-virtual {v0}, Liic;->h()[D

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v3, 0x10

    nop

    nop

    nop

    nop

    nop

    if-ge v2, v3, :cond_3

    nop

    iget-object v3, v1, Livy;->h:[F

    nop

    nop

    aget-wide v4, v0, v2

    nop

    double-to-float v4, v4

    nop

    nop

    aput v4, v3, v2

    nop

    nop

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_3
    iget-object v3, v1, Livy;->h:[F

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    const/high16 v5, -0x3d4c0000    # -90.0f

    nop

    const/high16 v6, 0x3f800000    # 1.0f

    nop

    nop

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget-object v9, v1, Livy;->i:[F

    nop

    nop

    nop

    iget-object v11, v1, Livy;->g:[F

    nop

    nop

    nop

    nop

    iget-object v13, v1, Livy;->h:[F

    nop

    nop

    nop

    nop

    const/4 v14, 0x0

    nop

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    const/4 v12, 0x0

    nop

    nop

    nop

    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v2, v1, Livy;->i:[F

    nop

    nop

    nop

    iget v0, v1, Livy;->f:I

    nop

    nop

    nop

    nop

    neg-int v0, v0

    nop

    nop

    nop

    nop

    int-to-float v4, v0

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    const/high16 v5, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    invoke-static/range {v2 .. v7}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    iget v0, v1, Livy;->f:I

    nop

    const/16 v2, 0xb4

    nop

    nop

    nop

    nop

    if-ne v0, v2, :cond_4

    nop

    nop

    iget-object v3, v1, Livy;->i:[F

    nop

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    const/high16 v5, 0x43340000    # 180.0f

    nop

    nop

    nop

    const/high16 v6, 0x3f800000    # 1.0f

    nop

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    :cond_4
    iget-object v0, v1, Livy;->i:[F

    nop

    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    aget v2, v0, v2

    nop

    nop

    float-to-double v2, v2

    nop

    nop

    nop

    const/16 v4, 0xa

    nop

    aget v0, v0, v4

    nop

    nop

    nop

    float-to-double v4, v0

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v6

    nop

    nop

    nop

    nop

    const-wide v8, 0x3fb999999999999aL    # 0.1

    nop

    nop

    nop

    cmpg-double v0, v6, v8

    nop

    nop

    nop

    const-wide/16 v6, 0x0

    nop

    nop

    if-gez v0, :cond_5

    nop

    nop

    goto :goto_3

    nop

    nop

    :cond_5
    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v2

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    nop

    nop

    nop

    const-wide v4, -0x3fa9800000000000L    # -90.0

    nop

    nop

    nop

    sub-double/2addr v4, v2

    nop

    nop

    nop

    cmpg-double v0, v4, v6

    nop

    nop

    nop

    const-wide v2, 0x4076800000000000L    # 360.0

    nop

    nop

    nop

    if-gez v0, :cond_6

    nop

    nop

    nop

    add-double/2addr v4, v2

    nop

    :cond_6
    move-wide v6, v4

    nop

    nop

    nop

    cmpl-double v0, v6, v2

    nop

    nop

    nop

    nop

    if-ltz v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    const-wide v2, -0x3f89800000000000L    # -360.0

    nop

    nop

    nop

    add-double/2addr v6, v2

    nop

    nop

    nop

    :cond_7
    :goto_3
    iput-wide v6, v1, Livy;->l:D

    nop

    nop

    iget-object v0, v1, Livy;->i:[F

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x6

    nop

    nop

    nop

    nop

    nop

    aget v0, v0, v2

    nop

    nop

    nop

    float-to-double v2, v0

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    nop

    nop

    nop

    iput-wide v2, v1, Livy;->k:D

    nop

    iget-object v0, v1, Livy;->i:[F

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x5

    nop

    nop

    nop

    aget v0, v0, v2

    nop

    nop

    nop

    nop

    nop

    float-to-double v2, v0

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljava/lang/Math;->asin(D)D

    move-result-wide v2

    nop

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    nop

    nop

    nop

    iput-wide v2, v1, Livy;->j:D

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    nop

    nop

    :goto_9
    move-object v1, p0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    move-wide/from16 v3, p3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move/from16 v2, p2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_8
    goto/32 :goto_10

    nop

    :goto_d
    move-object/from16 v0, p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    const v0, 0x1e

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_9

    nop

    nop

    :goto_12
    const v1, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

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
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    const v1, 0xd

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_b
    invoke-virtual {v1}, Landroid/hardware/Sensor;->getType()I

    move-result v1

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

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    invoke-virtual {p0, v0, v1, v2, v3}, Livy;->f([FIJ)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method
