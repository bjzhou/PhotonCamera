.class public interface abstract Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;
.super Ljava/lang/Object;
.source "TypedValues.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/core/motion/utils/TypedValues;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Custom"
.end annotation


# static fields
.field public static final KEY_WORDS:[Ljava/lang/String;

.field public static final NAME:Ljava/lang/String; = "Custom"

.field public static final S_BOOLEAN:Ljava/lang/String; = "boolean"

.field public static final S_COLOR:Ljava/lang/String; = "color"

.field public static final S_DIMENSION:Ljava/lang/String; = "dimension"

.field public static final S_FLOAT:Ljava/lang/String; = "float"

.field public static final S_INT:Ljava/lang/String; = "integer"

.field public static final S_REFERENCE:Ljava/lang/String; = "refrence"

.field public static final S_STRING:Ljava/lang/String; = "string"

.field public static final TYPE_BOOLEAN:I = 0x388

.field public static final TYPE_COLOR:I = 0x386

.field public static final TYPE_DIMENSION:I = 0x389

.field public static final TYPE_FLOAT:I = 0x385

.field public static final TYPE_INT:I = 0x384

.field public static final TYPE_REFERENCE:I = 0x38a

.field public static final TYPE_STRING:I = 0x387


# direct methods
.method static constructor <clinit>()V
    .locals 6

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_f

    nop

    :goto_1
    const-string v1, "color"

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    const-string v0, "float"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v4, "dimension"

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const-string v3, "boolean"

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    const-string v5, "refrence"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

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
    sput-object v0, Landroidx/constraintlayout/core/motion/utils/TypedValues$Custom;->KEY_WORDS:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_c
    const-string v2, "string"

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

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    :goto_10
    const v1, 0xd

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

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop
.end method

.method public static getId(Ljava/lang/String;)I
    .locals 2

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/16 v0, 0x38a

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_2c

    nop

    nop

    nop

    :sswitch_0
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

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

    :goto_6
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    :goto_9
    const-string v0, "float"

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_b
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_c
    const-string v0, "refrence"

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const-string v0, "integer"

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_e
    return v0

    nop

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4144929a -> :sswitch_1
        -0x352a9fef -> :sswitch_6
        -0x2a604a76 -> :sswitch_4
        0x3db6c28 -> :sswitch_3
        0x5a72f63 -> :sswitch_0
        0x5d0225c -> :sswitch_2
        0x74b5813e -> :sswitch_5
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_5
        :pswitch_6
        :pswitch_2
    .end packed-switch

    :goto_f
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_2c

    nop

    nop

    nop

    :sswitch_1
    goto/32 :goto_40

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/16 v0, 0x389

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_2c

    nop

    :sswitch_2
    goto/32 :goto_9

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    :sswitch_3
    goto/32 :goto_2f

    nop

    nop

    :goto_17
    const-string v0, "color"

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_18
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_19
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :sswitch_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_1b
    const/4 v1, -0x1

    nop

    nop

    sparse-switch v0, :sswitch_data_0

    :goto_1c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_1e
    return v0

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_28

    nop

    nop

    :goto_1f
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_20
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    :goto_21
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_22
    const/4 v0, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    return v1

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_7

    nop

    nop

    :sswitch_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_26
    const/4 v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_30

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/16 v0, 0x384

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

    nop

    :goto_29
    const-string v0, "string"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0x15

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2b
    move v0, v1

    nop

    nop

    nop

    nop

    :goto_2c
    packed-switch v0, :pswitch_data_0

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2d
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v0, "boolean"

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_30
    goto :goto_2c

    nop

    nop

    nop

    nop

    :sswitch_6
    goto/32 :goto_29

    nop

    nop

    :goto_31
    return v0

    nop

    :pswitch_3
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_32
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_33
    const/16 v0, 0x385

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

    :goto_34
    return v0

    nop

    :pswitch_5
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_35
    return v0

    nop

    nop

    :pswitch_6
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

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

    :goto_37
    const/16 v0, 0x386

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_38
    if-nez v0, :cond_7

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_3b

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

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const/16 v0, 0x388

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v0, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3d
    const/16 v0, 0x387

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_3e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_40
    const-string v0, "dimension"

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method
