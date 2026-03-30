.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "AttributesType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "KeyAttributes"

.field public static final S_ALPHA:Ljava/lang/String; = "alpha"

.field public static final S_CURVE_FIT:Ljava/lang/String; = "curveFit"

.field public static final S_CUSTOM:Ljava/lang/String; = "CUSTOM"

.field public static final S_EASING:Ljava/lang/String; = "easing"

.field public static final S_ELEVATION:Ljava/lang/String; = "elevation"

.field public static final S_FRAME:Ljava/lang/String; = "frame"

.field public static final S_PATH_ROTATE:Ljava/lang/String; = "pathRotate"

.field public static final S_PIVOT_TARGET:Ljava/lang/String; = "pivotTarget"

.field public static final S_PIVOT_X:Ljava/lang/String; = "pivotX"

.field public static final S_PIVOT_Y:Ljava/lang/String; = "pivotY"

.field public static final S_PROGRESS:Ljava/lang/String; = "progress"

.field public static final S_ROTATION_X:Ljava/lang/String; = "rotationX"

.field public static final S_ROTATION_Y:Ljava/lang/String; = "rotationY"

.field public static final S_ROTATION_Z:Ljava/lang/String; = "rotationZ"

.field public static final S_SCALE_X:Ljava/lang/String; = "scaleX"

.field public static final S_SCALE_Y:Ljava/lang/String; = "scaleY"

.field public static final S_TARGET:Ljava/lang/String; = "target"

.field public static final S_TRANSLATION_X:Ljava/lang/String; = "translationX"

.field public static final S_TRANSLATION_Y:Ljava/lang/String; = "translationY"

.field public static final S_TRANSLATION_Z:Ljava/lang/String; = "translationZ"

.field public static final S_VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final TYPE_ALPHA:I = 0x12f

.field public static final TYPE_CURVE_FIT:I = 0x12d

.field public static final TYPE_EASING:I = 0x13d

.field public static final TYPE_ELEVATION:I = 0x133

.field public static final TYPE_PATH_ROTATE:I = 0x13c

.field public static final TYPE_PIVOT_TARGET:I = 0x13e

.field public static final TYPE_PIVOT_X:I = 0x139

.field public static final TYPE_PIVOT_Y:I = 0x13a

.field public static final TYPE_PROGRESS:I = 0x13b

.field public static final TYPE_ROTATION_X:I = 0x134

.field public static final TYPE_ROTATION_Y:I = 0x135

.field public static final TYPE_ROTATION_Z:I = 0x136

.field public static final TYPE_SCALE_X:I = 0x137

.field public static final TYPE_SCALE_Y:I = 0x138

.field public static final TYPE_TRANSLATION_X:I = 0x130

.field public static final TYPE_TRANSLATION_Y:I = 0x131

.field public static final TYPE_TRANSLATION_Z:I = 0x132

.field public static final TYPE_VISIBILITY:I = 0x12e


