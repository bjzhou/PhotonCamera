.class public final synthetic Lnug;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpcm;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    iput-object p1, p0, Lnug;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

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

    nop

    :goto_2
    iput p2, p0, Lnug;->b:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)V
    .locals 4

    goto/32 :goto_5c

    nop

    nop

    :goto_0
    check-cast p0, Lnvu;

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_a9

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lnvu;->ap(F)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object p1, p0, Lnvu;->f:Loyn;

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    goto/32 :goto_a0

    nop

    nop

    :goto_8
    cmpl-float v1, v1, v2

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_a
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p1, Ljava/lang/Boolean;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_d
    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6b

    nop

    nop

    :goto_e
    goto/16 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_10
    sget-object v0, Lhnz;->a:Lhmo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lnvu;->d()F

    move-result v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    check-cast p1, Landroid/view/Surface;

    nop

    nop

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

    :goto_13
    invoke-virtual {p0, p1}, Lnvu;->ap(F)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_14
    const-string p1, "AudioEncoder"

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0}, Lj$/util/Optional;->isPresent()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iput v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->o:F

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->t:Lryb;

    nop

    nop

    :goto_19
    goto/32 :goto_92

    nop

    nop

    nop

    :goto_1a
    sget v1, Lryb;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lnug;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_1c
    goto :goto_19

    nop

    nop

    :goto_1d
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast v2, Loxv;

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_20
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Lnvu;->D:Loyn;

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_22
    if-gez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :cond_2
    :goto_23
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lnug;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_25
    check-cast v2, Ljava/lang/Float;

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v0}, Lryb;->l(Ljava/lang/Object;)Lryb;

    move-result-object v0

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast v0, Ljava/lang/Boolean;

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

    :goto_28
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_2a
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_2b
    if-gez v1, :cond_3

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_bb

    nop

    nop

    :goto_2d
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v1, p0, Lnvu;->U:Lhoh;

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, v1, v2}, Lnuj;->a(ZZ)V

    :goto_30
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_32
    check-cast p1, Ljava/lang/Float;

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

    :goto_33
    check-cast p0, Lnuj;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Lnvu;->al()F

    move-result p0

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0, v2, v1}, Lnuj;->a(ZZ)V

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Lnvu;->al()F

    move-result p0

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_37
    check-cast v1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    :goto_39
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_3b
    if-eqz p1, :cond_5

    nop

    goto/32 :goto_8e

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object p0, p0, Lnug;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_50

    nop

    nop

    :goto_3e
    iget-object p0, p0, Lnug;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_40
    return-void

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_42
    return-void

    nop

    nop

    :goto_43
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_45
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_46
    invoke-interface {p1, v0}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    return-void

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast p1, Lrss;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_49
    move-object v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_4a
    if-nez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v0, p0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_4c
    invoke-interface {p1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    return-void

    nop

    nop

    :goto_4e
    goto/32 :goto_88

    nop

    nop

    nop

    :goto_4f
    iget-object v0, v0, Loxv;->d:Ljava/lang/Object;

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

    :goto_50
    check-cast p1, Lhdc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_51
    iget-object v2, v2, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_52
    iput-object v0, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->t:Lryb;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_53
    iget-object p0, p0, Lnug;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_56
    invoke-virtual {p1}, Lrss;->c()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_57
    iget-object v2, p0, Lnvu;->e:Loyn;

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0, p1, v1, v2, p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->e(IFFF)V

    :goto_59
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v1, p0, Lnvu;->x:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

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

    :goto_5b
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

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

    :goto_5c
    const v0, 0x1b

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_5d
    if-lez v0, :cond_7

    nop

    goto/32 :goto_2d

    nop

    :cond_7
    goto/32 :goto_2c

    nop

    :goto_5e
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_5f
    cmp-long v0, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_60
    invoke-interface {v1}, Loyn;->cM()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_61
    iget-object v1, p0, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_62
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_63
    check-cast v2, Loxv;

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_64
    iget-object v2, v2, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_66
    return-void

    nop

    nop

    :pswitch_3
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_67
    check-cast p1, Ljava/lang/Long;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_68
    const v1, 0xd

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

    :goto_69
    iget-object v0, p0, Lnvu;->x:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    return-void

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    return-void

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_aa

    nop

    nop

    :goto_6d
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    :cond_8
    goto/32 :goto_21

    nop

    nop

    :goto_6f
    check-cast v2, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

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

    :goto_71
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_72
    if-gez p1, :cond_9

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_5

    nop

    nop

    :goto_73
    check-cast p0, Lpap;

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {p0}, Lnvu;->al()F

    move-result p0

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_75
    check-cast p0, Lpap;

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v1, p1, v2, p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->b(FFF)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_78
    cmp-long p1, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget-object p0, p0, Lnug;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_7b
    iget v2, p0, Lnvu;->j:F

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    return-void

    nop

    nop

    :pswitch_6
    goto/32 :goto_9

    nop

    nop

    :goto_7d
    iget-object v0, p0, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

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

    nop

    :goto_7e
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_7f
    if-nez v0, :cond_a

    nop

    goto/32 :goto_43

    nop

    :cond_a
    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    check-cast v0, Lnvu;

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    check-cast v2, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iget-boolean v0, p0, Lnvu;->K:Z

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_84
    invoke-virtual {p1}, Lrss;->h()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_85
    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_75

    nop

    nop

    :goto_86
    iget-object p0, p0, Lpap;->E:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_87
    invoke-interface {v0}, Loyd;->cM()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_88
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_8a
    if-gtz v0, :cond_b

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :cond_b
    goto/32 :goto_a4

    nop

    nop

    :goto_8b
    iget-object p0, p0, Lnvu;->A:Lcom/google/android/apps/camera/zoomui/view/ZoomUi;

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_8c
    cmpl-float p1, p1, v0

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_8d
    invoke-virtual {p0, p1}, Lsuu;->e(Ljava/lang/Object;)Z

    :goto_8e
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    check-cast p0, Lnvu;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_90
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_91
    check-cast p1, Ljava/lang/Long;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_92
    invoke-virtual {p0}, Lnvu;->s()V

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_93
    iget v0, p0, Lnvu;->j:F

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {p0}, Lnvu;->ax()Z

    move-result v0

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_95
    iget-object v2, v2, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_96
    check-cast p0, Lpkt;

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    :goto_97
    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    check-cast p0, Lpuq;

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {p0}, Lpap;->i()V

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v0, p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->D(Ljava/lang/String;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    sget-object v1, Lsbh;->a:Lryb;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_9c
    move v1, v2

    nop

    nop

    nop

    nop

    :goto_9d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {p0, p1}, Loxv;->a(Ljava/lang/Object;)V

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    int-to-float v2, v2

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

    :goto_a0
    iget-object p0, p0, Lnug;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_a2
    if-nez v0, :cond_c

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

    :cond_c
    :goto_a3
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    check-cast p0, Lpap;

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    return-void

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_a7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_a9
    check-cast p1, Ljava/lang/Boolean;

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_aa
    iget-object p0, p0, Lnug;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {p0, p1, v1, v2}, Lcom/google/android/apps/camera/zoomui/view/ZoomUi;->y(ZZZ)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {p0, v2, v1}, Lnuj;->a(ZZ)V

    :goto_ad
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_ae
    iget-object p0, p0, Lnug;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_af
    return-void

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_b0
    invoke-virtual {v1, v0, p1, v2, p0}, Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;->e(IFFF)V

    goto/32 :goto_7c

    nop

    nop

    :goto_b1
    if-eqz p1, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :cond_d
    goto/32 :goto_79

    nop

    nop

    :goto_b2
    if-nez p1, :cond_e

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

    :cond_e
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_b3
    cmpg-float v0, v1, v0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v1, v0}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object v0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    iget-boolean v0, p0, Lnvu;->g:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_b6
    iget-object p0, p0, Lnug;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    iget v0, p0, Lnug;->b:I

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_b8
    invoke-virtual {p0, p1}, Lpkt;->b(Landroid/view/Surface;)V

    :goto_b9
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_1
        :pswitch_0
        :pswitch_6
        :pswitch_2
        :pswitch_3
        :pswitch_5
        :pswitch_8
        :pswitch_7
        :pswitch_9
        :pswitch_4
    .end packed-switch

    :goto_bb
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    check-cast p0, Loxv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_bd
    cmpl-float v1, v1, v2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_be
    if-gtz v1, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_f
    goto/32 :goto_61

    nop

    nop

    :goto_bf
    check-cast v0, Loxv;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    iget-object v0, p0, Lnvu;->z:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    check-cast p0, Lnuj;

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    check-cast p1, Lprk;

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    iget-object v2, p0, Lnvu;->e:Loyn;

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_c4
    iget-object p0, p0, Lnug;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {p0}, Lpap;->i()V

    goto/32 :goto_4d

    nop

    nop

    :goto_c6
    if-eqz v0, :cond_10

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :cond_10
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    return-void

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_67

    nop

    nop

    :goto_ca
    iget-object v1, p0, Lnvu;->x:Lcom/google/android/apps/camera/zoomui/view/ZoomKnob;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_cc
    check-cast p0, Lnuj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    if-nez v1, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_ce
    iget-object p0, p0, Lnug;->a:Ljava/lang/Object;

    nop

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

    :goto_cf
    check-cast p0, Lnvu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    iget-object v1, p0, Lnvu;->f:Loyn;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    check-cast v2, Loxv;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    check-cast p1, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d3
    const-string v0, "Empty video recording detected, not adding audio."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_d5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    iget-object v0, v0, Lnvu;->p:Loyd;

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_d8
    invoke-virtual {p0, v0}, Lnvu;->az(F)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    const-wide/16 v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_da
    return-void

    nop

    nop

    :pswitch_a
    goto/32 :goto_c

    nop

    nop

    :goto_db
    invoke-virtual {p0}, Lpuq;->br()V

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_dc
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    iget-object v2, p0, Lnvu;->e:Loyn;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop
.end method
