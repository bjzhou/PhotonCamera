.class public abstract Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
.super Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;
.source "ViewTimeCycle.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationZset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationYset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationXset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleYset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleXset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationYset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationXset;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationSet;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;,
        Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ElevationSet;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ViewTimeCycle"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Landroidx/constraintlayout/core/motion/utils/TimeCycleSplineSet;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static makeCustomSpline(Ljava/lang/String;Landroid/util/SparseArray;)Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
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
            "Landroidx/constraintlayout/motion/utils/ViewTimeCycle;"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {v0, p0, p1}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$CustomSet;-><init>(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop
.end method

.method public static makeSpline(Ljava/lang/String;J)Landroidx/constraintlayout/motion/utils/ViewTimeCycle;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "str",
            "currentTime"
        }
    .end annotation

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationZset;-><init>()V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_7
    const-string v0, "translationY"

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    :goto_9
    packed-switch v0, :pswitch_data_0

    goto/32 :goto_69

    nop

    nop

    :goto_a
    const/4 v0, 0x0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_18

    nop

    :pswitch_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "elevation"

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d
    const/4 v0, 0x7

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationYset;-><init>()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_9

    nop

    nop

    :sswitch_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v0, 0xb

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const-string v0, "progress"

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_13
    const-string v0, "scaleY"

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_14
    const-string v0, "translationZ"

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_3

    nop

    goto/32 :goto_41

    nop

    :cond_3
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v0, "alpha"

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$AlphaSet;-><init>()V

    nop

    :goto_18
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;-><init>()V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_9

    nop

    :sswitch_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationYset;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationXset;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    :goto_1d
    const/4 v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1e
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_34

    nop

    nop

    :goto_1f
    if-nez v0, :cond_4

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

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v0, 0x2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationXset;

    nop

    nop

    nop

    goto/32 :goto_31

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

    goto/32 :goto_2

    nop

    nop

    :goto_23
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleXset;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_28
    return-object v0

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4a771f66 -> :sswitch_4
        -0x4a771f65 -> :sswitch_a
        -0x490b9c39 -> :sswitch_3
        -0x490b9c38 -> :sswitch_8
        -0x490b9c37 -> :sswitch_7
        -0x3bab3dd3 -> :sswitch_2
        -0x3621dfb2 -> :sswitch_1
        -0x3621dfb1 -> :sswitch_0
        -0x266f082 -> :sswitch_6
        -0x42d1a3 -> :sswitch_b
        0x2382115 -> :sswitch_5
        0x589b15e -> :sswitch_9
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_8
        :pswitch_a
        :pswitch_7
        :pswitch_9
        :pswitch_6
        :pswitch_1
        :pswitch_b
        :pswitch_5
        :pswitch_2
    .end packed-switch

    :goto_29
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2a
    return-object v0

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_9

    nop

    nop

    nop

    :sswitch_5
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationYset;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_18

    nop

    nop

    :pswitch_4
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_30
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationZset;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$TranslationXset;-><init>()V

    goto/32 :goto_42

    nop

    nop

    :goto_32
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :sswitch_6
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const-string v0, "translationX"

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v0, 0x5

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_36
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_37
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$PathRotate;

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

    :goto_38
    const-string v0, "rotationX"

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/16 v0, 0xa

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_3a
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_3c
    invoke-virtual {v0, p1, p2}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->setStartTime(J)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    if-nez v0, :cond_7

    nop

    goto/32 :goto_41

    nop

    :cond_7
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_9

    nop

    :sswitch_7
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    nop

    nop

    sparse-switch v0, :sswitch_data_0

    :goto_41
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    const-string v0, "rotationY"

    nop

    nop

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

    :goto_44
    const/16 v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_45
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationSet;-><init>()V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const-string v0, "transitionPathRotate"

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_9

    nop

    nop

    nop

    :sswitch_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleXset;-><init>()V

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_49
    if-nez v0, :cond_8

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

    :cond_8
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ElevationSet;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez v0, :cond_9

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_4e

    nop

    nop

    :sswitch_9
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-nez v0, :cond_a

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

    :cond_a
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_53
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_54
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

    :goto_55
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationXset;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const-string v0, "rotation"

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

    :goto_57
    goto/16 :goto_18

    nop

    :pswitch_8
    goto/32 :goto_55

    nop

    nop

    :goto_58
    if-nez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_39

    nop

    nop

    :goto_59
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$RotationYset;-><init>()V

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_5b
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ElevationSet;

    nop

    nop

    goto/32 :goto_4a

    nop

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

    goto/32 :goto_0

    nop

    nop

    :goto_5d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleYset;-><init>()V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct {v0}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;-><init>()V

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_61
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_2e

    nop

    nop

    :goto_62
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_63
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_1b

    nop

    nop

    :goto_64
    const-string v0, "scaleX"

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ScaleYset;

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

    :goto_66
    new-instance v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle$ProgressSet;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :sswitch_a
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/16 :goto_9

    nop

    nop

    nop

    :sswitch_b
    goto/32 :goto_c

    nop

    nop

    :goto_69
    const/4 v0, 0x0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public get(FJLandroid/view/View;Landroidx/constraintlayout/core/motion/utils/KeyCache;)F
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pos",
            "time",
            "view",
            "cache"
        }
    .end annotation

    goto/32 :goto_27

    nop

    nop

    :goto_0
    iget-object v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v8, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v9, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v10

    nop

    :goto_5
    goto/32 :goto_31

    nop

    nop

    :goto_6
    float-to-double v14, v9

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

    nop

    nop

    :goto_7
    double-to-float v7, v14

    nop

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

    :goto_8
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCurveFit:Landroidx/constraintlayout/core/motion/utils/CurveFit;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_9
    const/4 v10, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    move-object/from16 v3, p4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mType:Ljava/lang/String;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v9, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    invoke-virtual {v4, v3, v7, v11, v8}, Landroidx/constraintlayout/core/motion/utils/KeyCache;->setFloatValue(Ljava/lang/Object;Ljava/lang/String;IF)V

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_f
    invoke-static {v9}, Ljava/lang/Float;->isNaN(F)Z

    move-result v9

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_5

    nop

    nop

    :goto_11
    goto/32 :goto_2e

    nop

    nop

    :goto_12
    aget v9, v9, v10

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v10, 0x2

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-object/from16 v4, p5

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v5, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_17
    iget v8, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-double/2addr v14, v7

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v9, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const-wide v16, 0x3e112e0be826d695L    # 1.0E-9

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

    :goto_1b
    long-to-double v7, v12

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    mul-double/2addr v7, v9

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    mul-double v7, v7, v16

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

    :goto_1e
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    float-to-double v9, v5

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    cmpl-float v9, v5, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_21
    cmpl-float v15, v7, v14

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v8}, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->calcWave(F)F

    move-result v8

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_23
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_24
    return v7

    nop

    nop

    :goto_25
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_26
    iput-boolean v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_27
    const v0, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_28
    iget v8, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_29
    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

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

    :goto_2a
    iput v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2b
    iget v9, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2c
    iput v9, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2d
    iget-wide v12, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_time:J

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_2f
    const/4 v11, 0x1

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_47

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_11

    nop

    :goto_32
    if-nez v14, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_2
    :goto_33
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_34
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    :goto_35
    aget v7, v7, v10

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_36
    iput-wide v1, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_time:J

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-float/2addr v10, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_38
    const/4 v11, 0x0

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

    nop

    :goto_39
    move/from16 v6, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3a
    iget v9, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->last_cycle:F

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

    :goto_3b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_3c
    mul-float v10, v7, v8

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    cmpl-float v14, v5, v14

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    sub-long v12, v1, v12

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3f
    float-to-double v7, v6

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_40
    iget-object v9, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mType:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v5, v7, v8, v9}, Landroidx/constraintlayout/core/motion/utils/CurveFit;->getPos(D[F)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_42
    iget-object v7, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mCache:[F

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

    :goto_43
    if-eqz v9, :cond_4

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_4
    goto/32 :goto_26

    nop

    nop

    :goto_44
    const/4 v7, 0x1

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_45
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_46
    const/4 v14, 0x0

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

    :goto_47
    iput-boolean v11, v0, Landroidx/constraintlayout/motion/utils/ViewTimeCycle;->mContinue:Z

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

    :goto_48
    move-wide/from16 v1, p2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-eqz v15, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

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

    :goto_4b
    aget v5, v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_4c
    rem-double/2addr v14, v7

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v4, v3, v9, v11}, Landroidx/constraintlayout/core/motion/utils/KeyCache;->getFloatValue(Ljava/lang/Object;Ljava/lang/String;I)F

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4e
    aget v7, v7, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop
.end method

.method public abstract setProperty(Landroid/view/View;FJLandroidx/constraintlayout/core/motion/utils/KeyCache;)Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "t",
            "time",
            "cache"
        }
    .end annotation
.end method
