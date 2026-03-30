.class public Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;
.super Ljava/lang/Object;
.source "WidgetGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field static count:I


# instance fields
.field authoritative:Z

.field id:I

.field private moveTo:I

.field orientation:I

.field results:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;",
            ">;"
        }
    .end annotation
.end field

.field widgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private 7e5d6da2de96742afbfef911f22fa758m(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z
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
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private 87ea1c76c78bf06be79ba1f7d48565c5m(ILandroidx/constraintlayout/core/widgets/ConstraintWidget;)I
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_PARENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

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
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, -0x1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    return v1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    :goto_6
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x8

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_8
    if-ne v0, v1, :cond_1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_5

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_10

    nop

    nop

    :goto_c
    return v1

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_12
    if-eqz p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    nop

    :goto_16
    goto/32 :goto_c

    nop

    nop

    :goto_17
    if-ne v0, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_19
    goto :goto_16

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p2, p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v0

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
.end method

.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    sput v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->count:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(I)V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    :goto_0
    goto/32 :goto_13

    nop

    nop

    :goto_1
    const v0, 0xc

    nop

    goto/32 :goto_1a

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

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->id:I

    nop

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

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->orientation:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    iput-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->results:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_9
    add-int/lit8 v1, v0, 0x1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_b
    iput-boolean v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->authoritative:Z

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    iput v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->orientation:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->moveTo:I

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    sget v0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->count:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_15
    sput v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->count:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_16
    const/4 v0, -0x1

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

    :goto_17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_18
    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->id:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop
.end method

.method private c7988658ceea6889b379ea5efd50e7e6m(Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)I
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/constraintlayout/core/LinearSystem;",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;I)I"
        }
    .end annotation

    goto/32 :goto_13

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v4, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3
    add-int/lit8 v0, v0, 0x1

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

    :goto_4
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->results:Ljava/util/ArrayList;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_8
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

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

    :goto_9
    if-lt v0, v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    :goto_a
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    if-eqz p3, :cond_1

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v1, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_11
    if-eqz p3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_2
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_14
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    if-lt v3, v4, :cond_3

    nop

    goto/32 :goto_6

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    goto/32 :goto_1c

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto :goto_1e

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v3

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mLeft:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1e
    goto/32 :goto_2b

    nop

    nop

    :goto_1f
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mVerticalChainsSize:I

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p1}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getParent()Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    move-result-object v1

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_22
    add-int v0, v0, v1

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

    :goto_23
    iget-object v0, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mTop:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_26
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->results:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_27
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mRight:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

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

    :goto_2b
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2c
    if-eq p3, v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

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

    nop

    :goto_2d
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2e
    return v4

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-gtz v3, :cond_5

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3d

    nop

    nop

    :goto_31
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_46

    nop

    :goto_32
    sub-int v4, v3, v0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {v4, p0, v3, p1, p3}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;-><init>(Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/LinearSystem;I)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_34
    const v1, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_35
    iget-object v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mBottom:Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_36
    invoke-virtual {p1}, Landroidx/constraintlayout/core/LinearSystem;->reset()V

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1, v3}, Landroidx/constraintlayout/core/LinearSystem;->getObjectVariableValue(Ljava/lang/Object;)I

    move-result v3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget v3, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mHorizontalChainsSize:I

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

    :goto_39
    goto/16 :goto_f

    nop

    :goto_3a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v4, p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->addToSolver(Landroidx/constraintlayout/core/LinearSystem;Z)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-static {v1, p1, p2, v0}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    :goto_3e
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3f
    sub-int v4, v3, v0

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_40
    return v4

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v1, p1, p2, v0}, Landroidx/constraintlayout/core/widgets/Chain;->applyChainConstraints(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)V

    :goto_43
    :try_start_0
    invoke-virtual {p1}, Landroidx/constraintlayout/core/LinearSystem;->minimize()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_45
    if-gtz v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_42

    nop

    nop

    :goto_46
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    check-cast v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method private d7b44ba4bb8c1519057c43c4b0925c53m()Ljava/lang/String;
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "Horizontal"

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1
    return-object v0

    nop

    :goto_2
    goto/32 :goto_14

    nop

    nop

    :goto_3
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    const-string v0, "Both"

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xd

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
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    const-string v0, "Unknown"

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object v0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    return-object v0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    :goto_10
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_12
    const-string v0, "Vertical"

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_13
    if-eq v0, v1, :cond_2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    :goto_15
    const/4 v1, 0x2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_16
    if-eqz v0, :cond_3

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_17
    return-object v0

    nop

    nop

    :goto_18
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_19
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->orientation:I

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
.end method


