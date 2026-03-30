.class public abstract Landroidx/constraintlayout/widget/VirtualLayout;
.super Landroidx/constraintlayout/widget/ConstraintHelper;
.source "VirtualLayout.java"


# instance fields
.field private mApplyElevationOnAttach:Z

.field private mApplyVisibilityOnAttach:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
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
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
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

    :goto_0
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
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

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintHelper;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method protected applyLayoutFeaturesInConstraintSet(Landroidx/constraintlayout/widget/ConstraintLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "container"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/widget/VirtualLayout;->applyLayoutFeatures(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_1

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

    nop

    nop
.end method

.method protected init(Landroid/util/AttributeSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "attrs"
        }
    .end annotation

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_visibility:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2
    if-eq v3, v4, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_14

    nop

    nop

    :goto_4
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_5
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

    :goto_6
    const v1, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x12

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    :goto_a
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_2
    goto/32 :goto_21

    nop

    :goto_b
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x0

    nop

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_22

    nop

    :goto_f
    if-eq v3, v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->getContext()Landroid/content/Context;

    move-result-object v0

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

    nop

    :goto_11
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->init(Landroid/util/AttributeSet;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

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

    :goto_13
    iput-boolean v5, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mApplyElevationOnAttach:Z

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    if-lt v2, v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    :goto_19
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    :goto_1d
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1e
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout_android_elevation:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->ConstraintLayout_Layout:[I

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

    :goto_20
    iput-boolean v5, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mApplyVisibilityOnAttach:Z

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

    :goto_21
    goto/32 :goto_19

    nop

    nop

    :goto_22
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method public onAttachedToWindow()V
    .locals 9

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v6}, Landroidx/constraintlayout/widget/ConstraintLayout;->getViewById(I)Landroid/view/View;

    move-result-object v7

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

    nop

    :goto_3
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_34

    nop

    nop

    :goto_7
    if-nez v7, :cond_0

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

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    :goto_9
    iget-object v6, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mIds:[I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->getVisibility()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->getElevation()F

    move-result v3

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    aget v6, v6, v4

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

    :goto_e
    if-ge v8, v5, :cond_2

    nop

    nop

    nop

    goto/32 :goto_27

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

    :goto_f
    iget-boolean v8, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mApplyVisibilityOnAttach:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_10
    add-float/2addr v8, v3

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_11
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mApplyVisibilityOnAttach:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_14
    instance-of v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_15
    invoke-virtual {v7, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_16
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_17
    const v1, 0x1

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

    :goto_18
    if-nez v8, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    :goto_19
    invoke-virtual {v7}, Landroid/view/View;->getTranslationZ()F

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1a
    move-object v1, v0

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v1, :cond_4

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

    :cond_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-gtz v8, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1d

    nop

    nop

    :goto_1d
    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

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

    :goto_1e
    const/4 v8, 0x0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lt v4, v6, :cond_6

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-boolean v0, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mApplyElevationOnAttach:Z

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_4

    nop

    nop

    :goto_22
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_23
    const/16 v5, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_24
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

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

    :goto_25
    if-nez v8, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_7
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v7, v8}, Landroid/view/View;->setTranslationZ(F)V

    :goto_27
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_28
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_29
    if-nez v0, :cond_8

    nop

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

    :cond_8
    :goto_2a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget v6, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mCount:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2c
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    return-void

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-ge v4, v5, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-boolean v8, p0, Landroidx/constraintlayout/widget/VirtualLayout;->mApplyElevationOnAttach:Z

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_32
    cmpl-float v8, v3, v8

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

    nop

    nop

    :goto_33
    if-lez v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_a
    goto/32 :goto_5

    nop

    :goto_34
    invoke-super {p0}, Landroidx/constraintlayout/widget/ConstraintHelper;->onAttachedToWindow()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_35
    const v0, 0xa

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
.end method

.method public onMeasure(Landroidx/constraintlayout/core/widgets/VirtualLayout;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "layout",
            "widthMeasureSpec",
            "heightMeasureSpec"
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

    nop
.end method

.method public setElevation(F)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "elevation"
        }
    .end annotation

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->applyLayoutFeatures()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setElevation(F)V

    goto/32 :goto_0

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

    nop

    :goto_0
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintHelper;->setVisibility(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/widget/VirtualLayout;->applyLayoutFeatures()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method
