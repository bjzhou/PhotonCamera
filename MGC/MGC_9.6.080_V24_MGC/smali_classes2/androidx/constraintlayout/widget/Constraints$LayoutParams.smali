.class public Landroidx/constraintlayout/widget/Constraints$LayoutParams;
.super Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;
.source "Constraints.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/Constraints;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public alpha:F

.field public applyElevation:Z

.field public elevation:F

.field public rotation:F

.field public rotationX:F

.field public rotationY:F

.field public scaleX:F

.field public scaleY:F

.field public transformPivotX:F

.field public transformPivotY:F

.field public translationX:F

.field public translationY:F

.field public translationZ:F


# direct methods
.method public constructor <init>(II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "width",
            "height"
        }
    .end annotation

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

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

    :goto_2
    const/4 v1, 0x0

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

    :goto_3
    goto/32 :goto_10

    nop

    :goto_4
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_9
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->applyElevation:Z

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

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    const v1, 0x2

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

    :goto_d
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    :goto_12
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_14
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

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

    :goto_16
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

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

    :goto_19
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "c",
            "attrs"
        }
    .end annotation

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_5
    if-eq v3, v4, :cond_0

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_0
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_8
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

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

    :goto_9
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_elevation:I

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

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

    :goto_c
    goto/16 :goto_5c

    nop

    nop

    :goto_d
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_e
    if-eq v3, v4, :cond_1

    nop

    goto/32 :goto_7f

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

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

    :goto_10
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_scaleY:I

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

    :goto_11
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_13
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_14
    if-lt v2, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_16
    if-ge v4, v5, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_17
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_transformPivotX:I

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_1a
    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotation:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1c
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1d
    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_1e
    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

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

    :goto_21
    goto/16 :goto_5c

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_9

    nop

    nop

    :goto_23
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_26
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_27
    if-eq v3, v4, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    :cond_4
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_5c

    nop

    :goto_29
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-eq v3, v4, :cond_5

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_2b
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_5c

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_41

    nop

    nop

    :goto_2f
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

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

    :goto_31
    goto/16 :goto_5c

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_33
    if-eq v3, v4, :cond_6

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_35
    iput-boolean v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->applyElevation:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_36
    goto/16 :goto_5c

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_39
    if-eq v3, v4, :cond_7

    nop

    goto/32 :goto_22

    nop

    :cond_7
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_3a
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotationY:I

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_5c

    nop

    :goto_3c
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_3d
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

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

    :goto_3e
    goto/16 :goto_5c

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_40
    const/4 v2, 0x0

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_42
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_scaleX:I

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

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

    :goto_44
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_47
    if-eq v3, v4, :cond_8

    nop

    goto/32 :goto_69

    nop

    nop

    :cond_8
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_48
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_transformPivotY:I

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_4a
    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4b
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_4c
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationX:I

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_4d
    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_4e
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_51
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-eq v3, v4, :cond_9

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

    :cond_9
    goto/32 :goto_66

    nop

    nop

    nop

    :goto_53
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-eq v3, v4, :cond_a

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_55
    if-eq v3, v4, :cond_b

    nop

    goto/32 :goto_d

    nop

    :cond_b
    goto/32 :goto_76

    nop

    nop

    nop

    :goto_56
    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_58
    const v1, 0x7

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_4

    nop

    :goto_5a
    goto/32 :goto_5e

    nop

    nop

    :goto_5b
    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_5d
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-direct {p0, p1, p2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_5f
    const/16 v5, 0x15

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_60
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationZ:I

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_61
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_alpha:I

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_62
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

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

    nop

    :goto_63
    if-lez v0, :cond_c

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_59

    nop

    :goto_64
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_65
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->applyElevation:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_66
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_67
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_68
    goto/16 :goto_5c

    nop

    :goto_69
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6c
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

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

    nop

    nop

    :goto_6e
    goto/16 :goto_5c

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_70
    if-ge v4, v5, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_2b

    nop

    nop

    :goto_71
    if-eq v3, v4, :cond_e

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_72
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_73
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_translationY:I

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_74
    iput v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

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

    :goto_75
    sget v4, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet_android_rotationX:I

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_76
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->ConstraintSet:[I

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_78
    if-eq v3, v4, :cond_f

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v0, v3, v4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_7b
    iget v4, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_7d
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

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

    :goto_7e
    goto/16 :goto_5c

    nop

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_42

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroidx/constraintlayout/widget/Constraints$LayoutParams;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "source"
        }
    .end annotation

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotY:F

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->alpha:F

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotation:F

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    iput-boolean v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->applyElevation:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->transformPivotX:F

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

    :goto_c
    const v0, 0xd

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_d
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationX:F

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationX:F

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    const v1, 0xf

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleY:F

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput v0, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->scaleX:F

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1

    nop

    :goto_13
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->rotationY:F

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationZ:F

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

    :goto_15
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

    :goto_16
    invoke-direct {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_8

    nop

    nop

    :goto_19
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->elevation:F

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput v1, p0, Landroidx/constraintlayout/widget/Constraints$LayoutParams;->translationY:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop
.end method
