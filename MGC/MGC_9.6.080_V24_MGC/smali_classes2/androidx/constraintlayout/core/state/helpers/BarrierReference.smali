.class public Landroidx/constraintlayout/core/state/helpers/BarrierReference;
.super Landroidx/constraintlayout/core/state/HelperReference;
.source "BarrierReference.java"


# instance fields
.field private mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

.field private mDirection:Landroidx/constraintlayout/core/state/State$Direction;

.field private mMargin:I


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/state/State;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    sget-object v0, Landroidx/constraintlayout/core/state/State$Helper;->BARRIER:Landroidx/constraintlayout/core/state/State$Helper;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, v0}, Landroidx/constraintlayout/core/state/HelperReference;-><init>(Landroidx/constraintlayout/core/state/State;Landroidx/constraintlayout/core/state/State$Helper;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public apply()V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/core/widgets/Barrier;->setBarrierType(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    aget v1, v1, v2

    nop

    nop

    nop

    nop

    nop

    packed-switch v1, :pswitch_data_0

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v2, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mDirection:Landroidx/constraintlayout/core/state/State$Direction;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->getHelperWidget()Landroidx/constraintlayout/core/widgets/HelperWidget;

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2}, Landroidx/constraintlayout/core/state/State$Direction;->ordinal()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iget v2, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0xc

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

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_9
    iget-object v1, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    sget-object v1, Landroidx/constraintlayout/core/state/helpers/BarrierReference$1;->$SwitchMap$androidx$constraintlayout$core$state$State$Direction:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_19

    nop

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_c

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

    nop

    :pswitch_1
    goto/32 :goto_1b

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_13
    goto :goto_19

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :goto_15
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_b

    nop

    :goto_17
    iget-object v1, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_18
    goto :goto_19

    nop

    :pswitch_3
    nop

    :goto_19
    goto/32 :goto_17

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/Barrier;->setMargin(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public getHelperWidget()Landroidx/constraintlayout/core/widgets/HelperWidget;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_2
    new-instance v0, Landroidx/constraintlayout/core/widgets/Barrier;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    :goto_4
    iput-object v0, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mBarrierWidget:Landroidx/constraintlayout/core/widgets/Barrier;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/Barrier;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mMargin:I

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

.method public margin(Ljava/lang/Object;)Landroidx/constraintlayout/core/state/ConstraintReference;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Landroidx/constraintlayout/core/state/State;->convertDimension(Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    invoke-virtual {p0, v0}, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->margin(I)Landroidx/constraintlayout/core/state/ConstraintReference;

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mState:Landroidx/constraintlayout/core/state/State;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public setBarrierDirection(Landroidx/constraintlayout/core/state/State$Direction;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Landroidx/constraintlayout/core/state/helpers/BarrierReference;->mDirection:Landroidx/constraintlayout/core/state/State$Direction;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
