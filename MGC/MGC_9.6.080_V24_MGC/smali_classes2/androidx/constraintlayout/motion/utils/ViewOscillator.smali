.class public abstract Landroidx/constraintlayout/motion/utils/ViewOscillator;
.super Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;
.source "ViewOscillator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationZset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationYset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationXset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleYset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleXset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationYset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationXset;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationSet;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;,
        Landroidx/constraintlayout/motion/utils/ViewOscillator$ElevationSet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewOscillator"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/KeyCycleOscillator;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public static makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewOscillator;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;-><init>()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_55

    nop

    nop

    :goto_2
    goto/16 :goto_3c

    nop

    nop

    :sswitch_0
    goto/32 :goto_2d

    nop

    nop

    :goto_3
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_4
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>()V

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_5
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ElevationSet;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

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

    :goto_8
    goto/16 :goto_3c

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_a
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationZset;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_b
    const-string v1, "translationX"

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v1, "rotationY"

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$PathRotateSet;

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

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_f
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;-><init>()V

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_3c

    nop

    nop

    :sswitch_2
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_13
    goto/32 :goto_61

    nop

    nop

    :goto_14
    const-string v1, "elevation"

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationXset;-><init>()V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationSet;-><init>()V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return-object v0

    nop

    nop

    :pswitch_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    const-string v1, "transitionPathRotate"

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_19
    goto/16 :goto_3c

    nop

    :sswitch_3
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_1a
    return-object v0

    nop

    :goto_1b
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_64

    nop

    nop

    :goto_1d
    return-object v0

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_2b

    nop

    nop

    :goto_1e
    const/4 v0, 0x0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationXset;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-object v0

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x1e

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

    :goto_23
    const/16 v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return-object v0

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_25
    const/16 v0, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_26
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_27
    const-string v1, "scaleX"

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_28
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_3d

    nop

    nop

    :goto_29
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationZset;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2a
    return-object v0

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_7

    nop

    nop

    :goto_2b
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ProgressSet;

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

    :goto_2c
    const-string v1, "translationZ"

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_2d
    const-string v1, "waveVariesBy"

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_2f
    return-object v0

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_31
    return-object v0

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_4
        -0x4a771f65 -> :sswitch_7
        -0x490b9c39 -> :sswitch_a
        -0x490b9c38 -> :sswitch_5
        -0x490b9c37 -> :sswitch_8
        -0x3bab3dd3 -> :sswitch_1
        -0x3621dfb2 -> :sswitch_6
        -0x3621dfb1 -> :sswitch_b
        -0x2f893320 -> :sswitch_0
        -0x266f082 -> :sswitch_9
        -0x42d1a3 -> :sswitch_d
        0x2382115 -> :sswitch_c
        0x589b15e -> :sswitch_2
        0x94e04ec -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_b
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_9
        :pswitch_d
        :pswitch_4
        :pswitch_a
        :pswitch_2
        :pswitch_3
        :pswitch_c
        :pswitch_1
    .end packed-switch

    :goto_32
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_34
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationXset;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_36
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$CustomSet;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    :goto_37
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationXset;-><init>()V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return-object v0

    nop

    nop

    :pswitch_6
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_3a
    const-string v1, "alpha"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_3b
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    packed-switch v0, :pswitch_data_0

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const-string v1, "rotationX"

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_3f
    return-object v0

    nop

    :pswitch_7
    goto/32 :goto_34

    nop

    nop

    :goto_40
    goto :goto_3c

    nop

    :sswitch_5
    goto/32 :goto_4a

    nop

    nop

    :goto_41
    const-string v0, "CUSTOM"

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_42
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_43
    return-object v0

    nop

    nop

    nop

    nop

    :pswitch_8
    goto/32 :goto_35

    nop

    nop

    :goto_44
    if-nez v1, :cond_4

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_45
    return-object v0

    nop

    nop

    :pswitch_9
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_46
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationYset;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_47
    const-string v1, "progress"

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    return-object v0

    nop

    nop

    :pswitch_a
    goto/32 :goto_68

    nop

    nop

    :goto_49
    goto/16 :goto_3c

    nop

    nop

    :sswitch_6
    goto/32 :goto_27

    nop

    nop

    :goto_4a
    const-string v1, "translationY"

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

    nop

    nop

    :goto_4b
    const/4 v0, 0x2

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    :cond_5
    goto/32 :goto_3b

    nop

    nop

    :goto_4d
    if-nez v1, :cond_6

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

    :cond_6
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleXset;

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_7
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_50
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleYset;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_51
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationYset;-><init>()V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/16 v0, 0x8

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_53
    return-object v0

    nop

    nop

    :pswitch_b
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_3c

    nop

    nop

    :sswitch_7
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_55
    const/16 v0, 0xa

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

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

    :goto_57
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_c
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const v0, 0x17

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

    :goto_59
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    :goto_5a
    const/16 v0, 0x9

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_3c

    nop

    :sswitch_8
    goto/32 :goto_2c

    nop

    nop

    :goto_5c
    if-nez v1, :cond_8

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

    :cond_8
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-nez v1, :cond_9

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_5a

    nop

    nop

    :goto_5e
    if-nez v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_73

    nop

    nop

    :goto_5f
    if-nez v1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :cond_b
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_32

    nop

    :goto_61
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_3c

    nop

    nop

    :sswitch_9
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_64
    const/16 v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_65
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$ElevationSet;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const-string v1, "rotation"

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleYset;-><init>()V

    goto/32 :goto_45

    nop

    nop

    :goto_68
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_69
    return-object v0

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    :sswitch_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    const-string v1, "waveOffset"

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_6d
    if-lez v0, :cond_c

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_60

    nop

    :goto_6e
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$AlphaSet;-><init>()V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_3c

    nop

    nop

    :sswitch_b
    goto/32 :goto_77

    nop

    nop

    nop

    :goto_71
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :sswitch_c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_73
    const/4 v0, 0x6

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_74
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_76
    goto/16 :goto_3c

    nop

    nop

    :sswitch_d
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_77
    const-string v1, "scaleY"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_78
    const/4 v0, 0x5

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_79
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewOscillator$RotationYset;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    const/4 v0, -0x1

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_7b
    if-nez v1, :cond_d

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_7d
    const/4 v0, 0x4

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_7e
    const/4 v0, 0x0

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_7f
    if-nez v1, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    :cond_e
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_81
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$ScaleXset;-><init>()V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_82
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    nop

    nop

    nop

    sparse-switch v1, :sswitch_data_0

    :goto_83
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_84
    if-nez v1, :cond_f

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_85
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewOscillator$TranslationYset;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public abstract setProperty(Landroid/view/View;F)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "t"
        }
    .end annotation
.end method
