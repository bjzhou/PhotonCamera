.class public Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;
.super Ljava/lang/Object;
.source "BasicMeasure.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;,
        Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;
    }
.end annotation


# static fields
.field public static final AT_MOST:I = -0x80000000

.field private static final DEBUG:Z = false

.field public static final EXACTLY:I = 0x40000000

.field public static final FIXED:I = -0x3

.field public static final MATCH_PARENT:I = -0x1

.field private static final MODE_SHIFT:I = 0x1e

.field public static final UNSPECIFIED:I = 0x0

.field public static final WRAP_CONTENT:I = -0x2


# instance fields
.field private constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

.field private mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

.field private final mVariableDimensionsWidgets:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/constraintlayout/core/widgets/ConstraintWidget;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private 3768e86cde6fc1872f13cd90b8dcd8fem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Ljava/lang/String;III)V
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xe

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

    :goto_4
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->layout()V

    goto/32 :goto_10

    nop

    nop

    :goto_5
    invoke-virtual {p1, p5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    goto/32 :goto_5

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_a
    invoke-virtual {v2, p3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setPass(I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_e

    nop

    :goto_c
    invoke-virtual {p1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinWidth(I)V

    goto/32 :goto_2

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_e
    goto/32 :goto_11

    nop

    nop

    :goto_f
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setMinHeight(I)V

    goto/32 :goto_1

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_16
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method private 653191448010b7239bf12f5541bbd942m(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .locals 13

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v7, 0x1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v5, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v9, 0x0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_3
    iget v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v2

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v2}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->didMeasures()V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_8
    if-eq v6, v9, :cond_1

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_a
    const v1, 0x4

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v7, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_e
    if-nez v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :cond_2
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v5, :cond_3

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

    :cond_3
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_13
    if-eqz v7, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_22

    nop

    nop

    :goto_14
    if-nez v7, :cond_5

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_15
    iget-boolean v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_16
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_17
    if-ne v9, v7, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v7, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_19
    add-long/2addr v9, v11

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_1a
    const/4 v5, 0x1

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1c
    if-ne v8, v7, :cond_8

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

    :cond_8
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-ne v6, v7, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_9
    goto/32 :goto_1d

    nop

    nop

    :goto_1f
    move v5, v7

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_56

    nop

    nop

    :goto_21
    iget-object v7, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_22
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v4, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_24
    if-lez v0, :cond_a

    nop

    goto/32 :goto_2e

    nop

    :cond_a
    goto/32 :goto_2d

    nop

    :goto_25
    rem-int v0, v0, v1

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

    :goto_26
    cmpl-float v7, v7, v9

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_28
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_29
    if-eq v8, v9, :cond_b

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_2b

    nop

    :goto_2e
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-lt v3, v0, :cond_c

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_55

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_3f

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_5

    nop

    nop

    :goto_34
    goto/16 :goto_55

    nop

    :goto_35
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_37
    instance-of v7, v4, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

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

    :goto_39
    instance-of v5, v4, Landroidx/constraintlayout/core/widgets/Barrier;

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_3a
    if-eqz v7, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v4, v7}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionBehaviour(I)Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_e
    goto/32 :goto_64

    nop

    nop

    :goto_3d
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

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

    nop

    :goto_3e
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_41
    iget v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_42
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_43
    sget v7, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-eq v8, v7, :cond_f

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    :cond_f
    goto/32 :goto_68

    nop

    nop

    :goto_45
    if-nez v5, :cond_10

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_46
    sget-object v9, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

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

    :goto_47
    if-eq v8, v7, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :cond_11
    :goto_48
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4b
    instance-of v5, v4, Landroidx/constraintlayout/core/widgets/Guideline;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_4c
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4d
    const/4 v5, 0x1

    nop

    :goto_4e
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVirtualLayout()Z

    move-result v5

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_50
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_51
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_52
    const/16 v1, 0x40

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_53
    iget-wide v9, v7, Landroidx/constraintlayout/core/Metrics;->measuredWidgets:J

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_54
    iput-wide v9, v7, Landroidx/constraintlayout/core/Metrics;->measuredWidgets:J

    nop

    nop

    :goto_55
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_56
    if-eqz v5, :cond_12

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_57
    if-ne v9, v7, :cond_13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_13
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p1, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->optimizeFor(I)Z

    move-result v1

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

    :goto_59
    invoke-direct {p0, v2, v4, v7}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->88bd0492cdaed519f1bd2f90777f5292m(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :goto_5b
    iget v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_5d
    add-int v0, v0, v1

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

    :goto_5e
    if-nez v5, :cond_14

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_14
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-eqz v7, :cond_15

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_60
    if-gtz v7, :cond_16

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-ne v6, v7, :cond_17

    nop

    nop

    goto/32 :goto_48

    nop

    :cond_17
    goto/32 :goto_16

    nop

    nop

    :goto_62
    iget v9, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultWidth:I

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_63
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

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

    nop

    nop

    :goto_64
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_65
    if-eq v6, v7, :cond_18

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

    :cond_18
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_66
    goto/16 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_3c

    nop

    nop

    :goto_68
    iget v7, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mMatchConstraintDefaultHeight:I

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_69
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_6a
    if-nez v5, :cond_19

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_6b
    if-nez v5, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_1a
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    if-eqz v7, :cond_1b

    nop

    goto/32 :goto_1b

    nop

    :cond_1b
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_6d
    if-nez v5, :cond_1c

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_1c
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_6e
    const-wide/16 v11, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    if-eqz v7, :cond_1d

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

    :cond_1d
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_71
    iget-object v5, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

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
.end method

.method private 88bd0492cdaed519f1bd2f90777f5292m(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z
    .locals 8

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-gtz v4, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1
    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    sget v3, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->SELF_DIMENSIONS:I

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

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

    :goto_6
    goto/32 :goto_5c

    nop

    :goto_7
    goto/32 :goto_56

    nop

    nop

    :goto_8
    move v4, v1

    nop

    :goto_9
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_a
    iget v6, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

    nop

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

    :goto_b
    goto :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eq v2, v4, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    :goto_e
    aget v1, v7, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_f
    if-eq v1, v6, :cond_2

    nop

    nop

    goto/32 :goto_64

    nop

    :cond_2
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    nop

    nop

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

    :goto_11
    move v2, v1

    nop

    nop

    :goto_12
    goto/32 :goto_36

    nop

    nop

    :goto_13
    iput v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_12

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_16
    iget v5, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mDimensionRatio:F

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

    :goto_17
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    cmpl-float v5, v5, v4

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

    nop

    nop

    :goto_19
    iget-object v7, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1a
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1b
    move v2, v3

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1c
    invoke-interface {p1, p2, v1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;->measure(Landroidx/constraintlayout/core/widgets/ConstraintWidget;Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;)V

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sget-object v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_1e
    goto :goto_26

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_20
    move v4, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_21
    iput-object v7, v1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    :goto_22
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_24
    if-gtz v5, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_50

    nop

    nop

    nop

    :goto_25
    move v0, v1

    nop

    :goto_26
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_27
    aget v1, v1, v3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-eq v1, v6, :cond_5

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v3, 0x1

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalDimension:I

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

    :goto_2c
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setBaselineDistance(I)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_2e
    const v1, 0x19

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

    nop

    :goto_2f
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_31
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_7

    nop

    nop

    :goto_33
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_34
    iput p3, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measureStrategy:I

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_35
    sget-object v7, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->FIXED:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    if-eq v0, v2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_6
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_39
    goto :goto_43

    nop

    :goto_3a
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const v0, 0xa

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3e
    const/4 v6, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_3f
    cmpl-float v4, v6, v4

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v1

    nop

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

    :goto_41
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_42
    move v5, v1

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_44
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredWidth:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_45
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_46
    iget-object v1, p2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mResolvedMatchConstraintDefault:[I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p2, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHasBaseline(Z)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHasBaseline:Z

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_4a
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_4c
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredBaseline:I

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_4d
    if-nez v2, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4e
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredNeedsSolverPass:Z

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_4f
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    move v5, v3

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_52
    if-lez v0, :cond_8

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

    :cond_8
    goto/32 :goto_6

    nop

    :goto_53
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const/4 v1, 0x0

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->measuredHeight:I

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

    :goto_56
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_58
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_59
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_5a
    if-nez v4, :cond_9

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    return v1

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-nez v5, :cond_a

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iput-object v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->horizontalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_5f
    iput v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalDimension:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_60
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_62
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iput-object v3, v1, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->verticalBehavior:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

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

    :goto_7
    new-instance v0, Ljava/util/ArrayList;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mMeasure:Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method


# virtual methods
.method public solverMeasure(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;IIIIIIIII)J
    .locals 34

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    move/from16 v32, v2

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_196

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    move/from16 v25, v14

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

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

    :goto_4
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object/from16 v31, v11

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move/from16 p6, v5

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move v14, v2

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :goto_9
    move/from16 v24, v4

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_a
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_170

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBottom()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1bd

    nop

    nop

    :goto_e
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20b

    nop

    nop

    nop

    :goto_f
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getOptimizationLevel()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_166

    nop

    nop

    nop

    :goto_12
    if-nez v1, :cond_1

    nop

    goto/32 :goto_11

    nop

    :cond_1
    goto/32 :goto_219

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMaxWidth()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_1e7

    nop

    nop

    nop

    :goto_14
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v26, :cond_2

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :cond_2
    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v2, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const-wide/16 v19, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_18
    move-wide/from16 v28, v12

    nop

    :goto_19
    goto/32 :goto_90

    nop

    nop

    :goto_1a
    goto/16 :goto_1dd

    nop

    nop

    :goto_1b
    goto/32 :goto_1dc

    nop

    nop

    nop

    :goto_1c
    if-nez v18, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->3768e86cde6fc1872f13cd90b8dcd8fem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Ljava/lang/String;III)V

    goto/32 :goto_12d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_178

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_85

    nop

    nop

    :goto_20
    move/from16 v24, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int/2addr v12, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v21, :cond_4

    nop

    goto/32 :goto_1e2

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_23
    goto/16 :goto_a5

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    :goto_25
    move/from16 v9, p5

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_26
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_139

    nop

    nop

    nop

    nop

    nop

    :goto_27
    add-int/lit8 v10, v10, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    if-eq v10, v4, :cond_5

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move/from16 v26, v4

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_16b

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iput-wide v12, v14, Landroidx/constraintlayout/core/Metrics;->measuredMatchWidgets:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_217

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-nez v1, :cond_6

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v0, 0x1

    nop

    nop

    :goto_31
    goto/32 :goto_8a

    nop

    nop

    :goto_32
    const/4 v3, 0x0

    nop

    nop

    :goto_33
    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v4, :cond_7

    nop

    nop

    nop

    goto/32 :goto_21e

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_e4

    nop

    nop

    :goto_35
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/16 :goto_107

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move/from16 v22, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMinHeight()I

    move-result v3

    nop

    goto/32 :goto_1ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    or-int v12, v12, v30

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    :goto_3d
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move/from16 v26, v1

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    :goto_3f
    move/from16 p6, v5

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_40
    add-int/lit8 v3, v3, 0x1

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/high16 v4, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_43
    check-cast v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    :goto_44
    and-int v1, v1, v18

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    :goto_45
    if-ne v12, v9, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_192

    nop

    nop

    nop

    :goto_46
    if-ne v13, v10, :cond_9

    nop

    nop

    goto/32 :goto_c5

    nop

    :cond_9
    goto/32 :goto_137

    nop

    nop

    nop

    nop

    :goto_47
    move/from16 v27, v5

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v3, 0x0

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_4a
    move/from16 v25, v14

    nop

    nop

    goto/32 :goto_1cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move-wide/from16 v28, v12

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_4c
    if-lt v3, v5, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    :cond_a
    goto/32 :goto_140

    nop

    nop

    :goto_4d
    move/from16 v33, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    sget v30, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4f
    if-nez v12, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

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

    :goto_51
    move-wide/from16 v28, v12

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_52
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    add-int/lit8 v3, v10, 0x1

    nop

    goto/32 :goto_1fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    move/from16 v19, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e4

    nop

    nop

    :goto_55
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_20e

    nop

    nop

    nop

    nop

    :goto_56
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f3

    nop

    nop

    nop

    nop

    :goto_57
    if-eq v3, v4, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    :cond_c
    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    if-nez v4, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_180

    nop

    :cond_d
    goto/32 :goto_16f

    nop

    nop

    nop

    :goto_59
    move/from16 v23, v1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_5a
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5b
    const/4 v0, 0x0

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_5c
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMeasurer()Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    const/4 v9, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    if-eq v9, v4, :cond_e

    nop

    goto/32 :goto_1b8

    nop

    nop

    :cond_e
    goto/32 :goto_151

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-nez v5, :cond_f

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_153

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_37

    nop

    nop

    :goto_61
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    cmpl-float v4, v4, v20

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_63
    move/from16 v22, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    :goto_64
    invoke-static {v13, v12}, Ljava/lang/Math;->max(II)I

    move-result v13

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    :goto_65
    sget-object v1, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    :goto_66
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_67
    if-nez v18, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_176

    nop

    nop

    nop

    :goto_68
    move v12, v0

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_69
    move/from16 v25, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_20d

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v20

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInVerticalChain()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1fb

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    move/from16 v25, v14

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    move-object/from16 v31, v11

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    move/from16 v12, v32

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    :goto_71
    goto/16 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_73
    move v11, v5

    nop

    nop

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_1da

    nop

    nop

    :goto_75
    const/4 v12, 0x1

    nop

    nop

    goto/32 :goto_19b

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v11

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    :goto_77
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    :goto_78
    goto/32 :goto_41

    nop

    nop

    :goto_79
    move/from16 v4, v25

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_197

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v7, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasure(Z)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    if-eq v9, v2, :cond_11

    nop

    nop

    goto/32 :goto_16e

    nop

    :cond_11
    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    :goto_7c
    move-wide/from16 v28, v12

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7d
    if-nez v1, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_213

    nop

    nop

    :cond_12
    goto/32 :goto_212

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object v0, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    nop

    :goto_7f
    if-ne v4, v3, :cond_13

    nop

    nop

    goto/32 :goto_1b8

    nop

    nop

    :cond_13
    goto/32 :goto_154

    nop

    nop

    nop

    :goto_80
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

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

    :goto_82
    move-object v14, v4

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    :goto_83
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_84
    add-long v12, v12, v19

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

    :goto_85
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    :goto_86
    if-nez v1, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :cond_14
    :goto_87
    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_88
    const/4 v3, 0x1

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_89
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    :goto_8a
    if-nez v0, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_1e5

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v4

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

    :goto_8d
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ff

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    if-ne v4, v2, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_216

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v12

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    :goto_91
    instance-of v9, v4, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    nop

    :goto_92
    move/from16 v10, p7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    move/from16 v0, v19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17f

    nop

    nop

    nop

    nop

    :goto_94
    if-gtz v5, :cond_17

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    if-nez v0, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    :goto_96
    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_97
    if-eqz v5, :cond_19

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_155

    nop

    nop

    nop

    :goto_98
    move v12, v1

    nop

    nop

    nop

    nop

    :goto_99
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_9a
    if-nez v26, :cond_1a

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    :cond_1a
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    goto/16 :goto_31

    nop

    nop

    :goto_9c
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_9d
    move/from16 v18, v4

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    nop

    :goto_9e
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    :goto_9f
    const/high16 v2, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    if-ne v11, v2, :cond_1b

    nop

    goto/32 :goto_1df

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_143

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    move v4, v15

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    move/from16 p6, v0

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    goto/32 :goto_1c0

    nop

    nop

    nop

    :goto_a4
    move/from16 v32, v12

    nop

    :goto_a5
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    goto/16 :goto_145

    nop

    nop

    nop

    nop

    :goto_a7
    goto/32 :goto_144

    nop

    nop

    :goto_a8
    move v10, v3

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    goto/32 :goto_1f8

    nop

    nop

    nop

    nop

    :goto_aa
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_ab
    move/from16 p6, v3

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    move/from16 v27, v5

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    :goto_ad
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :goto_af
    goto/32 :goto_1d4

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    move/from16 v11, p6

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    :goto_b1
    if-ne v4, v1, :cond_1c

    nop

    nop

    goto/32 :goto_99

    nop

    :cond_1c
    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    if-eq v4, v0, :cond_1d

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_b4
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1e6

    nop

    nop

    nop

    :goto_b5
    move v13, v1

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

    :goto_b6
    move/from16 v0, v19

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_b7
    goto/16 :goto_202

    nop

    nop

    :goto_b8
    goto/32 :goto_201

    nop

    nop

    nop

    :goto_b9
    if-gtz v14, :cond_1e

    nop

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_1bb

    nop

    nop

    :goto_ba
    iget-object v14, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    move/from16 p6, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v9

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    :goto_bd
    move v2, v0

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    :goto_be
    or-int v0, v0, v30

    nop

    :goto_bf
    goto/32 :goto_1e8

    nop

    nop

    nop

    nop

    :goto_c0
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/Guideline;

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_c1
    if-nez v21, :cond_1f

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_150

    nop

    nop

    :goto_c2
    const/16 v0, 0x80

    nop

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    iget-object v3, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    goto/16 :goto_14e

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    :goto_c6
    move/from16 v9, p5

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    iget-object v14, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    nop

    nop

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    if-lez v0, :cond_20

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_eb

    nop

    :goto_c9
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->isInHorizontalChain()Z

    move-result v20

    nop

    nop

    nop

    nop

    goto/32 :goto_199

    nop

    nop

    nop

    :goto_ca
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRight()I

    move-result v12

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_1f9

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    const/4 v3, 0x1

    nop

    goto/32 :goto_1e1

    nop

    nop

    nop

    nop

    :goto_cd
    move v8, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    :goto_ce
    iget-object v2, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->constraintWidgetContainer:Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;

    nop

    goto/32 :goto_129

    nop

    nop

    :goto_cf
    move/from16 v33, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_d0
    goto/16 :goto_49

    nop

    nop

    :goto_d1
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-virtual/range {p0 .. p1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->updateHierarchy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    goto/32 :goto_20c

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    if-lt v3, v5, :cond_21

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    :cond_21
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    if-eq v10, v4, :cond_22

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

    :cond_22
    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    const/16 v18, 0x0

    nop

    nop

    nop

    nop

    :goto_d6
    goto/32 :goto_116

    nop

    nop

    nop

    :goto_d7
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1ea

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRight()I

    move-result v14

    nop

    goto/32 :goto_1d8

    nop

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1f6

    nop

    nop

    nop

    nop

    :goto_da
    if-gt v12, v13, :cond_23

    nop

    goto/32 :goto_113

    nop

    nop

    :cond_23
    goto/32 :goto_119

    nop

    nop

    :goto_db
    const/4 v0, 0x0

    nop

    :goto_dc
    goto/32 :goto_161

    nop

    nop

    :goto_dd
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_210

    nop

    nop

    :goto_de
    if-eq v9, v4, :cond_24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_211

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_169

    nop

    nop

    nop

    nop

    :goto_df
    const-wide/16 v12, 0x0

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    iget-boolean v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;->resolved:Z

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_e1
    move-wide/from16 v28, v12

    nop

    nop

    goto/32 :goto_148

    nop

    nop

    nop

    :goto_e2
    const/high16 v4, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_e3
    sget-object v0, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    const/16 v19, 0x0

    nop

    goto/32 :goto_1b5

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBottom()I

    move-result v1

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    move/from16 v32, v12

    nop

    nop

    nop

    goto/32 :goto_1f2

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    move/from16 p6, v0

    nop

    :goto_e9
    goto/32 :goto_13a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    and-int v21, v0, v3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_eb
    goto/32 :goto_1fe

    nop

    nop

    nop

    nop

    nop

    :goto_ec
    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    :goto_ed
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

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

    nop

    :goto_ee
    const/16 v20, 0x0

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_ef
    goto/16 :goto_1a6

    nop

    :goto_f0
    goto/32 :goto_1a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    invoke-virtual {v7, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setHeight(I)V

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_f2
    const/4 v0, 0x1

    nop

    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    move v5, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    :goto_f4
    sget-object v1, Landroidx/constraintlayout/core/LinearSystem;->sMetrics:Landroidx/constraintlayout/core/Metrics;

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    :goto_f5
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18a

    nop

    nop

    nop

    :goto_f6
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    :goto_f7
    move/from16 p8, v5

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_f8
    if-gtz v4, :cond_25

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_25
    goto/32 :goto_1a0

    nop

    nop

    nop

    :goto_f9
    move v14, v2

    nop

    goto/32 :goto_13e

    nop

    nop

    :goto_fa
    const/4 v4, 0x0

    nop

    :goto_fb
    goto/32 :goto_1cd

    nop

    nop

    nop

    nop

    :goto_fc
    move/from16 v2, p8

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c8

    nop

    nop

    :goto_fe
    if-lt v1, v14, :cond_26

    nop

    goto/32 :goto_1f4

    nop

    nop

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_1eb

    nop

    nop

    nop

    :goto_ff
    move/from16 v32, v2

    nop

    nop

    nop

    nop

    :goto_100
    goto/32 :goto_1e3

    nop

    nop

    nop

    nop

    :goto_101
    move/from16 v17, p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d9

    nop

    nop

    nop

    nop

    nop

    :goto_102
    goto/16 :goto_a9

    nop

    nop

    :goto_103
    goto/32 :goto_21a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    move/from16 v25, v3

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    const-string v25, "First pass"

    nop

    nop

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_106
    if-nez v1, :cond_27

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_27
    nop

    :goto_107
    goto/32 :goto_12b

    nop

    nop

    nop

    :goto_108
    if-gt v1, v14, :cond_28

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    :cond_28
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_109
    move/from16 v4, v18

    nop

    nop

    nop

    nop

    :goto_10a
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_10b
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_10c
    const/16 v24, 0x0

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    move-object/from16 v11, v31

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    goto/16 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    goto/32 :goto_db

    nop

    nop

    :goto_110
    move-object/from16 v2, v25

    nop

    nop

    nop

    goto/32 :goto_1e9

    nop

    nop

    :goto_111
    instance-of v0, v2, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f1

    nop

    nop

    nop

    nop

    nop

    :goto_112
    goto/16 :goto_1b3

    nop

    nop

    :goto_113
    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    :goto_114
    move/from16 v14, v25

    nop

    nop

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    :goto_115
    sget-object v1, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    :goto_116
    move/from16 v5, v26

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_117
    move-object/from16 v31, v11

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_118
    if-eqz v0, :cond_29

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_119
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRight()I

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v13

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    if-ne v5, v1, :cond_2a

    nop

    nop

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_1c3

    nop

    nop

    nop

    :goto_11c
    goto/16 :goto_1ac

    nop

    nop

    :goto_11d
    goto/32 :goto_20

    nop

    nop

    :goto_11e
    if-nez v1, :cond_2b

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    :cond_2b
    goto/32 :goto_65

    nop

    nop

    :goto_11f
    if-nez v1, :cond_2c

    nop

    goto/32 :goto_1d5

    nop

    :cond_2c
    goto/32 :goto_184

    nop

    nop

    :goto_120
    goto/16 :goto_8

    nop

    nop

    :goto_121
    goto/32 :goto_3f

    nop

    nop

    :goto_122
    move v2, v14

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    :goto_123
    move-object/from16 v6, p0

    nop

    nop

    nop

    goto/32 :goto_209

    nop

    nop

    nop

    nop

    nop

    :goto_124
    add-int/lit8 v5, v9, -0x1

    nop

    goto/32 :goto_1d3

    nop

    nop

    nop

    :goto_125
    invoke-direct {v6, v11, v4, v14}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->88bd0492cdaed519f1bd2f90777f5292m(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    :goto_126
    move/from16 v5, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_1fa

    nop

    nop

    nop

    nop

    :goto_127
    invoke-static {v14, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    nop

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_128
    const/16 v18, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_129
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMinWidth()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1a9

    nop

    nop

    :goto_12a
    move-object/from16 v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    move/from16 p6, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_12c
    add-int/2addr v14, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12d
    goto/16 :goto_d6

    nop

    :goto_12e
    goto/32 :goto_1c1

    nop

    nop

    :goto_12f
    const/high16 v4, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_130
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    :goto_131
    move/from16 v5, p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16c

    nop

    nop

    nop

    :goto_132
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v10

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_133
    goto/16 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_134
    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_135
    goto/16 :goto_74

    nop

    nop

    :goto_136
    goto/32 :goto_1bf

    nop

    nop

    :goto_137
    invoke-virtual {v4, v13}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_138
    move/from16 v20, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_139
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v1

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_13a
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_13b
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    :goto_13c
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_13d
    move v1, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    :goto_13e
    goto/16 :goto_100

    nop

    nop

    :goto_13f
    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    nop

    :goto_140
    iget-object v4, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_141
    move-object/from16 v31, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_205

    nop

    nop

    nop

    nop

    :goto_142
    iget-wide v2, v1, Landroidx/constraintlayout/core/Metrics;->measures:J

    nop

    nop

    nop

    goto/32 :goto_1d2

    nop

    nop

    nop

    nop

    :goto_143
    invoke-virtual {v0, v11}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setHeight(I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_144
    move/from16 v5, v30

    nop

    nop

    :goto_145
    goto/32 :goto_183

    nop

    nop

    nop

    nop

    :goto_146
    if-gtz v14, :cond_2d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    :cond_2d
    goto/32 :goto_10c

    nop

    nop

    :goto_147
    iput-wide v11, v5, Landroidx/constraintlayout/core/Metrics;->measuredMatchWidgets:J

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_148
    move/from16 v25, v14

    nop

    goto/32 :goto_1ab

    nop

    nop

    :goto_149
    invoke-virtual {v14}, Landroidx/constraintlayout/core/widgets/VirtualLayout;->needSolverPass()Z

    move-result v30

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_14a
    invoke-virtual {v7, v5, v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v17

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14b
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_1ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    move-object/from16 v31, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_14d
    move/from16 p6, v0

    nop

    nop

    nop

    :goto_14e
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14f
    iget-wide v12, v14, Landroidx/constraintlayout/core/Metrics;->measuredMatchWidgets:J

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_150
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    nop

    nop

    nop

    goto/32 :goto_214

    nop

    nop

    nop

    nop

    nop

    :goto_151
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v4

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_152
    if-eq v10, v4, :cond_2e

    nop

    nop

    nop

    goto/32 :goto_1c6

    nop

    nop

    nop

    :cond_2e
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_153
    iget-object v5, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mMetrics:Landroidx/constraintlayout/core/Metrics;

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    :goto_154
    invoke-virtual {v7, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setWidth(I)V

    goto/32 :goto_1b7

    nop

    nop

    nop

    :goto_155
    const/16 v0, 0x40

    nop

    nop

    nop

    goto/32 :goto_21c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_156
    goto/16 :goto_61

    nop

    nop

    :goto_157
    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    :goto_158
    move/from16 v5, v16

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

    :goto_159
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    check-cast v14, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    nop

    :goto_15b
    iput-wide v2, v1, Landroidx/constraintlayout/core/Metrics;->measures:J

    nop

    nop

    nop

    :goto_15c
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_15d
    move v4, v15

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_15e
    if-nez v1, :cond_2f

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :cond_2f
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_15f
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    nop

    :goto_160
    move-object/from16 v31, v11

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    :goto_161
    if-nez v3, :cond_30

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_30
    goto/32 :goto_1ef

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_162
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    :goto_163
    const v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    nop

    :goto_164
    goto/16 :goto_172

    nop

    nop

    nop

    :goto_165
    goto/32 :goto_171

    nop

    nop

    :goto_166
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/VirtualLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_167
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_168
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getRight()I

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_1ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_169
    move/from16 p6, v3

    nop

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    :goto_16a
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_16b
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_16c
    move-object/from16 v11, v31

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    :goto_16d
    if-ne v10, v2, :cond_31

    nop

    goto/32 :goto_188

    nop

    nop

    nop

    nop

    nop

    :cond_31
    :goto_16e
    goto/32 :goto_187

    nop

    nop

    :goto_16f
    const/16 v19, 0x0

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_170
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getWidth()I

    move-result v1

    nop

    nop

    goto/32 :goto_208

    nop

    nop

    nop

    :goto_171
    move/from16 v4, v18

    nop

    nop

    nop

    :goto_172
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_173
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_1a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_174
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getMaxHeight()I

    move-result v4

    nop

    goto/32 :goto_1e0

    nop

    nop

    nop

    :goto_175
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_176
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBottom()I

    move-result v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ce

    nop

    nop

    :goto_177
    move/from16 v0, v19

    nop

    nop

    nop

    :goto_178
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_179
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v1

    nop

    goto/32 :goto_1f0

    nop

    nop

    nop

    nop

    nop

    :goto_17a
    goto/16 :goto_fb

    nop

    nop

    nop

    :goto_17b
    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_17c
    if-eqz v9, :cond_32

    nop

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    nop

    :cond_32
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17d
    if-nez v20, :cond_33

    nop

    goto/32 :goto_21e

    nop

    :cond_33
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_17e
    if-eq v9, v4, :cond_34

    nop

    goto/32 :goto_1c6

    nop

    nop

    nop

    :cond_34
    goto/32 :goto_152

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17f
    goto :goto_178

    nop

    nop

    :goto_180
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_181
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_182
    move/from16 v3, v24

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_183
    invoke-direct {v6, v11, v0, v5}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->88bd0492cdaed519f1bd2f90777f5292m(Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measurer;Landroidx/constraintlayout/core/widgets/ConstraintWidget;I)Z

    move-result v30

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_184
    const/high16 v3, 0x40000000    # 2.0f

    nop

    nop

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_185
    goto/16 :goto_33

    nop

    :goto_186
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_187
    if-nez v5, :cond_35

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    :cond_35
    :goto_188
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_189
    instance-of v1, v0, Landroidx/constraintlayout/core/widgets/Helper;

    nop

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    nop

    :goto_18a
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v0

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18b
    add-int/2addr v1, v2

    nop

    nop

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_18d
    if-eq v1, v2, :cond_36

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    :cond_36
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18e
    const/4 v3, 0x0

    nop

    :goto_18f
    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    nop

    :goto_190
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_191
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getDimensionRatio()F

    move-result v4

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_192
    invoke-virtual {v4, v12}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_193
    invoke-virtual {v7, v5, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasureWithOrientation(ZI)Z

    move-result v18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_194
    if-nez v23, :cond_37

    nop

    nop

    nop

    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    nop

    :cond_37
    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_195
    or-int/2addr v0, v14

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_196
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->hasBaseline()Z

    move-result v1

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

    nop

    :goto_197
    goto/16 :goto_10a

    nop

    :goto_198
    goto/32 :goto_109

    nop

    nop

    nop

    :goto_199
    if-nez v20, :cond_38

    nop

    nop

    goto/32 :goto_180

    nop

    :cond_38
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19a
    invoke-virtual {v4, v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_19b
    goto/16 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_19c
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_19d
    move/from16 v8, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_19e
    goto/16 :goto_9c

    nop

    nop

    nop

    nop

    :goto_19f
    goto/32 :goto_167

    nop

    nop

    nop

    nop

    nop

    :goto_1a0
    const/4 v4, 0x1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1a1
    invoke-static {v8, v0}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_1a2
    if-nez v14, :cond_39

    nop

    nop

    nop

    nop

    goto/32 :goto_218

    nop

    nop

    :cond_39
    goto/32 :goto_c7

    nop

    nop

    nop

    :goto_1a3
    move/from16 v10, p7

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_1a4
    move/from16 v17, v4

    nop

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    :goto_1a5
    move/from16 p6, v0

    nop

    nop

    :goto_1a6
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_1a7
    move/from16 v23, v1

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_1a8
    if-ne v4, v0, :cond_3a

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :cond_3a
    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :goto_1a9
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_1aa
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getHeight()I

    move-result v16

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_1ab
    goto/16 :goto_1db

    nop

    nop

    nop

    :goto_1ac
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ad
    if-eq v9, v3, :cond_3b

    nop

    nop

    nop

    nop

    goto/32 :goto_17b

    nop

    :cond_3b
    goto/32 :goto_17a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ae
    sget v30, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->USE_GIVEN_DIMENSIONS:I

    nop

    nop

    goto/32 :goto_1be

    nop

    nop

    :goto_1af
    move/from16 v19, v0

    nop

    nop

    nop

    nop

    :goto_1b0
    goto/32 :goto_177

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b1
    move-wide/from16 v12, v28

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_1b2
    move/from16 v33, v1

    nop

    nop

    nop

    :goto_1b3
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_1b4
    move/from16 v24, v4

    nop

    nop

    goto/32 :goto_1f7

    nop

    nop

    nop

    nop

    nop

    :goto_1b5
    move/from16 v0, v19

    nop

    nop

    nop

    goto/32 :goto_21d

    nop

    nop

    nop

    nop

    nop

    :goto_1b6
    invoke-virtual {v7, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->directMeasureSetup(Z)Z

    move-result v1

    nop

    goto/32 :goto_215

    nop

    nop

    nop

    :goto_1b7
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    :goto_1b8
    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b9
    move/from16 v4, v25

    nop

    nop

    nop

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ba
    invoke-virtual {v0, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getAnchor(Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;)Landroidx/constraintlayout/core/widgets/ConstraintAnchor;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1bb
    invoke-direct/range {p0 .. p1}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->653191448010b7239bf12f5541bbd942m(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V

    :goto_1bc
    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    :goto_1bd
    move/from16 v32, v2

    nop

    nop

    goto/32 :goto_21b

    nop

    nop

    nop

    nop

    :goto_1be
    move/from16 v5, v30

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_1bf
    move-object/from16 v31, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_1c0
    const/4 v0, 0x1

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    :goto_1c1
    move/from16 v26, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_206

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c2
    add-long v11, v11, v19

    nop

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    :goto_1c3
    invoke-virtual {v0, v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setWidth(I)V

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_1c4
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    nop

    :goto_1c5
    goto/16 :goto_1dd

    nop

    :goto_1c6
    goto/32 :goto_1b6

    nop

    nop

    nop

    :goto_1c7
    and-int v1, v1, v17

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_1c8
    move v4, v0

    nop

    nop

    :goto_1c9
    goto/32 :goto_194

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ca
    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    nop

    goto/32 :goto_174

    nop

    nop

    :goto_1cb
    goto/16 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_1cc
    goto/32 :goto_141

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cd
    if-eq v10, v3, :cond_3c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_200

    nop

    nop

    nop

    nop

    :cond_3c
    goto/32 :goto_8d

    nop

    nop

    :goto_1ce
    if-gt v14, v2, :cond_3d

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    :cond_3d
    goto/32 :goto_20f

    nop

    nop

    nop

    :goto_1cf
    goto/16 :goto_bf

    nop

    nop

    nop

    :goto_1d0
    goto/32 :goto_bc

    nop

    nop

    nop

    :goto_1d1
    if-nez v0, :cond_3e

    nop

    nop

    nop

    nop

    goto/32 :goto_19f

    nop

    nop

    nop

    nop

    nop

    :cond_3e
    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    nop

    :goto_1d2
    add-long v2, v2, v19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    :goto_1d3
    if-eq v10, v5, :cond_3f

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :cond_3f
    goto/32 :goto_1ae

    nop

    nop

    nop

    nop

    nop

    :goto_1d4
    invoke-virtual {v7, v4, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->updateFromRuns(ZZ)V

    :goto_1d5
    goto/32 :goto_101

    nop

    nop

    :goto_1d6
    move/from16 p6, v3

    nop

    nop

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    :goto_1d7
    move-wide/from16 v28, v12

    nop

    nop

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    nop

    nop

    :goto_1d8
    if-gt v14, v1, :cond_40

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :cond_40
    goto/32 :goto_168

    nop

    nop

    :goto_1d9
    move v4, v0

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1da
    invoke-virtual {v7, v8}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->setOptimizationLevel(I)V

    :goto_1db
    goto/32 :goto_1fd

    nop

    nop

    nop

    nop

    nop

    :goto_1dc
    const/4 v4, 0x1

    nop

    nop

    :goto_1dd
    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    :goto_1de
    goto/16 :goto_1

    nop

    :goto_1df
    goto/32 :goto_0

    nop

    nop

    :goto_1e0
    move/from16 v2, p8

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1e1
    goto/16 :goto_1c9

    nop

    nop

    nop

    nop

    :goto_1e2
    goto/32 :goto_1f5

    nop

    nop

    :goto_1e3
    const/4 v12, 0x1

    nop

    nop

    goto/32 :goto_1de

    nop

    nop

    nop

    :goto_1e4
    goto/16 :goto_1b0

    nop

    :goto_1e5
    goto/32 :goto_1af

    nop

    nop

    nop

    :goto_1e6
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->WRAP_CONTENT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    nop

    goto/32 :goto_203

    nop

    nop

    :goto_1e7
    move/from16 v4, p6

    nop

    goto/32 :goto_1ca

    nop

    nop

    nop

    nop

    nop

    :goto_1e8
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1e9
    move/from16 v25, v3

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :goto_1ea
    move v1, v0

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1eb
    iget-object v2, v7, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_1ec
    if-eq v1, v2, :cond_41

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_41
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1ed
    move/from16 p6, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_1ee
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_1ef
    if-nez v0, :cond_42

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_42
    goto/32 :goto_191

    nop

    nop

    nop

    :goto_1f0
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/ConstraintAnchor;->getMargin()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1f1
    if-nez v0, :cond_43

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_43
    goto/32 :goto_207

    nop

    nop

    nop

    :goto_1f2
    iget-wide v11, v5, Landroidx/constraintlayout/core/Metrics;->measuredMatchWidgets:J

    nop

    nop

    nop

    goto/32 :goto_1c2

    nop

    nop

    nop

    nop

    nop

    :goto_1f3
    goto/16 :goto_178

    nop

    nop

    :goto_1f4
    goto/32 :goto_54

    nop

    nop

    :goto_1f5
    move/from16 v4, p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    :goto_1f6
    check-cast v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    nop

    :goto_1f7
    move/from16 v27, v5

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f8
    if-lt v10, v9, :cond_44

    nop

    goto/32 :goto_1cc

    nop

    nop

    nop

    :cond_44
    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    :goto_1f9
    invoke-virtual/range {p1 .. p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->getWidth()I

    move-result v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    nop

    :goto_1fa
    invoke-direct/range {v0 .. v5}, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->3768e86cde6fc1872f13cd90b8dcd8fem(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;Ljava/lang/String;III)V

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_1fb
    if-nez v0, :cond_45

    nop

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    :cond_45
    goto/32 :goto_156

    nop

    nop

    nop

    nop

    :goto_1fc
    const-string v2, "intermediate pass"

    nop

    nop

    nop

    goto/32 :goto_20a

    nop

    nop

    nop

    nop

    nop

    :goto_1fd
    return-wide v28

    nop

    nop

    nop

    nop

    :goto_1fe
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1ff
    goto/16 :goto_af

    nop

    nop

    :goto_200
    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_201
    const/4 v3, 0x0

    nop

    :goto_202
    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_203
    if-eq v1, v2, :cond_46

    nop

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    :cond_46
    goto/32 :goto_1b9

    nop

    nop

    nop

    nop

    :goto_204
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    :goto_205
    move v11, v5

    nop

    nop

    goto/32 :goto_135

    nop

    nop

    :goto_206
    move v8, v2

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    :goto_207
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_208
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHeight()I

    move-result v2

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_209
    move-object/from16 v7, p1

    nop

    nop

    nop

    goto/32 :goto_19d

    nop

    nop

    :goto_20a
    move-object/from16 v0, p0

    nop

    nop

    nop

    goto/32 :goto_204

    nop

    nop

    nop

    :goto_20b
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBaselineDistance()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_20c
    iget-object v0, v6, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_20d
    sget v14, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure$Measure;->TRY_GIVEN_DIMENSIONS:I

    nop

    nop

    nop

    nop

    goto/32 :goto_125

    nop

    nop

    :goto_20e
    move/from16 v19, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_20f
    invoke-virtual {v4}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getBottom()I

    move-result v14

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_210
    goto/16 :goto_18f

    nop

    nop

    nop

    nop

    nop

    :goto_211
    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_212
    goto/16 :goto_107

    nop

    :goto_213
    goto/32 :goto_162

    nop

    nop

    nop

    nop

    nop

    :goto_214
    iget-object v1, v1, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->dimension:Landroidx/constraintlayout/core/widgets/analyzer/DimensionDependency;

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    :goto_215
    const/high16 v4, 0x40000000    # 2.0f

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

    :goto_216
    add-int/2addr v14, v0

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    :goto_217
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_218
    goto/32 :goto_18

    nop

    nop

    :goto_219
    iget-object v1, v0, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    nop

    goto/32 :goto_ed

    nop

    nop

    :goto_21a
    move/from16 v11, p6

    nop

    nop

    nop

    goto/32 :goto_1cb

    nop

    nop

    :goto_21b
    sget-object v2, Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/ConstraintAnchor$Type;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ba

    nop

    nop

    :goto_21c
    invoke-static {v8, v0}, Landroidx/constraintlayout/core/widgets/Optimizer;->enabled(II)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d1

    nop

    nop

    nop

    :goto_21d
    goto/16 :goto_178

    nop

    nop

    nop

    nop

    :goto_21e
    goto/32 :goto_138

    nop

    nop

    nop

    nop
.end method

.method public updateHierarchy(Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;)V
    .locals 5

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_0
    if-ne v3, v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVerticalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

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

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    :goto_5
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

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

    :goto_a
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

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

    :goto_b
    sget-object v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;->MATCH_CONSTRAINT:Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_c
    if-eq v3, v4, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_2
    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    if-lt v1, v0, :cond_3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v2, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
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

    :goto_11
    check-cast v2, Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getHorizontalDimensionBehaviour()Landroidx/constraintlayout/core/widgets/ConstraintWidget$DimensionBehaviour;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->mChildren:Ljava/util/ArrayList;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_21

    nop

    nop

    :goto_17
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_18
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Landroidx/constraintlayout/core/widgets/ConstraintWidgetContainer;->invalidateGraph()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_18

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

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const v0, 0x1e

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

    :goto_1e
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/BasicMeasure;->mVariableDimensionsWidgets:Ljava/util/ArrayList;

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
    const v1, 0x19

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method
