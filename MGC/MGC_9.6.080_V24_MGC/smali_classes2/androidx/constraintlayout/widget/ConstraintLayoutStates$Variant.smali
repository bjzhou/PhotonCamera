.class Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;
.super Ljava/lang/Object;
.source "ConstraintLayoutStates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/ConstraintLayoutStates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Variant"
.end annotation


# instance fields
.field mConstraintID:I

.field mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

.field mId:I

.field mMaxHeight:F

.field mMaxWidth:F

.field mMinHeight:F

.field mMinWidth:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "parser"
        }
    .end annotation

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_4

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eq v4, v5, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_6
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_heightLessThan:I

    nop

    goto/32 :goto_3e

    nop

    nop

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

    goto/32 :goto_3a

    nop

    nop

    :cond_1
    goto/32 :goto_39

    nop

    :goto_8
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_9
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

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

    :goto_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    nop

    nop

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

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_e
    if-nez v7, :cond_2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_f
    iput-object v7, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintSet:Landroidx/constraintlayout/widget/ConstraintSet;

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

    :goto_10
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_12
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_heightMoreThan:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_16
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_17
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->Variant:[I

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_18
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_19
    const v1, 0x9

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v7}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v7, "layout"

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1d
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_21
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_22
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

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

    :goto_26
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_28
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    nop

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

    nop

    :goto_29
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

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

    :goto_2a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_2e
    const v0, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_2f
    iget v7, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_30
    if-eq v4, v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v7, p1, v8}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroid/content/Context;I)V

    :goto_34
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-eq v4, v5, :cond_4

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_50

    nop

    nop

    :goto_36
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_52

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v5, "ConstraintLayoutStates"

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_3c
    if-eq v4, v5, :cond_5

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

    :cond_5
    goto/32 :goto_22

    nop

    nop

    :goto_3d
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Variant_constraints:I

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_3e
    if-eq v4, v5, :cond_6

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_6
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_widthMoreThan:I

    nop

    nop

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

    :goto_40
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->Variant_region_widthLessThan:I

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_41
    iget v8, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_42
    new-instance v7, Landroidx/constraintlayout/widget/ConstraintSet;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_43
    iput v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_2a

    nop

    nop

    :goto_46
    iget v6, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mConstraintID:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_47
    if-lt v3, v2, :cond_7

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_49
    const/high16 v0, 0x7fc00000    # Float.NaN

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_3a

    nop

    nop

    :goto_4c
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_4d
    const-string v6, "Unknown tag"

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

    :goto_4e
    iput v5, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4f
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_50
    iget v5, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_51
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :goto_52
    goto/32 :goto_47

    nop

    nop

    :goto_53
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

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
.end method


# virtual methods
.method match(FF)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthDp",
            "heightDp"
        }
    .end annotation

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_0
    if-gtz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_3
    return v1

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_22

    nop

    nop

    :goto_5
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_7
    cmpl-float v0, p1, v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_9
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_d
    return v1

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_24

    nop

    nop

    :goto_f
    if-eqz v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_12
    const v1, 0x19

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_13
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

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

    :goto_14
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinWidth:F

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    return v1

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_c

    nop

    nop

    :goto_1b
    const v0, 0x16

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-ltz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1d
    cmpg-float v0, p2, v0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1e
    cmpl-float v0, p2, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1f
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_10

    nop

    :goto_20
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_21
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxHeight:F

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-gtz v0, :cond_6

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_6
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_24
    const/4 v0, 0x1

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

    nop

    nop

    :goto_25
    if-ltz v0, :cond_7

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5

    nop

    nop

    :goto_26
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMinHeight:F

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

    nop

    :goto_27
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_28
    cmpg-float v0, p1, v0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_29
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayoutStates$Variant;->mMaxWidth:F

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v1, 0x0

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

    :goto_2b
    if-eqz v0, :cond_8

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_13

    nop

    nop
.end method
