.class public Landroidx/constraintlayout/motion/widget/MotionHelper;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "MotionHelper.java"

# interfaces
.implements Landroidx/constraintlayout/motion/widget/MotionHelperInterface;


# instance fields
.field private mProgress:F

.field private mUseOnHide:Z

.field private mUseOnShow:Z

.field protected views:[Landroid/view/View;


# direct methods
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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnShow:Z

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnHide:Z

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

    :goto_4
    return-void

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnShow:Z

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnHide:Z

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;->init(Landroid/util/AttributeSet;)V

    goto/32 :goto_3

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

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnHide:Z

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnShow:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, p2}, Landroidx/constraintlayout/motion/widget/MotionHelper;->init(Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public getProgress()F
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mProgress:F

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

    :goto_1
    return v0

    nop
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x0

    nop

    nop

    :goto_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionHelper_onHide:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_b
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnShow:Z

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->MotionHelper:[I

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_e
    if-eq v3, v4, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x1b

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

    :goto_12
    iput-boolean v4, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnShow:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_16
    goto/16 :goto_6

    nop

    nop

    :goto_17
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-boolean v4, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnHide:Z

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1a
    iget-boolean v4, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnHide:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1b
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1c
    if-lt v2, v1, :cond_2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez p1, :cond_3

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

    :cond_3
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eq v3, v4, :cond_4

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1

    nop

    nop

    :goto_22
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_23
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->MotionHelper_onShow:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_25
    goto/32 :goto_f

    nop

    nop
.end method

.method public isDecorator()Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public isUseOnHide()Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnHide:Z

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
    return v0

    nop
.end method

.method public isUsedOnShow()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v0, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mUseOnShow:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public onFinishedMotionScene(Landroidx/constraintlayout/motion/widget/MotionLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "motionLayout"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public onPostDraw(Landroid/graphics/Canvas;)V
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

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public onPreDraw(Landroid/graphics/Canvas;)V
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

    :goto_0
    return-void

    nop

    nop
.end method

.method public onPreSetup(Landroidx/constraintlayout/motion/widget/MotionLayout;Ljava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "controllerMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/motion/widget/MotionLayout;",
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Landroidx/constraintlayout/motion/widget/MotionController;",
            ">;)V"
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

    nop

    nop

    nop

    nop
.end method

.method public onTransitionChange(Landroidx/constraintlayout/motion/widget/MotionLayout;IIF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "startId",
            "endId",
            "progress"
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

.method public onTransitionCompleted(Landroidx/constraintlayout/motion/widget/MotionLayout;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "currentId"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

    nop
.end method

.method public onTransitionStarted(Landroidx/constraintlayout/motion/widget/MotionLayout;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "startId",
            "endId"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public onTransitionTrigger(Landroidx/constraintlayout/motion/widget/MotionLayout;IZF)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "motionLayout",
            "triggerId",
            "positive",
            "progress"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method public setProgress(F)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "progress"
        }
    .end annotation

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_5

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_3
    iget v0, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mCount:I

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast v0, Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_7
    goto :goto_e

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_a
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->getViews(Landroidx/constraintlayout/widget/ConstraintLayout;)[Landroid/view/View;

    move-result-object v0

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

    :goto_c
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->views:[Landroid/view/View;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v3, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(Landroid/view/View;F)V

    :goto_e
    goto/32 :goto_9

    nop

    nop

    :goto_f
    iput p1, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mProgress:F

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

    :goto_10
    goto :goto_1c

    nop

    :goto_11
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lt v2, v1, :cond_0

    nop

    goto/32 :goto_11

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_15
    if-lt v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    :goto_16
    iput-object v0, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->views:[Landroid/view/View;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    invoke-virtual {p0, v1, p1}, Landroidx/constraintlayout/motion/widget/MotionHelper;->setProgress(Landroid/view/View;F)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_2
    goto/32 :goto_18

    nop

    :goto_1b
    const/4 v2, 0x0

    nop

    :goto_1c
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1e
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_11

    nop

    nop

    :goto_20
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_19

    nop

    :goto_23
    rem-int v0, v0, v1

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

    nop

    :goto_24
    const v1, 0x5

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

    :goto_25
    iget v1, p0, Landroidx/constraintlayout/motion/widget/MotionHelper;->mCount:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    instance-of v4, v3, Landroidx/constraintlayout/motion/widget/MotionHelper;

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_27
    aget-object v1, v1, v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_3
    goto/32 :goto_7

    nop

    nop

    :goto_29
    return-void

    nop

    :goto_2a
    goto/32 :goto_22

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/MotionHelper;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2c
    if-gtz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    nop
.end method

.method public setProgress(Landroid/view/View;F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "progress"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop
.end method
