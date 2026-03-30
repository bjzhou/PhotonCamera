.class public Lcom/google/ar/core/CaptureMetadataEntry;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field private final key:Landroid/hardware/camera2/CaptureRequest$Key;

.field private final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lcom/google/ar/core/CaptureMetadataEntry;->value:Ljava/lang/Object;

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcom/google/ar/core/CaptureMetadataEntry;->key:Landroid/hardware/camera2/CaptureRequest$Key;

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

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method static getCaptureMetadataForPixelAndEmulatorDevices(Ljava/lang/String;Ljava/lang/String;I)Ljava/util/List;
    .locals 20

    goto/32 :goto_a8

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_b

    nop

    nop

    :goto_1
    goto/32 :goto_76

    nop

    nop

    nop

    :goto_2
    if-eqz v5, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_0
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance v3, Ljava/util/ArrayList;

    nop

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

    :goto_6
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, v6, v7}, Lcom/google/ar/core/CaptureMetadataEntry;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v6, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_b
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    :cond_3
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const-class v2, Ljava/lang/Byte;

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

    :goto_10
    move-object/from16 v1, p1

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_24

    nop

    nop

    :goto_13
    const/16 v0, 0x21

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_14
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_77

    nop

    nop

    :goto_16
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_18
    if-eqz v5, :cond_5

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_5
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v0, Lcom/google/ar/core/CaptureMetadataEntry;

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0}, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;-><init>()V

    goto/32 :goto_14

    nop

    nop

    :goto_1b
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_6d

    nop

    nop

    :goto_1c
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v12, "bluejay"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_1e
    throw v0

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move-object/from16 v0, v17

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

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

    :goto_22
    const-class v2, Ljava/lang/Byte;

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_23
    invoke-direct {v6, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_a2

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_26
    const-string v8, "com.google.internal.SensorBinningMode"

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

    :goto_27
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :cond_6
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-string v5, "1"

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

    :goto_2a
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    goto/32 :goto_47

    nop

    nop

    :goto_2b
    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v9, "husky"

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_8c

    nop

    nop

    :goto_2e
    new-instance v1, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_2f
    new-instance v0, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_30
    invoke-direct {v1, v8, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_32
    if-eqz v5, :cond_7

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_8

    nop

    goto/32 :goto_7e

    nop

    :cond_8
    goto/32 :goto_7d

    nop

    :goto_34
    if-eqz v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_35
    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_36
    invoke-direct {v0}, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;-><init>()V

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_37
    new-instance v0, Lcom/google/ar/core/CaptureMetadataEntry;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_38
    const/4 v7, 0x0

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_39
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_3a
    new-instance v0, Lcom/google/ar/core/CaptureMetadataEntry;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_3b
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_3d
    new-instance v1, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_3e
    if-eqz v5, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_a
    goto/32 :goto_21

    nop

    nop

    :goto_3f
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_41
    move-object/from16 v0, v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_43
    const-string v7, "android.control.captureIntent"

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {v0, v1, v2}, Lcom/google/ar/core/CaptureMetadataEntry;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_96

    nop

    nop

    :goto_45
    new-instance v6, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_46
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    const-string v4, "oriole"

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

    nop

    :goto_48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_4a
    if-ge v2, v0, :cond_b

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_19

    nop

    nop

    :goto_4b
    const-class v8, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    new-instance v0, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

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

    :goto_4d
    const-string v11, "lynx"

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

    :goto_4e
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_4f
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    :goto_50
    if-eqz v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-direct {v0, v1, v2}, Lcom/google/ar/core/CaptureMetadataEntry;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_a

    nop

    nop

    :goto_52
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_53
    new-instance v0, Lcom/google/ar/core/CaptureMetadataEntry;

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_54
    invoke-direct {v0, v6, v8}, Lcom/google/ar/core/CaptureMetadataEntry;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_55
    const-class v9, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :goto_56
    new-instance v6, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-direct {v1, v8, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    goto/32 :goto_11

    nop

    nop

    :goto_58
    new-instance v1, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_59
    const-string v6, "android.control.sceneMode"

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

    :goto_5a
    if-nez v0, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :cond_d
    :goto_5b
    goto/32 :goto_94

    nop

    nop

    nop

    :goto_5c
    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_5d
    invoke-direct {v0, v1, v2}, Lcom/google/ar/core/CaptureMetadataEntry;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_5e
    move-object/from16 v17, v7

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_5f
    const-string v14, "panther"

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_60
    const-string v8, "caiman"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_61
    if-eqz v5, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_63
    move-object/from16 v0, v19

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

    :goto_64
    if-eqz v0, :cond_f

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    :cond_f
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_65
    const v1, 0x2

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

    :goto_66
    if-nez v0, :cond_10

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_10
    :goto_67
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_69
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_6a
    if-eqz v5, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_b1

    nop

    nop

    :goto_6b
    const/16 v5, 0x22

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_6c
    move-object/from16 v0, v16

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_6d
    new-instance v0, Lcom/google/ar/core/CaptureMetadataEntry;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    new-instance v1, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    const-string v7, "android.lens.opticalStabilizationMode"

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

    :goto_70
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_71
    const-class v8, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_72
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    :goto_73
    const-string v15, "raven"

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    if-eqz v5, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_75
    const-class v2, Ljava/lang/Byte;

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    new-instance v0, Lcom/google/ar/core/CaptureMetadataEntry;

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

    :goto_77
    goto/32 :goto_7e

    nop

    nop

    :goto_78
    invoke-direct {v1, v6, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_7a
    if-eqz v5, :cond_13

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    const-class v2, Ljava/lang/Byte;

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

    :goto_7c
    invoke-direct {v6, v8, v9}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7d
    goto/32 :goto_15

    nop

    nop

    :goto_7e
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_7f
    new-instance v0, Lcom/google/ar/core/CaptureMetadataEntry;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_80
    move-object/from16 v16, v6

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    if-nez v0, :cond_14

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_14
    :goto_82
    goto/32 :goto_92

    nop

    nop

    nop

    :goto_83
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_84
    if-eqz v0, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :cond_15
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_85
    if-eqz v5, :cond_16

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_86
    const-string v13, "cheetah"

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_88
    invoke-direct {v0}, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    :goto_89
    goto/16 :goto_1f

    nop

    :goto_8a
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    const-string v6, "tokay"

    nop

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

    :goto_8c
    new-instance v0, Lcom/google/ar/core/CaptureMetadataEntry;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_8d
    const-string v8, "android.control.videoStabilizationMode"

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

    :goto_8e
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_8f
    invoke-direct {v1, v6, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_90
    invoke-direct {v0, v1, v2}, Lcom/google/ar/core/CaptureMetadataEntry;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_3f

    nop

    nop

    :goto_91
    invoke-direct {v6, v7, v8}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :goto_92
    if-ge v2, v5, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_17
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    if-eqz v5, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_94
    if-lt v2, v5, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_19
    :goto_95
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_96
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_97
    goto/16 :goto_b

    nop

    nop

    :goto_98
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    const-class v2, Ljava/lang/Byte;

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    const-string v10, "shiba"

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    if-eqz v5, :cond_1a

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_12

    nop

    nop

    :goto_9c
    invoke-direct {v1, v6, v2}, Landroid/hardware/camera2/CaptureRequest$Key;-><init>(Ljava/lang/String;Ljava/lang/Class;)V

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_9e
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

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

    :goto_9f
    if-nez v5, :cond_1b

    nop

    goto/32 :goto_8a

    nop

    nop

    :cond_1b
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    :goto_a1
    throw v0

    nop

    nop

    nop

    :goto_a2
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    if-eqz v0, :cond_1c

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1c
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_a4
    move-object/from16 v19, v9

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    if-eqz v0, :cond_1d

    nop

    goto/32 :goto_1

    nop

    :cond_1d
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_a6
    const/4 v7, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_a7
    if-eqz v5, :cond_1e

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_a9
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_aa
    goto/16 :goto_1

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_bc

    nop

    nop

    :goto_ac
    const/16 v3, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-direct {v0, v1, v2}, Lcom/google/ar/core/CaptureMetadataEntry;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_af
    invoke-virtual {v1, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    const-string v7, "komodo"

    nop

    nop

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

    :goto_b1
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

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

    :goto_b2
    invoke-direct {v0, v6, v7}, Lcom/google/ar/core/CaptureMetadataEntry;-><init>(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_b3
    if-eqz v0, :cond_1f

    nop

    nop

    goto/32 :goto_67

    nop

    :cond_1f
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_b5
    if-eqz v0, :cond_20

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    :cond_20
    goto/32 :goto_af

    nop

    nop

    nop

    :goto_b6
    return-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_b8
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

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

    :goto_b9
    if-nez v0, :cond_21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    :cond_21
    goto/32 :goto_aa

    nop

    nop

    :goto_ba
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

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

    :goto_bb
    const/4 v5, 0x1

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_bc
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    nop

    :goto_bd
    new-instance v0, Lcom/google/ar/core/exceptions/UnavailableDeviceNotCompatibleException;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_be
    invoke-virtual {v1, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_b5

    nop

    nop

    :goto_bf
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_c0
    if-eqz v0, :cond_22

    nop

    goto/32 :goto_82

    nop

    :cond_22
    goto/32 :goto_87

    nop

    nop

    :goto_c1
    const-string v6, "0"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_c2
    move-object/from16 v18, v8

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    new-instance v1, Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    move/from16 v2, p2

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    :goto_c5
    if-ge v2, v3, :cond_23

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public addToBuilder(Landroid/hardware/camera2/CaptureRequest$Builder;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/google/ar/core/CaptureMetadataEntry;->key:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lcom/google/ar/core/CaptureMetadataEntry;->value:Ljava/lang/Object;

    nop

    invoke-virtual {p1, v0, p0}, Landroid/hardware/camera2/CaptureRequest$Builder;->set(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CaptureRequest$Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

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

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v2, p0, Lcom/google/ar/core/CaptureMetadataEntry;->key:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_9
    invoke-virtual {p1, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

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

    :goto_b
    iget-object p1, p1, Lcom/google/ar/core/CaptureMetadataEntry;->value:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_c
    return v1

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_f
    check-cast p1, Lcom/google/ar/core/CaptureMetadataEntry;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez p0, :cond_3

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

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    :goto_12
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
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

    :goto_16
    iget-object v0, p1, Lcom/google/ar/core/CaptureMetadataEntry;->key:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    instance-of v0, p1, Lcom/google/ar/core/CaptureMetadataEntry;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    return v1

    nop

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p0, p0, Lcom/google/ar/core/CaptureMetadataEntry;->value:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getKey()Landroid/hardware/camera2/CaptureRequest$Key;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/ar/core/CaptureMetadataEntry;->key:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    goto/32 :goto_1

    nop

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
.end method

.method public getValue()Ljava/lang/Object;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/ar/core/CaptureMetadataEntry;->value:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop
.end method

.method public hashCode()I
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    const v1, 0x10

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

    :goto_3
    const v0, 0xb

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

    :goto_4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/ar/core/CaptureMetadataEntry;->key:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    filled-new-array {v0, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lcom/google/ar/core/CaptureMetadataEntry;->value:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-static {p0}, Lj$/util/Objects;->hash([Ljava/lang/Object;)I

    move-result p0

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "[%s, %s, %s]"

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

    :goto_3
    iget-object p0, p0, Lcom/google/ar/core/CaptureMetadataEntry;->value:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    return-object p0

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcom/google/ar/core/CaptureMetadataEntry;->key:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    filled-new-array {v0, p0, v1}, [Ljava/lang/Object;

    move-result-object p0

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

    :goto_e
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_9

    nop

    :goto_10
    goto/32 :goto_a

    nop
.end method
