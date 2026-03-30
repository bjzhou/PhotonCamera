.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionScene;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "MotionScene"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "MotionScene"

.field public static final S_DEFAULT_DURATION:Ljava/lang/String; = "defaultDuration"

.field public static final S_LAYOUT_DURING_TRANSITION:Ljava/lang/String; = "layoutDuringTransition"

.field public static final TYPE_DEFAULT_DURATION:I = 0x258

.field public static final TYPE_LAYOUT_DURING_TRANSITION:I = 0x259


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

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

    :goto_4
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    const-string v1, "layoutDuringTransition"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$MotionScene;->KEY_WORDS:[Ljava/lang/String;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_d
    const-string v0, "defaultDuration"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public static getId(Ljava/lang/String;)I
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    const/16 v0, 0x258

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_6

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move v0, v1

    nop

    nop

    :goto_6
    packed-switch v0, :pswitch_data_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_6

    nop

    nop

    :sswitch_0
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_c
    return v0

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x5cb6f5 -> :sswitch_0
        0x3d519dc0 -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :goto_d
    goto/32 :goto_13

    nop

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
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

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

    :goto_10
    return v1

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x11

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_1d

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_8

    nop

    :goto_17
    const/16 v0, 0x259

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_18
    const-string v0, "defaultDuration"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_2

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, -0x1

    nop

    nop

    nop

    sparse-switch v0, :sswitch_data_0

    :goto_1c
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const-string v0, "layoutDuringTransition"

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

    :goto_1e
    const/4 v0, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public static getType(I)I
    .locals 1

    packed-switch p0, :pswitch_data_0

    goto/32 :goto_1

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

    nop

    nop

    :pswitch_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x258
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :goto_5
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
