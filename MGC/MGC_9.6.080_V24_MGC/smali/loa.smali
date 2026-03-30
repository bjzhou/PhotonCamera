.class public final Lloa;
.super Lpuq;
.source "PG"


# instance fields
.field private final a:Loyn;

.field private final b:Lkcr;

.field private final c:Liof;


# direct methods
.method public constructor <init>(Loyn;Lkcr;Liof;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lloa;->b:Lkcr;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    const/4 v0, 0x0

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

    nop

    :goto_3
    invoke-direct {p0, v0, v0, v0}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_5

    nop

    nop

    :goto_4
    iput-object p3, p0, Lloa;->c:Liof;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lloa;->a:Loyn;

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
    .locals 9

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_0
    iget-object v2, v2, Lkcr;->e:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2, v7}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_3
    invoke-direct {v1, p1, v2}, Lgct;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_4
    invoke-direct {v5, v1, v7}, Lgct;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-byte v1, v3, Liod;->e:B

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_6
    int-to-byte v0, v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-byte v0, v3, Liod;->e:B

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_9
    invoke-virtual {v6, v0}, Llof;->d(I)V

    goto/32 :goto_a1

    nop

    nop

    :goto_a
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_b
    invoke-direct {v0, v5}, Lhpi;-><init>(I)V

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {p0, p1}, Loyn;->a(Ljava/lang/Object;)V

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    div-int/lit8 v0, v0, 0x64

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v7, 0xb

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

    :goto_12
    invoke-virtual {v2, p1}, Liof;->a(Lpro;)F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_13
    goto/16 :goto_b0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_75

    nop

    nop

    :goto_15
    int-to-float v0, v0

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget p1, p1, Lioe;->a:F

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v6, v0}, Llof;->d(I)V

    :goto_19
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v2, p1}, Liof;->b(Lpro;)Lpnu;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_d

    nop

    :goto_1c
    invoke-virtual {v3, v4}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_1d
    div-float/2addr v0, v1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v7, Ljlz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_1f
    iget v1, v3, Liod;->b:F

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_20
    mul-float/2addr v0, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v5, :cond_0

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_0
    goto/32 :goto_90

    nop

    nop

    :goto_22
    const/16 v4, 0x9

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_23
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_78

    nop

    nop

    :goto_25
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_26
    invoke-direct {v3, p1, v4}, Ljlz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8f

    nop

    nop

    :goto_27
    const/16 v2, 0xc

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

    :goto_28
    invoke-virtual {v6}, Llof;->a()Llog;

    move-result-object p1

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

    :goto_29
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v1, v5}, Lpnu;->o(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v0, v1}, Lgdm;-><init>(I)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v7, v2, Liof;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-interface {p1, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    :goto_31
    goto/32 :goto_55

    nop

    nop

    :goto_32
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_33
    check-cast v4, Ljava/lang/Long;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_34
    iget-object v7, v7, Lkdp;->c:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v6, v2}, Llof;->b(Z)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_37
    check-cast v2, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_39
    const v1, 0x10

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v1}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    new-instance v6, Llof;

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_3c
    if-eq v2, v1, :cond_2

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :cond_2
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3d
    invoke-direct {v3, v4}, Liod;-><init>([B)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    div-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_3f
    invoke-interface {p1, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_40
    invoke-virtual {v0, v4}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_41
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sget-object v1, Landroid/hardware/camera2/CaptureResult;->CONTROL_POST_RAW_SENSITIVITY_BOOST:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_43
    new-instance v1, Lgct;

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_44
    const v1, 0x49742400    # 1000000.0f

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_16

    nop

    nop

    :goto_46
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_48
    goto/16 :goto_24

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_4a
    if-nez v3, :cond_3

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_4b
    invoke-direct {v7, v3, v0}, Ljlz;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v2, p1}, Liof;->a(Lpro;)F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p1, v0}, Lj$/util/Optional;->filter(Ljava/util/function/Predicate;)Lj$/util/Optional;

    move-result-object p1

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-interface {p1, v4}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_4f
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_50
    or-int/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_51
    iput-byte v0, v3, Liod;->e:B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_52
    iget-byte v0, v3, Liod;->e:B

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iput-byte v1, v3, Liod;->e:B

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_54
    new-instance p1, Lioe;

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_55
    iget-object v5, p0, Lloa;->a:Loyn;

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_56
    const v0, 0xb

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_57
    float-to-int p1, p1

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_59
    iget-object v0, p1, Lioe;->b:Lj$/util/Optional;

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_5a
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    :goto_5b
    new-instance v3, Liod;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-direct {p0}, Ljava/lang/IllegalStateException;-><init>()V

    goto/32 :goto_86

    nop

    nop

    :goto_5d
    invoke-virtual {p1, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_5e
    check-cast v7, Lkdp;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_5f
    const/4 v4, 0x0

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

    :goto_60
    iput v5, v3, Liod;->a:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    new-instance v1, Lgct;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_62
    invoke-interface {p1, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_63
    check-cast v0, Lkdp;

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_64
    iget-object p0, p0, Lloa;->a:Loyn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_66
    iget-object v2, p0, Lloa;->b:Lkcr;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v6, p1}, Llof;->c(I)V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_68
    new-instance v5, Lgct;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

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

    :goto_6a
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SENSOR_SENSITIVITY:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_6b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_6c
    goto/16 :goto_b0

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v5, v4}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v2, v3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    mul-float/2addr v0, v4

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_71
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_72
    invoke-virtual {v4, v3}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_73
    iget v0, v3, Liod;->a:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_74
    iget-object p1, v0, Lkdp;->d:Lj$/util/Optional;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_75
    invoke-virtual {v6, v1}, Llof;->b(Z)V

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p1, v0}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_77
    iget v1, p1, Lioe;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_78
    iput v1, v3, Liod;->b:F

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

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

    :goto_7a
    iget v3, v3, Liod;->d:F

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    check-cast v3, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_7c
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_7d
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_7e
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    div-float/2addr v4, v1

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_81
    if-nez v1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_41

    nop

    nop

    :goto_82
    new-instance v0, Lgdm;

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_84
    const/16 v5, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_85
    int-to-byte v0, v0

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_86
    throw p0

    nop

    :goto_87
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iget-object v2, v3, Liod;->c:Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-direct {p1, v0, v1, v2, v3}, Lioe;-><init>(FFLj$/util/Optional;F)V

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_8a
    const/16 v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v7, v5}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v5

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_8c
    invoke-direct {v0, v3, v2}, Lijv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_8d
    or-int/lit8 v0, v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {p1, v0}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_8f
    iget-object v4, p0, Lloa;->b:Lkcr;

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_91
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    iget-object v2, p0, Lloa;->c:Liof;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_93
    or-int/2addr v1, v5

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_94
    int-to-byte v1, v1

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_95
    new-instance v3, Ljlz;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_96
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_97
    sget-object v4, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_98
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_99
    check-cast v5, Llog;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_9a
    mul-int/2addr v0, v1

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

    :goto_9b
    iput v0, v3, Liod;->d:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_9c
    if-nez v2, :cond_7

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_9d
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->CONTROL_AE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_9e
    iget-object v0, v0, Lkdp;->a:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    if-eqz v0, :cond_8

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    goto/32 :goto_aa

    nop

    nop

    :goto_a3
    invoke-interface {v5}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iget-object v4, v4, Lkcr;->b:Lj$/util/Optional;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_a5
    invoke-direct {v1, p1, v5}, Lgct;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    const/4 v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    xor-int/2addr v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_a8
    goto/16 :goto_31

    nop

    nop

    :goto_a9
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_ab
    iget-byte v5, v3, Liod;->e:B

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    const v1, 0x42855555

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_ad
    if-eq p1, v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    check-cast v0, Lkdp;

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_af
    invoke-virtual {v6, v5}, Llof;->b(Z)V

    :goto_b0
    goto/32 :goto_92

    nop

    nop

    :goto_b1
    long-to-float v4, v7

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    new-instance v0, Lijv;

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-direct {v6, v5}, Llof;-><init>(Llog;)V

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_b5
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_b6
    return-void

    nop

    nop

    nop

    :goto_b7
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    if-eqz v2, :cond_b

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

    :cond_b
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v0, v1}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_ba
    iget-object v0, v2, Liof;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_bb
    sget-object v5, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_MAX_ANALOG_SENSITIVITY:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_bc
    check-cast v5, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_bd
    iget-object v0, v2, Liof;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_be
    new-instance v0, Lhpi;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    iget-byte p1, v3, Liod;->e:B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    nop

    goto/32 :goto_6f

    nop

    nop
.end method
