.class Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;
.super Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;
.source "HelperReferences.java"


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Landroidx/constraintlayout/core/widgets/analyzer/WidgetRun;-><init>(Landroidx/constraintlayout/core/widgets/ConstraintWidget;)V

    goto/32 :goto_1

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
.end method

.method private b2c53a442590efd1508f3a837b664bddm(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    const v0, 0x9

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p1, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_b
    iget-object v1, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

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

    :goto_c
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    const v1, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

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

    :goto_f
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method apply()V
    .locals 9

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

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

    :goto_1
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_2
    if-lt v4, v5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_3
    aget-object v5, v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_4
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-eqz v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    :cond_1
    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

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

    nop

    :goto_8
    iput-object v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_93

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_c
    const/16 v3, 0x8

    nop

    nop

    nop

    nop

    packed-switch v1, :pswitch_data_0

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_f
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    aget-object v5, v5, v4

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0xd

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iput-object v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_15
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_16
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_18
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_19
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_1a
    goto/16 :goto_78

    nop

    nop

    :pswitch_0
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2e

    nop

    :goto_1c
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1e
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1f
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_20
    invoke-direct {p0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->b2c53a442590efd1508f3a837b664bddm(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-direct {p0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->b2c53a442590efd1508f3a837b664bddm(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_22
    iget v5, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

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

    :goto_23
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_24
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_26
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_29
    goto/32 :goto_16

    nop

    nop

    :goto_2a
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

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

    :goto_2b
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_2c
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_2d
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :goto_2e
    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_2f
    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_31
    iget v5, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_44

    nop

    nop

    :goto_33
    goto/32 :goto_4c

    nop

    nop

    :goto_34
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_35
    if-eq v6, v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_36
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget-object v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->BOTTOM:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_38
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->delegateToWidgetRun:Z

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

    :goto_39
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

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

    :goto_3b
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    const/4 v4, 0x0

    nop

    :goto_3e
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_41
    sget-object v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->RIGHT:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_42
    aget-object v5, v5, v4

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_43
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_44
    goto/32 :goto_2f

    nop

    nop

    :goto_45
    invoke-direct {p0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->b2c53a442590efd1508f3a837b664bddm(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_47
    goto/16 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4a
    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_4b
    goto/16 :goto_78

    nop

    nop

    nop

    nop

    nop

    :pswitch_1
    goto/32 :goto_34

    nop

    nop

    :goto_4c
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_4d
    sget-object v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->LEFT:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_4e
    if-eq v6, v3, :cond_3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_4f
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_50
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_51
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

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

    :goto_52
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    goto :goto_4a

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_57
    check-cast v0, Landroidx/constraintlayout/core/widgets/Barrier;

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_58
    const/4 v4, 0x0

    nop

    nop

    :goto_59
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_5a
    if-eqz v2, :cond_4

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5b
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget v5, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_9d

    nop

    nop

    nop

    :goto_61
    goto/32 :goto_5d

    nop

    nop

    :goto_62
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_63
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_64
    goto/32 :goto_25

    nop

    nop

    :goto_65
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_66
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Barrier;->getBarrierType()I

    move-result v1

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

    nop

    :goto_67
    if-nez v0, :cond_5

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_68
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-lt v4, v5, :cond_6

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_6
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    if-lez v0, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1b

    nop

    :goto_6b
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Barrier;->getAllowsGoneWidget()Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6f
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_70
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_71
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->verticalRun:Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_72
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

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

    nop

    :goto_73
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_74
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iput-object v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    nop

    goto/32 :goto_9c

    nop

    nop

    :goto_76
    aget-object v5, v5, v4

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_77
    invoke-direct {p0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->b2c53a442590efd1508f3a837b664bddm(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    :goto_78
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_79
    invoke-direct {p0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->b2c53a442590efd1508f3a837b664bddm(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_7a
    if-eqz v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    :cond_8
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    if-eq v6, v3, :cond_9

    nop

    nop

    goto/32 :goto_8a

    nop

    :cond_9
    goto/32 :goto_89

    nop

    nop

    :goto_7c
    invoke-direct {p0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->b2c53a442590efd1508f3a837b664bddm(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-direct {p0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->b2c53a442590efd1508f3a837b664bddm(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_7e
    if-eqz v2, :cond_a

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :cond_a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v7, v7, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_80
    goto/16 :goto_3e

    nop

    nop

    :goto_81
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_82
    if-lt v4, v5, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :cond_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_83
    goto/16 :goto_78

    nop

    nop

    nop

    nop

    :pswitch_2
    goto/32 :goto_52

    nop

    nop

    :goto_84
    sget-object v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;->TOP:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_85
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/VerticalWidgetRun;->end:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_86
    if-eq v6, v3, :cond_c

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_53

    nop

    nop

    nop

    :goto_87
    iget-object v7, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_88
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

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

    nop

    :goto_89
    goto/16 :goto_29

    nop

    :goto_8a
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    iget-object v7, v6, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->dependencies:Ljava/util/List;

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

    :goto_8c
    iget-object v6, v5, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_8d
    add-int/lit8 v4, v4, 0x1

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

    :goto_8e
    iget v5, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgetsCount:I

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_8f
    if-lt v4, v5, :cond_d

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_97

    nop

    nop

    nop

    :goto_90
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_91
    iget-object v8, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_92
    const/4 v4, 0x0

    nop

    nop

    nop

    :goto_93
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_94
    invoke-direct {p0, v3}, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->b2c53a442590efd1508f3a837b664bddm(Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;)V

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iput-object v5, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->type:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode$Type;

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_96
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iget-object v5, v0, Landroidx/constraintlayout/core/widgets/Barrier;->mWidgets:[Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_98
    goto/16 :goto_78

    nop

    nop

    nop

    nop

    nop

    :pswitch_3
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_9a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_9b
    iget-object v6, v6, Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    const/4 v4, 0x0

    nop

    nop

    :goto_9d
    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_9f
    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {v5}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->getVisibility()I

    move-result v6

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    iget-object v3, v3, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->horizontalRun:Landroidx/constraintlayout/core/widgets/analyzer/HorizontalWidgetRun;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop
.end method

.method public applyToWidget()V
    .locals 4

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eq v1, v2, :cond_0

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

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v0, Landroidx/constraintlayout/core/widgets/Barrier;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    goto/32 :goto_14

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

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setY(I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_17

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x13

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    instance-of v0, v0, Landroidx/constraintlayout/core/widgets/Barrier;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v3, v3, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    :goto_e
    const v1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v2, v3}, Landroidx/constraintlayout/core/widgets/ConstraintWidget;->setX(I)V

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

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

    :goto_12
    goto :goto_1f

    nop

    nop

    :goto_13
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_15
    iget-object v3, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

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

    :goto_16
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_19
    iget-object v2, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Barrier;->getBarrierType()I

    move-result v1

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

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_7

    nop

    nop

    :goto_1d
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    :goto_1e
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_19

    nop

    nop

    nop

    nop
.end method

.method clear()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->clear()V

    goto/32 :goto_4

    nop

    nop

    :goto_1
    iput-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->runGroup:Landroidx/constraintlayout/core/widgets/analyzer/RunGroup;

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

    nop

    nop

    :goto_3
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    return-void

    nop
.end method

.method reset()V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    const/4 v1, 0x0

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

    :goto_3
    iput-boolean v1, v0, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolved:Z

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x18

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    goto/32 :goto_2

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

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method supportsWrapComputation()Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

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
.end method

.method public update(Landroidx/constraintlayout/core/widgets/analyzer/Dependency;)V
    .locals 8

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v4, v4, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->targets:Ljava/util/List;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

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

    :goto_5
    if-lt v3, v6, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_6
    const/4 v7, -0x1

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Barrier;->getBarrierType()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    add-int/2addr v5, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_9
    const/4 v2, -0x1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    goto/16 :goto_1a

    nop

    nop

    :goto_b
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move v2, v6

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    :goto_f
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

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
    const/4 v3, 0x0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    :goto_13
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_15
    if-eq v1, v4, :cond_3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Barrier;->getMargin()I

    move-result v5

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

    nop

    :goto_17
    invoke-virtual {v4, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->resolve(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v0, Landroidx/constraintlayout/core/widgets/Barrier;

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

    :goto_19
    goto :goto_13

    nop

    :goto_1a
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1c
    add-int/2addr v5, v2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1d
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_10

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1

    nop

    nop

    :goto_20
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget v6, v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;->value:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget-object v4, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->start:Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_27
    move v3, v6

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_29
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_2a
    if-nez v5, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_2d
    if-ne v2, v7, :cond_5

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, p0, Landroidx/constraintlayout/core/widgets/analyzer/HelperReferences;->widget:Landroidx/constraintlayout/core/widgets/ConstraintWidget;

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v0}, Landroidx/constraintlayout/core/widgets/Barrier;->getMargin()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_30
    check-cast v5, Landroidx/constraintlayout/core/widgets/analyzer/DependencyNode;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_31
    if-lt v6, v2, :cond_6

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

    :cond_6
    :goto_32
    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method
