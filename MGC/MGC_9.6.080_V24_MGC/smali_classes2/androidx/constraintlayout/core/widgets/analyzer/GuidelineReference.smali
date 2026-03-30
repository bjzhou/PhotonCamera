.class Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;
.super Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
.source "GuidelineReference.java"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Landroidx/constraintlayout/core/widgets/Guideline;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    move-object v0, p1

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
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->clear()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    return-void

    nop

    :goto_6
    iput v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->orientation:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->clear()V

    goto/32 :goto_1

    nop

    nop

    :goto_8
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private b2c53a442590efd1508f3a837b664bddm(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

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
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x5

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method apply()V
    .locals 7

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_0
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_8f

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->b2c53a442590efd1508f3a837b664bddm(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_94

    nop

    nop

    :goto_a
    goto/32 :goto_7b

    nop

    nop

    :goto_b
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_c
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_d
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeEnd()I

    move-result v2

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eq v4, v5, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_11
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_15
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_18
    iput v1, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-ne v2, v6, :cond_1

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->b2c53a442590efd1508f3a837b664bddm(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_1e
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_1f
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_20
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_68

    nop

    nop

    :goto_21
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

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

    :goto_22
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_23
    iput-boolean v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast v0, Landroidx/constraintlayout/core/widgets/Guideline;

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_28
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_29
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2a
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2c
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2d
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_2e
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    :goto_33
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_35
    if-ne v1, v6, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    :cond_3
    goto/32 :goto_6e

    nop

    nop

    :goto_36
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_37
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

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

    nop

    :goto_38
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_39
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_3b
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_3c
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

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

    :goto_3f
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

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

    :goto_41
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_42
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_43
    iput v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v6, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_45
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

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

    :goto_47
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

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

    nop

    :goto_4a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_4c
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

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

    nop

    :goto_4d
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4e
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

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

    :goto_4f
    invoke-direct {p0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->b2c53a442590efd1508f3a837b664bddm(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    :goto_50
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_51
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_52
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_53
    if-ne v2, v6, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_39

    nop

    :goto_55
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_56
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_57
    iput v1, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->margin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_58
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_5a
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_5d
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5f
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_64
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_65
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_66
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

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

    nop

    :goto_69
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

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

    :goto_6a
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_6c
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_6f
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativePercent()F

    move-result v3

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

    :goto_70
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_71
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_72
    goto/16 :goto_39

    nop

    :goto_73
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_76
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

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

    :goto_78
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_79
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativeBegin()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-direct {p0, v4}, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->b2c53a442590efd1508f3a837b664bddm(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_7b
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_7c
    neg-int v5, v2

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

    :goto_7d
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

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

    :goto_7e
    goto/16 :goto_50

    nop

    :goto_7f
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    goto/16 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

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

    nop

    :goto_83
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_84
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_85
    rem-int v0, v0, v1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_87
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

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

    :goto_88
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

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

    :goto_8a
    neg-int v5, v2

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v5, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    if-ne v1, v6, :cond_5

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

    nop

    :cond_5
    goto/32 :goto_16

    nop

    nop

    :goto_8d
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

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

    :goto_8e
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_8f
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_90
    iget-object v5, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_91
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->mParent:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_92
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_93
    return-void

    nop

    nop

    nop

    :goto_94
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iput-boolean v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop
.end method

.method public applyToWidget()V
    .locals 3

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v0, Landroidx/constraintlayout/core/widgets/Guideline;

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

    :goto_1
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

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

    :goto_2
    goto/32 :goto_11

    nop

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_5
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setX(I)V

    goto/32 :goto_15

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

    goto/32 :goto_d

    nop

    nop

    :goto_8
    if-eq v1, v2, :cond_0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v2}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setY(I)V

    :goto_a
    goto/32 :goto_10

    nop

    nop

    :goto_b
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Guideline;->getOrientation()I

    move-result v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_e
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_f
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

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

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_12

    nop

    nop

    :goto_12
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    iget v2, v2, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_15
    goto :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_2

    nop

    :goto_18
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

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

    nop

    nop

    :goto_19
    const v0, 0x16

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method clear()V
    .locals 1

    goto/32 :goto_1

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

    nop

    nop

    :goto_1
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->clear()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method reset()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_5

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
    goto/32 :goto_0

    nop

    nop

    :goto_3
    const v0, 0x18

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

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

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

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

    :goto_a
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_4

    nop

    :goto_e
    const v1, 0x4

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method supportsWrapComputation()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return v0

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V
    .locals 5

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast v1, Landroidx/constraintlayout/core/widgets/Guideline;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

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

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    if-nez v0, :cond_0

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

    nop

    :cond_0
    goto/32 :goto_4

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
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x15

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

    :goto_7
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    iget-boolean v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->readyToSolve:Z

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

    :goto_9
    add-float/2addr v3, v2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    int-to-float v3, v3

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    :goto_10
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    mul-float/2addr v3, v4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Landroidx/constraintlayout/core/widgets/Guideline;->getRelativePercent()F

    move-result v4

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

    :goto_13
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x20

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_15
    float-to-int v2, v3

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

    :goto_16
    if-eqz v0, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

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

    :goto_18
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

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

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_1a
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v3, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

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

    :goto_1d
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

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

    :goto_1e
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1f
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/GuidelineReference;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_20
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iget v3, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

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

    nop

    :goto_22
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_23
    const/high16 v2, 0x3f000000    # 0.5f

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop
.end method
