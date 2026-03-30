.class public final Lluh;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Llui;


# instance fields
.field private final synthetic a:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lluh;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method


# virtual methods
.method public final a(Lpro;)F
    .locals 6

    goto/32 :goto_d

    nop

    nop

    :goto_0
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1
    return v1

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AWB_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_27

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p1, p0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_8
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_37

    nop

    nop

    :goto_a
    check-cast p0, [Landroid/hardware/camera2/params/Face;

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_b
    array-length p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xf

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

    :goto_e
    if-eq p0, v5, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1, p0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v5, 0x3

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

    :goto_12
    goto/16 :goto_23

    nop

    :goto_13
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget p0, p0, Lluh;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return v1

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_18
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->STATISTICS_FACES:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_19
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p0, :cond_2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

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

    :goto_1c
    if-eqz p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1d
    invoke-interface {p1, p0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1e
    if-eqz p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move v1, v3

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_16

    nop

    nop

    :goto_21
    const/high16 v1, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_22
    if-nez p0, :cond_5

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_5
    :goto_23
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_25
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->LENS_STATE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return v0

    nop

    nop

    :goto_27
    goto/32 :goto_1f

    nop

    nop

    :goto_28
    sget-object p0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_STATE:Landroid/hardware/camera2/CaptureResult$Key;

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

    nop

    :goto_29
    if-ne p0, v4, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez p0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    :cond_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2b
    check-cast p0, Ljava/lang/Integer;

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

    :goto_2c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p1, p0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-eq p0, v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :cond_8
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/high16 v3, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_33
    return v1

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_24

    nop

    nop

    :goto_35
    move v1, v3

    nop

    nop

    :goto_36
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_37
    return v3

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_18

    nop

    nop

    :goto_39
    if-ne p1, v2, :cond_9

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_9
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_3b
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3c
    if-lez v0, :cond_a

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :cond_a
    goto/32 :goto_5c

    nop

    :goto_3d
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-eq p0, v5, :cond_b

    nop

    goto/32 :goto_47

    nop

    :cond_b
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_40
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_20

    nop

    :goto_42
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_43
    move v1, v3

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_46
    goto :goto_4c

    nop

    nop

    :goto_47
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_48
    return p0

    nop

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-eqz p0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_59

    nop

    nop

    :goto_4b
    return v0

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_4d
    return v0

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_5d

    nop

    nop

    :goto_50
    invoke-interface {p1, p0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-ne p1, v2, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    :cond_d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_52
    goto :goto_4e

    nop

    nop

    :goto_53
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_54
    move v0, v3

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

    :goto_55
    int-to-float p0, p0

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_58
    if-ne p1, v1, :cond_e

    nop

    nop

    goto/32 :goto_4e

    nop

    :cond_e
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_59
    goto/16 :goto_36

    nop

    :goto_5a
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

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

    nop

    :goto_5c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-ne p0, v5, :cond_f

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-ne p0, v2, :cond_10

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_5e

    nop

    nop

    :goto_60
    return v1

    nop

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_3

    nop

    nop

    nop
.end method
