.class public final Lffz;
.super Lfhg;
.source "PG"


# static fields
.field private static final x:Lfht;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_1
    rem-int v0, v0, v1

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

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    sput-object v0, Lffz;->x:Lfht;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0, v1}, Lfht;-><init>(Ljava/lang/String;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    new-instance v0, Lfht;

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

    :goto_b
    const-string v1, "AndCam2Capabs"

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x7

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x15

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 8

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq v4, v5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_1
    invoke-static {v2}, Lffz;->a(I)Lfhd;

    move-result-object v2

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v7, Ljava/lang/Integer;

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_51

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    invoke-static {v2}, Lfhs;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_9c

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_24

    nop

    nop

    :goto_a
    const-string v0, "bWF4X2RpZ2l0YWxfem9vbV9rZXk"

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

    :goto_b
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_c
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_e
    const/16 v2, 0x100

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

    :goto_f
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0}, Lfhs;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_11
    check-cast v0, Landroid/util/Rational;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object v0

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_14
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    :goto_15
    sget-object v1, Lfhc;->c:Lfhc;

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_2b

    nop

    nop

    :goto_18
    iget-object v1, p0, Lffz;->e:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_19
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_1a
    iput v0, p0, Lffz;->o:I

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

    :goto_1b
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AWB_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_1d
    aget v5, v1, v4

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v1, v1, 0x1

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

    :goto_20
    div-float/2addr v1, v0

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v1

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_23
    if-lt v4, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_26
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_27
    array-length v1, v0

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p1, p0, Lffz;->l:Ljava/util/EnumSet;

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_6b

    nop

    nop

    :goto_2a
    goto/32 :goto_5d

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lffz;->i:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_2c
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v7

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2d
    aget v1, v0, v3

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_2e
    iget-object v1, p0, Lffz;->c:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object p1, p0, Lffz;->l:Ljava/util/EnumSet;

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-eqz v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v1, [Landroid/util/Range;

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_32
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_33
    check-cast v1, Ljava/lang/Integer;

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_ab

    nop

    :goto_37
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v4, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :goto_39
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_3c
    invoke-virtual {p0, p1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :goto_3d
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v2, :cond_5

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    check-cast v0, [I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v0

    nop

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

    :goto_42
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_43
    if-gtz p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :cond_6
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v0, v1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_49

    nop

    nop

    :goto_46
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_47
    check-cast v0, Landroid/hardware/camera2/params/StreamConfigurationMap;

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_48
    if-lt v1, v2, :cond_7

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_49
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AVAILABLE_SCENE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_4a
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_4b
    if-gtz p1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_4c
    check-cast v0, Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_4d
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_MAX_FACE_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_4e
    iget p1, p0, Lffz;->s:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-static {v2}, Lffz;->b(I)Lfhe;

    move-result-object v2

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    move v1, v3

    nop

    :goto_51
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputFormats()[I

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_54
    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :goto_55
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-static {v0}, Lcom/a;->ac_ma(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_58
    move v4, v3

    nop

    nop

    :goto_59
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_5a
    iput v1, p0, Lffz;->p:F

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-lt v4, v2, :cond_9

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-lez v0, :cond_a

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_36

    nop

    :goto_5d
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_5f
    invoke-virtual {v6, v5}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_61
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {p1, v0}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :goto_63
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    new-instance v0, Landroidx/wear/ambient/SharedLibraryVersion;

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_65
    invoke-static {v2}, Lfhs;->c(Ljava/util/List;)Ljava/util/List;

    move-result-object v2

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_66
    iput v0, p0, Lffz;->q:I

    nop

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

    :goto_67
    check-cast v5, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v0, p0, Lffz;->g:Ljava/util/TreeSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_69
    iput v0, p0, Lffz;->t:F

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_6a
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    check-cast v0, [I

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

    :goto_6d
    sget-object p1, Lfhb;->a:Lfhb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_6e
    if-lt v3, v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/16 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_7e

    nop

    nop

    :goto_71
    const/4 v5, 0x4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    move v4, v3

    nop

    nop

    :goto_73
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {p1, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_75
    if-lt v1, v2, :cond_c

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    array-length v1, v0

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_77
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

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

    :goto_78
    invoke-virtual {v4, v5}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :goto_79
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    if-nez v2, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_d
    goto/32 :goto_95

    nop

    nop

    nop

    :goto_7b
    iget-object v6, p0, Lffz;->b:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_7c
    const-class v2, Landroid/media/MediaRecorder;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object v0, p0, Lffz;->i:Ljava/util/EnumSet;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {v0}, Ljava/lang/Double;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {v0}, Landroid/util/Rational;->getDenominator()I

    move-result v0

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

    :goto_81
    sget-object v1, Lfhc;->b:Lfhc;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_82
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_83
    filled-new-array {v7, v5}, [I

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_84
    invoke-virtual {v4, v2}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :goto_85
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v1, p0, Lffz;->d:Ljava/util/TreeSet;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_87
    iput p1, p0, Lffz;->r:I

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_89
    invoke-static {v1}, Lffz;->c(I)Lfhf;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_8a
    sget-object v1, Lfhc;->d:Lfhc;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v2, p0, Lffz;->k:Ljava/util/EnumSet;

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

    nop

    :goto_8c
    array-length v2, v0

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

    :goto_8d
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(Ljava/lang/Class;)[Landroid/util/Size;

    move-result-object v2

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    if-gtz p1, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    :cond_e
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_8f
    if-nez v1, :cond_f

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_90
    goto/16 :goto_59

    nop

    nop

    nop

    nop

    :goto_91
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    array-length v2, v1

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_94
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iget-object v4, p0, Lffz;->j:Ljava/util/EnumSet;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_96
    iput v1, p0, Lffz;->n:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_97
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_98
    iget-object v1, p0, Lffz;->f:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_99
    array-length v2, v1

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_9a
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_9b
    if-nez v0, :cond_10

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_10
    :goto_9c
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    check-cast v0, [I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    goto/16 :goto_73

    nop

    :goto_9f
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_a0
    sget-object v0, Lfhd;->a:Lfhd;

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-direct {v0}, Landroidx/wear/ambient/SharedLibraryVersion;-><init>()V

    goto/32 :goto_bb

    nop

    nop

    nop

    :goto_a2
    goto/16 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iget-object v0, p0, Lffz;->i:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_a5
    invoke-virtual {p0, v0}, Lfhg;->f(Lfhd;)Z

    move-result v0

    nop

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

    :goto_a6
    iget-object v4, p0, Lffz;->h:Ljava/util/EnumSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    cmpl-float p1, p1, v0

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_a8
    iget-object v6, p0, Lffz;->d:Ljava/util/TreeSet;

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_aa
    return-void

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_ac
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_ad
    aget v2, v0, v1

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

    :goto_ae
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_af
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_b0
    invoke-virtual {v2, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    :goto_b1
    goto/32 :goto_d3

    nop

    nop

    :goto_b2
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_b4
    aget v2, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b5
    int-to-float v1, v1

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    sget-object v0, Lfhb;->c:Lfhb;

    nop

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

    :goto_b7
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_b8
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_b9
    move v1, v3

    nop

    nop

    :goto_ba
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    invoke-direct {p0, v0}, Lfhg;-><init>(Landroidx/wear/ambient/SharedLibraryVersion;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_bc
    if-nez v0, :cond_11

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    iget p1, p0, Lffz;->t:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_be
    iput v0, p0, Lffz;->s:I

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

    :goto_bf
    check-cast p1, Ljava/lang/Integer;

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_c0
    const-class v2, Landroid/graphics/SurfaceTexture;

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    array-length v2, v0

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_c2
    iget-object v4, p0, Lffz;->i:Ljava/util/EnumSet;

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_c3
    sget-object v0, Lfhb;->d:Lfhb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_c4
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    :goto_c6
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_c8
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_c9
    aget-object v5, v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    if-lt v2, v1, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    if-nez v0, :cond_13

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_cc
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_cd
    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_TARGET_FPS_RANGES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_ce
    invoke-virtual {v0, v1}, Ljava/util/EnumSet;->add(Ljava/lang/Object;)Z

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    :goto_cf
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    if-nez v0, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_d2
    iget-object p0, p0, Lffz;->l:Ljava/util/EnumSet;

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_d3
    add-int/lit8 v3, v3, 0x1

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

    nop

    :goto_d4
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_d6
    sget-object v1, Lfhc;->e:Lfhc;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    sget-object v5, Lfhc;->f:Lfhc;

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_d8
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    check-cast v0, [I

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_db
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_AVAILABLE_MAX_DIGITAL_ZOOM:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_dc
    add-int v0, v0, v1

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

    :goto_dd
    const v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_de
    iget-object v0, p0, Lffz;->i:Ljava/util/EnumSet;

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_df
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_e0
    check-cast v0, Landroid/util/Range;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    aget v4, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop
.end method

.method public static a(I)Lfhd;
    .locals 2

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_0
    const-string v1, "Unable to convert from API 2 focus mode: "

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_3
    if-ne p0, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_6
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0, p0}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c
    if-ne p0, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p0, Lfhd;->d:Lfhd;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    :goto_f
    const/4 v0, 0x2

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

    :goto_10
    const/4 v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_11
    if-nez p0, :cond_3

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

    :cond_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

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

    :goto_13
    sget-object p0, Lfhd;->c:Lfhd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_14
    if-ne p0, v0, :cond_4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x8

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_17
    sget-object v0, Lffz;->x:Lfht;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_18
    if-ne p0, v0, :cond_5

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_19
    if-ne p0, v0, :cond_6

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_10

    nop

    nop

    :goto_1a
    return-object p0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1c
    return-object p0

    nop

    :goto_1d
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1e
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1f
    const v0, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_20
    sget-object p0, Lfhd;->b:Lfhd;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_21
    sget-object p0, Lfhd;->g:Lfhd;

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

    :goto_22
    return-object p0

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget-object p0, Lfhd;->a:Lfhd;

    nop

    nop

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

    :goto_25
    return-object p0

    nop

    nop

    :goto_26
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget-object p0, Lfhd;->e:Lfhd;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_28
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_29
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2a
    return-object p0

    nop

    nop

    :goto_2b
    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public static b(I)Lfhe;
    .locals 2

    goto/32 :goto_2a

    nop

    nop

    :goto_0
    const-string v1, "Unable to convert from API 2 scene mode: "

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_6

    nop

    nop

    :goto_2
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object p0, Lfhe;->r:Lfhe;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    nop

    :goto_5
    return-object p0

    nop

    :pswitch_1
    goto/32 :goto_b

    nop

    nop

    :goto_6
    sget-object p0, Lfhe;->c:Lfhe;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    :pswitch_2
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    :pswitch_3
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    sget-object p0, Lfhe;->f:Lfhe;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_b
    sget-object p0, Lfhe;->n:Lfhe;

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

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    packed-switch p0, :pswitch_data_0

    :pswitch_5
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_10

    nop

    nop

    :goto_10
    sget-object v0, Lffz;->x:Lfht;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    sget-object p0, Lfhe;->h:Lfhe;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_12
    invoke-static {v0, p0}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p0, Lfhe;->e:Lfhe;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_14
    sget-object p0, Lfhe;->m:Lfhe;

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

    :goto_15
    return-object p0

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_27

    nop

    nop

    :goto_16
    return-object p0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_f
        :pswitch_9
        :pswitch_b
        :pswitch_5
        :pswitch_c
        :pswitch_7
        :pswitch_1
        :pswitch_8
        :pswitch_4
        :pswitch_a
        :pswitch_2
        :pswitch_d
        :pswitch_3
        :pswitch_e
    .end packed-switch

    :goto_17
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_19
    const v1, 0x1c

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_1a
    sget-object p0, Lfhe;->d:Lfhe;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object p0, Lfhe;->l:Lfhe;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object p0, Lfhe;->q:Lfhe;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    :pswitch_8
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1f
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object p0, Lfhe;->i:Lfhe;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_21
    sget v0, Lfhr;->a:I

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_23
    return-object p0

    nop

    :pswitch_a
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eq p0, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_25
    sget-object p0, Lfhe;->p:Lfhe;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_d

    nop

    nop

    :goto_27
    sget-object p0, Lfhe;->b:Lfhe;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

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

    :pswitch_b
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2a
    const v0, 0x13

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

    :goto_2b
    return-object p0

    nop

    nop

    :pswitch_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    sget-object p0, Lfhe;->o:Lfhe;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2d
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_1c

    nop

    nop

    :goto_2e
    sget-object p0, Lfhe;->j:Lfhe;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2f
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_30
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sget-object p0, Lfhe;->g:Lfhe;

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
.end method

.method public static c(I)Lfhf;
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v1}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1
    const v1, 0x5

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x16

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

    :goto_4
    sget-object p0, Lfhf;->e:Lfhf;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v0, Lffz;->x:Lfht;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string v1, "Unable to convert from API 2 white balance: "

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sget-object p0, Lfhf;->g:Lfhf;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_a
    return-object p0

    nop

    :pswitch_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    sget-object p0, Lfhf;->d:Lfhf;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object p0, Lfhf;->h:Lfhf;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_e
    return-object p0

    nop

    :pswitch_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object p0, Lfhf;->c:Lfhf;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_11
    sget-object p0, Lfhf;->a:Lfhf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_b

    nop

    nop

    :goto_13
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_7
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_6
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :goto_14
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    packed-switch p0, :pswitch_data_0

    goto/32 :goto_5

    nop

    nop

    :goto_17
    return-object p0

    nop

    :pswitch_5
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x0

    nop

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

    :goto_19
    sget-object p0, Lfhf;->b:Lfhf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-object p0

    nop

    nop

    :pswitch_6
    goto/32 :goto_19

    nop

    nop

    :goto_1c
    sget-object p0, Lfhf;->f:Lfhf;

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

    :goto_1d
    invoke-static {v0, p0}, Lfhu;->c(Lfht;Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1e
    return-object p0

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method
