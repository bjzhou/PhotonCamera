.class public final Lgrz;
.super Lpuq;
.source "PG"


# instance fields
.field private final a:Lgvl;


# direct methods
.method public constructor <init>(Lpak;)V
    .locals 1

    goto/32 :goto_0

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Lgrz;->a:Lgvl;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, v0, v0, v0}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {v0, p1}, Lgvl;-><init>(Lpak;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lgvl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Lpro;)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p1, p0, Lgvl;->a:Lpak;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    const v0, 0x11

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_10

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    :goto_4
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v0, Lgvk;->b:Lgvk;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {p1, p0}, Lpak;->s(F)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lgvl;->b:Lgvk;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1, v2}, Lgvk;->a(J)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    iget p0, p0, Lgvk;->c:F

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_a
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_FRAME_DURATION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_b
    check-cast p1, Ljava/lang/Long;

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

    :goto_c
    iget-object p0, p0, Lgvl;->b:Lgvk;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    sget-object v0, Lgvk;->b:Lgvk;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    :goto_10
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    goto :goto_f

    nop

    nop

    :goto_13
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v0, Lgvk;->a:Lgvk;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lgrz;->a:Lgvl;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    sget-object v1, Lgvk;->a:Lgvk;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_18
    iget-object p0, p0, Lgvl;->b:Lgvk;

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

    :goto_19
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    nop

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

    :goto_1a
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1b
    if-eq v0, v1, :cond_3

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1, v2}, Lgvk;->a(J)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1f
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_20
    if-nez p1, :cond_4

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput-object v1, p0, Lgvl;->b:Lgvk;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p0, Lgvl;->b:Lgvk;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {p1, p0}, Lpak;->s(F)V

    :goto_24
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput-object v0, p0, Lgvl;->b:Lgvk;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_11

    nop

    nop

    :goto_28
    iget-object p1, p0, Lgvl;->a:Lpak;

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

    :goto_29
    iget p0, p0, Lgvk;->c:F

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-ne p1, v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_25

    nop

    nop

    nop

    nop
.end method
