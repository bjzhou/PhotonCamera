.class public Landroidx/constraintlayout/widget/ReactiveGuide;
.super Landroid/view/View;
.source "ReactiveGuide.java"

# interfaces
.implements Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;


# instance fields
.field private mAnimateChange:Z

.field private mApplyToAllConstraintSets:Z

.field private mApplyToConstraintSetId:I

.field private mAttributeId:I


# direct methods
.method private 602d8bd8e95a9766d1d8df08f130b6aem(IILandroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "newValue",
            "id",
            "motionLayout",
            "currentState"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p2, p1}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineEnd(II)V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-virtual {p3, p4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p3, p4, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method private 9e849c4a6f153b941faff3aa6310f73em(Landroid/util/AttributeSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_ReactiveGuide_reactiveGuide_animateChange:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_4
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eq v3, v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_35

    nop

    :goto_7
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_ReactiveGuide_reactiveGuide_applyToConstraintSet:I

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

    :goto_9
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAnimateChange:Z

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

    :goto_a
    iget-boolean v4, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToAllConstraintSets:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1, p0}, Landroidx/constraintlayout/widget/SharedValues;->addListener(ILandroidx/constraintlayout/widget/SharedValues$SharedValuesListener;)V

    :goto_c
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_d
    if-lt v2, v1, :cond_1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    :goto_e
    goto/16 :goto_32

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    :goto_10
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

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

    :goto_11
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->getSharedValues()Landroidx/constraintlayout/widget/SharedValues;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_13
    if-eq v3, v4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    :goto_15
    iput v4, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToConstraintSetId:I

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x0

    nop

    :goto_17
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_19
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_ReactiveGuide_reactiveGuide_applyToAllConstraintSets:I

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v4, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToConstraintSetId:I

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0xb

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

    :goto_1c
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_ReactiveGuide:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1d
    iget v4, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

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

    nop

    nop

    :goto_1f
    if-eq v3, v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2a

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
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_21
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_ReactiveGuide_reactiveGuide_valueId:I

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

    :goto_22
    iget v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    nop

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

    :goto_23
    if-ne v0, v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x16

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_17

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ReactiveGuide;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_28
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget v1, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2d
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAnimateChange:Z

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2e
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2f
    goto :goto_32

    nop

    :goto_30
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToAllConstraintSets:Z

    nop

    :goto_32
    goto/32 :goto_20

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

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

    nop

    :goto_34
    return-void

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-eq v3, v4, :cond_6

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

    :cond_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-nez p1, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iput v4, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

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

    :goto_1
    invoke-direct {p0, v0}, Landroidx/constraintlayout/widget/ReactiveGuide;->9e849c4a6f153b941faff3aa6310f73em(Landroid/util/AttributeSet;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

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
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAnimateChange:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToAllConstraintSets:Z

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

    :goto_7
    iput v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToConstraintSetId:I

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

    :goto_9
    return-void

    nop

    :goto_a
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/16 v0, 0x8

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, -0x1

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/ReactiveGuide;->9e849c4a6f153b941faff3aa6310f73em(Landroid/util/AttributeSet;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToConstraintSetId:I

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
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAnimateChange:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToAllConstraintSets:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    const/4 v0, -0x1

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

    :goto_a
    iput v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    const/16 v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    :goto_0
    const/16 v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToAllConstraintSets:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    iput v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToConstraintSetId:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAnimateChange:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/ReactiveGuide;->9e849c4a6f153b941faff3aa6310f73em(Landroid/util/AttributeSet;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr",
            "defStyleRes"
        }
    .end annotation

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, -0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAnimateChange:Z

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToAllConstraintSets:Z

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

    :goto_5
    invoke-direct {p0, p2}, Landroidx/constraintlayout/widget/ReactiveGuide;->9e849c4a6f153b941faff3aa6310f73em(Landroid/util/AttributeSet;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x1

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

    :goto_8
    iput v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToConstraintSetId:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-super {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_5

    nop

    nop

    :goto_a
    const/16 v0, 0x8

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    iput v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

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
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "canvas"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public getApplyToConstraintSetId()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToConstraintSetId:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method public getAttributeId()I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public isAnimatingChange()Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAnimateChange:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop
.end method

.method protected onMeasure(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

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

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0, v0}, Landroidx/constraintlayout/widget/ReactiveGuide;->setMeasuredDimension(II)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public onNewValue(III)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "newValue",
            "oldValue"
        }
    .end annotation

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v2, v3, v4}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateStateAnimate(ILandroidx/constraintlayout/widget/ConstraintSet;I)V

    goto/32 :goto_27

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetIds()[I

    move-result-object v3

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v3, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_3
    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xf

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/widget/ReactiveGuide;->setGuidelineBegin(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ReactiveGuide;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_9
    iget v3, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToConstraintSetId:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_a
    array-length v5, v3

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

    nop

    nop

    :goto_b
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->cloneConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v3

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_c
    goto :goto_18

    nop

    nop

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/16 v4, 0x3e8

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

    :goto_f
    if-lt v4, v5, :cond_2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    nop

    :goto_10
    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v2

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    array-length v5, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    const/4 v4, 0x0

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ReactiveGuide;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ReactiveGuide;->getId()I

    move-result v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_17
    invoke-direct {p0, p2, v0, v1, v2}, Landroidx/constraintlayout/widget/ReactiveGuide;->602d8bd8e95a9766d1d8df08f130b6aem(IILandroidx/constraintlayout/motion/widget/MotionLayout;I)V

    :goto_18
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_19
    iget-boolean v3, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToAllConstraintSets:Z

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, p2, v0, v1, v5}, Landroidx/constraintlayout/widget/ReactiveGuide;->602d8bd8e95a9766d1d8df08f130b6aem(IILandroidx/constraintlayout/motion/widget/MotionLayout;I)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1b
    if-nez v3, :cond_4

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

    :goto_1c
    invoke-virtual {v1}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetIds()[I

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_2d

    nop

    :goto_1e
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1f
    goto :goto_14

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    :goto_22
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_2e

    nop

    nop

    :goto_25
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-boolean v3, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAnimateChange:Z

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_18

    nop

    :goto_28
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_29
    iget-boolean v3, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToAllConstraintSets:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    add-int v0, v0, v1

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

    :goto_2c
    aget v5, v3, v4

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget v2, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToConstraintSetId:I

    nop

    nop

    :goto_30
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-ne v5, v2, :cond_7

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_32
    if-nez v3, :cond_8

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_1c

    nop

    nop

    :goto_33
    invoke-virtual {v3, v0, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->setGuidelineEnd(II)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_34
    instance-of v1, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;

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

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_36
    aget v5, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_37
    invoke-direct {p0, p2, v0, v1, v5}, Landroidx/constraintlayout/widget/ReactiveGuide;->602d8bd8e95a9766d1d8df08f130b6aem(IILandroidx/constraintlayout/motion/widget/MotionLayout;I)V

    :goto_38
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_39
    const v1, 0x12

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_3a
    const/4 v4, 0x0

    nop

    :goto_3b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    return-void

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3e
    if-lt v4, v5, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop
.end method

.method public setAnimateChange(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animate"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iput-boolean p1, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAnimateChange:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public setApplyToConstraintSetId(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mApplyToConstraintSetId:I

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

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public setAttributeId(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    goto/32 :goto_a

    nop

    nop

    :goto_0
    if-ne p1, v2, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    iget v1, p0, Landroidx/constraintlayout/widget/ReactiveGuide;->mAttributeId:I

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

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_8
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintLayout;->getSharedValues()Landroidx/constraintlayout/widget/SharedValues;

    move-result-object v0

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
    const/4 v2, -0x1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, p1, p0}, Landroidx/constraintlayout/widget/SharedValues;->addListener(ILandroidx/constraintlayout/widget/SharedValues$SharedValuesListener;)V

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-ne v1, v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1, p0}, Landroidx/constraintlayout/widget/SharedValues;->removeListener(ILandroidx/constraintlayout/widget/SharedValues$SharedValuesListener;)V

    :goto_f
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setGuidelineBegin(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "margin"
        }
    .end annotation

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ReactiveGuide;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideBegin:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ReactiveGuide;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public setGuidelineEnd(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "margin"
        }
    .end annotation

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guideEnd:I

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ReactiveGuide;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

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

    :goto_4
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ReactiveGuide;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public setGuidelinePercent(F)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ratio"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/ReactiveGuide;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->guidePercent:F

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

    :goto_3
    return-void

    nop

    :goto_4
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/widget/ReactiveGuide;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setVisibility(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method
