.class public Landroidx/constraintlayout/core/motion/CustomAttribute;
.super Ljava/lang/Object;
.source "CustomAttribute.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "TransitionLayout"


# instance fields
.field mBooleanValue:Z

.field private mColorValue:I

.field private mFloatValue:F

.field private mIntegerValue:I

.field private mMethod:Z

.field mName:Ljava/lang/String;

.field private mStringValue:Ljava/lang/String;

.field private mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/motion/CustomAttribute;Ljava/lang/Object;)V
    .locals 1

    goto/32 :goto_7

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
    const/4 v0, 0x0

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

    :goto_2
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/core/motion/CustomAttribute;->setValue(Ljava/lang/Object;)V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_8
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    :goto_4
    const/4 v0, 0x0

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

    nop

    :goto_5
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;Ljava/lang/Object;Z)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mName:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4
    invoke-virtual {p0, p3}, Landroidx/constraintlayout/core/motion/CustomAttribute;->setValue(Ljava/lang/Object;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    iput-object p2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean p4, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mMethod:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method private static clamp(I)I
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    and-int/2addr p0, v1

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

    :goto_3
    const/16 v0, 0xff

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    const v1, 0x13

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sub-int/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    shr-int/lit8 v1, p0, 0x1f

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    not-int v1, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_e
    and-int/2addr p0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    shr-int/lit8 v1, p0, 0x1f

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public static hsvToRgb(FFF)I
    .locals 9

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    mul-float/2addr v2, p2

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_1
    or-int/2addr v5, v7

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    mul-float/2addr v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1d

    nop

    :goto_4
    mul-float v7, v0, p1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_5
    const/high16 v0, 0x40c00000    # 6.0f

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    add-int/2addr v7, v2

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sub-float v5, v4, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_8
    shl-int/lit8 v8, v2, 0x8

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_9
    shl-int/lit8 v7, v4, 0x10

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

    :goto_a
    return v5

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    shl-int/lit8 v7, v3, 0x10

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_c
    shl-int/lit8 v7, v6, 0x10

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
    return v5

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_5
    .end packed-switch

    :goto_e
    goto/32 :goto_29

    nop

    nop

    :goto_f
    mul-float v1, p0, v0

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_10
    add-int/2addr v7, v4

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_11
    const/high16 v4, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    add-int/2addr v7, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/high16 v5, 0x3f000000    # 0.5f

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_14
    mul-float/2addr v8, p1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    shl-int/lit8 v8, v3, 0x8

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    mul-float/2addr v7, v4

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

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

    :goto_18
    shl-int/lit8 v8, v6, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-float/2addr v3, v5

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    or-int/2addr v5, v7

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1b
    add-int/2addr v7, v8

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

    :goto_1c
    return v5

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    mul-float v3, p2, v2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_20
    sub-float/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_21
    shl-int/lit8 v8, v2, 0x8

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_22
    return v5

    nop

    nop

    :pswitch_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_23
    shl-int/lit8 v8, v4, 0x8

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_24
    mul-float v7, p2, v2

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_25
    add-int/2addr v7, v8

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

    :goto_26
    mul-float/2addr v3, v5

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_27
    add-int/2addr v7, v3

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

    :goto_28
    return v5

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_b

    nop

    nop

    :goto_29
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2a
    shl-int/lit8 v7, v2, 0x10

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

    nop

    nop

    :goto_2b
    or-int/2addr v5, v7

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    shl-int/lit8 v7, v2, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/2addr v7, v8

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sub-float/2addr v4, v8

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-float/2addr v6, v5

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_30
    float-to-int v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    shl-int/lit8 v8, v3, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_32
    add-float/2addr v7, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_33
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    int-to-float v2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    or-int/2addr v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_36
    sub-float v7, v4, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_37
    float-to-int v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_38
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_39
    return v5

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_c

    nop

    nop

    :goto_3a
    add-float/2addr v2, v5

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_3b
    const/high16 v2, 0x437f0000    # 255.0f

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_3c
    add-int/2addr v7, v8

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_3d
    const/4 v5, 0x0

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_3e
    float-to-int v1, v1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_3f
    add-int/2addr v7, v2

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_40
    mul-float/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_41
    return v5

    nop

    nop

    :pswitch_5
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_42
    const/high16 v5, -0x1000000

    nop

    nop

    nop

    nop

    packed-switch v1, :pswitch_data_0

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_43
    const v0, 0x3

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_44
    or-int/2addr v5, v7

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    sub-float v8, v4, v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_46
    or-int/2addr v5, v7

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

    nop

    :goto_47
    mul-float v6, p2, v2

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

    nop

    :goto_48
    add-int/2addr v7, v6

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_49
    add-int/2addr v7, v8

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    float-to-int v3, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    float-to-int v4, v7

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

    :goto_4c
    shl-int/lit8 v7, v3, 0x10

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4d
    add-int/2addr v7, v3

    nop

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
.end method


# virtual methods
.method public diff(Landroidx/constraintlayout/core/motion/CustomAttribute;)Z
    .locals 4

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_0
    cmpl-float v1, v1, v3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_20

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    move v0, v2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v0

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
    .end packed-switch

    :goto_6
    goto/32 :goto_d

    nop

    nop

    :goto_7
    iget-boolean v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_8
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_9
    sget-object v1, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_a
    move v0, v2

    nop

    nop

    :goto_b
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_c
    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move v0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    nop

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

    nop

    :goto_11
    const/4 v2, 0x1

    nop

    packed-switch v1, :pswitch_data_0

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v0, 0x0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_13
    if-eq v1, v3, :cond_0

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

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

    nop

    :goto_15
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    move v0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    return v0

    nop

    :pswitch_1
    goto/32 :goto_26

    nop

    nop

    :goto_1a
    return v0

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    rem-int v0, v0, v1

    nop

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

    :goto_1c
    const v1, 0x5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-boolean v3, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1f
    return v0

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_21
    if-eqz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eq v1, v3, :cond_2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_24
    invoke-virtual {v2}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v2

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_25
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_3
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_27
    if-eq v1, v3, :cond_4

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

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return v0

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_29
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    aget v1, v1, v2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v1, :cond_5

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_2c
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2d
    return v0

    nop

    :pswitch_5
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v2, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_2f
    move v0, v2

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_28

    nop

    nop

    :goto_31
    if-ne v1, v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1

    nop

    nop

    :goto_32
    cmpl-float v1, v1, v3

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v2, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_36
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_37
    if-lez v0, :cond_7

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

    :cond_7
    goto/32 :goto_14

    nop

    :goto_38
    iget v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_39
    move v0, v2

    nop

    nop

    :goto_3a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3b
    if-eq v1, v3, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_8
    goto/32 :goto_a

    nop

    nop

    :goto_3c
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3d
    iget v3, p1, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop
.end method

.method public getType()Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public getValueToInterpolate()F
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

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

    :goto_3
    return v0

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_5
        :pswitch_4
    .end packed-switch

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    throw v0

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

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

    :goto_7
    const-string v1, "Cannot interpolate String"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_8
    goto/32 :goto_25

    nop

    nop

    :goto_9
    aget v0, v0, v1

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    return v0

    nop

    :pswitch_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    :goto_f
    const-string v1, "Color does not have a single color to interpolate"

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    new-instance v0, Ljava/lang/RuntimeException;

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
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return v0

    nop

    :pswitch_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_16
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_17
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1b
    goto :goto_1a

    nop

    nop

    :goto_1c
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

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

    :goto_1e
    throw v0

    nop

    nop

    :pswitch_3
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1f
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_20
    return v0

    nop

    nop

    :pswitch_4
    goto/32 :goto_6

    nop

    nop

    :goto_21
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    :goto_22
    return v0

    nop

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public getValuesToInterpolate([F)V
    .locals 13

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_1
    int-to-float v9, v2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2
    shr-int/lit8 v3, v0, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v11, v12, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v8

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_4
    aput v0, p1, v1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_9
    shr-int/lit8 v4, v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_a
    float-to-double v7, v5

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

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

    :goto_c
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_e
    div-float/2addr v8, v6

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_f
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_4
        :pswitch_5
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch

    :goto_10
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_11
    and-int/lit16 v0, v0, 0xff

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_12
    double-to-float v5, v7

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_13
    aput v7, p1, v1

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

    :goto_14
    div-float/2addr v7, v6

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

    nop

    :goto_15
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_16
    const-wide v9, 0x400199999999999aL    # 2.2

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

    :goto_17
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    and-int/lit16 v2, v2, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_19
    aput v0, p1, v1

    nop

    nop

    :goto_1a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    int-to-float v0, v0

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

    :goto_1c
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_1d
    goto :goto_1a

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_1e
    double-to-float v7, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_1f
    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_20
    const-string v1, "Color does not have a single color to interpolate"

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3d

    nop

    nop

    :goto_22
    const/high16 v6, 0x437f0000    # 255.0f

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_23
    shr-int/lit8 v2, v0, 0x18

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    and-int/lit16 v4, v4, 0xff

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

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

    nop

    :goto_26
    goto/16 :goto_1a

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_37

    nop

    nop

    :goto_27
    aput v9, p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v1, 0x2

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2d

    nop

    :goto_2a
    float-to-double v7, v7

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    aput v8, p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2c
    const/high16 v0, 0x3f800000    # 1.0f

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

    :goto_2d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_30
    div-float/2addr v9, v6

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_31
    and-int/lit16 v3, v3, 0xff

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

    :goto_32
    goto/16 :goto_1a

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

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

    nop

    :goto_34
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_36
    goto/16 :goto_1a

    nop

    :pswitch_3
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_37
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_39
    aput v0, p1, v1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3a
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_3b
    const/4 v1, 0x3

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

    :goto_3c
    float-to-double v11, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3d
    throw v0

    nop

    nop

    :pswitch_4
    goto/32 :goto_25

    nop

    nop

    :goto_3e
    int-to-float v7, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v1, 0x0

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_40
    aget v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_41
    iget v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/16 :goto_1a

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

    :goto_43
    aput v0, p1, v1

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_44
    div-float/2addr v5, v6

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_45
    int-to-float v8, v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_46
    aput v5, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_47
    double-to-float v8, v8

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_2e

    nop

    nop

    :goto_49
    int-to-float v5, v3

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
.end method

.method public isContinuous()Z
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    aget v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    :pswitch_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_5
    const v0, 0x6

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

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

    :goto_7
    const/4 v0, 0x0

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

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    return v0

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v1

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

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

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

    :goto_f
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_10
    const v1, 0x19

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
.end method

.method public numberOfInterpolatedValues()I
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aget v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_4

    nop

    :goto_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    const v1, 0xf

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    return v0

    nop

    nop

    :pswitch_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return v0

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :goto_e
    goto/32 :goto_2

    nop

    nop

    :goto_f
    const v0, 0x18

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public setColorValue(I)V
    .locals 0

    goto/32 :goto_1

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
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public setFloatValue(F)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setIntValue(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public setStringValue(Ljava/lang/String;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-object p1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mStringValue:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public setValue(Ljava/lang/Object;)V
    .locals 2

    goto/32 :goto_22

    nop

    nop

    :goto_0
    goto/32 :goto_19

    nop

    :goto_1
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_d

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    :goto_4
    check-cast v0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mStringValue:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_6
    aget v0, v0, v1

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_9
    iput-boolean v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_a
    check-cast v0, Ljava/lang/Boolean;

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

    :goto_b
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    nop

    nop

    :goto_d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    check-cast v0, Ljava/lang/Integer;

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

    nop

    :goto_10
    goto :goto_d

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_d

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    move-object v0, p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x5

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

    :goto_15
    check-cast v0, Ljava/lang/Float;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

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

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_5
    .end packed-switch

    :goto_19
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    move-object v0, p1

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

    :goto_1b
    check-cast v0, Ljava/lang/Float;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_1e
    goto/16 :goto_d

    nop

    :pswitch_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object v0, p1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_20
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

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

    :goto_21
    move-object v0, p1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v0, 0xd

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :pswitch_5
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_27
    move-object v0, p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

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

    :goto_29
    check-cast v0, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2a
    move-object v0, p1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public setValue([F)V
    .locals 7

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xffffff

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1
    const-string v1, "Color does not have a single color to interpolate"

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

    :goto_2
    or-int/2addr v0, v1

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

    :goto_3
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    aget v2, p1, v2

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_6
    aget v0, p1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_7
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_0
    goto/32 :goto_35

    nop

    :goto_9
    goto :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_2f

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_1c

    nop

    nop

    :goto_c
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/motion/CustomAttribute;->hsvToRgb(FFF)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    iput-boolean v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mBooleanValue:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;->ordinal()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_f
    const/4 v2, 0x3

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_10
    aget v0, p1, v2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    move v1, v2

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/16 :goto_2f

    nop

    nop

    :pswitch_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_2f

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mColorValue:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_18
    if-gtz v0, :cond_1

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

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1b
    float-to-int v0, v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_1c
    aget v0, p1, v2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    throw v0

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_2b

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1f
    float-to-double v3, v0

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_20
    aget v1, p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_21
    mul-float/2addr v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v0, Ljava/lang/RuntimeException;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_24
    aget v0, v0, v1

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

    :goto_25
    cmpl-double v0, v3, v5

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_26
    and-int/2addr v0, v1

    nop

    nop

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

    :goto_27
    const/high16 v1, 0x437f0000    # 255.0f

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_28
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v1, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mType:Landroidx/constraintlayout/core/motion/CustomAttribute$AttributeType;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_2a
    shl-int/lit8 v1, v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2b
    aget v0, p1, v2

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

    :goto_2c
    goto :goto_2f

    nop

    nop

    :pswitch_5
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    aget v0, p1, v2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mIntegerValue:I

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    return-void

    nop

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_1
        :pswitch_1
        :pswitch_4
        :pswitch_0
        :pswitch_2
    .end packed-switch

    :goto_31
    goto/32 :goto_19

    nop

    nop

    :goto_32
    iput v0, p0, Landroidx/constraintlayout/core/motion/CustomAttribute;->mFloatValue:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_33
    const/4 v2, 0x0

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_34
    const v1, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_31

    nop

    nop

    :goto_36
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v1}, Landroidx/constraintlayout/core/motion/CustomAttribute;->clamp(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_38
    sget-object v0, Landroidx/constraintlayout/core/motion/CustomAttribute$1;->$SwitchMap$androidx$constraintlayout$core$motion$CustomAttribute$AttributeType:[I

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

    :goto_39
    aget v2, p1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    float-to-int v1, v2

    nop

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

    :goto_3b
    const-wide/high16 v5, 0x3fe0000000000000L    # 0.5

    nop

    goto/32 :goto_25

    nop

    nop

    nop
.end method
