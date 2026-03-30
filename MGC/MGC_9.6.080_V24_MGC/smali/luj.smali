.class public final Lluj;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llui;


# instance fields
.field private final a:[F

.field private final b:Lhze;


# direct methods
.method public constructor <init>(Lhze;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    new-array v0, v0, [F

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lluj;->a:[F

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

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x3

    nop

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

    nop

    :goto_5
    iput-object p1, p0, Lluj;->b:Lhze;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpro;)F
    .locals 5

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v2

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lluj;->b:Lhze;

    nop

    nop

    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v3, v4}, Lhze;->c(J)Lhxs;

    move-result-object p0

    nop

    invoke-virtual {p0}, Lhxs;->d()Z

    move-result p1

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object p0, p0, Lhxs;->a:[F

    nop

    nop

    nop

    nop

    nop

    const/4 p1, 0x0

    nop

    aget p1, p0, p1

    nop

    nop

    nop

    nop

    nop

    mul-float/2addr p1, p1

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    aget v1, p0, v1

    nop

    nop

    nop

    nop

    mul-float/2addr v1, v1

    nop

    nop

    add-float/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    const/4 v1, 0x2

    nop

    aget p0, p0, v1

    nop

    nop

    nop

    mul-float/2addr p0, p0

    nop

    nop

    nop

    add-float/2addr p1, p0

    nop

    nop

    nop

    nop

    float-to-double p0, p1

    nop

    nop

    nop

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    nop

    nop

    nop

    double-to-float p0, p0

    nop

    move v1, p0

    nop

    nop

    :goto_1
    monitor-exit v2

    nop

    nop

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    :cond_1
    monitor-exit v2

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_2
    goto/32 :goto_19

    nop

    nop

    :goto_3
    iget-object v2, p0, Lluj;->a:[F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xf

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

    nop

    :goto_5
    invoke-static {p0, p1}, Ljava/lang/Math;->exp(D)D

    move-result-wide p0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x12

    nop

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

    :goto_8
    const/high16 v1, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    check-cast v0, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    check-cast p1, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    :goto_12
    long-to-float v0, v2

    nop

    :goto_13
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_13

    nop

    nop

    :goto_15
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_16
    float-to-double p0, v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    double-to-float p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_18
    return p0

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

    :try_start_1
    monitor-exit v2

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_19
    const p0, -0x4af9c843    # -5.0E-7f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1a
    if-eqz p1, :cond_4

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1b
    move v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1c
    throw p0

    nop

    :goto_1d
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1e
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1f
    mul-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_2

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_22
    mul-float/2addr v0, p0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

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

    nop

    :goto_25
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method
