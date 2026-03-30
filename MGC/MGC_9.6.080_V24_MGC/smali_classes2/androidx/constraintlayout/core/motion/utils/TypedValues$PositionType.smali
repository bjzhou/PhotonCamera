.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$PositionType;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "PositionType"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "KeyPosition"

.field public static final S_DRAWPATH:Ljava/lang/String; = "drawPath"

.field public static final S_PERCENT_HEIGHT:Ljava/lang/String; = "percentHeight"

.field public static final S_PERCENT_WIDTH:Ljava/lang/String; = "percentWidth"

.field public static final S_PERCENT_X:Ljava/lang/String; = "percentX"

.field public static final S_PERCENT_Y:Ljava/lang/String; = "percentY"

.field public static final S_SIZE_PERCENT:Ljava/lang/String; = "sizePercent"

.field public static final S_TRANSITION_EASING:Ljava/lang/String; = "transitionEasing"

.field public static final TYPE_CURVE_FIT:I = 0x1fc

.field public static final TYPE_DRAWPATH:I = 0x1f6

.field public static final TYPE_PATH_MOTION_ARC:I = 0x1fd

.field public static final TYPE_PERCENT_HEIGHT:I = 0x1f8

.field public static final TYPE_PERCENT_WIDTH:I = 0x1f7

.field public static final TYPE_PERCENT_X:I = 0x1fa

.field public static final TYPE_PERCENT_Y:I = 0x1fb

.field public static final TYPE_POSITION_TYPE:I = 0x1fe

.field public static final TYPE_SIZE_PERCENT:I = 0x1f9

.field public static final TYPE_TRANSITION_EASING:I = 0x1f5


# direct methods
.method static constructor <clinit>()V
    .locals 7

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v5, "percentX"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    const-string v4, "sizePercent"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xf

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

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

    :goto_7
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    const-string v1, "drawPath"

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    const-string v2, "percentWidth"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$PositionType;->KEY_WORDS:[Ljava/lang/String;

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

    :goto_b
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    const-string v0, "transitionEasing"

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

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v3, "percentHeight"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_f
    const-string v6, "percentY"

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop
.end method

.method public static getId(Ljava/lang/String;)I
    .locals 2

    goto/32 :goto_b

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
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "percentY"

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

    :goto_2
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_3
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v0

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x6

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    move v0, v1

    nop

    :goto_7
    packed-switch v0, :pswitch_data_0

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_8
    goto :goto_7

    nop

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return v0

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6c0d7d20 -> :sswitch_6
        -0x4330437f -> :sswitch_4
        -0x3ca72634 -> :sswitch_2
        -0x314b3c77 -> :sswitch_0
        -0xbefb6fc -> :sswitch_5
        0x198424b3 -> :sswitch_1
        0x198424b4 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xa

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_22

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_32

    nop

    nop

    :goto_10
    const v1, 0x1d

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_11
    const/16 v0, 0x1fb

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

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

    :goto_13
    const/4 v0, 0x0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_2
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const-string v0, "percentHeight"

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_17
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :sswitch_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    nop

    sparse-switch v0, :sswitch_data_0

    :goto_1a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_37

    nop

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return v0

    nop

    nop

    :pswitch_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return v1

    nop

    :pswitch_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v0, 0x2

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

    :goto_24
    const/16 v0, 0x1f7

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_27
    return v0

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_28
    const/16 v0, 0x1f8

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v0, :cond_4

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

    :cond_4
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_2b
    const-string v0, "transitionEasing"

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

    :goto_2c
    const/16 v0, 0x1f9

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_2d
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2f
    return v0

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_3a

    nop

    nop

    :goto_30
    const/16 v0, 0x1f6

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_31
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v0, 0x4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_7

    nop

    :sswitch_5
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_34
    const-string v0, "percentWidth"

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

    :goto_35
    const/16 v0, 0x1fa

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_7

    nop

    :goto_37
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_39
    const-string v0, "drawPath"

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/16 v0, 0x1f5

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_3c
    if-nez v0, :cond_6

    nop

    goto/32 :goto_1a

    nop

    :cond_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3d
    const-string v0, "percentX"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_3e
    const-string v0, "sizePercent"

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v0, 0x1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :sswitch_6
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop
.end method

.method public static getType(I)I
    .locals 1

    sparse-switch p0, :sswitch_data_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x4

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

    :goto_1
    const/16 v0, 0x8

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    return v0

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    :sswitch_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    return v0

    nop

    :sswitch_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    return v0

    nop

    nop

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_0
        0x65 -> :sswitch_1
        0x1f5 -> :sswitch_1
        0x1f6 -> :sswitch_1
        0x1f7 -> :sswitch_2
        0x1f8 -> :sswitch_2
        0x1f9 -> :sswitch_2
        0x1fa -> :sswitch_2
        0x1fb -> :sswitch_2
        0x1fc -> :sswitch_0
    .end sparse-switch
.end method
