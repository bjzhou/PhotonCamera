.class public final Ljnp;
.super Landroid/os/HandlerThread;
.source "PG"


# instance fields
.field a:Landroid/os/Handler;

.field final synthetic b:Ljnq;


# direct methods
.method public constructor <init>(Ljnq;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    const-string p1, "sensor thread"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Ljnp;->b:Ljnq;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

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
    iput-object p1, p0, Ljnp;->a:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method protected final onLooperPrepared()V
    .locals 5

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x4

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_18

    nop

    nop

    :goto_2
    iget-object v1, v0, Ljnq;->a:Landroid/hardware/SensorManager;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_3
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4
    iget-object v4, p0, Ljnp;->a:Landroid/os/Handler;

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

    :goto_5
    iget-object v0, p0, Ljnp;->b:Ljnq;

    nop

    nop

    nop

    goto/32 :goto_2

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

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    iget-object v0, p0, Ljnp;->b:Ljnq;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_a
    iget-object v0, v0, Ljnq;->o:Landroid/hardware/SensorEventListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_b
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_0
    goto/32 :goto_17

    nop

    :goto_d
    invoke-direct {v1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, v0, Ljnq;->o:Landroid/hardware/SensorEventListener;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v0, v2, v3, p0}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Ljnp;->b:Ljnq;

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

    nop

    :goto_13
    iget-object p0, p0, Ljnp;->a:Landroid/os/Handler;

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

    :goto_14
    invoke-virtual {p0}, Ljnp;->getLooper()Landroid/os/Looper;

    move-result-object v0

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

    nop

    :goto_15
    new-instance v1, Landroid/os/Handler;

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_16
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_17
    goto/32 :goto_11

    nop

    :goto_18
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_19
    const/4 v3, 0x3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v4, p0, Ljnp;->a:Landroid/os/Handler;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1d
    iput-object v1, p0, Ljnp;->a:Landroid/os/Handler;

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

    :goto_1e
    const v0, 0x3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1f
    iget-object v1, v0, Ljnq;->a:Landroid/hardware/SensorManager;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_21
    iget-object v0, v0, Ljnq;->o:Landroid/hardware/SensorEventListener;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_22
    iget-object v1, v0, Ljnq;->a:Landroid/hardware/SensorManager;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1, v0, v3, v2, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    goto/32 :goto_12

    nop

    nop
.end method
