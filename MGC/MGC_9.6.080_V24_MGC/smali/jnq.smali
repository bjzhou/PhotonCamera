.class public final Ljnq;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:Landroid/hardware/SensorManager;

.field public final b:Lnpl;

.field public c:Z

.field public final d:[F

.field public e:J

.field public final f:[F

.field public final g:[F

.field public h:I

.field public final i:Liic;

.field public j:F

.field public k:Ljny;

.field public l:F

.field public m:Z

.field public n:Landroid/os/HandlerThread;

.field public final o:Landroid/hardware/SensorEventListener;

.field public final p:Lggh;

.field private final q:[F

.field private r:[D


# direct methods
.method public constructor <init>(Lggh;)V
    .locals 5

    goto/32 :goto_20

    nop

    nop

    :goto_0
    iput-object v0, p0, Ljnq;->k:Ljny;

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

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Ljnq;->a:Landroid/hardware/SensorManager;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_4
    iput-object v1, p0, Ljnq;->b:Lnpl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v1, p0, Ljnq;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_6
    iput-boolean v1, p0, Ljnq;->m:Z

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_7
    iput-object v0, p0, Ljnq;->r:[D

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_8
    iput-boolean v1, p0, Ljnq;->c:Z

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_a
    new-array v3, v2, [F

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_22

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    :goto_d
    invoke-direct {v1}, Lnpl;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput-object v3, p0, Ljnq;->f:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0, p0, v1}, Lhzb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_16

    nop

    nop

    :goto_10
    const v1, 0x3

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-array v3, v2, [F

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_12
    iput v3, p0, Ljnq;->j:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p1, p0, Ljnq;->p:Lggh;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_16
    iput-object v0, p0, Ljnq;->o:Landroid/hardware/SensorEventListener;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_17
    new-array v0, v2, [D

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_19
    iput v0, p0, Ljnq;->l:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    new-instance v0, Lhzb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v2, p0, Ljnq;->i:Liic;

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

    :goto_1c
    const/4 v1, 0x2

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v1, Lnpl;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-wide v3, p0, Ljnq;->e:J

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0xb

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :goto_22
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_24
    const/high16 v3, 0x42b40000    # 90.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v2, p0, Ljnq;->g:[F

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

    :goto_26
    invoke-static {}, Liic;->b()Liic;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_27
    iput-object v3, p0, Ljnq;->q:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_28
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-wide/16 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2a
    new-array v2, v2, [F

    nop

    fill-array-data v2, :array_0

    goto/32 :goto_25

    nop

    nop

    :goto_2b
    new-array v3, v2, [F

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2c
    iput-object v3, p0, Ljnq;->d:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const/16 v2, 0x10

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
.end method


# virtual methods
.method public final a()D
    .locals 6

    goto/32 :goto_7

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v4, p0, v2}, Lapir;->a(ILjava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    const/16 v4, 0x4f

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x7

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

    :goto_8
    return-wide v0

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

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

    :goto_c
    iget-object p0, p0, Ljnq;->i:Liic;

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

    :goto_d
    check-cast v0, Ljava/lang/Double;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    const v1, 0x14

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
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, v0}, Ljava/util/Arrays;->fill([FF)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Ljnq;->g:[F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(D)V
    .locals 3

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x18

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_11

    nop

    :goto_2
    add-double/2addr p1, v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    const-wide v1, 0x4076800000000000L    # 360.0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    if-gtz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_6
    add-double/2addr p1, v1

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    cmpg-double v0, p1, v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_a
    cmpl-double v0, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    if-ltz v0, :cond_2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Ljnq;->i:Liic;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_13

    nop

    nop

    :goto_13
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_14
    const-wide v0, -0x3f89800000000000L    # -360.0

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

    :goto_15
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, p1, p2}, Liic;->f(D)V

    goto/32 :goto_e

    nop

    nop
.end method

.method public final d()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Ljnq;->n:Landroid/os/HandlerThread;

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

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Ljnq;->m:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Ljnq;->a:Landroid/hardware/SensorManager;

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

    :goto_6
    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x0

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

    :goto_9
    iput-object v0, p0, Ljnq;->n:Landroid/os/HandlerThread;

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

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Ljnq;->o:Landroid/hardware/SensorEventListener;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final e()[F
    .locals 5

    goto/32 :goto_a

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
    iget-object v0, p0, Ljnq;->f:[F

    nop

    nop

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, [F

    nop

    nop

    nop

    nop

    iget-object v1, p0, Ljnq;->f:[F

    nop

    const/4 v2, 0x0

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    aput v3, v1, v2

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    aput v3, v1, v4

    nop

    nop

    nop

    nop

    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    nop

    aput v3, v1, v4

    nop

    nop

    nop

    nop

    iput v2, p0, Ljnq;->h:I

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    return-object v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final f()[F
    .locals 15

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_0
    double-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1
    const/high16 v14, 0x3f800000    # 1.0f

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

    :goto_2
    iput-object v0, p0, Ljnq;->r:[D

    nop

    nop

    :goto_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_4
    move v1, v8

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-array v7, v0, [F

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_5

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v13, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    move-object v9, v3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    aget-wide v2, v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_f
    iget-object v0, p0, Ljnq;->i:Liic;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_12
    aput v2, v7, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    const/4 v5, 0x0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Liic;->h()[D

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_15
    invoke-static/range {v9 .. v14}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_17
    move-object v1, v7

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

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

    :goto_19
    const/high16 v3, 0x42b40000    # 90.0f

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v6, 0x0

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

    :goto_1b
    invoke-virtual {v0}, Liic;->g()Z

    move-result v1

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

    :goto_1c
    iget-object p0, p0, Ljnq;->q:[F

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

    :goto_1d
    goto/32 :goto_2e

    nop

    nop

    :goto_1e
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1f
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v2, p0, Ljnq;->r:[D

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_22
    iget v11, p0, Ljnq;->j:F

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_23
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->rotateM([FIFFFF)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_24
    const/16 v0, 0x10

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v10, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_26
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_27
    if-nez v1, :cond_1

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_28
    move-object v5, v7

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static/range {v1 .. v6}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1e

    nop

    nop

    :goto_2c
    new-array v3, v0, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_2d
    return-object p0

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_2b

    nop

    nop

    :goto_2f
    invoke-static {v3, v8}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v1, p0, Ljnq;->q:[F

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-lt v1, v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_32
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop
.end method
