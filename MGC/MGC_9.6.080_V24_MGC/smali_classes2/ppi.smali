.class final Lppi;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Lppj;

.field private b:J


# direct methods
.method public constructor <init>(Lppj;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lppi;->a:Lppj;

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

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x11

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

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
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    iput-wide v0, p0, Lppi;->b:J

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    const-wide/16 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

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

    nop

    nop
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 7

    goto/32 :goto_7

    nop

    nop

    :goto_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    if-eq v0, v1, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v2, p0, Lppi;->a:Lppj;

    nop

    iget-object v3, v2, Lppj;->a:Ljava/util/List;

    nop

    nop

    nop

    nop

    iget v2, v2, Lppj;->b:I

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lppf;

    nop

    nop

    nop

    nop

    nop

    iget-wide v3, p0, Lppi;->b:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v5, 0x1

    nop

    nop

    add-long/2addr v5, v3

    nop

    nop

    nop

    nop

    iput-wide v5, p0, Lppi;->b:J

    nop

    nop

    nop

    iput-wide v3, v2, Lppf;->d:J

    nop

    nop

    nop

    nop

    nop

    iget-wide v3, p1, Landroid/hardware/SensorEvent;->timestamp:J

    nop

    nop

    nop

    nop

    nop

    iput-wide v3, v2, Lppf;->e:J

    nop

    nop

    nop

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    aget p1, v0, p1

    nop

    nop

    nop

    nop

    iput p1, v2, Lppf;->f:F

    nop

    nop

    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    aget v3, v0, p1

    nop

    nop

    nop

    nop

    nop

    iput v3, v2, Lppf;->g:F

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    aget v0, v0, v3

    nop

    nop

    nop

    nop

    iput v0, v2, Lppf;->h:F

    nop

    nop

    nop

    iget-object p0, p0, Lppi;->a:Lppj;

    nop

    nop

    nop

    nop

    nop

    iget v0, p0, Lppj;->b:I

    nop

    nop

    add-int/2addr v0, p1

    nop

    nop

    nop

    nop

    rem-int/lit16 v0, v0, 0x1770

    nop

    nop

    nop

    nop

    nop

    iput v0, p0, Lppj;->b:I

    nop

    monitor-exit v1

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    const v0, 0xa

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

    :goto_8
    return-void

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

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

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_e
    iget-object v1, p0, Lppi;->a:Lppj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_f
    throw p0

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_12
    const v1, 0x3

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

    :goto_13
    const/4 v1, 0x4

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v0, :cond_2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop
.end method
