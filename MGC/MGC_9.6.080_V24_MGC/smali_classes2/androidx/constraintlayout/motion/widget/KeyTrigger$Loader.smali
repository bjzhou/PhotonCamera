.class Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;
.super Ljava/lang/Object;
.source "KeyTrigger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/motion/widget/KeyTrigger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Loader"
.end annotation


# static fields
.field private static final COLLISION:I = 0x9

.field private static final CROSS:I = 0x4

.field private static final FRAME_POS:I = 0x8

.field private static final NEGATIVE_CROSS:I = 0x1

.field private static final POSITIVE_CROSS:I = 0x2

.field private static final POST_LAYOUT:I = 0xa

.field private static final TARGET_ID:I = 0x7

.field private static final TRIGGER_ID:I = 0x6

.field private static final TRIGGER_RECEIVER:I = 0xb

.field private static final TRIGGER_SLACK:I = 0x5

.field private static final VT_CROSS:I = 0xc

.field private static final VT_NEGATIVE_CROSS:I = 0xd

.field private static final VT_POSITIVE_CROSS:I = 0xe

.field private static mAttrMap:Landroid/util/SparseIntArray;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroid/util/SparseIntArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    const/4 v2, 0x7

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_7
    const/16 v2, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_9
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    goto/32 :goto_2c

    nop

    nop

    :goto_a
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_c
    const v1, 0x1a

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    const/4 v2, 0x6

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_1a

    nop

    nop

    :goto_12
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_13
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_motion_triggerOnCollision:I

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_15
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_viewTransitionOnCross:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_18
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_viewTransitionOnPositiveCross:I

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_19
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_onPositiveCross:I

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1a
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1b
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_triggerId:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1c
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_motion_postLayoutCollision:I

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1d
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_triggerSlack:I

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

    :goto_1e
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_triggerReceiver:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_1f
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_motionTarget:I

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

    :goto_20
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_onCross:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_21
    goto/32 :goto_2a

    nop

    :goto_22
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_framePosition:I

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

    :goto_24
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_25
    const/16 v2, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_26
    const/16 v2, 0xa

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_28
    const/16 v2, 0xd

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

    :goto_29
    return-void

    nop

    :goto_2a
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_3e

    nop

    nop

    :goto_2c
    sput-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_22

    nop

    :cond_0
    goto/32 :goto_21

    nop

    :goto_2e
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_30
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

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

    :goto_32
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_33
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_22

    nop

    nop

    :goto_35
    const/16 v2, 0x9

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/16 v2, 0xb

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_39
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->append(II)V

    goto/32 :goto_f

    nop

    nop

    :goto_3a
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_viewTransitionOnNegativeCross:I

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3b
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3d
    sget v1, Landroidx/constraintlayout/widget/R$styleable;->KeyTrigger_onNegativeCross:I

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3e
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3f
    sget-object v0, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method

