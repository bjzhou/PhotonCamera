.class public Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;
.super Landroidx/constraintlayout/core/state/helpers/ChainReference;
.source "HorizontalChainReference.java"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Landroidx/constraintlayout/core/state/State$Helper;->HORIZONTAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    nop

    goto/32 :goto_2

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

    :goto_2
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/state/helpers/ChainReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public apply()V
    .locals 7

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mEndToEnd:Ljava/lang/Object;

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    :goto_3
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_7c

    nop

    nop

    :goto_5
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mRightToLeft:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move-object v0, v4

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mLeftToRight:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v3}, Landroidx/constraintlayout/core/state/State$Chain;->ordinal()I

    move-result v3

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_9
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v3, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginEnd:I

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v2, :cond_0

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v5, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    :cond_1
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

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

    :goto_e
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mStartToStart:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v6, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginStartGone:I

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_11
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v3, :cond_2

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v3, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mStyle:Landroidx/constraintlayout/core/state/State$Chain;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :cond_3
    goto/32 :goto_4c

    nop

    :goto_15
    goto/16 :goto_3

    nop

    :goto_16
    goto/32 :goto_7

    nop

    nop

    :goto_17
    goto/16 :goto_89

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_19
    sget-object v2, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_1c
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v5

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v6, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginLeft:I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_20
    iget v6, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginStart:I

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    :cond_4
    goto/32 :goto_96

    nop

    nop

    :goto_22
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->horizontalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    :goto_23
    goto/32 :goto_82

    nop

    nop

    :goto_24
    move-object v1, v4

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mEndToStart:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_26
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_27
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_29
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mRightToRight:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_2a
    cmpl-float v2, v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2b
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mEndToEnd:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_2c
    if-nez v2, :cond_5

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_69

    nop

    nop

    :goto_2d
    if-nez v5, :cond_6

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v4, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mState:Landroidx/constraintlayout/core/state/State;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mStartToEnd:Ljava/lang/Object;

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

    :goto_30
    if-nez v2, :cond_7

    nop

    goto/32 :goto_3c

    nop

    :cond_7
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v2, :cond_8

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_8
    goto/32 :goto_5

    nop

    nop

    :goto_33
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v4, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mState:Landroidx/constraintlayout/core/state/State;

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

    :goto_35
    iget v3, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginEnd:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_38
    iget v3, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginRightGone:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    :goto_39
    iget v6, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginLeftGone:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    goto/16 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_19

    nop

    nop

    :goto_3d
    const/4 v2, 0x1

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_92

    nop

    :goto_40
    goto/32 :goto_81

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_8f

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_42
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_43
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v5

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/high16 v3, 0x3f000000    # 0.5f

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_45
    sget-object v5, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_46
    aget v2, v2, v3

    nop

    nop

    nop

    packed-switch v2, :pswitch_data_0

    goto/32 :goto_36

    nop

    nop

    :goto_47
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_48
    iget v6, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginStartGone:I

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

    :goto_49
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->setHorizontalChainStyle(I)V

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_7b

    nop

    nop

    :goto_4d
    goto/32 :goto_d

    nop

    nop

    :goto_4e
    iget v6, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginStart:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_4f
    goto/16 :goto_8f

    nop

    nop

    :pswitch_2
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_76

    nop

    :goto_51
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_52
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mLeftToLeft:Ljava/lang/Object;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mReferences:Ljava/util/ArrayList;

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->clearHorizontal()Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_56
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mRightToLeft:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_58
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_59
    if-eqz v0, :cond_a

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_a
    goto/32 :goto_6

    nop

    nop

    :goto_5a
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mRightToRight:Ljava/lang/Object;

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

    nop

    :goto_5b
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mEndToStart:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget v6, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginLeftGone:I

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_5f
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

    :goto_60
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget v3, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginEndGone:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    move-result-object v5

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

    nop

    :goto_63
    iget v6, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginLeft:I

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-nez v2, :cond_b

    nop

    nop

    goto/32 :goto_66

    nop

    :cond_b
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_65
    goto/16 :goto_89

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_67
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_69
    iget v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mBias:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_6a
    if-nez v5, :cond_c

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    :cond_c
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_6d
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mStartToStart:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    if-nez v5, :cond_d

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_95

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->setHorizontalChainStyle(I)V

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget v3, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginRightGone:I

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

    nop

    nop

    :goto_71
    goto/16 :goto_89

    nop

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_74
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    :goto_76
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mStartToEnd:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_78
    iget v3, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginRight:I

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget v3, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginRight:I

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    return-void

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch

    :goto_7b
    goto/32 :goto_1

    nop

    nop

    :goto_7c
    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iget v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mBias:F

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mLeftToLeft:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_7f
    iget v3, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mMarginEndGone:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_80
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_81
    if-nez v1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    :cond_e
    goto/32 :goto_5c

    nop

    nop

    :goto_82
    sget-object v2, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Chain:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_3b

    nop

    nop

    :goto_84
    goto/16 :goto_3

    nop

    nop

    :goto_85
    goto/32 :goto_45

    nop

    nop

    :goto_86
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    :goto_89
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_67

    nop

    nop

    :goto_8d
    if-nez v3, :cond_f

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :cond_f
    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->setHorizontalChainStyle(I)V

    nop

    :goto_8f
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_90
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    :goto_92
    goto/32 :goto_42

    nop

    nop

    :goto_93
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    :goto_94
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_95
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mLeftToRight:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_96
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_97
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_98
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/HorizontalChainReference;->mReferences:Ljava/util/ArrayList;

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop
.end method
