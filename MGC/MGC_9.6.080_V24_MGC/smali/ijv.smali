.class public final synthetic Lijv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lijv;->b:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lijv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_31

    nop

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

    :pswitch_1
    goto/32 :goto_1e

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

    :pswitch_2
    goto/32 :goto_25

    nop

    nop

    :goto_3
    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_psaf_max_exposure_time_ms_set(JLcom/google/googlex/gcam/ShotParams;F)V

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Lila;->b:Lpck;

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_7
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_11
        :pswitch_13
        :pswitch_a
        :pswitch_10
        :pswitch_e
        :pswitch_2
        :pswitch_12
        :pswitch_8
        :pswitch_b
        :pswitch_d
        :pswitch_3
        :pswitch_0
        :pswitch_c
        :pswitch_1
        :pswitch_5
        :pswitch_7
        :pswitch_f
        :pswitch_6
        :pswitch_9
    .end packed-switch

    :goto_a
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Lcom/google/googlex/gcam/InterleavedImageU8;->h()V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Ljbs;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Ljbi;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p1}, Lcom/google/googlex/gcam/ArkInfo;->f(Lsxm;)V

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lijv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p1, [B

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :pswitch_5
    goto/32 :goto_1d

    nop

    nop

    :goto_13
    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object p0, p0, Lijv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lijv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_16
    invoke-static {p1}, Lj$/util/Optional;->of(Ljava/lang/Object;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_17
    check-cast p0, Lcom/google/googlex/gcam/ArkInfo;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    :pswitch_6
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ArkInfo_brightness_factor_set(JLcom/google/googlex/gcam/ArkInfo;F)V

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lijv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_1c
    invoke-static {p1, p0}, Ltcw;->b([BLcom/google/googlex/gcam/HalAfMetadata;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast p1, Ljcd;

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_1e
    check-cast p1, Lcom/google/googlex/gcam/InterleavedImageU8;

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_1f
    check-cast p1, Ljbb;

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_21
    iget-object p0, p0, Lijv;->a:Ljava/lang/Object;

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

    nop

    nop

    :goto_22
    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_little_cpu_freq_option_set(JLcom/google/googlex/gcam/ShotParams;F)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_6c

    nop

    nop

    :goto_24
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_25
    check-cast p1, Ljava/lang/Float;

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

    nop

    :goto_26
    iget-wide v0, p0, Lcom/google/googlex/gcam/ArkInfo;->a:J

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_27
    check-cast p0, Lnev;

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

    :goto_28
    iget-object p0, p0, Lijv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_29
    check-cast p0, Ljbi;

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

    :goto_2a
    return-void

    nop

    nop

    :pswitch_8
    goto/32 :goto_95

    nop

    nop

    nop

    :goto_2b
    iget-object v1, p1, Lizn;->c:Lsmf;

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

    nop

    :goto_2c
    iget-wide v0, p0, Lcom/google/googlex/gcam/ArkInfo;->a:J

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_2d
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2e
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    check-cast p0, Lcom/google/googlex/gcam/HalAfMetadata;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_30
    iget-object p0, p0, Lijv;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_31
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_32
    check-cast p0, Lcom/google/googlex/gcam/ShotParams;

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

    :goto_33
    invoke-virtual {p0, p1}, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;->b(F)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_34
    iput-object p0, p1, Lizn;->b:Lnne;

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

    :goto_35
    return-void

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_7d

    nop

    nop

    :goto_36
    check-cast p0, Lcom/google/googlex/gcam/ShotParams;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_37
    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ArkInfo_white_balance_factor_set(JLcom/google/googlex/gcam/ArkInfo;F)V

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_38
    iget-wide v0, p0, Lcom/google/googlex/gcam/ArkInfo;->a:J

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

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

    nop

    :goto_3d
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_3e
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :goto_40
    goto/32 :goto_9

    nop

    nop

    :goto_41
    sget-object v0, Ljar;->d:Ljar;

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-direct {v0, p0, v1}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;[B)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ArkInfo_shadow_factor_set(JLcom/google/googlex/gcam/ArkInfo;F)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_63

    nop

    :cond_0
    goto/32 :goto_62

    nop

    :goto_45
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_46
    iget-object p0, p0, Lijv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_47
    iget-object p0, p0, Lijv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_48
    iget-object p0, p0, Ljbi;->d:Ljava/util/HashMap;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_49
    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_shasta_factor_set(JLcom/google/googlex/gcam/ShotParams;F)V

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_4a
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_63

    nop

    :goto_4c
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p1, p0, v0, v1}, Lizn;->b(Lnne;ILsmf;)V

    goto/32 :goto_34

    nop

    nop

    :goto_4f
    check-cast p0, Lcom/google/googlex/gcam/ShotParams;

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

    :goto_50
    iget-wide v0, p0, Lcom/google/googlex/gcam/ArkInfo;->a:J

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_52
    invoke-interface {p1}, Ljcd;->c()V

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_54
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_55
    iget-object p0, p0, Lijv;->a:Ljava/lang/Object;

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

    :goto_56
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotParams;->a:J

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

    :goto_57
    check-cast p0, Ljaa;

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

    :goto_58
    iget-object p0, p0, Lijv;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_5a
    return-void

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_5b
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_5d
    invoke-interface {p1, v0}, Ljcd;->h(Landroidx/wear/ambient/AmbientMode$AmbientController;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {p0, p1}, Ljbs;->n(Ljay;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_5f
    return-void

    nop

    :pswitch_b
    goto/32 :goto_54

    nop

    nop

    :goto_60
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_61
    check-cast p0, Lnne;

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

    :goto_62
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_64
    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_mid_cpu_freq_option_set(JLcom/google/googlex/gcam/ShotParams;F)V

    goto/32 :goto_2a

    nop

    nop

    :goto_65
    check-cast p0, Lcom/google/googlex/gcam/ArkInfo;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iget-object p0, p0, Lijv;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    return-void

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_68
    sget-object p1, Lsxm;->c:Lsxm;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_69
    return-void

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_6b
    iget v0, p0, Lijv;->b:I

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_6c
    check-cast p1, Lizn;

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_psaf_log_scene_brightness_threshold_override_set(JLcom/google/googlex/gcam/ShotParams;F)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6f
    iput-object p1, p0, Liod;->c:Lj$/util/Optional;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_70
    check-cast p1, Ljava/util/function/Consumer;

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

    nop

    :goto_71
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    check-cast p0, Lcom/google/googlex/gcam/ShotParams;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_73
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_74
    check-cast p0, Liod;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_75
    iget-object p0, p0, Lijv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    check-cast p1, Lnex;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_77
    new-instance v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_78
    check-cast p0, Lcom/google/googlex/gcam/ArkInfo;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_79
    iget-object p0, p0, Lijv;->a:Ljava/lang/Object;

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

    :goto_7a
    iget-object p0, p0, Lijv;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    check-cast p1, Ljay;

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_7c
    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotParams_big_cpu_freq_option_set(JLcom/google/googlex/gcam/ShotParams;F)V

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    check-cast p1, Ljbg;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_7f
    check-cast p0, Lcom/google/googlex/gcam/BuildPayloadBurstSpecOptions;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_80
    iget-object p0, p0, Lijv;->a:Ljava/lang/Object;

    nop

    nop

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

    :goto_81
    iget-object p0, p0, Lijv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_82
    return-void

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iget-object p0, p0, Lijv;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_84
    const v0, 0x1a

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_85
    return-void

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_1f

    nop

    nop

    :goto_86
    return-void

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_87
    invoke-static {v0, v1, p0, p1}, Lcom/google/googlex/gcam/GcamModuleJNI;->ArkInfo_focus_distance_set(JLcom/google/googlex/gcam/ArkInfo;F)V

    goto/32 :goto_68

    nop

    nop

    :goto_88
    sget-object p0, Lhml;->a:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_89
    iget-object p0, p0, Lijv;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_8a
    check-cast p0, Lcom/google/googlex/gcam/ArkInfo;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    return-void

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_60

    nop

    nop

    :goto_8c
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    check-cast p0, Ljbs;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_8e
    check-cast p0, Lcom/google/googlex/gcam/ShotParams;

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_8f
    iget-wide v0, p0, Lcom/google/googlex/gcam/ShotParams;->a:J

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_90
    check-cast p1, Ljava/lang/Float;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_91
    return-void

    nop

    :pswitch_12
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_93
    invoke-virtual {p0, v0, p1}, Ljaa;->f(Ljar;Ljaq;)V

    goto/32 :goto_23

    nop

    nop

    :goto_94
    iget-object p0, p0, Lijv;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    check-cast p1, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_96
    iget v0, p1, Lizn;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_97
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_98
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {p0, p1}, Lnev;->c(Lnex;)V

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_9a
    check-cast p0, Lcom/google/googlex/gcam/ShotParams;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 1

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :pswitch_0
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    :pswitch_2
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

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
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    :pswitch_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_15

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    :pswitch_7
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

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

    :goto_c
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

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

    :goto_f
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object p0

    nop

    :pswitch_9
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_12
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_13
    return-object p0

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    :pswitch_b
    goto/32 :goto_4

    nop

    nop

    :goto_17
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-object p0

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_2

    nop

    nop

    :goto_19
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

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

    :goto_1a
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1b
    iget v0, p0, Lijv;->b:I

    nop

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_11

    nop

    nop

    :goto_1c
    return-object p0

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_b
        :pswitch_c
        :pswitch_f
        :pswitch_12
        :pswitch_8
        :pswitch_6
        :pswitch_a
        :pswitch_10
        :pswitch_5
        :pswitch_9
        :pswitch_e
        :pswitch_d
        :pswitch_1
        :pswitch_7
        :pswitch_4
        :pswitch_13
        :pswitch_0
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :goto_1d
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_20
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_26

    nop

    nop

    :goto_21
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_19

    nop

    nop

    :goto_23
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_24
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_25
    return-object p0

    nop

    nop

    nop

    :pswitch_11
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_28
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2a
    return-object p0

    nop

    nop

    :pswitch_13
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop
.end method