.method private constructor <init>()V
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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static read(Landroidx/constraintlayout/motion/widget/KeyTrigger;Landroid/content/res/TypedArray;Landroid/content/Context;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "c",
            "a",
            "context"
        }
    .end annotation

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_2
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetId:I

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

    :goto_3
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetString:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$700(Landroidx/constraintlayout/motion/widget/KeyTrigger;)I

    move-result v3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_8
    add-int/lit8 v1, v1, 0x1

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

    nop

    :goto_9
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$002(Landroidx/constraintlayout/motion/widget/KeyTrigger;F)F

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_49

    nop

    :pswitch_0
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_49

    nop

    :pswitch_1
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_e
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v3, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v3

    nop

    nop

    nop

    packed-switch v3, :pswitch_data_0

    :pswitch_2
    goto/32 :goto_62

    nop

    nop

    nop

    :goto_10
    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$602(Landroidx/constraintlayout/motion/widget/KeyTrigger;Z)Z

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_11
    int-to-float v3, v3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_43

    nop

    :goto_14
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$600(Landroidx/constraintlayout/motion/widget/KeyTrigger;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v4, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_17
    const/high16 v4, 0x42c80000    # 100.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

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

    :goto_19
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$402(Landroidx/constraintlayout/motion/widget/KeyTrigger;I)I

    goto/32 :goto_52

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v2

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

    :goto_1c
    const/high16 v4, 0x3f000000    # 0.5f

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_49

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_49

    nop

    nop

    :pswitch_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_7

    nop

    nop

    :goto_22
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_24
    goto/16 :goto_49

    nop

    nop

    nop

    nop

    :pswitch_4
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_25
    sget-object v3, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

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

    :goto_26
    if-eq v3, v4, :cond_2

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$302(Landroidx/constraintlayout/motion/widget/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    div-float/2addr v3, v4

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_29
    iget v3, v3, Landroid/util/TypedValue;->type:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$702(Landroidx/constraintlayout/motion/widget/KeyTrigger;I)I

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_49

    nop

    :pswitch_5
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_2d
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetId:I

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

    :goto_2e
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0x1c

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_30
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFramePosition:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

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

    nop

    :goto_32
    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$202(Landroidx/constraintlayout/motion/widget/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;

    goto/32 :goto_3f

    nop

    nop

    :goto_33
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_34
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$502(Landroidx/constraintlayout/motion/widget/KeyTrigger;I)I

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v4, 0x3

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v0, 0x1e

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

    :goto_3b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFramePosition:I

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3c
    goto/16 :goto_49

    nop

    nop

    nop

    :pswitch_6
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

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

    :goto_3e
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_49

    nop

    nop

    nop

    nop

    :pswitch_7
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnPositiveCross:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_4
        :pswitch_2
        :pswitch_a
        :pswitch_9
        :pswitch_c
        :pswitch_8
        :pswitch_1
        :pswitch_6
        :pswitch_0
        :pswitch_3
        :pswitch_5
        :pswitch_b
        :pswitch_d
    .end packed-switch

    :goto_43
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetId:I

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

    :goto_45
    add-float/2addr v3, v4

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnNegativeCross:I

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

    nop

    :goto_47
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_48
    invoke-static {p0, v3}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$102(Landroidx/constraintlayout/motion/widget/KeyTrigger;Ljava/lang/String;)Ljava/lang/String;

    nop

    :goto_49
    goto/32 :goto_8

    nop

    nop

    :goto_4a
    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetId:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4c
    iput-object v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetString:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_4d
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnNegativeCross:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v0

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

    nop

    nop

    :goto_4f
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

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

    :goto_50
    goto :goto_49

    nop

    :pswitch_8
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_51
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTriggerSlack:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_52
    goto :goto_49

    nop

    nop

    nop

    :pswitch_9
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_53
    const-string v4, "   "

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_54
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$500(Landroidx/constraintlayout/motion/widget/KeyTrigger;)I

    move-result v3

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_55
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnCross:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_56
    goto/16 :goto_49

    nop

    :goto_57
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-lt v1, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_5a
    sget-object v4, Landroidx/constraintlayout/motion/widget/KeyTrigger$Loader;->mAttrMap:Landroid/util/SparseIntArray;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_49

    nop

    nop

    nop

    :pswitch_a
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_5d
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mFramePosition:I

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_5e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_5f
    if-eq v3, v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_49

    nop

    nop

    nop

    :pswitch_b
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_61
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnPositiveCross:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_62
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_63
    invoke-static {p0}, Landroidx/constraintlayout/motion/widget/KeyTrigger;->access$400(Landroidx/constraintlayout/motion/widget/KeyTrigger;)I

    move-result v3

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_65
    const-string v4, "KeyTrigger"

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

    :goto_66
    sget-boolean v3, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_67
    goto/16 :goto_49

    nop

    nop

    :pswitch_c
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_69
    goto/16 :goto_49

    nop

    nop

    nop

    nop

    :pswitch_d
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mViewTransitionOnCross:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6b
    const-string v4, "unused attribute 0x"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iput v3, p0, Landroidx/constraintlayout/motion/widget/KeyTrigger;->mTargetId:I

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v4, v2}, Landroid/util/SparseIntArray;->get(I)I

    move-result v4

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop
.end method
