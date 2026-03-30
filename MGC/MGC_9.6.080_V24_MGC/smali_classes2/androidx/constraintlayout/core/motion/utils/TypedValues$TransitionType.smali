.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$TransitionType;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TransitionType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "Transitions"

.field public static final S_AUTO_TRANSITION:Ljava/lang/String; = "autoTransition"

.field public static final S_DURATION:Ljava/lang/String; = "duration"

.field public static final S_FROM:Ljava/lang/String; = "from"

.field public static final S_INTERPOLATOR:Ljava/lang/String; = "motionInterpolator"

.field public static final S_PATH_MOTION_ARC:Ljava/lang/String; = "pathMotionArc"

.field public static final S_STAGGERED:Ljava/lang/String; = "staggered"

.field public static final S_TO:Ljava/lang/String; = "to"

.field public static final S_TRANSITION_FLAGS:Ljava/lang/String; = "transitionFlags"

.field public static final TYPE_AUTO_TRANSITION:I = 0x2c0

.field public static final TYPE_DURATION:I = 0x2bc

.field public static final TYPE_FROM:I = 0x2bd

.field public static final TYPE_INTERPOLATOR:I = 0x2c1

.field public static final TYPE_PATH_MOTION_ARC:I = 0x1fd

.field public static final TYPE_STAGGERED:I = 0x2c2

.field public static final TYPE_TO:I = 0x2be

.field public static final TYPE_TRANSITION_FLAGS:I = 0x2c3


# direct methods
.method static constructor <clinit>()V
    .locals 9

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "duration"

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    const-string v2, "to"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    const-string v6, "staggered"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$TransitionType;->KEY_WORDS:[Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const-string v4, "autoTransition"

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

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    const-string v3, "pathMotionArc"

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

    :goto_c
    const-string v5, "motionInterpolator"

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    const v0, 0x10

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v7, "from"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_d

    nop

    :goto_12
    const-string v8, "transitionFlags"

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    const-string v1, "from"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public static getId(Ljava/lang/String;)I
    .locals 2

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_0
    const-string v0, "from"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v0, 0x2bc

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x7

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

    :goto_3
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v0

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x770661ce -> :sswitch_0
        -0x76bbb26c -> :sswitch_2
        -0x50ef8463 -> :sswitch_6
        -0x4d5ee79c -> :sswitch_5
        0xe7b -> :sswitch_1
        0x3017aa -> :sswitch_3
        0x4e203417 -> :sswitch_7
        0x6da0e50c -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_6
        :pswitch_4
        :pswitch_3
        :pswitch_7
        :pswitch_5
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :goto_5
    goto/32 :goto_45

    nop

    nop

    :goto_6
    move v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    packed-switch v0, :pswitch_data_0

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_8
    goto :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v0, 0x2bd

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_7

    nop

    nop

    :sswitch_0
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_e
    return v0

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

    :goto_f
    const/16 v0, 0x2c2

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_10
    const-string v0, "duration"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_13
    goto :goto_7

    nop

    :sswitch_1
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return v0

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    if-nez v0, :cond_1

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_19
    goto/16 :goto_7

    nop

    nop

    nop

    :sswitch_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v0, 0x2c1

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_1b
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1d
    const/16 v0, 0x1fd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
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

    :goto_1f
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_7

    nop

    :sswitch_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/16 v0, 0x2c0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_23
    if-nez v0, :cond_4

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

    :cond_4
    goto/32 :goto_d

    nop

    nop

    :goto_24
    const-string v0, "to"

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_26
    const-string v0, "autoTransition"

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_27
    const v1, 0xf

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_28
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_3a

    nop

    nop

    :goto_29
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_7

    nop

    nop

    nop

    :sswitch_5
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return v1

    nop

    nop

    :pswitch_2
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v0, 0x0

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

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2f
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    sparse-switch v0, :sswitch_data_0

    :goto_30
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_31
    return v0

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_1d

    nop

    nop

    :goto_32
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const-string v0, "pathMotionArc"

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_7

    nop

    :sswitch_6
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_35
    return v0

    nop

    nop

    :pswitch_4
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    return v0

    nop

    nop

    :pswitch_5
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_5
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_38
    if-nez v0, :cond_6

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_39
    return v0

    nop

    nop

    :pswitch_6
    goto/32 :goto_b

    nop

    nop

    :goto_3a
    const-string v0, "staggered"

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3b
    const/16 v0, 0x2c3

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

    :goto_3c
    const-string v0, "transitionFlags"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_3d
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v0, :cond_7

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/16 v0, 0x2be

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const-string v0, "motionInterpolator"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_42
    const/4 v0, 0x2

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

    :goto_43
    goto/32 :goto_5

    nop

    :goto_44
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_46
    if-lez v0, :cond_8

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_43

    nop

    :goto_47
    return v0

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_48
    goto/16 :goto_7

    nop

    nop

    :sswitch_7
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static getType(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    :sswitch_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    return v0

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x1fd -> :sswitch_0
        0x2bc -> :sswitch_0
        0x2bd -> :sswitch_1
        0x2be -> :sswitch_1
        0x2c1 -> :sswitch_1
        0x2c2 -> :sswitch_2
        0x2c3 -> :sswitch_1
    .end sparse-switch

    :goto_4
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    return v0

    nop

    nop

    nop

    nop

    nop

    :sswitch_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v0, 0x8

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
.end method
