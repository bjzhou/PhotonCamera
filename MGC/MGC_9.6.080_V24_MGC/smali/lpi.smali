.class public final Llpi;
.super Lpuq;
.source "PG"


# instance fields
.field private final a:Loyn;

.field private final b:Lkcr;


# direct methods
.method public constructor <init>(Loyn;Lkcr;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-object p2, p0, Llpi;->b:Lkcr;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v0, v0, v0}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Llpi;->a:Loyn;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(Lpro;)V
    .locals 6

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2e

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Llpi;->b:Lkcr;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v1, :cond_0

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3f

    nop

    nop

    :goto_8
    const/4 v5, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_9
    invoke-virtual {p1, v2}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p1

    nop

    goto/32 :goto_e

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

    goto/32 :goto_3e

    nop

    nop

    :goto_b
    if-eq v0, v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/16 v3, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

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

    :goto_e
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_f
    invoke-direct {v2, p1, v3}, Ljlz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_26

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    new-instance v4, Ljlz;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2f

    nop

    nop

    :goto_14
    invoke-virtual {v3}, Llpl;->a()Llpm;

    move-result-object p1

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1, v0}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v2, Llpm;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_44

    nop

    :goto_18
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v2, p0, Llpi;->a:Loyn;

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

    :goto_1b
    invoke-virtual {v3, v4, v5}, Llpl;->b(J)V

    :goto_1c
    goto/32 :goto_7

    nop

    nop

    :goto_1d
    invoke-direct {v3, v2}, Llpl;-><init>(Llpm;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v3, Llpl;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v3, p1}, Llpl;->c(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    :goto_23
    iget-object p1, v0, Lkcr;->d:Lj$/util/Optional;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz v0, :cond_4

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

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_25
    add-int v0, v0, v1

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

    nop

    nop

    :goto_26
    iget-object p1, p0, Llpi;->b:Lkcr;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_27
    invoke-direct {v4, p1, v5}, Ljlz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v2, Ljlz;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v0, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_2a
    check-cast v1, Ljava/lang/Integer;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v2}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2d
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v3, v2}, Llpl;->c(Z)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_13

    nop

    :goto_31
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_32
    iget-object p1, p1, Lkcr;->b:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_33
    check-cast p1, Ljava/lang/Boolean;

    nop

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

    :goto_34
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v0, :cond_5

    nop

    goto/32 :goto_1c

    nop

    :cond_5
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_36
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_2

    nop

    nop

    :goto_38
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const v0, 0x14

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

    :goto_3a
    invoke-interface {p1, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3b
    xor-int/2addr p1, v2

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3c
    iget-object p0, p0, Llpi;->a:Loyn;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3d
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :cond_6
    goto/32 :goto_30

    nop

    :goto_3f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_40
    if-nez p1, :cond_7

    nop

    goto/32 :goto_38

    nop

    :cond_7
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1, v4}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_42
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v3, v1}, Llpl;->c(Z)V

    :goto_44
    goto/32 :goto_3c

    nop

    nop

    nop

    nop
.end method
