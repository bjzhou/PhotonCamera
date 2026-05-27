.class final Lhoq;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/hardware/SensorEventListener;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public constructor <init>(Lhno;Ldbf;I)V
    .locals 0

    iput p3, p0, Lhoq;->c:I

    iput-object p1, p0, Lhoq;->a:Ljava/lang/Object;

    iput-object p2, p0, Lhoq;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lhos;Lhpq;I)V
    .locals 0

    iput p3, p0, Lhoq;->c:I

    iput-object p1, p0, Lhoq;->b:Ljava/lang/Object;

    iput-object p2, p0, Lhoq;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    iget p1, p0, Lhoq;->c:I

    return-void
.end method

.method public final onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 13

    iget v0, p0, Lhoq;->c:I

    const/4 v1, 0x2

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v4, 0x1

    packed-switch v0, :pswitch_data_0

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lhoq;->a:Ljava/lang/Object;

    check-cast v0, Lhno;

    iget-object v5, v0, Lhno;->C:Lhpy;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lhoq;->b:Ljava/lang/Object;

    check-cast v0, Ldbf;

    invoke-virtual {v0}, Ldbf;->d()Lklv;

    move-result-object v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v3

    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v3, v3, v4

    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v4, v1

    iget-wide v6, p1, Landroid/hardware/SensorEvent;->timestamp:J

    sget-object v4, Lklv;->a:Lklv;

    invoke-virtual {v0}, Lklv;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    move v8, v1

    move v6, v2

    move v7, v3

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    if-ne v0, v2, :cond_4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, v0, v3

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v2, v2, v4

    iget-object v5, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v1, v5, v1

    iget-object v5, p0, Lhoq;->b:Ljava/lang/Object;

    check-cast v5, Lhos;

    iget-wide v6, v5, Lhos;->N:D

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-nez v10, :cond_0

    mul-float v6, v0, v0

    mul-float v7, v2, v2

    mul-float v10, v1, v1

    add-float/2addr v6, v7

    add-float/2addr v6, v10

    float-to-double v6, v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    iput-wide v6, v5, Lhos;->N:D

    :cond_0
    iget-object v5, p0, Lhoq;->b:Ljava/lang/Object;

    check-cast v5, Lhos;

    iget-wide v6, v5, Lhos;->N:D

    iput-wide v6, v5, Lhos;->O:D

    mul-float v0, v0, v0

    mul-float v2, v2, v2

    mul-float v1, v1, v1

    add-float/2addr v0, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, v5, Lhos;->N:D

    iget-object v0, p0, Lhoq;->b:Ljava/lang/Object;

    check-cast v0, Lhos;

    iget-wide v1, v0, Lhos;->N:D

    iget-wide v5, v0, Lhos;->O:D

    sub-double/2addr v1, v5

    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    iget-object v2, p0, Lhoq;->b:Ljava/lang/Object;

    check-cast v2, Lhos;

    iget-object v2, v2, Lhos;->b:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v5, p0, Lhoq;->b:Ljava/lang/Object;

    move-object v6, v5

    check-cast v6, Lhos;

    iget-wide v6, v6, Lhos;->d:J

    const-wide/16 v10, 0x1

    add-long/2addr v10, v6

    move-object v12, v5

    check-cast v12, Lhos;

    iput-wide v10, v12, Lhos;->d:J

    long-to-int v7, v6

    const/4 v6, 0x3

    rem-int/2addr v7, v6

    check-cast v5, Lhos;

    iget-object v5, v5, Lhos;->c:[D

    aput-wide v0, v5, v7

    :goto_0
    if-ge v3, v6, :cond_1

    aget-wide v0, v5, v3

    add-double/2addr v8, v0

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lhoq;->b:Ljava/lang/Object;

    sget-object v1, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v2, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v5, p0, Lhoq;->b:Ljava/lang/Object;

    check-cast v5, Lhos;

    iget-wide v5, v5, Lhos;->Q:J

    sub-long/2addr v2, v5

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    check-cast v0, Lhos;

    iput-wide v1, v0, Lhos;->P:J

    iget-object v0, p0, Lhoq;->b:Ljava/lang/Object;

    check-cast v0, Lhos;

    iget-wide v1, v0, Lhos;->P:J

    const-wide/16 v5, 0x32

    cmp-long v3, v1, v5

    if-lez v3, :cond_2

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v1, v0, Lhos;->Q:J

    :cond_2
    iget-object p1, p0, Lhoq;->b:Ljava/lang/Object;

    check-cast p1, Lhos;

    iget-wide v0, p1, Lhos;->P:J

    cmp-long v2, v0, v5

    if-lez v2, :cond_4

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    div-double/2addr v8, v0

    const-wide v0, 0x3f8eb851e0000000L    # 0.014999999664723873

    cmpl-double v2, v8, v0

    if-lez v2, :cond_4

    iget-object p1, p1, Lhos;->j:Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    check-cast p1, Lhnw;

    sget-object v0, Lhnw;->h:Lhnw;

    invoke-virtual {p1, v0}, Lhnw;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lhoq;->a:Ljava/lang/Object;

    check-cast p1, Lhpq;

    invoke-virtual {p1}, Lhpq;->f()V

    :cond_3
    iget-object p1, p0, Lhoq;->b:Ljava/lang/Object;

    check-cast p1, Lhos;

    invoke-virtual {p1, v4}, Lhos;->f(Z)V

    iget-object p1, p0, Lhoq;->b:Ljava/lang/Object;

    check-cast p1, Lhos;

    invoke-virtual {p1}, Lhos;->d()V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_4
    return-void

    :pswitch_1
    move v8, v1

    move v7, v2

    move v6, v3

    goto :goto_1

    :pswitch_2
    neg-float v0, v3

    neg-float v1, v1

    move v6, v0

    move v8, v1

    move v7, v2

    :goto_1
    iget-wide v9, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-interface/range {v5 .. v10}, Lhpy;->b(FFFJ)V

    :cond_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
