.class public Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;
.super Landroidx/constraintlayout/core/state/HelperReference;
.source "AlignHorizontallyReference.java"


# instance fields
.field private mBias:F


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    const/high16 v0, 0x3f000000    # 0.5f

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    sget-object v0, Landroidx/constraintlayout/core/state/State$Helper;->ALIGN_VERTICALLY:Landroidx/constraintlayout/core/state/State$Helper;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/state/HelperReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iput v0, p0, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;->mBias:F

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public apply()V
    .locals 5

    goto/32 :goto_15

    nop

    nop

    :goto_0
    if-nez v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    :goto_1
    const v1, 0x13

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    if-nez v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1e

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/high16 v4, 0x3f000000    # 0.5f

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v3, p0, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;->mStartToStart:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2}, Landroidx/constraintlayout/core/state/ConstraintReference;->clearHorizontal()Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_22

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v3, p0, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;->mStartToEnd:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_a
    iget-object v3, p0, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;->mEndToStart:Ljava/lang/Object;

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

    :goto_b
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    :goto_c
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_25

    nop

    nop

    :goto_e
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_35

    nop

    :goto_10
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v3, p0, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;->mEndToEnd:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_12
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v3, p0, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;->mStartToEnd:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;->mState:Landroidx/constraintlayout/core/state/State;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x6

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

    :goto_16
    goto :goto_25

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_13

    nop

    nop

    :goto_18
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_19

    nop

    nop

    :goto_19
    goto :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2d

    nop

    nop

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1c
    iget-object v3, p0, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;->mEndToEnd:Ljava/lang/Object;

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

    nop

    :goto_1d
    if-nez v3, :cond_2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    nop

    :goto_1e
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->horizontalBias(F)Landroidx/constraintlayout/core/state/ConstraintReference;

    :goto_1f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    cmpl-float v4, v3, v4

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_23
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    :goto_25
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_c

    nop

    :goto_27
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-nez v3, :cond_3

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_4
    goto/32 :goto_9

    nop

    nop

    :goto_2a
    invoke-virtual {v2, v1}, Landroidx/constraintlayout/core/state/State;->constraints(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2b
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->endToStart(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;->mReferences:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object v3, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

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

    :goto_2e
    if-nez v1, :cond_5

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2f
    iget v3, p0, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;->mBias:F

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_f

    nop

    :goto_31
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/state/ConstraintReference;->startToEnd(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v3, p0, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;->mStartToStart:Ljava/lang/Object;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_37

    nop

    nop

    :goto_36
    sget-object v3, Landroidx/constraintlayout/core/state/State;->PARENT:Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_37
    goto/32 :goto_10

    nop

    :goto_38
    iget-object v3, p0, Landroidx/constraintlayout/core/state/helpers/AlignHorizontallyReference;->mEndToStart:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop
.end method