# direct methods
.method static constructor <clinit>()V
    .locals 21

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v10, "scaleX"

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

    :goto_1
    const-string v0, "curveFit"

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v11, "scaleY"

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3
    filled-new-array/range {v0 .. v20}, [Ljava/lang/String;

    move-result-object v0

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

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    const-string v1, "visibility"

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_6
    const-string v20, "pivotTarget"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_8
    goto/32 :goto_15

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    const-string v13, "pivotY"

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_b
    const-string v17, "CUSTOM"

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

    :goto_c
    const-string v5, "translationZ"

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x14

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

    :goto_e
    const-string v18, "frame"

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_f
    const-string v16, "easing"

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

    :goto_10
    rem-int v0, v0, v1

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

    nop

    :goto_11
    const-string v7, "rotationX"

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_12
    const-string v14, "progress"

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$AttributesType;->KEY_WORDS:[Ljava/lang/String;

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

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_16
    const-string v6, "elevation"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-string v9, "rotationZ"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    const-string v15, "pathRotate"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_19
    const-string v2, "alpha"

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x1a

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1b
    const-string v19, "target"

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v12, "pivotX"

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1d
    const-string v8, "rotationY"

    nop

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

    nop

    :goto_1e
    const-string v3, "translationX"

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const-string v4, "translationY"

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
.end method

.method public static getId(Ljava/lang/String;)I
    .locals 2

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x7

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v0, 0x13a

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_4
    const/16 v0, 0xa

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

    :goto_5
    const/16 v0, 0x132

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "scaleY"

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

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

    :pswitch_1
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_0
    goto/32 :goto_31

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "progress"

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "pivotTarget"

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/16 v0, 0x133

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_2

    nop

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
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/16 v0, 0x135

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_18
    return v1

    nop

    :pswitch_2
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    :goto_1a
    goto/16 :goto_86

    nop

    nop

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    :goto_1b
    return v0

    nop

    :pswitch_3
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_62

    nop

    nop

    :goto_1e
    goto/16 :goto_44

    nop

    :sswitch_2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v0, "rotationZ"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_20
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/16 v0, 0x64

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return v0

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_83

    nop

    nop

    :goto_23
    if-nez v0, :cond_4

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

    :cond_4
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_24
    if-nez v0, :cond_5

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_4

    nop

    nop

    :goto_25
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_26
    return v0

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_27
    const/16 v0, 0xd

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

    nop

    :goto_28
    const/16 v0, 0x12d

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    nop

    :sswitch_5
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    nop

    sparse-switch v0, :sswitch_data_0

    :goto_2b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const-string v0, "curveFit"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return v0

    nop

    :pswitch_6
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const v0, 0x18

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_52

    nop

    nop

    :goto_31
    const/16 v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_32
    return v0

    nop

    :pswitch_7
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_33
    const-string v0, "pivotX"

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_35
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_44

    nop

    nop

    :sswitch_6
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_37
    const/16 v0, 0x134

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_38
    return v0

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_44

    nop

    nop

    nop

    :sswitch_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/16 v0, 0xf

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

    :goto_3b
    const-string v0, "rotationX"

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_3c
    const-string v0, "pathRotate"

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3d
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_3e
    const-string v0, "target"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3f
    const/16 v0, 0x13e

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    :sswitch_8
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    nop

    :sswitch_9
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_42
    if-nez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_43
    move v0, v1

    nop

    nop

    :goto_44
    packed-switch v0, :pswitch_data_0

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_45
    const/16 v0, 0x137

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_46
    const/16 v0, 0x13d

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_47
    const/16 v0, 0x65

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_48
    const/16 v0, 0x12e

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

    :goto_49
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_4b
    const v1, 0xe

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

    :goto_4c
    const-string v0, "rotationY"

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_4d
    const/16 v0, 0x131

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4e
    const-string v0, "translationX"

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

    :goto_4f
    if-nez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_9
    goto/32 :goto_73

    nop

    nop

    nop

    :goto_50
    if-nez v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :goto_51
    return v0

    nop

    :pswitch_9
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_53
    const-string v0, "translationZ"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_54
    const/16 v0, 0xb

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    return v0

    nop

    nop

    :pswitch_a
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    if-nez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const/16 v0, 0x138

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_44

    nop

    nop

    :sswitch_a
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_59
    const/16 v0, 0x12

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez v0, :cond_c

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const-string v0, "translationY"

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    nop

    :goto_5d
    return v0

    nop

    nop

    :pswitch_b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    const-string v0, "pivotY"

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    const/4 v0, 0x3

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_61
    const/16 v0, 0xe

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_62
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_63
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_64
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    :sswitch_b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_1d

    nop

    :goto_66
    const/16 v0, 0x13

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_67
    const/4 v0, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_68
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_69
    const-string v0, "frame"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6a
    const/16 v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    nop

    :goto_6d
    if-nez v0, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    goto/16 :goto_44

    nop

    nop

    :sswitch_c
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_6f
    const/4 v0, 0x5

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_70
    const/16 v0, 0x12f

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    const-string v0, "alpha"

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

    nop

    :goto_72
    if-nez v0, :cond_e

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const/16 v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    return v0

    nop

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4e19c2d5 -> :sswitch_10
        -0x4a771f66 -> :sswitch_5
        -0x4a771f65 -> :sswitch_13
        -0x4a771f64 -> :sswitch_3
        -0x490b9c39 -> :sswitch_e
        -0x490b9c38 -> :sswitch_c
        -0x490b9c37 -> :sswitch_a
        -0x3bab3dd3 -> :sswitch_7
        -0x3ae243aa -> :sswitch_2
        -0x3ae243a9 -> :sswitch_11
        -0x3621dfb2 -> :sswitch_4
        -0x3621dfb1 -> :sswitch_b
        -0x34818e6f -> :sswitch_6
        -0x42d1a3 -> :sswitch_9
        0x589b15e -> :sswitch_8
        0x5d2a96d -> :sswitch_f
        0x2283b8a2 -> :sswitch_0
        0x2fdfbde0 -> :sswitch_12
        0x45917073 -> :sswitch_d
        0x73b66312 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_d
        :pswitch_10
        :pswitch_1
        :pswitch_6
        :pswitch_f
        :pswitch_b
        :pswitch_5
        :pswitch_12
        :pswitch_8
        :pswitch_9
        :pswitch_e
        :pswitch_3
        :pswitch_0
        :pswitch_a
        :pswitch_4
        :pswitch_13
        :pswitch_c
        :pswitch_11
        :pswitch_2
    .end packed-switch

    :goto_75
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    const-string v0, "elevation"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_77
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_78
    const/16 v0, 0x139

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_79
    goto/16 :goto_44

    nop

    nop

    nop

    :sswitch_d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_7a
    if-nez v0, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    return v0

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    if-nez v0, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_7d
    return v0

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_7e
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    nop

    :sswitch_e
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_7f
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    nop

    :sswitch_f
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    nop

    :sswitch_10
    goto/32 :goto_93

    nop

    nop

    :goto_81
    const/16 v0, 0x13b

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_82
    const/16 v0, 0x10

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_83
    const/16 v0, 0x13c

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_84
    if-lez v0, :cond_11

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_1c

    nop

    :goto_85
    goto/16 :goto_44

    nop

    nop

    nop

    nop

    :goto_86
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    const-string v0, "visibility"

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_89
    goto/16 :goto_44

    nop

    nop

    :sswitch_11
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    const/16 v0, 0xc

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_8b
    if-nez v0, :cond_12

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

    :cond_12
    goto/32 :goto_63

    nop

    nop

    :goto_8c
    const/16 v0, 0x130

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    :goto_8d
    add-int v0, v0, v1

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

    :goto_8e
    if-nez v0, :cond_13

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_90
    goto/16 :goto_44

    nop

    nop

    :sswitch_12
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_91
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_92
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_57

    nop

    nop

    :goto_93
    const-string v0, "easing"

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_94
    return v0

    nop

    nop

    nop

    :pswitch_f
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_95
    goto/16 :goto_44

    nop

    nop

    nop

    :sswitch_13
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_96
    if-nez v0, :cond_14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_14
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    return v0

    nop

    nop

    nop

    :pswitch_10
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_98
    const/16 v0, 0x136

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_99
    return v0

    nop

    :pswitch_11
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    return v0

    nop

    nop

    nop

    nop

    :pswitch_12
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    return v0

    nop

    nop

    nop

    :pswitch_13
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_9c
    const-string v0, "scaleX"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop
.end method

.method public static getType(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    :sswitch_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    return v0

    nop

    :sswitch_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v0, 0x8

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_2
        0x65 -> :sswitch_1
        0x12d -> :sswitch_2
        0x12e -> :sswitch_2
        0x12f -> :sswitch_0
        0x130 -> :sswitch_0
        0x131 -> :sswitch_0
        0x132 -> :sswitch_0
        0x133 -> :sswitch_0
        0x134 -> :sswitch_0
        0x135 -> :sswitch_0
        0x136 -> :sswitch_0
        0x137 -> :sswitch_0
        0x138 -> :sswitch_0
        0x139 -> :sswitch_0
        0x13a -> :sswitch_0
        0x13b -> :sswitch_0
        0x13c -> :sswitch_0
        0x13d -> :sswitch_1
        0x13e -> :sswitch_1
    .end sparse-switch

    :goto_6
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, -0x1

    nop

    goto/32 :goto_0

    nop

    nop
.end method
