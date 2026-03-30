.class public Landroidx/constraintlayout/core/motion/utils/Easing;
.super Ljava/lang/Object;
.source "Easing.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;
    }
.end annotation


# static fields
.field private static final ACCELERATE:Ljava/lang/String; = "cubic(0.4, 0.05, 0.8, 0.7)"

.field private static final ACCELERATE_NAME:Ljava/lang/String; = "accelerate"

.field private static final ANTICIPATE:Ljava/lang/String; = "cubic(0.36, 0, 0.66, -0.56)"

.field private static final ANTICIPATE_NAME:Ljava/lang/String; = "anticipate"

.field private static final DECELERATE:Ljava/lang/String; = "cubic(0.0, 0.0, 0.2, 0.95)"

.field private static final DECELERATE_NAME:Ljava/lang/String; = "decelerate"

.field private static final LINEAR:Ljava/lang/String; = "cubic(1, 1, 0, 0)"

.field private static final LINEAR_NAME:Ljava/lang/String; = "linear"

.field public static NAMED_EASING:[Ljava/lang/String; = null

.field private static final OVERSHOOT:Ljava/lang/String; = "cubic(0.34, 1.56, 0.64, 1)"

.field private static final OVERSHOOT_NAME:Ljava/lang/String; = "overshoot"

.field private static final STANDARD:Ljava/lang/String; = "cubic(0.4, 0.0, 0.2, 1)"

.field private static final STANDARD_NAME:Ljava/lang/String; = "standard"

.field static sDefault:Landroidx/constraintlayout/core/motion/utils/Easing;


# instance fields
.field str:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    const-string v2, "decelerate"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

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

    nop

    :goto_3
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->sDefault:Landroidx/constraintlayout/core/motion/utils/Easing;

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

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_7

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    const-string v3, "linear"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    const-string v0, "standard"

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    const v1, 0x18

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    const v0, 0x1a

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_8

    nop

    :goto_11
    const-string v1, "accelerate"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {v0}, Landroidx/constraintlayout/core/motion/utils/Easing;-><init>()V

    goto/32 :goto_4

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_3

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
    const-string v0, "identity"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Easing;->str:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop
.end method

.method public static getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;
    .locals 3

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x5

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

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

    nop

    :goto_2
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

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

    nop

    :goto_3
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    const-string v1, "accelerate"

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_5
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_5e

    nop

    nop

    :goto_8
    const-string v1, "overshoot"

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_9
    return-object v0

    nop

    :pswitch_0
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v1

    nop

    sparse-switch v1, :sswitch_data_0

    :goto_b
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_d
    return-object v0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_12
    return-object v0

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

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
    return-object v0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Schlick;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_42

    nop

    :sswitch_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x3

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_1c
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1e
    const-string v1, "cubic(0.36, 0, 0.66, -0.56)"

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_20
    const-string v1, "anticipate"

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_21
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_22
    const-string v1, "cubic(1, 1, 0, 0)"

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_24
    const-string v0, "cubic"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_25
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_26
    return-object v0

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_40

    nop

    nop

    :goto_27
    goto/16 :goto_42

    nop

    :sswitch_1
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v1, "cubic(0.4, 0.05, 0.8, 0.7)"

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :cond_3
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_4
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v0, -0x1

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

    :goto_2c
    const-string v1, "cubic(0.0, 0.0, 0.2, 0.95)"

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

    :goto_2d
    goto/16 :goto_42

    nop

    nop

    nop

    nop

    nop

    :sswitch_2
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v1, "cubic(0.4, 0.0, 0.2, 1)"

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const-string v1, "decelerate"

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_32
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_5
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_33
    const v0, 0x7

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_34
    return-object v0

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x50bb8523 -> :sswitch_3
        -0x4b5653c4 -> :sswitch_2
        -0x47620096 -> :sswitch_4
        -0x41b970db -> :sswitch_5
        -0x2ca5d435 -> :sswitch_0
        0x4e3d1ebd -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :goto_35
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const-string v1, "cubic(0.34, 1.56, 0.64, 1)"

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

    :goto_37
    sget-object v2, Landroidx/constraintlayout/core/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-nez v1, :cond_6

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1b

    nop

    nop

    :goto_39
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_3a
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v0, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_3d
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const-string v0, "Schlick"

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

    :goto_3f
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_41
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    :goto_42
    packed-switch v0, :pswitch_data_0

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_43
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_44
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_45
    goto :goto_42

    nop

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_46
    const-string v1, "linear"

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_47
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const-string v1, "standard"

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_49
    return-object v0

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_4b
    const-string v2, "transitionEasing syntax error syntax:transitionEasing=\"cubic(1.0,0.5,0.0,0.6)\" or "

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

    :goto_4c
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4d
    goto :goto_42

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_20

    nop

    nop

    :goto_4e
    if-eqz p0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

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

    :goto_50
    const/4 v0, 0x0

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

    nop

    nop

    :goto_51
    if-nez v1, :cond_9

    nop

    goto/32 :goto_b

    nop

    :cond_9
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_54
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_55
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    sget-object v0, Landroidx/constraintlayout/core/motion/utils/Easing;->sDefault:Landroidx/constraintlayout/core/motion/utils/Easing;

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

    :goto_57
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_5b
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/motion/utils/StepCurve;-><init>(Ljava/lang/String;)V

    goto/32 :goto_49

    nop

    nop

    :goto_5e
    const-string v0, "spline"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_60
    invoke-direct {v0, p0}, Landroidx/constraintlayout/core/motion/utils/Schlick;-><init>(Ljava/lang/String;)V

    goto/32 :goto_14

    nop

    nop

    :goto_61
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-lez v0, :cond_a

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_10

    nop

    :goto_63
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_64
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_58

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_42

    nop

    nop

    nop

    nop

    :sswitch_5
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_66
    new-instance v0, Landroidx/constraintlayout/core/motion/utils/StepCurve;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_67
    invoke-direct {v0, v1}, Landroidx/constraintlayout/core/motion/utils/Easing$CubicEasing;-><init>(Ljava/lang/String;)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public get(D)D
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-wide p1

    nop

    nop

    nop

    nop
.end method

.method public getDiff(D)D
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

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
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_a
    const v0, 0x7

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/utils/Easing;->str:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
