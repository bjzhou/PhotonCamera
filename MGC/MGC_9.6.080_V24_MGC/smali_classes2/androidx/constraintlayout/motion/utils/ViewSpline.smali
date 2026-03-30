.class public abstract Landroidx/constraintlayout/motion/utils/ViewSpline;
.super Landroidx/constraintlayout/core/motion/utils/SplineSet;
.source "ViewSpline.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationZset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$PivotYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$PivotXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$RotationYset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$RotationXset;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$RotationSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;,
        Landroidx/constraintlayout/motion/utils/ViewSpline$ElevationSet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewSpline"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/SplineSet;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public static makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/utils/ViewSpline;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "attrList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroidx/constraintlayout/widget/ConstraintAttribute;",
            ">;)",
            "Landroidx/constraintlayout/motion/utils/ViewSpline;"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$CustomSet;

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public static makeSpline(Ljava/lang/String;)Landroidx/constraintlayout/motion/utils/ViewSpline;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationSet;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1
    const-string v0, "transformPivotY"

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_4
    const/16 v0, 0xd

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$ElevationSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_7
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleXset;

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_8
    const-string v0, "alpha"

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_50

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_50

    nop

    :goto_b
    goto/32 :goto_4f

    nop

    nop

    :goto_c
    if-nez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    sparse-switch v0, :sswitch_data_0

    :goto_f
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v0, "rotation"

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

    :goto_11
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationXset;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_13
    const/16 v0, 0x8

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotYset;

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

    nop

    nop

    :goto_16
    const-string v0, "transitionPathRotate"

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotXset;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    :sswitch_2
    goto/32 :goto_16

    nop

    nop

    :goto_19
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1b
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_b

    nop

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_1e
    return-object v0

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/16 v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_20
    const-string v0, "elevation"

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationSet;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

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

    :goto_23
    return-object v0

    nop

    :pswitch_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return-object v0

    nop

    nop

    :pswitch_4
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_25
    return-object v0

    nop

    nop

    :pswitch_5
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationYset;-><init>()V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_28
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotYset;-><init>()V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_50

    nop

    :sswitch_4
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_2a
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/16 v0, 0xa

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

    :goto_2c
    const-string v0, "transformPivotX"

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2d
    return-object v0

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_50

    nop

    nop

    :sswitch_5
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;-><init>()V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/16 v0, 0xe

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_31
    return-object v0

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_34
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v0, :cond_4

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    return-object v0

    nop

    nop

    :pswitch_8
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_37
    const-string v0, "waveOffset"

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_38
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_39
    return-object v0

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_11

    nop

    nop

    :goto_3a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    nop

    :sswitch_6
    goto/32 :goto_57

    nop

    nop

    :goto_3d
    if-nez v0, :cond_6

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_3e
    const/16 v0, 0xb

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

    :goto_3f
    const-string v0, "scaleX"

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_40
    const/16 v0, 0xc

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_41
    const/4 v0, 0x0

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

    :goto_42
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleYset;

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_43
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_44
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/16 v0, 0x9

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$PathRotate;

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

    :goto_48
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationXset;-><init>()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_49
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto :goto_50

    nop

    nop

    nop

    :sswitch_7
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/4 v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const-string v0, "waveVariesBy"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    goto :goto_50

    nop

    :sswitch_8
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const/4 v0, -0x1

    nop

    nop

    :goto_50
    packed-switch v0, :pswitch_data_0

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_51
    const-string v0, "translationX"

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v0, 0x5

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto :goto_50

    nop

    :sswitch_9
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_50

    nop

    nop

    :sswitch_a
    goto/32 :goto_8

    nop

    nop

    :goto_55
    goto :goto_50

    nop

    nop

    nop

    :sswitch_b
    goto/32 :goto_6e

    nop

    nop

    :goto_56
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    const-string v0, "rotationX"

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/16 :goto_50

    nop

    :sswitch_c
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_59
    const-string v0, "progress"

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationYset;

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    return-object v0

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5c
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationYset;-><init>()V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_5d
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_5e
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$AlphaSet;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-nez v0, :cond_8

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

    :cond_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    const-string v0, "translationY"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_62
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$RotationXset;

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_63
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

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

    :goto_64
    if-nez v0, :cond_9

    nop

    goto/32 :goto_f

    nop

    :cond_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_76

    nop

    nop

    :goto_66
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_67
    return-object v0

    nop

    :pswitch_c
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_68
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_a
    goto/32 :goto_75

    nop

    nop

    :goto_69
    const-string v0, "rotationY"

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

    :goto_6a
    goto/16 :goto_50

    nop

    nop

    nop

    :sswitch_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6b
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;

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

    :goto_6c
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleYset;-><init>()V

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationZset;-><init>()V

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_6e
    const-string v0, "translationZ"

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

    :goto_6f
    const-string v0, "scaleY"

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_70
    goto/16 :goto_50

    nop

    nop

    nop

    :sswitch_e
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_71
    if-nez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_b
    goto/32 :goto_40

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_50

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

    :goto_73
    return-object v0

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ProgressSet;-><init>()V

    goto/32 :goto_78

    nop

    nop

    :goto_75
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_76
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationYset;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_77
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$PivotXset;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_78
    return-object v0

    nop

    nop

    nop

    nop

    :pswitch_e
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_79
    if-nez v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_7c
    const/4 v0, 0x7

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

    :goto_7d
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ElevationSet;-><init>()V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_7e
    if-nez v0, :cond_d

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

    :cond_d
    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_7f
    return-object v0

    nop

    nop

    :pswitch_f
    goto/32 :goto_7

    nop

    nop

    :goto_80
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_6
        -0x4a771f65 -> :sswitch_f
        -0x490b9c39 -> :sswitch_8
        -0x490b9c38 -> :sswitch_9
        -0x490b9c37 -> :sswitch_b
        -0x3bab3dd3 -> :sswitch_1
        -0x3621dfb2 -> :sswitch_7
        -0x3621dfb1 -> :sswitch_e
        -0x2f893320 -> :sswitch_4
        -0x2d5a2d1e -> :sswitch_c
        -0x2d5a2d1d -> :sswitch_0
        -0x266f082 -> :sswitch_d
        -0x42d1a3 -> :sswitch_5
        0x2382115 -> :sswitch_2
        0x589b15e -> :sswitch_a
        0x94e04ec -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_0
        :pswitch_3
        :pswitch_c
        :pswitch_1
        :pswitch_8
        :pswitch_a
        :pswitch_2
        :pswitch_f
        :pswitch_6
        :pswitch_d
        :pswitch_4
        :pswitch_9
        :pswitch_b
        :pswitch_e
        :pswitch_7
    .end packed-switch

    :goto_81
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$ScaleXset;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    :goto_82
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_83
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationZset;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_85
    if-nez v0, :cond_e

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewSpline$TranslationXset;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_87
    if-nez v0, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_49

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
