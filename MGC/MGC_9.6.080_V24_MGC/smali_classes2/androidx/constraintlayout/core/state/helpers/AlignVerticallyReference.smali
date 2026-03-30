.class public Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;
.super Landroidx/constraintlayout/core/state/HelperReference;
.source "AlignVerticallyReference.java"


# instance fields
.field private mBias:F


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mBias:F

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

    nop

    :goto_1
    const/high16 v0, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/state/HelperReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    sget-object v0, Landroidx/constraintlayout/core/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/core/state/State$Helper;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public apply()V
    .locals 5

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    iget-object v3, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mBottomToTop:Ljava/lang/Object;

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

    :goto_1
    iget-object v3, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mBottomToBottom:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    :goto_3
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mReferences:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_5
    if-nez v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    if-nez v1, :cond_1

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

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_8
    iget-object v3, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mTopToTop:Ljava/lang/Object;

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

    :goto_9
    const/high16 v4, 0x3f000000    # 0.5f

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_a
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    :goto_b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1e

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v3, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mBottomToTop:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_11
    goto :goto_b

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_18

    nop

    nop

    :goto_13
    iget-object v3, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mBottomToBottom:Ljava/lang/Object;

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

    :goto_14
    goto :goto_b

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v3, :cond_2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_28

    nop

    :goto_18
    sget-object v3, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19
    cmpl-float v4, v3, v4

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_1b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_3

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_27

    nop

    :goto_1f
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->verticalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    :goto_20
    goto/32 :goto_2f

    nop

    nop

    :goto_21
    goto/16 :goto_3

    nop

    :goto_22
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->topToBottom(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_11

    nop

    nop

    :goto_24
    iget-object v3, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mTopToBottom:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_25
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_26
    sget-object v3, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_27
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_4

    nop

    nop

    :goto_29
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->clearVertical()Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_2c
    if-nez v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1f

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
    goto/32 :goto_17

    nop

    nop

    :goto_2f
    goto/16 :goto_1b

    nop

    nop

    :goto_30
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v1, 0x16

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->bottomToTop(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v3, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mTopToTop:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_34
    if-nez v3, :cond_5

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v3, :cond_6

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mState:Landroidx/constraintlayout/core/state/State;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget v3, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mBias:F

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

    :goto_38
    iget-object v3, p0, Landroidx/constraintlayout/core/state/helpers/AlignVerticallyReference;->mTopToBottom:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop
.end method
