.class Landroidx/constraintlayout/widget/StateSet$State;
.super Ljava/lang/Object;
.source "StateSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/constraintlayout/widget/StateSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field mConstraintID:I

.field mId:I

.field mIsLayout:Z

.field mVariants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/widget/StateSet$Variant;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 8
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

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_4
    if-eq v4, v5, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->State_android_id:I

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eq v4, v5, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_1
    goto/32 :goto_32

    nop

    nop

    :goto_8
    goto/16 :goto_1e

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput v5, p0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    iput-boolean v0, p0, Landroidx/constraintlayout/widget/StateSet$State;->mIsLayout:Z

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1c

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

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

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

    :goto_11
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_e

    nop

    nop

    :goto_12
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2f

    nop

    :goto_15
    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_16
    iput v5, p0, Landroidx/constraintlayout/widget/StateSet$State;->mId:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v0, -0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget v5, Landroidx/constraintlayout/widget/R$styleable;->State_constraints:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v5, p0, Landroidx/constraintlayout/widget/StateSet$State;->mId:I

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

    :goto_1a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

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

    :goto_1c
    iput v0, p0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1d
    iput-boolean v7, p0, Landroidx/constraintlayout/widget/StateSet$State;->mIsLayout:Z

    nop

    :goto_1e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1f
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_21
    sget-object v1, Landroidx/constraintlayout/widget/R$styleable;->State:[I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_1

    nop

    :goto_23
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

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

    :goto_25
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_27
    iget v6, p0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

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

    :goto_28
    const-string v7, "layout"

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

    :goto_29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v7, 0x1

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_2b
    if-lt v3, v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget v7, p0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v7, :cond_4

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2a

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_32
    iget v5, p0, Landroidx/constraintlayout/widget/StateSet$State;->mConstraintID:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_35
    iput-object v0, p0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop
.end method


# virtual methods
.method add(Landroidx/constraintlayout/widget/StateSet$Variant;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public findMatch(FF)I
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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, -0x1

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

    :goto_1
    goto/32 :goto_e

    nop

    :goto_2
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    invoke-virtual {v1, p1, p2}, Landroidx/constraintlayout/widget/StateSet$Variant;->match(FF)Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

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

    :goto_5
    const v1, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

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

    :goto_7
    if-lt v0, v1, :cond_0

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
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_12

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v1, Landroidx/constraintlayout/widget/StateSet$Variant;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0xb

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

    :goto_c
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_d

    nop

    :goto_d
    goto/32 :goto_18

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return v0

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, p0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

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

    :goto_16
    iget-object v1, p0, Landroidx/constraintlayout/widget/StateSet$State;->mVariants:Ljava/util/ArrayList;

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

    :goto_17
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

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
.end method