# virtual methods
.method public add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

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

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return v0

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method public apply()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->results:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_4
    const v0, 0xe

    nop

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

    nop

    :goto_5
    goto :goto_3

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    :goto_7
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    const v1, 0x4

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    check-cast v1, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_d
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->results:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    if-eqz v0, :cond_0

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

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1d

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    :goto_12
    if-lt v0, v1, :cond_1

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    if-eqz v0, :cond_2

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

    nop

    nop

    :goto_14
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_1c

    nop

    :goto_15
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->results:Ljava/util/ArrayList;

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

    nop

    :goto_16
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup$MeasureResult;->apply()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1b
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->authoritative:Z

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

    nop

    :goto_1c
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public cleanup(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;",
            ">;)V"
        }
    .end annotation

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    iget v4, v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->id:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v1, v1, 0x1

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

    :goto_3
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->moveTo:I

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

    :goto_4
    invoke-virtual {p0, v3, v2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->moveTo(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_c

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

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_a
    iget v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->moveTo:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_e
    if-lt v1, v2, :cond_1

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_12
    if-ne v1, v2, :cond_2

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_13
    if-eq v3, v4, :cond_3

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

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_15
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_4

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

    :goto_17
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_18

    nop

    :goto_1a
    goto/32 :goto_8

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->orientation:I

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_b

    nop

    nop

    :goto_1f
    goto/32 :goto_1e

    nop

    :goto_20
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-gtz v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop
.end method

.method public clear()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

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
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public getId()I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return v0

    nop

    :goto_1
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->id:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public getOrientation()I
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
    iget v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->orientation:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public intersectWith(Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)Z
    .locals 3

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->7e5d6da2de96742afbfef911f22fa758m(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    move-result v2

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

    nop

    :goto_2
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v2, 0x1

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

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    return v0

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_c

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

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto :goto_14

    nop

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    :goto_e
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    if-lt v0, v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x8

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

    :goto_17
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_2
    goto/32 :goto_6

    nop

    :goto_19
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

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
.end method

.method public isAuthoritative()Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->authoritative:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return v0

    nop

    nop

    nop

    nop
.end method

.method public measureWrap(Landroidx/constraintlayout/core/LinearSystem;I)I
    .locals 2

    goto/32 :goto_c

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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
    return v1

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xf

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    return v1

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1, v1, p2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->c7988658ceea6889b379ea5efd50e7e6m(Landroidx/constraintlayout/core/LinearSystem;Ljava/util/ArrayList;I)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

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

    :goto_c
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    :goto_e
    const/4 v1, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public moveTo(ILandroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;)V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_3
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->add(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)Z

    goto/32 :goto_1

    nop

    nop

    :goto_4
    goto :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    const v0, 0x1a

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalGroup:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1d

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
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    check-cast v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

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
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_d
    iput v2, v1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalGroup:I

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x19

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
    iget v0, p2, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->id:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_14
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->getId()I

    move-result v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_15
    goto :goto_11

    nop

    :goto_16
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->getId()I

    move-result v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_19
    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->moveTo:I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setAuthoritative(Z)V
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

    :goto_1
    iput-boolean p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->authoritative:Z

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public setOrientation(I)V
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

    :goto_1
    iput p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->orientation:I

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

.method public size()I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

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
    return v0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    goto/32 :goto_a

    nop

    nop

    :goto_0
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

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

    :goto_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    return-object v0

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    const v0, 0x10

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->d7b44ba4bb8c1519057c43c4b0925c53m()Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_10
    const-string v4, " "

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_11
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_13
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->widgets:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_14
    const-string v1, " ["

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_16

    nop

    :goto_1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDebugName()Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const-string v1, "] <"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_22
    iget v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/WidgetGroup;->id:I

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

    :goto_23
    if-nez v2, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_2

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

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const-string v2, " >"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_28
    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2b
    new-instance v1, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method
