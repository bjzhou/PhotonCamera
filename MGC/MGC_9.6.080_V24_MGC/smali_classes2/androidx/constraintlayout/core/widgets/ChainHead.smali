.class public Landroidx/constraintlayout/core/widgets/ChainHead;
.super Ljava/lang/Object;
.source "ChainHead.java"


# instance fields
.field private mDefined:Z

.field protected mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field protected mFirstMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field protected mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field protected mHasComplexMatchWeights:Z

.field protected mHasDefinedWeights:Z

.field protected mHasRatio:Z

.field protected mHasUndefinedWeights:Z

.field protected mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field private mIsRtl:Z

.field protected mLast:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field protected mLastMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field protected mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

.field mOptimizable:Z

.field private mOrientation:I

.field mTotalMargins:I

.field mTotalSize:I

.field protected mTotalWeight:F

.field mVisibleWidgets:I

.field protected mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field

.field protected mWidgetsCount:I

.field protected mWidgetsMatchCount:I


# direct methods
.method private 69ba798a1c1cd2b0697df041eda42afbm()V
    .locals 13

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_0
    iget v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    :goto_1
    if-eqz v8, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-boolean v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOptimizable:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_3
    if-eq v8, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :cond_1
    :goto_4
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_5
    invoke-static {v4, v10}, Landroidx/constraintlayout/core/widgets/ChainHead;->isMatchConstraintEqualityCandidate(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z

    move-result v10

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v8, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_2
    :goto_7
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_8
    if-ne v8, v9, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int/2addr v8, v9

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_a
    aput-object v4, v7, v8

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_b2

    nop

    nop

    :goto_c
    if-ltz v10, :cond_4

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_e
    iput v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_f
    iget v9, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_10
    iget-object v7, v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    :goto_11
    add-int/lit8 v10, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_12
    add-int/2addr v8, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_13
    const/4 v10, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_14
    add-int/lit8 v10, v0, 0x1

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_15
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasComplexMatchWeights:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_16
    iget v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_17
    add-int/2addr v8, v9

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_c2

    nop

    nop

    :goto_19
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    aget-object v7, v7, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :goto_1b
    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-boolean v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOptimizable:Z

    nop

    :goto_1d
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_1e
    cmpg-float v10, v8, v9

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1f
    iget-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasDefinedWeights:Z

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_20
    iget v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v8, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_5
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

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

    :goto_23
    if-nez v7, :cond_6

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_6
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    mul-int/2addr v0, v1

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_51

    nop

    nop

    :goto_26
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_27
    sub-int/2addr v8, v1

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_28
    aget-object v9, v9, v0

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_29
    const/4 v9, 0x0

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iput v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalMargins:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_2b
    add-int/2addr v8, v9

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iput v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

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

    :goto_2d
    iput-object v4, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_bc

    nop

    nop

    :goto_2f
    aget-object v8, v8, v9

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v10, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_31
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_33
    iget v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalMargins:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_35
    iput v10, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_37
    iput-object v10, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    nop

    :goto_38
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_75

    nop

    nop

    :goto_3b
    add-int/2addr v8, v3

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

    :goto_3c
    iget v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinWidth:I

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_3d
    iget v11, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3e
    const/16 v9, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3f
    aput-object v4, v10, v11

    nop

    nop

    :goto_40
    goto/32 :goto_76

    nop

    nop

    nop

    :goto_41
    aget v8, v8, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_42
    iget v9, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_43
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget v9, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-ne v8, v4, :cond_7

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :cond_7
    :goto_47
    goto/32 :goto_32

    nop

    nop

    :goto_48
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-gtz v10, :cond_8

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    if-eqz v10, :cond_9

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_4b
    cmpl-float v10, v8, v9

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_4d
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasRatio:Z

    nop

    nop

    nop

    :goto_4e
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    if-nez v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_e8

    nop

    nop

    :goto_50
    const/4 v5, 0x0

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_53
    aget-object v9, v9, v10

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_54
    if-eqz v1, :cond_b

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_ea

    nop

    nop

    :goto_55
    aput-object v10, v8, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    if-nez v8, :cond_c

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    aget-object v1, v1, v9

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_59
    iget v1, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_c6

    nop

    nop

    :goto_5c
    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mNextChainWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_5d
    if-nez v10, :cond_d

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_d
    goto/32 :goto_b3

    nop

    nop

    :goto_5e
    iget v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsMatchCount:I

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_5f
    iget v9, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxWidth:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    :goto_62
    if-nez v10, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_e
    goto/32 :goto_1e

    nop

    nop

    :goto_63
    iget v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mVisibleWidgets:I

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-nez v5, :cond_f

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_8f

    nop

    nop

    :goto_66
    iput v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalMargins:I

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {v4, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    aget-object v9, v9, v0

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_69
    iput-object v4, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mLast:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

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

    nop

    nop

    :goto_6d
    if-nez v8, :cond_10

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_10
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iput-object v4, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_6f
    iget-object v10, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_70
    if-lez v0, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_d2

    nop

    :goto_71
    aget v8, v8, v10

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_72
    if-eq v8, v9, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    :cond_12
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    goto/16 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_d3

    nop

    nop

    :goto_76
    iput-object v4, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_78
    iget-object v10, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_79
    goto/16 :goto_e7

    nop

    :goto_7a
    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    :goto_7b
    if-nez v1, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_13
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMaxHeight:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_7d
    const v0, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasUndefinedWeights:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_7f
    iget v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_80
    aget-object v8, v8, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    :goto_81
    iput v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    :goto_83
    add-int/2addr v8, v9

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_84
    const v1, 0x18

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mOwner:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_86
    goto/16 :goto_1d

    nop

    nop

    :goto_87
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iget-object v10, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWeightedMatchConstraintsWidgets:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_89
    if-nez v1, :cond_14

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iget v10, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8b
    aget-object v1, v1, v0

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_8c
    if-nez v8, :cond_15

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    iget v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_8f
    move-object v4, v5

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    :goto_90
    goto/16 :goto_ad

    nop

    nop

    nop

    nop

    :goto_91
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    new-instance v10, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_93
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_94
    add-int/2addr v8, v9

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_96
    aget v11, v11, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    :goto_97
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_99
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v8

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_9a
    if-nez v1, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    if-ne v2, v4, :cond_17

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

    :cond_17
    goto/32 :goto_10

    nop

    nop

    :goto_9c
    aget v8, v8, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_9d
    iget v9, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_9e
    iput v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_9f
    iput-boolean v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOptimizable:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_a0
    iput-boolean v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOptimizable:Z

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_a1
    iput-object v4, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_a2
    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    iget-object v11, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mWeight:[F

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHasDefinedWeights:Z

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iget v10, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

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

    nop

    nop

    :goto_a7
    iget v10, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v9}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v9

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

    nop

    :goto_aa
    iput v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    nop

    nop

    :goto_ab
    goto/32 :goto_69

    nop

    nop

    :goto_ac
    move v3, v7

    nop

    nop

    :goto_ad
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_ae
    if-eqz v10, :cond_18

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_af
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_b0
    aget-object v8, v8, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_b1
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_b2
    move-object v2, v4

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_b3
    iget-object v10, v10, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_b4
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b5
    if-nez v8, :cond_19

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_19
    :goto_b6
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_b7
    iget v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_b8
    if-eqz v6, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    add-int/lit8 v9, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_bb
    cmpl-float v8, v8, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_bc
    iget-object v10, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_bd
    goto/16 :goto_98

    nop

    nop

    nop

    :goto_be
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_bf
    iput-object v4, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    goto/32 :goto_6e

    nop

    nop

    :goto_c1
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    :goto_c2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_c3
    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :goto_c4
    if-nez v8, :cond_1b

    nop

    goto/32 :goto_87

    nop

    :cond_1b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    if-eqz v8, :cond_1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_c6
    iget v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintMinHeight:I

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    :goto_c7
    aget v8, v8, v10

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_c8
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    iget v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_ca
    if-ne v8, v10, :cond_1d

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

    :cond_1d
    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

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

    :goto_cc
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_cd
    if-nez v1, :cond_1e

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_ce
    if-eqz v8, :cond_1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    :cond_1f
    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListNextMatchConstraintsWidget:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_d0
    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

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

    :goto_d1
    iget-object v8, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_d2
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_d5
    add-int/2addr v8, v3

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d6
    iget-object v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

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

    :goto_d7
    iget v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mWidgetsCount:I

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_d8
    iput-boolean v3, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOptimizable:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_d9
    add-float/2addr v10, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_da
    iput-boolean v7, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOptimizable:Z

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_db
    iget v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_dc
    iput v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mVisibleWidgets:I

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    const/4 v10, 0x0

    nop

    goto/32 :goto_f5

    nop

    nop

    :goto_de
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_df
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    :goto_e0
    iget-object v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListAnchors:[Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_e1
    iget-object v8, v8, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_e2
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    sub-int/2addr v8, v1

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    if-eqz v8, :cond_20

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    aget-object v9, v9, v10

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    const/4 v6, 0x1

    nop

    :goto_e7
    goto/32 :goto_bd

    nop

    nop

    :goto_e8
    iget v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    add-int/lit8 v8, v0, 0x1

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

    :goto_ea
    iget-boolean v1, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mIsRtl:Z

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    const/4 v1, 0x2

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

    :goto_ec
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->mTarget:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_ed
    iput v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    nop

    nop

    nop

    nop

    :goto_ee
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    iput v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalSize:I

    nop

    nop

    nop

    nop

    :goto_f0
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    iget v12, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    nop

    goto/32 :goto_96

    nop

    nop

    :goto_f3
    iget-object v8, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    iget v10, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_f5
    aput-object v10, v8, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_f6
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_f7
    if-ne v8, v9, :cond_21

    nop

    goto/32 :goto_f0

    nop

    nop

    :cond_21
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    invoke-virtual {v4, v9}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getLength(I)I

    move-result v9

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

    :goto_f9
    iget v10, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

    nop

    goto/32 :goto_71

    nop

    nop
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;IZ)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

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

    :goto_1
    iput p2, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mOrientation:I

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
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    iput v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iput-boolean p3, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mIsRtl:Z

    nop

    nop

    goto/32 :goto_8

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

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mIsRtl:Z

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

    :goto_8
    return-void

    nop

    nop

    nop

    nop
.end method

.method private static isMatchConstraintEqualityCandidate(Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z
    .locals 2

    goto/32 :goto_6

    nop

    nop

    :goto_0
    if-eq v0, v1, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_14

    nop

    :goto_3
    aget-object v0, v0, p1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    :goto_5
    if-ne v0, v1, :cond_2

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x19

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

    :goto_7
    if-eq v0, v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    const/4 v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

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
    const/4 v0, 0x1

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

    :goto_e
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

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

    :goto_f
    const/16 v1, 0x8

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mListDimensionBehaviors:[Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto :goto_19

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    aget v0, v0, p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

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

    :goto_17
    const v1, 0x15

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v0, 0x0

    nop

    nop

    :goto_19
    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    return v0

    nop

    :goto_1b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    aget v0, v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop
.end method


# virtual methods
.method public define()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mDefined:Z

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/ChainHead;->69ba798a1c1cd2b0697df041eda42afbm()V

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mDefined:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    if-eqz v0, :cond_0

    nop

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

    nop
.end method

.method public getFirst()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirst:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

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

.method public getFirstMatchConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

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
    return-object v0

    nop
.end method

.method public getFirstVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mFirstVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public getHead()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mHead:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop
.end method

.method public getLast()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mLast:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

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

    :goto_1
    return-object v0

    nop

    nop

    nop
.end method

.method public getLastMatchConstraintWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastMatchConstraintWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop
.end method

.method public getLastVisibleWidget()Landroidx/constraintlayout/core/widgets/ConstraintWidget;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mLastVisibleWidget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop
.end method

.method public getTotalWeight()F
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
    iget v0, p0, Landroidx/constraintlayout/core/widgets/ChainHead;->mTotalWeight:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
