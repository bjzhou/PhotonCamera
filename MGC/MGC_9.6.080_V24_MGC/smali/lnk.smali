.class public final Llnk;
.super Lpuq;
.source "PG"


# instance fields
.field private final a:Loyn;


# direct methods
.method public constructor <init>(Loyn;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, v0, v0}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Llnk;->a:Loyn;

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

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

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
.end method


# virtual methods
.method public final a(Lpro;)V
    .locals 4

    goto/32 :goto_31

    nop

    nop

    :goto_0
    invoke-interface {p1, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_2
    invoke-virtual {v3, v0}, Llnq;->d(Z)V

    :goto_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    check-cast v2, Llnr;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Llnk;->a:Loyn;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_2c

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v2, p0, Llnk;->a:Loyn;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {p1, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_13
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-direct {v3, v2}, Llnq;-><init>(Llnr;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v0, 0x1

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

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_20

    nop

    :goto_1a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1d
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->LENS_FOCUS_DISTANCE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    :goto_20
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_21
    invoke-interface {v2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_24
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_1f

    nop

    nop

    :goto_25
    if-nez v0, :cond_5

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_5
    goto/32 :goto_16

    nop

    nop

    :goto_26
    if-nez p1, :cond_6

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v3, Llnq;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_28
    invoke-virtual {v3, p1}, Llnq;->b(I)V

    :goto_29
    goto/32 :goto_c

    nop

    nop

    :goto_2a
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v0, 0x0

    nop

    nop

    :goto_2c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_7
    goto/32 :goto_19

    nop

    :goto_2e
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v3}, Llnq;->a()Llnr;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_31
    const v0, 0x5

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v3, v0}, Llnq;->c(F)V

    :goto_33
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method
