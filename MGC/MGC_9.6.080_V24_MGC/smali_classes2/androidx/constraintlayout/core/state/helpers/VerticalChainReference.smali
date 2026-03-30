.class public Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;
.super Landroidx/constraintlayout/core/state/helpers/ChainReference;
.source "VerticalChainReference.java"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/state/helpers/ChainReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Landroidx/constraintlayout/core/state/State$Helper;->VERTICAL_CHAIN:Landroidx/constraintlayout/core/state/State$Helper;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public apply()V
    .locals 7

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_0
    iget v2, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mBias:F

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    move-result-object v5

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

    :goto_2
    goto/16 :goto_63

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_4
    iget v6, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mMarginTopGone:I

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mBottomToBottom:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_6
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_0
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mTopToBottom:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mBottomToTop:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/high16 v3, 0x3f000000    # 0.5f

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_e
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mReferences:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_f
    goto/16 :goto_1c

    nop

    :pswitch_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mTopToTop:Ljava/lang/Object;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v3, :cond_3

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_17
    if-eqz v0, :cond_4

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

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->verticalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    :goto_1a
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->setVerticalChainStyle(I)V

    nop

    :goto_1c
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    :goto_1e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->setVerticalChainStyle(I)V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    :goto_21
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_1

    nop

    nop

    :goto_23
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_24
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->clearVertical()Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_7

    nop

    nop

    :goto_27
    move-object v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->setVerticalChainStyle(I)V

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_29
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mTopToTop:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

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

    :goto_2b
    iget v3, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mMarginBottom:I

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v4, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mState:Landroidx/constraintlayout/core/state/State;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_2d
    sget-object v2, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Chain:[I

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_1c

    nop

    nop

    :pswitch_1
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v1, :cond_5

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_31
    sget-object v5, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    :goto_33
    goto/32 :goto_6

    nop

    nop

    :goto_34
    return-void

    nop

    nop

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :goto_35
    goto/32 :goto_66

    nop

    nop

    :goto_36
    if-nez v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    :goto_38
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_39
    iget v2, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mBias:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_3b
    iget v6, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mMarginTop:I

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mBottomToBottom:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget v6, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mMarginTop:I

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

    :goto_3e
    iget-object v3, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mStyle:Landroidx/constraintlayout/core/state/State$Chain;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez v5, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_7
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_1c

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_43
    if-nez v2, :cond_8

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_8
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    cmpl-float v2, v2, v3

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_46
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mReferences:Ljava/util/ArrayList;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v4, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mState:Landroidx/constraintlayout/core/state/State;

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_4a
    const/4 v2, 0x0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_33

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_4d
    goto/16 :goto_38

    nop

    nop

    :goto_4e
    goto/32 :goto_65

    nop

    nop

    :goto_4f
    if-nez v5, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v4}, Landroidx/constraintlayout/core/state/ConstraintReference;->getKey()Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v4

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

    nop

    :goto_52
    iget v3, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mMarginBottomGone:I

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_53
    goto/16 :goto_38

    nop

    :goto_54
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_56
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_4d

    nop

    nop

    :goto_59
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v4, v3}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v4

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v3}, Landroidx/constraintlayout/core/state/State$Chain;->ordinal()I

    move-result v3

    nop

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

    :goto_5c
    const v1, 0x11

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

    :goto_5d
    goto/16 :goto_33

    nop

    nop

    :goto_5e
    goto/32 :goto_31

    nop

    nop

    :goto_5f
    if-eqz v0, :cond_a

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_27

    nop

    nop

    :goto_60
    move-object v1, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_62
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_44

    nop

    nop

    :goto_64
    iget v6, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mMarginTopGone:I

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_65
    sget-object v2, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_66
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v5, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mTopToBottom:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_68
    iget v3, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mMarginBottomGone:I

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_69
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mBottomToTop:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->marginGone(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_53

    nop

    nop

    :goto_6c
    iget v3, p0, Landroidx/constraintlayout/core/state/helpers/VerticalChainReference;->mMarginBottom:I

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    if-lez v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_56

    nop

    :goto_6e
    aget v2, v2, v3

    nop

    nop

    nop

    nop

    nop

    packed-switch v2, :pswitch_data_0

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_70
    invoke-virtual {v5, v6}, Landroidx/constraintlayout/core/state/ConstraintReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v5

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop
.end method
