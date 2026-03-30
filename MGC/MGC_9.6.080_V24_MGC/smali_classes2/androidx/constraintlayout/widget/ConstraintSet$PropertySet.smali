.class public Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;
.super Ljava/lang/Object;
.source "ConstraintSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PropertySet"
.end annotation


# instance fields
.field public alpha:F

.field public mApply:Z

.field public mProgress:F

.field public mVisibilityMode:I

.field public visibility:I


# direct methods
.method public constructor <init>()V
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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

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

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

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

    :goto_7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

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

    :goto_8
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method


# virtual methods
.method public copyFrom(Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "src"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

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
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    iget v0, p1, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method fillFromAttributeList(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
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

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_2
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_4
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_5
    goto :goto_9

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->PropertySet_android_visibility:I

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

    :goto_8
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mProgress:F

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_a
    const v0, 0x17

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eq v3, v4, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_e
    goto :goto_9

    nop

    :goto_f
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->PropertySet:[I

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lt v2, v1, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_13
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->PropertySet_android_alpha:I

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_14
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_16
    if-eq v3, v4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_12

    nop

    nop

    :goto_19
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->PropertySet_motionProgress:I

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

    :goto_1a
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->PropertySet_visibilityMode:I

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_1d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

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

    nop

    :goto_22
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_25
    iget v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->alpha:F

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

    :goto_26
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_28
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_3
    goto/32 :goto_22

    nop

    :goto_2b
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->visibility:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2c
    iput v4, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mVisibilityMode:I

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

    :goto_2d
    if-eq v3, v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    aget v4, v4, v5

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/ConstraintSet$PropertySet;->mApply:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_30
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

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

    nop

    :goto_31
    add-int/lit8 v2, v2, 0x1

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

    :goto_32
    if-eq v3, v4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_33
    const v1, 0x14

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_34
    invoke-static {}, Landroidx/constraintlayout/widget/ConstraintSet;->access$200()[I

    move-result-object v4

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

    :goto_35
    goto/32 :goto_23

    nop
.end method
