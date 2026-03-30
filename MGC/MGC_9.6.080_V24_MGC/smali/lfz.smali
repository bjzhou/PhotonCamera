.class public final Llfz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ltun;


# instance fields
.field private final a:Ltxm;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ltxm;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-object p1, p0, Llfz;->a:Ltxm;

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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

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

    :goto_3
    iput p2, p0, Llfz;->b:I

    nop

    nop

    nop

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
.method public final synthetic a()Ljava/lang/Object;
    .locals 6

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Llgc;

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    :goto_1
    invoke-static {v0}, Lrkm;->M(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Llfz;->a:Ltxm;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_5
    return-object p0

    nop

    nop

    :pswitch_0
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Llfz;->a:Ltxm;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Llfz;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    :pswitch_2
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lgvd;->b()Lgqg;

    move-result-object p0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p0}, Llgd;-><init>(Loyn;)V

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

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

    :goto_10
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p0, Lgvd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_12
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_13
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lgvd;->b()Lgqg;

    move-result-object p0

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

    :goto_15
    check-cast p0, Ljava/util/Map;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v0, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_17
    invoke-static {v0}, Lrss;->j(Ljava/lang/Object;)Lrss;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_36

    nop

    :goto_19
    invoke-static {p0}, Lkav;->m(Ljava/util/List;)Lkqa;

    move-result-object p0

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lgvd;->b()Lgqg;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Lryw;->g()Lryy;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p0, p0, Llfz;->a:Ltxm;

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

    :goto_1d
    goto/16 :goto_3e

    nop

    :goto_1e
    goto/32 :goto_1b

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_20
    check-cast p0, Ltuu;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1}, Lryw;->j(Ljava/lang/Iterable;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_22
    invoke-direct {v0, p0, v5}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_17

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

    :pswitch_4
    goto/32 :goto_76

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lgqg;->p:Landroid/util/Range;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_25
    check-cast p0, Lgvd;

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_26
    iget-object p0, p0, Lgqg;->o:Landroid/util/Range;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_28
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_2a
    return-object p0

    nop

    nop

    :pswitch_6
    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_2c
    goto/32 :goto_1

    nop

    nop

    :goto_2d
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_2e
    invoke-direct {v0, p0}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    return-object p0

    nop

    nop

    :pswitch_7
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    new-instance v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_32
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_33
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_34
    iget-boolean p0, p0, Lgqg;->J:Z

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_b4

    nop

    nop

    :goto_36
    goto/32 :goto_ad

    nop

    nop

    :goto_37
    invoke-static {p0}, Lrkm;->P(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p0, p0, Llfz;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_39
    new-instance v1, Lpha;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_3a
    invoke-virtual {p0}, Lgvd;->b()Lgqg;

    move-result-object p0

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

    :goto_3b
    move v1, v4

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_88

    nop

    nop

    :goto_3d
    return-object p0

    nop

    nop

    :goto_3e
    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_3f
    iget-object p0, p0, Lgqg;->c:Loze;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-direct {v0}, Lryw;-><init>()V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-boolean v0, p0, Lgqg;->L:Z

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_42
    iget-object p0, p0, Llfz;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    check-cast p0, Lphj;

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_44
    move v1, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_45
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_46
    invoke-direct {v1, v0, p0}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_47
    check-cast p0, Lgvd;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_48
    check-cast p0, Lgvd;

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_49
    check-cast p0, Lgvd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4b
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p0, v5}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_4d
    iget-boolean p0, p0, Lgqg;->J:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_4e
    new-instance v2, Lpha;

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :goto_4f
    new-instance p0, Llgc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    check-cast p0, Lpnu;

    nop

    nop

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

    :goto_51
    const/16 v1, 0x22

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_53
    iget-object p0, p0, Llfz;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-ne v2, p0, :cond_0

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9f

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p0}, Lgvd;->b()Lgqg;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_56
    return-object p0

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p0}, Ltuu;->b()Ljava/util/Set;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :goto_58
    sget-object p0, Lpgz;->a:Lpgz;

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    check-cast p0, Loyd;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_5a
    goto/16 :goto_3c

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-boolean v1, p0, Lgqg;->r:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    check-cast p0, Loyn;

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_5e
    new-instance v1, Lpha;

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_5f
    return-object p0

    nop

    nop

    :pswitch_a
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_60
    if-ne v2, p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_61
    iget-object p0, p0, Llfz;->a:Ltxm;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_62
    iget-object p0, p0, Llfz;->a:Ltxm;

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_63
    iget-object p0, p0, Llfz;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {p0}, Lgvd;->b()Lgqg;

    move-result-object p0

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_65
    invoke-virtual {p0}, Lgvd;->b()Lgqg;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_66
    iget-object p0, p0, Llfz;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    :goto_67
    iget-object p0, p0, Llfz;->a:Ltxm;

    nop

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

    :goto_68
    goto/16 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_6a
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    :cond_2
    goto/32 :goto_35

    nop

    :goto_6b
    invoke-static {v1}, Lrkm;->N(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

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

    nop

    nop

    :goto_6c
    iget-object p0, p0, Lgqg;->p:Landroid/util/Range;

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_6e
    iget-object p0, p0, Lgqg;->b:Lpnx;

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    sget-object v1, Landroid/hardware/camera2/CaptureRequest;->CONTROL_AE_TARGET_FPS_RANGE:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_70
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_72
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_73
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_74
    invoke-virtual {p0}, Loze;->h()Z

    move-result p0

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

    :goto_75
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_76
    iget-object p0, p0, Llfz;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_77
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_78
    check-cast p0, Lj$/util/Optional;

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_79
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_28

    nop

    nop

    :goto_7a
    iget-object p0, p0, Llfz;->a:Ltxm;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_7b
    new-instance v0, Ltzs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-static {p0}, Llfp;->a(Lpnu;)Lryb;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    sget-object p0, Lphm;->c:Lphm;

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_4b

    nop

    nop

    :goto_7f
    invoke-static {v1}, Lrkm;->N(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    sget-object p0, Llhv;->j:Llhv;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    iget-object p0, p0, Llfz;->a:Ltxm;

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_82
    invoke-direct {v1, v0, p0}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_83
    invoke-static {p0}, Lrkm;->P(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    const v1, 0xe

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    check-cast p0, Lj$/util/Optional;

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_86
    const/16 v4, 0x23

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_87
    check-cast p0, Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    if-eqz v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_3
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_8a
    iget-boolean v1, p0, Lgqg;->s:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_8b
    invoke-direct {v1, v0, p0}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object p0, p0, Llfz;->a:Ltxm;

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_8d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {p0}, Lgvd;->b()Lgqg;

    move-result-object p0

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p0}, Lgvd;->b()Lgqg;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_90
    check-cast v1, Lkqa;

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_91
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_c5

    nop

    nop

    :goto_92
    new-instance v0, Llgd;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iget-object p0, p0, Lgqg;->o:Landroid/util/Range;

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

    :goto_94
    new-instance v1, Lpha;

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_95
    sget-object p0, Lpgz;->b:Lpgz;

    nop

    nop

    nop

    nop

    nop

    :goto_96
    goto/32 :goto_1f

    nop

    nop

    :goto_97
    check-cast p0, Lphj;

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_98
    move v1, v3

    nop

    nop

    nop

    :goto_99
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_9a
    check-cast p0, Lgvd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {p0}, Lgvd;->b()Lgqg;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    sget-object p0, Lphm;->a:Lphm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9e
    iget-boolean p0, p0, Lgqg;->L:Z

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_9f
    move v3, v4

    nop

    nop

    nop

    nop

    :goto_a0
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-direct {v2, v1, p0}, Lpha;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_a2
    check-cast p0, Lgvd;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    goto/16 :goto_96

    nop

    :goto_a5
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    if-eqz v1, :cond_5

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_5
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-direct {p0, v0}, Llgc;-><init>(Ljava/util/Map;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_aa
    sget-object p0, Lhmq;->a:Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_ab
    invoke-virtual {p0, v5}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    new-instance v0, Lryw;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_ad
    iget v0, p0, Llfz;->b:I

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_ae
    if-nez p0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    :cond_6
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-static {v1}, Llfp;->c(Lkqa;)Lryy;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_b0
    check-cast p0, Lgvd;

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    return-object p0

    nop

    nop

    :pswitch_d
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    return-object p0

    nop

    nop

    :pswitch_e
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_b3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_12
        :pswitch_13
        :pswitch_6
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_5
        :pswitch_4
        :pswitch_e
        :pswitch_1
        :pswitch_2
        :pswitch_11
        :pswitch_a
        :pswitch_7
        :pswitch_d
        :pswitch_10
        :pswitch_f
        :pswitch_8
    .end packed-switch

    :goto_b4
    goto/32 :goto_18

    nop

    nop

    :goto_b5
    return-object p0

    nop

    :pswitch_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    check-cast p0, Lgvd;

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_b8
    iget-object p0, p0, Llfz;->a:Ltxm;

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

    :goto_b9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_ba
    iget-object p0, p0, Llfz;->a:Ltxm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_bb
    return-object p0

    nop

    nop

    :pswitch_10
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    const/16 v3, 0x36

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-direct {v0, p0}, Llgc;-><init>(Ljava/util/Map;)V

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_be
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_bf
    if-nez p0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_9c

    nop

    nop

    :goto_c0
    iget-boolean p0, p0, Lgqg;->H:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c2
    invoke-direct {v0}, Ltzs;-><init>()V

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_c3
    iget-object p0, p0, Llfz;->a:Ltxm;

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_c4
    return-object v0

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_c5
    iget-object p0, p0, Llfz;->a:Ltxm;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    check-cast p0, Lgvd;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    iget-object p0, p0, Llfz;->a:Ltxm;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c8
    return-object v0

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_c9
    goto/16 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    if-nez p0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    if-nez v0, :cond_9

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_cd
    check-cast p0, Lhoh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    invoke-static {v1}, Lrkm;->N(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    invoke-interface {p0}, Ltxm;->a()Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop
.end method
