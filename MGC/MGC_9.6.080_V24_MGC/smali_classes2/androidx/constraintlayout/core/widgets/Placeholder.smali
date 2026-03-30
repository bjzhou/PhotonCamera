.class public Landroidx/constraintlayout/core/widgets/Placeholder;
.super Landroidx/constraintlayout/core/widgets/VirtualLayout;
.source "Placeholder.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/VirtualLayout;-><init>()V

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
.end method


# virtual methods
.method public addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V
    .locals 3

    goto/32 :goto_17

    nop

    nop

    :goto_0
    aget-object v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/Placeholder;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

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

    :goto_3
    if-gtz v0, :cond_0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_5
    invoke-virtual {v0, v1, p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    goto/32 :goto_1d

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->resetAllConstraints()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    :goto_8
    return-void

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

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

    nop

    :goto_b
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->LEFT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

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

    :goto_d
    iget v0, p0, Landroidx/constraintlayout/core/widgets/Placeholder;->mWidgetsCount:I

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-super {p0, p1, p2}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->TOP:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

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

    :goto_14
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

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

    nop

    :goto_15
    const v1, 0x6

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    const v0, 0x19

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0, v1, p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1, p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    :goto_1b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1, p0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->connect(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop
.end method

.method public measure(IIII)V
    .locals 11

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v6}, Landroidx/constraintlayout/core/widgets/Placeholder;->setWidth(I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v6, v8}, Landroidx/constraintlayout/core/widgets/Placeholder;->setMeasure(II)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v6

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    move v6, v0

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v6, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

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

    :goto_d
    invoke-virtual {p0, v8}, Landroidx/constraintlayout/core/widgets/Placeholder;->setHeight(I)V

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_e
    move v6, p2

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_f
    if-eq p1, v9, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    const/4 v8, 0x0

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result v6

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

    :goto_15
    invoke-static {v6, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_16
    const/high16 v10, 0x40000000    # 2.0f

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

    :goto_17
    if-eq p1, v10, :cond_1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    :goto_18
    invoke-virtual {v6}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Placeholder;->getPaddingTop()I

    move-result v4

    nop

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

    nop

    :goto_1a
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Placeholder;->getMinWidth()I

    move-result v6

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1b
    if-gtz v6, :cond_2

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_2
    goto/32 :goto_45

    nop

    nop

    :goto_1c
    invoke-virtual {p0, v7}, Landroidx/constraintlayout/core/widgets/Placeholder;->needsCallbackFromSolver(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_32

    nop

    :goto_1e
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_a

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-eq p3, v10, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_3
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_22
    add-int v6, v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_23
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_24
    iget v6, p0, Landroidx/constraintlayout/core/widgets/Placeholder;->mWidgetsCount:I

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_25
    goto/16 :goto_32

    nop

    :goto_26
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_27
    if-eqz p1, :cond_4

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    aget-object v6, v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_29
    add-int/2addr v0, v6

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2a
    if-gtz v9, :cond_5

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_12

    nop

    nop

    :goto_2b
    const v1, 0x1

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Placeholder;->getPaddingBottom()I

    move-result v5

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_2d
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

    nop

    nop

    :goto_2e
    if-lez v0, :cond_6

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3

    nop

    :goto_2f
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_30
    invoke-static {v1, p4}, Ljava/lang/Math;->min(II)I

    move-result v8

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_31
    move v8, v1

    nop

    nop

    :goto_32
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_33
    move v8, p4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_34
    add-int/2addr v0, v6

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Placeholder;->getPaddingRight()I

    move-result v3

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

    :goto_38
    add-int/2addr v1, v6

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3a
    add-int/2addr v1, v6

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-eq p3, v9, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    add-int v6, v4, v5

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_3e
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/Placeholder;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Placeholder;->getMinHeight()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_40
    if-eqz p3, :cond_8

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_8
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/high16 v9, -0x80000000

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    aget-object v6, v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p0}, Landroidx/constraintlayout/core/widgets/Placeholder;->getPaddingLeft()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_44
    iget v9, p0, Landroidx/constraintlayout/core/widgets/Placeholder;->mWidgetsCount:I

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget-object v6, p0, Landroidx/constraintlayout/core/widgets/Placeholder;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop
.end method
