.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$TriggerType;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "TriggerType"
.end annotation


# static fields
.field public static final CROSS:Ljava/lang/String; = "CROSS"

.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "KeyTrigger"

.field public static final NEGATIVE_CROSS:Ljava/lang/String; = "negativeCross"

.field public static final POSITIVE_CROSS:Ljava/lang/String; = "positiveCross"

.field public static final POST_LAYOUT:Ljava/lang/String; = "postLayout"

.field public static final TRIGGER_COLLISION_ID:Ljava/lang/String; = "triggerCollisionId"

.field public static final TRIGGER_COLLISION_VIEW:Ljava/lang/String; = "triggerCollisionView"

.field public static final TRIGGER_ID:Ljava/lang/String; = "triggerID"

.field public static final TRIGGER_RECEIVER:Ljava/lang/String; = "triggerReceiver"

.field public static final TRIGGER_SLACK:Ljava/lang/String; = "triggerSlack"

.field public static final TYPE_CROSS:I = 0x138

.field public static final TYPE_NEGATIVE_CROSS:I = 0x136

.field public static final TYPE_POSITIVE_CROSS:I = 0x135

.field public static final TYPE_POST_LAYOUT:I = 0x130

.field public static final TYPE_TRIGGER_COLLISION_ID:I = 0x133

.field public static final TYPE_TRIGGER_COLLISION_VIEW:I = 0x132

.field public static final TYPE_TRIGGER_ID:I = 0x134

.field public static final TYPE_TRIGGER_RECEIVER:I = 0x137

.field public static final TYPE_TRIGGER_SLACK:I = 0x131

.field public static final TYPE_VIEW_TRANSITION_ON_CROSS:I = 0x12d

.field public static final TYPE_VIEW_TRANSITION_ON_NEGATIVE_CROSS:I = 0x12f

.field public static final TYPE_VIEW_TRANSITION_ON_POSITIVE_CROSS:I = 0x12e

.field public static final VIEW_TRANSITION_ON_CROSS:Ljava/lang/String; = "viewTransitionOnCross"

.field public static final VIEW_TRANSITION_ON_NEGATIVE_CROSS:Ljava/lang/String; = "viewTransitionOnNegativeCross"

.field public static final VIEW_TRANSITION_ON_POSITIVE_CROSS:Ljava/lang/String; = "viewTransitionOnPositiveCross"


# direct methods
.method static constructor <clinit>()V
    .locals 12

    goto/32 :goto_4

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

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
    const-string v10, "triggerReceiver"

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

    nop

    :goto_3
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$TriggerType;->KEY_WORDS:[Ljava/lang/String;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    const v0, 0x9

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

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    const-string v0, "viewTransitionOnCross"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    const-string v9, "negativeCross"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    const-string v11, "CROSS"

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

    :goto_9
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v7, "triggerID"

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    const-string v4, "triggerSlack"

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

    nop

    :goto_c
    const-string v8, "positiveCross"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v3, "postLayout"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_f
    const-string v1, "viewTransitionOnPositiveCross"

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

    :goto_10
    const-string v6, "triggerCollisionId"

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

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_12
    const v1, 0xa

    nop

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

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v5, "triggerCollisionView"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    const-string v2, "viewTransitionOnNegativeCross"

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public static getId(Ljava/lang/String;)I
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_30

    nop

    nop

    :goto_2
    const/4 v0, 0x2

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

    :goto_3
    const/16 v0, 0x131

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_4
    const-string v0, "viewTransitionOnNegativeCross"

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

    :goto_5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_49

    nop

    nop

    :sswitch_1
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_b
    return v0

    nop

    nop

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x5f0e9e39 -> :sswitch_3
        -0x399a6b12 -> :sswitch_4
        -0x2ee3a4eb -> :sswitch_5
        -0x26ab2f2d -> :sswitch_6
        -0x26090af5 -> :sswitch_0
        -0x4880de1 -> :sswitch_9
        -0x94d7ce -> :sswitch_7
        0x3d6a020 -> :sswitch_2
        0x15b9acb8 -> :sswitch_8
        0x4d99e267 -> :sswitch_b
        0x538787ea -> :sswitch_a
        0x5b846bc7 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_7
        :pswitch_9
        :pswitch_3
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_b
        :pswitch_4
        :pswitch_8
        :pswitch_a
    .end packed-switch

    :goto_c
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    const/16 v0, 0xa

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_47

    nop

    nop

    nop

    :sswitch_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_10
    return v0

    nop

    :pswitch_0
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v0, 0x133

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v0, 0x136

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

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
    goto/32 :goto_4b

    nop

    nop

    :goto_18
    const/16 v0, 0x12e

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x4

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1a
    return v0

    nop

    nop

    :pswitch_2
    goto/32 :goto_18

    nop

    nop

    :goto_1b
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

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

    :goto_1e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_24
    return v0

    nop

    :pswitch_4
    goto/32 :goto_12

    nop

    nop

    :goto_25
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_26
    const-string v0, "CROSS"

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const-string v0, "viewTransitionOnPositiveCross"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_28
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_29
    const-string v0, "triggerCollisionView"

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/16 v0, 0x8

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_2c
    return v0

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v0, "triggerID"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_2e
    const/16 v0, 0x137

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

    :goto_2f
    const/4 v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_30
    const-string v0, "negativeCross"

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/16 v0, 0x135

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_32
    const/16 v0, 0x132

    nop

    goto/32 :goto_1b

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

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :cond_6
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_35
    const-string v0, "postLayout"

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_36
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_37
    if-nez v0, :cond_8

    nop

    goto/32 :goto_61

    nop

    :cond_8
    goto/32 :goto_9

    nop

    nop

    :goto_38
    goto/16 :goto_47

    nop

    nop

    nop

    :sswitch_5
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/16 v0, 0x9

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_3b
    return v0

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    return v0

    nop

    :pswitch_7
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_3e
    return v0

    nop

    nop

    :pswitch_8
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/16 v0, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v0, 0x3

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_14

    nop

    :goto_42
    const-string v0, "triggerSlack"

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    return v0

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-lez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_13

    nop

    :goto_45
    const-string v0, "positiveCross"

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_46
    move v0, v1

    nop

    nop

    nop

    :goto_47
    packed-switch v0, :pswitch_data_0

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_48
    goto :goto_47

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_4a
    return v1

    nop

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    const/16 v0, 0x12d

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_4c
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_4d
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_4e
    const-string v0, "triggerReceiver"

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto :goto_47

    nop

    nop

    :sswitch_6
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto :goto_47

    nop

    :sswitch_7
    goto/32 :goto_4

    nop

    nop

    :goto_51
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/16 v0, 0x134

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_53
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-nez v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const/16 v0, 0x12f

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_56
    goto/16 :goto_47

    nop

    :sswitch_8
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_47

    nop

    nop

    :sswitch_9
    goto/32 :goto_29

    nop

    nop

    :goto_58
    const v1, 0x10

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

    :goto_59
    const/16 v0, 0x138

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_47

    nop

    :sswitch_a
    goto/32 :goto_35

    nop

    nop

    :goto_5b
    if-nez v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_15

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

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_5d
    if-nez v0, :cond_c

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_3a

    nop

    nop

    :goto_5e
    const-string v0, "viewTransitionOnCross"

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

    :goto_5f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_60
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    sparse-switch v0, :sswitch_data_0

    :goto_61
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_47

    nop

    nop

    nop

    :sswitch_b
    goto/32 :goto_5e

    nop

    nop

    :goto_63
    const-string v0, "triggerCollisionId"

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const/16 v0, 0x130

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop
.end method
