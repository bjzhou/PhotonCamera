.class public Llvk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# static fields
.field private static final f:Lsdb;


# instance fields
.field public a:I

.field public final b:Landroid/hardware/SensorManager;

.field public final c:Landroid/hardware/Sensor;

.field public final d:Landroid/hardware/Sensor;

.field public final e:Ljava/util/concurrent/Executor;

.field private final g:[F

.field private final h:[F

.field private final i:[F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

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

    :goto_1
    const-string v0, "lvk"

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

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Llvk;->f:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Ljava/util/concurrent/Executor;)V
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    iput v0, p0, Llvk;->a:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Llvk;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const/4 p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Llvk;->i:[F

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Llvk;->d:Landroid/hardware/Sensor;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    const/4 p2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    iput-object p2, p0, Llvk;->c:Landroid/hardware/Sensor;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    new-array v1, v0, [F

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

    :goto_a
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    const v1, 0x15

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_10
    iput-object v0, p0, Llvk;->h:[F

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

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    :goto_15
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_19
    iput-object p1, p0, Llvk;->b:Landroid/hardware/SensorManager;

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

    :goto_1a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1c
    iput-object v1, p0, Llvk;->g:[F

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    goto/32 :goto_5

    nop

    nop

    :goto_0
    iput p1, p0, Llvk;->a:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Llvk;->h:[F

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Llvk;->i:[F

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_4
    iget-object v3, p0, Llvk;->g:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_5
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_6
    double-to-int p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    const/4 v1, 0x1

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_8
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_24

    nop

    nop

    :goto_b
    rem-int/lit16 p1, p1, 0x168

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_c
    invoke-interface {p0, v0, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-wide v2, 0x400921fb54442d18L    # Math.PI

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    if-ltz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_0
    goto/32 :goto_31

    nop

    nop

    :goto_11
    mul-float/2addr p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    :goto_13
    goto/32 :goto_29

    nop

    nop

    :goto_14
    float-to-double v0, p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object p1

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

    nop

    :goto_16
    goto/16 :goto_2

    nop

    :goto_17
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x2

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

    :goto_19
    const/high16 v0, 0x43340000    # 180.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1a
    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1b
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1d
    const/16 v0, 0xfc6

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1e
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v4, p0, Llvk;->h:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_20
    new-array v2, v2, [F

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_21
    aget p1, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iput p1, p0, Llvk;->a:I

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_25
    iget-object p1, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_26
    invoke-static {p1, v2, v3, v4}, Landroid/hardware/SensorManager;->getRotationMatrix([F[F[F[F)Z

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_28
    invoke-interface {p0, v0}, Lscz;->M(I)Lsdo;

    move-result-object p0

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

    :goto_29
    sget-object p0, Llvk;->f:Lsdb;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {p1, v0}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2d
    new-array v0, v2, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Llvk;->g:[F

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_2f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    :goto_30
    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    add-int/lit16 p1, p1, 0x168

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {p1, v1, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_33
    iget-object p1, p0, Llvk;->i:[F

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_34
    if-eq v0, v1, :cond_3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Lscs;->c()Lsdo;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_36
    const-string v0, "Unexpected sensor type %s"

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_37
    div-double/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_38
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop
.end method
