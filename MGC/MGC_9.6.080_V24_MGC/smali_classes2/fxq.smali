.class public final Lfxq;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lrsk;


# static fields
.field public static final a:Lfxq;

.field public static final b:Lfxq;

.field public static final c:Lfxq;


# instance fields
.field private final synthetic d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lfxq;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lfxq;

    nop

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

    :goto_5
    invoke-direct {v0, v1}, Lfxq;-><init>(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

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

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0, v1}, Lfxq;-><init>(I)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lfxq;

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

    :goto_d
    invoke-direct {v0, v1}, Lfxq;-><init>(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    sput-object v0, Lfxq;->c:Lfxq;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_10
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_12
    const/4 v1, 0x3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sput-object v0, Lfxq;->b:Lfxq;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_15
    sput-object v0, Lfxq;->a:Lfxq;

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput p1, p0, Lfxq;->d:I

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_0
    if-ne p0, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_77

    nop

    nop

    :goto_1
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->NOISE_REDUCTION_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

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

    :goto_2
    check-cast p1, Ljava/lang/String;

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

    :goto_3
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Ljava/util/List;

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

    :goto_5
    invoke-static {p0}, Ljava/lang/Short;->valueOf(S)Ljava/lang/Short;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_6
    new-instance p0, Ljava/util/ArrayList;

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

    :goto_7
    invoke-interface {p0}, Ljava/util/List;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_9
    if-eq p1, p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move v0, v1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_b

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    :goto_e
    check-cast p1, Lmhz;

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

    :goto_f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_6b

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v3, v2}, Lrsr;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_13
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_14
    if-nez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :cond_2
    :goto_15
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v1, v2}, Lrsr;-><init>(Ljava/lang/String;)V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->JPEG_QUALITY:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v3, 0x0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1a
    goto :goto_11

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_88

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_1d
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-object p0

    nop

    :pswitch_1
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_48

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v3, "timestamp"

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_24
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_25
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_27
    if-nez p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_28
    invoke-interface {p1}, Lkuc;->a()Loyd;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v1, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v1, 0x0

    nop

    nop

    nop

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1, v2, v0}, Lrsr;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_2c
    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_9
        :pswitch_4
        :pswitch_8
        :pswitch_2
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_1
    .end packed-switch

    :goto_2d
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-eq p0, v2, :cond_4

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

    :cond_4
    goto/32 :goto_b6

    nop

    nop

    :goto_2f
    iget-object p0, p0, Lkna;->b:Llse;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    check-cast p1, Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_31
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1, v3, v2}, Lrsr;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_33
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object p0, p0, Lkna;->b:Llse;

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_35
    check-cast p1, Lpfo;

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v3, 0x2

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    sget-object v3, Lcom/google/android/clockwork/common/wearable/wearmaterial/slider/ADF/UKeap;->MlSxPww:Ljava/lang/String;

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_39
    check-cast p1, Llsd;

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_3a
    new-instance v2, Ljav;

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_3b
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_3d
    check-cast p1, Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_3e
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    new-instance v2, Ljau;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_15

    nop

    :goto_41
    goto/32 :goto_42

    nop

    nop

    :goto_42
    if-eqz v2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_5
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_43
    invoke-direct {v2, v0}, Ljav;-><init>(Z)V

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_7b

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_47
    move v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_43

    nop

    nop

    :goto_49
    invoke-static {p1, p0}, La;->B(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4a
    if-nez p0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

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

    :goto_4c
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

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

    :goto_4d
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_4e
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_4f
    invoke-interface {v0, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

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

    :goto_50
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_51
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    check-cast p1, Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-direct {p0}, Ltxt;-><init>()V

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_54
    move v0, v1

    nop

    :goto_55
    goto/32 :goto_5c

    nop

    nop

    :goto_56
    check-cast p0, Lkna;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    sget-object v2, Llsd;->e:Llsd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_58
    check-cast p1, Lkuc;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_59
    if-nez p0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_5a
    const/high16 v3, 0x430c0000    # 140.0f

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-ne p0, v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_8
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-direct {v2, p0, v0}, Ljau;-><init>(ZZ)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_5d
    iget p0, p1, Llsd;->g:I

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_5e
    sget-object p0, Ljar;->d:Ljar;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_60
    new-instance p0, Ltxt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const-string v3, "REEF"

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_62
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-interface {v0, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    :goto_65
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->EDGE_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/16 :goto_af

    nop

    nop

    :goto_67
    goto/32 :goto_7

    nop

    nop

    :goto_68
    invoke-virtual {p0, p1}, Lsaw;->e(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_69
    check-cast v2, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    :goto_6b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_6c
    sget-object v2, Llse;->e:Llse;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_6d
    const-string p0, "on"

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_6e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_6f
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    if-nez p0, :cond_9

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_a5

    nop

    nop

    :goto_72
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_74
    check-cast p1, Ljava/util/List;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_75
    iget p0, p0, Lfxq;->d:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_76
    cmpl-float p1, p1, v3

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_77
    if-eq p0, v3, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v1}, Lrsr;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :goto_79
    if-lez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_aa

    nop

    :goto_7a
    invoke-static {}, Lkav;->o()Lkqa;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_7c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_7d
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_7f
    if-gtz p1, :cond_c

    nop

    goto/32 :goto_a2

    nop

    :cond_c
    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_80
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_81
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_82
    check-cast p0, Lkna;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_83
    invoke-interface {v0, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_84
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_85
    invoke-static {p0, p1}, Lkav;->l(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)Lkqa;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_86
    const-string v3, "EDGE"

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    check-cast p1, Lkuc;

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_88
    sget-object p0, Lsav;->a:Lsav;

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    if-nez p1, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_8b
    if-ne p0, p1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-interface {v0, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-interface {p1}, Lkuc;->b()Loyd;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    :goto_8f
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_90
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_91
    check-cast p1, Ljar;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_92
    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_95
    iget-object p0, p1, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_96
    invoke-virtual {v1, v3, v2}, Lrsr;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_97
    new-instance v1, Lrsr;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_98
    if-nez p0, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_f
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_99
    check-cast p0, Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    const-string v2, "Jpeg Qual"

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_9b
    goto/32 :goto_ab

    nop

    nop

    :goto_9c
    iget-short p0, p1, Lpfo;->i:S

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9d
    check-cast v0, Lpro;

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

    :goto_9e
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    sget-object p1, Llse;->f:Llse;

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_a0
    const-string v2, "Metadata"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a1
    goto/16 :goto_55

    nop

    nop

    :goto_a2
    goto/32 :goto_54

    nop

    nop

    :goto_a3
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-virtual {v1, v3, v2}, Lrsr;->b(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_a5
    sget-object p0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AF_TRIGGER:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {p0}, Ligw;->ordinal()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_a8
    check-cast p0, Lkna;

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    goto/32 :goto_2d

    nop

    nop

    :goto_ab
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    iget-object p0, p1, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_ad
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_af
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    iget-object p0, p0, Lkna;->a:Llsd;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->REPROCESS_EFFECTIVE_EXPOSURE_FACTOR:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_b2
    move v0, v1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_b3
    if-nez v0, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_b4
    check-cast p0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_b5
    invoke-interface {v0, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_b6
    iget-object p0, p1, Lmhz;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_b7
    check-cast p0, Ligw;

    nop

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

    :goto_b8
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop
.end method
