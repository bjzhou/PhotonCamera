.class public Landroidx/constraintlayout/core/widgets/Guideline;
.super Landroidx/constraintlayout/core/widgets/ConstraintWidget;
.source "Guideline.java"


# static fields
.field public static final HORIZONTAL:I = 0x0

.field public static final RELATIVE_BEGIN:I = 0x1

.field public static final RELATIVE_END:I = 0x2

.field public static final RELATIVE_PERCENT:I = 0x0

.field public static final RELATIVE_UNKNOWN:I = -0x1

.field public static final VERTICAL:I = 0x1


# instance fields
.field protected guidelineUseRtl:Z

.field private mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

.field private mMinimumPosition:I

.field private mOrientation:I

.field protected mRelativeBegin:I

.field protected mRelativeEnd:I

.field protected mRelativePercent:F

.field private resolved:Z


# direct methods
.method public constructor <init>()V
    .locals 4

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;-><init>()V

    goto/32 :goto_12

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mMinimumPosition:I

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->guidelineUseRtl:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

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

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    :goto_c
    if-lt v1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_f
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_11
    array-length v0, v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    const/high16 v0, -0x40800000    # -1.0f

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_14
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0xc

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_19
    aput-object v3, v2, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1d
    goto :goto_1b

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_21
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_22
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

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

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .locals 10

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_0
    goto/32 :goto_31

    nop

    :goto_1
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    if-eqz v6, :cond_1

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-ne v4, v6, :cond_2

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_4
    if-eq v3, v6, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_3
    goto/32 :goto_64

    nop

    nop

    :goto_5
    move v3, v5

    nop

    nop

    :goto_6
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_8
    neg-int v9, v9

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v6, :cond_4

    nop

    goto/32 :goto_24

    nop

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_22

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1, v4, v6, v9, v8}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v1

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

    :goto_11
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_6

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_17
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_18
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    cmpl-float v4, v4, v5

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_1a
    invoke-virtual {p1, v6, v4, v5, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :goto_1b
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_4d

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

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

    :goto_1f
    invoke-static {p1, v4, v5, v6}, Landroidx/constraintlayout/core/LinearSystem;->createRowDimensionPercent(Landroidx/constraintlayout/core/LinearSystem;Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;F)Landroidx/constraintlayout/core/ArrayRow;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-ne v4, v6, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_21
    if-nez v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_7
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_49

    nop

    nop

    :goto_25
    invoke-virtual {p1, v4, v8, v5, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_26
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_27
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_28
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_29
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v5

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_32

    nop

    :goto_2c
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v0, v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v8

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2f
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_30
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_31
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_33
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_4f

    nop

    nop

    :goto_35
    iget v9, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_36
    const/16 v8, 0x8

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

    nop

    :goto_37
    const v1, 0x2

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_38
    invoke-virtual {p1, v4, v6, v9, v8}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)Landroidx/constraintlayout/core/ArrayRow;

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-eq v6, v7, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_23

    nop

    nop

    :goto_3a
    const/4 v4, 0x1

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

    :goto_3b
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_3d
    if-nez v3, :cond_9

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

    :cond_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    return-void

    nop

    :goto_3f
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_41
    const/4 v7, 0x5

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_42
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_43
    aget-object v3, v3, v5

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_44
    invoke-virtual {p1, v8, v4, v5, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    :goto_45
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v8

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v4, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_a
    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_49
    move v4, v5

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_6e

    nop

    nop

    :goto_4b
    const/high16 v5, -0x40800000    # -1.0f

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

    :goto_4c
    goto :goto_4e

    nop

    nop

    :goto_4d
    nop

    :goto_4e
    goto/32 :goto_3e

    nop

    nop

    :goto_4f
    iget v4, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->hasFinalValue()Z

    move-result v4

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v8}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getFinalValue()I

    move-result v8

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_53
    sget-object v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p1, v4, v8}, Landroidx/constraintlayout/core/LinearSystem;->addEquality(Landroidx/constraintlayout/core/SolverVariable;I)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p1, v4}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_56
    if-nez v3, :cond_b

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_2e

    nop

    nop

    :goto_57
    const v0, 0x5

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_58
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

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

    :goto_59
    const/4 v6, -0x1

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

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

    :goto_5b
    iput-boolean v5, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

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

    :goto_5c
    invoke-virtual {p1, v4, v8, v5, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5d
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

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

    :goto_5e
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-ne v8, v6, :cond_c

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_60
    if-ne v8, v6, :cond_d

    nop

    goto/32 :goto_78

    nop

    nop

    :cond_d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {p1, v6, v4, v5, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto/32 :goto_1c

    nop

    nop

    :goto_62
    if-nez v4, :cond_e

    nop

    goto/32 :goto_34

    nop

    nop

    :cond_e
    goto/32 :goto_7

    nop

    nop

    :goto_63
    if-nez v3, :cond_f

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_1e

    nop

    nop

    :goto_64
    move v3, v4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iget v8, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_66
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p1, v6, v4, v5, v7}, Landroidx/constraintlayout/core/LinearSystem;->addGreaterThan(Landroidx/constraintlayout/core/SolverVariable;Landroidx/constraintlayout/core/SolverVariable;II)V

    goto/32 :goto_77

    nop

    nop

    :goto_68
    if-nez v4, :cond_10

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    :cond_10
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

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

    :goto_6a
    return-void

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_6c
    iget-boolean v4, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    aget-object v6, v6, v4

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    move v3, v4

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_70
    iget v9, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_71
    if-eqz v0, :cond_11

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :cond_11
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p1, v6}, Landroidx/constraintlayout/core/LinearSystem;->addConstraint(Landroidx/constraintlayout/core/ArrayRow;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_74
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_75
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_76
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/LinearSystem;->createObjectVariable(Ljava/lang/Object;)Landroidx/constraintlayout/core/SolverVariable;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/16 :goto_1b

    nop

    :goto_78
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_79
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_7a
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public allowedInBarrier()Z
    .locals 1

    goto/32 :goto_0

    nop

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

    goto/32 :goto_1

    nop

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

    nop
.end method

.method public copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Ljava/util/HashMap<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    check-cast v0, Landroidx/constraintlayout/core/widgets/Guideline;

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
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1c

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_9
    move-object v0, p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_c
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/Guideline;->setOrientation(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    iget-boolean v1, v0, Landroidx/constraintlayout/core/widgets/Guideline;->guidelineUseRtl:Z

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->guidelineUseRtl:Z

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    iget v1, v0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_12
    const v1, 0xd

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

    :goto_13
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

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

    :goto_14
    rem-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->copy(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Ljava/util/HashMap;)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_16
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    nop

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

    nop
.end method

.method public cyclePosition()V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto :goto_a

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    :goto_4
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

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

    :goto_6
    const v0, 0x6

    nop

    goto/32 :goto_b

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

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->inferRelativeBeginPosition()V

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    const v1, 0xe

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

    :goto_c
    if-ne v0, v1, :cond_0

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->inferRelativePercentPosition()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_19

    nop

    :goto_f
    cmpl-float v0, v0, v2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

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

    :goto_11
    const/4 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    const/high16 v2, -0x40800000    # -1.0f

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

    :goto_13
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->inferRelativeEndPosition()V

    goto/32 :goto_0

    nop

    nop

    :goto_14
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    :goto_16
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getAnchor()Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
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
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

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
.end method

.method public getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    sget-object v0, Landroidx/constraintlayout/core/widgets/Guideline$1;->$SwitchMap$androidx$constraintlayout$core$widgets$ConstraintAnchor$Type:[I

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2
    aget v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    return-object v1

    nop

    nop

    :pswitch_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

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

    :goto_a
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_17

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    return-object v0

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    const v0, 0x1c

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_12
    if-eq v0, v2, :cond_1

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    nop

    nop

    packed-switch v0, :pswitch_data_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_e

    nop

    :goto_15
    const/4 v2, 0x1

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

    :goto_16
    return-object v0

    nop

    nop

    :goto_17
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->ordinal()I

    move-result v1

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

    :goto_19
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getOrientation()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return v0

    nop
.end method

.method public getRelativeBegin()I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

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
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

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
.end method

.method public getRelativeBehaviour()I
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

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

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    cmpl-float v0, v0, v1

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

    :goto_b
    return v0

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    :goto_d
    const/high16 v1, -0x40800000    # -1.0f

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

    :goto_e
    if-ne v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    if-ne v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_11
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x9

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    return v0

    nop

    nop

    :goto_15
    goto/32 :goto_4

    nop

    nop

    :goto_16
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_19
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1a
    if-lez v0, :cond_2

    nop

    goto/32 :goto_3

    nop

    :cond_2
    goto/32 :goto_2

    nop

    :goto_1b
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop
.end method

.method public getRelativeEnd()I
    .locals 1

    goto/32 :goto_1

    nop

    nop

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
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

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

.method public getRelativePercent()F
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "Guideline"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method inferRelativeBeginPosition()V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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

    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getY()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_8
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

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

    :goto_9
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getX()I

    move-result v0

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

    :goto_a
    const v0, 0x9

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

    :goto_b
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuideBegin(I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method inferRelativeEndPosition()V
    .locals 3

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    sub-int v0, v1, v2

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuideEnd(I)V

    goto/32 :goto_5

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    if-eqz v1, :cond_0

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

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_9
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getX()I

    move-result v1

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

    :goto_a
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getY()I

    move-result v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    const v1, 0x8

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v0

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

    :goto_e
    sub-int/2addr v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v1

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

    :goto_12
    const v0, 0xa

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_15

    nop

    :goto_14
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method inferRelativePercentPosition()V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    div-float/2addr v0, v1

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

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    div-float v0, v1, v2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x6

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v2

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuidePercent(F)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    int-to-float v2, v2

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

    nop

    :goto_c
    const v0, 0x16

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    :goto_f
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_11
    if-eqz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getY()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_15
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getX()I

    move-result v0

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
.end method

.method public isPercent()Z
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 v1, -0x40800000    # -1.0f

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

    :goto_1
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_15

    nop

    :goto_6
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    :goto_8
    return v0

    nop

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x20

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x6

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_12
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x0

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

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

    :goto_17
    cmpl-float v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public isResolvedHorizontally()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public isResolvedVertically()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

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

.method public setFinalValue(I)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->setFinalValue(I)V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

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

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->resolved:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public setGuideBegin(I)V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-gt p1, v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    :goto_7
    const v1, 0x17

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    const/high16 v1, -0x40800000    # -1.0f

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_d
    const/4 v0, -0x1

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

    :goto_e
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x12

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop
.end method

.method public setGuideEnd(I)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

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
    goto/32 :goto_7

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_5
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-gt p1, v0, :cond_1

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

    :cond_1
    goto/32 :goto_c

    nop

    nop

    :goto_9
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    const v0, 0x6

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

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public setGuidePercent(F)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 v0, -0x40800000    # -1.0f

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeBegin:I

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativePercent:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    cmpl-float v0, p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    if-gtz v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mRelativeEnd:I

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setGuidePercent(I)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const/high16 v1, 0x42c80000    # 100.0f

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_a

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    int-to-float v0, p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_8
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setGuidePercent(F)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0xd

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

    :goto_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    div-float/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method public setMinimumPosition(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mMinimumPosition:I

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

    nop
.end method

.method public setOrientation(I)V
    .locals 4

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_0
    if-eq v0, p1, :cond_0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3
    goto :goto_8

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a
    aput-object v3, v2, v1

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

    :goto_b
    iput p1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x1

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_e
    array-length v0, v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_f
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x20

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    :goto_14
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_6

    nop

    nop

    :goto_16
    goto :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_19
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1c
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1d
    const/4 v1, 0x0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lt v1, v0, :cond_1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_21
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    :goto_23
    if-eq v0, v1, :cond_3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_24
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    :goto_26
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchors:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public updateFromSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .locals 4

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setY(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2
    if-eq v1, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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
    return-void

    nop

    nop

    :goto_5
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    const/4 v3, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/Guideline;->setY(I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_17

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/Guideline;->setWidth(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Guideline;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    iget v1, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mOrientation:I

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

    nop

    :goto_14
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v1

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

    :goto_15
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/Guideline;->setHeight(I)V

    :goto_17
    goto/32 :goto_4

    nop

    nop

    :goto_18
    invoke-virtual {p0, v1}, Landroidx/constraintlayout/core/widgets/Guideline;->setHeight(I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    :goto_1a
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Guideline;->mAnchor:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v1, 0x6

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/Guideline;->setX(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/widgets/Guideline;->setX(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, v3}, Landroidx/constraintlayout/core/widgets/Guideline;->setWidth(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop
.end method
