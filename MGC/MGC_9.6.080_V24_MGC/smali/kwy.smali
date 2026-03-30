.class public final Lkwy;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkwv;


# instance fields
.field private final a:Lpcu;

.field private b:D

.field private final c:Lhql;


# direct methods
.method public constructor <init>(Lpct;Lhql;)V
    .locals 2

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1b

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

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_5
    const-string v0, "FrameJank"

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lkwy;->a:Lpcu;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-wide v0, p0, Lkwy;->b:D

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

    :goto_8
    const-wide v0, 0x4040800000000000L    # 33.0

    nop

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

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

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

    :goto_d
    iput-object p2, p0, Lkwy;->c:Lhql;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    invoke-interface {p1, v0}, Lpct;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_10
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpro;DD)V
    .locals 6

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lkwy;->a:Lpcu;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p5, v0, v1, v2, v3}, Lhql;->b(JJ)V

    :goto_2
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-wide p4, p0, Lkwy;->b:D

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

    nop

    :goto_4
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v4, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-wide/high16 p4, 0x4026000000000000L    # 11.0

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_7
    invoke-interface {p1, p4}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p4

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_8
    const v0, 0x1

    nop

    nop

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

    :goto_9
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    mul-double/2addr v2, v4

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_b
    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {p1, p5}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

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

    :goto_d
    mul-double/2addr p4, v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_e
    sget-object p5, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_12
    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_13
    invoke-interface {p1, p4}, Lpcu;->f(Ljava/lang/String;)V

    :goto_14
    goto/32 :goto_3e

    nop

    nop

    :goto_15
    if-gtz p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-wide/high16 v4, 0x3ff8000000000000L    # 1.5

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_38

    nop

    nop

    :goto_19
    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1a
    const-string v5, "ms) increased by "

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

    :goto_1b
    const v1, 0x4

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p4, Ljava/lang/Long;

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

    nop

    :goto_1d
    iget-object p5, p0, Lkwy;->c:Lhql;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_1e
    if-gtz p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-wide p2, p0, Lkwy;->b:D

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-double/2addr p2, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_24
    return-void

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sub-double v2, p2, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_27
    if-gtz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    :goto_28
    const-string v5, "JANK! Time between frames ("

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_29
    sget-object p4, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2a
    const-wide v0, 0x4040800000000000L    # 33.0

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput-wide p2, p0, Lkwy;->b:D

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast p1, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    div-double/2addr v2, p4

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2f
    const-string p4, "ms)"

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

    :goto_30
    cmpl-double p1, p2, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_31
    const-string v2, "% over the expected delta ("

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_32
    if-gtz p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_34
    new-instance v4, Ljava/lang/StringBuilder;

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

    :goto_35
    goto/32 :goto_10

    nop

    :goto_36
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_37
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_4
    goto/32 :goto_35

    nop

    :goto_38
    invoke-virtual {v4, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_39
    div-double/2addr p2, p4

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-wide p4, p0, Lkwy;->b:D

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_3b
    if-nez p4, :cond_5

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

    :cond_5
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p4}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3d
    cmpl-double p1, p2, v0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_3e
    cmpl-double p1, p2, v0

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

    :goto_3f
    if-nez p1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1d

    nop

    nop

    :goto_40
    cmpl-double p1, v2, v4

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_41
    if-gez p1, :cond_7

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    cmpl-double p1, p4, v0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop
.end method
