.class Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;
.super Ljava/lang/Object;
.source "ViewTransitionController.java"

# interfaces
.implements Landroidx/constraintlayout/widget/SharedValues$SharedValuesListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/constraintlayout/motion/widget/ViewTransitionController;->listenForSharedVariable(Landroidx/constraintlayout/motion/widget/ViewTransition;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

.field final synthetic val$isSet:Z

.field final synthetic val$listen_for_id:I

.field final synthetic val$listen_for_value:I

.field final synthetic val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;


# direct methods
.method constructor <init>(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/ViewTransition;IZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$viewTransition",
            "val$listen_for_id",
            "val$isSet",
            "val$listen_for_value"
        }
    .end annotation

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p4, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$isSet:Z

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
    iput-object p2, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;

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

    :goto_2
    return-void

    nop

    :goto_3
    iput p5, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$listen_for_value:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iput p3, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$listen_for_id:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    nop

    nop

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
.method public onNewValue(III)V
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "value",
            "oldValue"
        }
    .end annotation

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1
    aput-object v8, v15, v5

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2
    invoke-static {v10}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;

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

    :goto_4
    const/4 v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    invoke-static {v11}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v12

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v10, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v16

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

    :goto_9
    if-nez v3, :cond_0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_0
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_a
    move/from16 v4, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_b
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    nop

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

    :goto_c
    invoke-static {v9}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v9

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

    :goto_d
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v7, 0x0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_11
    move-object/from16 v14, v16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v9, v8}, Landroidx/constraintlayout/motion/widget/ViewTransition;->matchesView(Landroid/view/View;)Z

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v8, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_15
    move v13, v9

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-ne v2, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {v10}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v10

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v8, v7}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v3, v1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->setSharedValueCurrent(I)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_1c
    move/from16 v1, p2

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v11, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v2}, Landroidx/constraintlayout/motion/widget/ViewTransition;->getSharedValueCurrent()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_21
    add-int v0, v0, v1

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

    :goto_22
    move v13, v9

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int/lit8 v7, v7, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_24
    if-eq v3, v1, :cond_2

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_26
    add-int/lit8 v7, v7, 0x1

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v9, :cond_3

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    :goto_28
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_29
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;

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

    :goto_2a
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-lt v7, v3, :cond_4

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    :goto_2c
    iget v3, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$listen_for_value:I

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_2d
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2e
    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/motion/widget/ViewTransition;->applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V

    :goto_2f
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_30
    iget-boolean v3, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$isSet:Z

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget v3, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$listen_for_id:I

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

    :goto_34
    goto/16 :goto_4c

    nop

    nop

    :goto_35
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_36
    iget-object v10, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

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

    :goto_37
    invoke-virtual {v9, v8}, Landroidx/constraintlayout/motion/widget/ViewTransition;->matchesView(Landroid/view/View;)Z

    move-result v9

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

    nop

    :goto_38
    invoke-virtual {v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getCurrentState()I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual/range {v10 .. v15}, Landroidx/constraintlayout/motion/widget/ViewTransition;->applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V

    :goto_3a
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static {v8}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v8

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;

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

    :goto_3d
    aput-object v8, v15, v5

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3e
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3f
    iget-object v3, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->this$0:Landroidx/constraintlayout/motion/widget/ViewTransitionController;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v10, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    move-result-object v16

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

    :goto_41
    invoke-static {v9}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v9

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_42
    move-object/from16 v14, v16

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getChildCount()I

    move-result v3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_44
    if-ne v3, v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_45
    new-array v15, v6, [Landroid/view/View;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {v11}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_47
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v9, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_6
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_17

    nop

    nop

    :goto_4b
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    new-array v15, v6, [Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_4e
    if-eq v3, v4, :cond_7

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    :cond_7
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_f

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-lt v7, v3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :cond_8
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-lez v0, :cond_9

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_16

    nop

    :goto_53
    iget-object v2, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$viewTransition:Landroidx/constraintlayout/motion/widget/ViewTransition;

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

    :goto_54
    const/4 v5, 0x0

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

    :goto_55
    const v0, 0x11

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_56
    invoke-static {v3}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_57
    rem-int v0, v0, v1

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_58
    iget v3, v0, Landroidx/constraintlayout/motion/widget/ViewTransitionController$1;->val$listen_for_value:I

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_59
    invoke-static {v3}, Landroidx/constraintlayout/motion/widget/ViewTransitionController;->access$000(Landroidx/constraintlayout/motion/widget/ViewTransitionController;)Landroidx/constraintlayout/motion/widget/MotionLayout;

    move-result-object v3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method
