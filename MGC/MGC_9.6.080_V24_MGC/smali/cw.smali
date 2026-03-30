.class final Lcw;
.super Lcx;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lcx;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method private static A(Landroid/transition/Transition;)Z
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lcw;->x(Ljava/util/List;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetNames()Ljava/util/List;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Lcw;->x(Ljava/util/List;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    goto :goto_a

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetIds()Ljava/util/List;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroid/transition/Transition;->getTargetTypes()Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_2

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    :goto_f
    invoke-static {p0}, Lcw;->x(Ljava/util/List;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    check-cast p1, Landroid/transition/Transition;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/transition/Transition;->clone()Landroid/transition/Transition;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-object p0

    nop

    :goto_3
    goto/32 :goto_4

    nop

    nop

    :goto_4
    const/4 p0, 0x0

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

    :goto_5
    return-object p0

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_0
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p3}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    check-cast p3, Landroid/transition/Transition;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_5
    goto :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    new-instance p0, Landroid/transition/TransitionSet;

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

    :goto_9
    invoke-direct {p0}, Landroid/transition/TransitionSet;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p0, Landroid/transition/TransitionSet;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz p1, :cond_1

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

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    move-object p1, p2

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

    :goto_e
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    check-cast p2, Landroid/transition/Transition;

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

    :goto_11
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :goto_13
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    :goto_15
    goto/32 :goto_1a

    nop

    nop

    :goto_16
    if-nez p2, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_17
    if-nez p3, :cond_5

    nop

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

    :cond_5
    goto/32 :goto_8

    nop

    nop

    :goto_18
    invoke-direct {p0}, Landroid/transition/TransitionSet;-><init>()V

    goto/32 :goto_e

    nop

    nop

    :goto_19
    check-cast p1, Landroid/transition/Transition;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1a
    return-object p1

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->setOrdering(I)Landroid/transition/TransitionSet;

    move-result-object p1

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

    :goto_1c
    goto/16 :goto_3

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_2

    nop

    nop
.end method

.method public final c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_8

    nop

    nop

    :goto_0
    check-cast p1, Landroid/transition/Transition;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Landroid/transition/TransitionSet;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto/32 :goto_1

    nop

    nop

    :goto_6
    invoke-direct {p0}, Landroid/transition/TransitionSet;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p1, p2}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    goto/32 :goto_0

    nop

    nop

    :goto_2
    check-cast p1, Landroid/transition/Transition;

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

    nop

    nop
.end method

.method public final e(Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 3

    goto/32 :goto_12

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

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v0

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    if-eqz p1, :cond_0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    :goto_9
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_a
    if-lt v1, p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    :goto_b
    goto/16 :goto_26

    nop

    nop

    :goto_c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0}, Lcw;->x(Ljava/util/List;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lt v1, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x8

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_13
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p1, Landroid/transition/Transition;

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
    check-cast p1, Landroid/transition/TransitionSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_16
    if-lez v0, :cond_3

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

    :cond_3
    goto/32 :goto_8

    nop

    :goto_17
    invoke-virtual {p1, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, v2, p2}, Lcw;->e(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x11

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1a
    instance-of v0, p1, Landroid/transition/TransitionSet;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x0

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

    :goto_1c
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1d
    check-cast v0, Landroid/view/View;

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

    nop

    :goto_1e
    if-eqz p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p1}, Lcw;->A(Landroid/transition/Transition;)Z

    move-result p0

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

    :goto_21
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

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

    :goto_24
    if-nez v0, :cond_5

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :cond_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_11

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez p0, :cond_6

    nop

    nop

    goto/32 :goto_26

    nop

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
.end method

.method public final f(Landroid/view/ViewGroup;Ljava/lang/Object;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, p2}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    check-cast p2, Landroid/transition/Transition;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public final g(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lt v1, v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2c

    nop

    nop

    :goto_1
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    check-cast p3, Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_6
    move p0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz p3, :cond_2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    :goto_9
    goto :goto_e

    nop

    nop

    :goto_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, v0}, Landroid/transition/Transition;->addTarget(Landroid/view/View;)Landroid/transition/Transition;

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p0

    nop

    :goto_e
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_31

    nop

    :goto_11
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_12
    instance-of v0, p1, Landroid/transition/TransitionSet;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Landroid/transition/Transition;->getTargets()Ljava/util/List;

    move-result-object p0

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTransitionCount()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez p0, :cond_3

    nop

    goto/32 :goto_a

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast p1, Landroid/transition/TransitionSet;

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

    nop

    :goto_1d
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz p0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1, p3}, Landroid/transition/Transition;->removeTarget(Landroid/view/View;)Landroid/transition/Transition;

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-interface {p0, p2}, Ljava/util/List;->containsAll(Ljava/util/Collection;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-gez p0, :cond_5

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_16

    nop

    nop

    :goto_23
    goto/32 :goto_25

    nop

    nop

    :goto_24
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_25
    check-cast p1, Landroid/transition/Transition;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p2, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v0, Landroid/view/View;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_29
    invoke-virtual {p0, v2, p2, p3}, Lcw;->g(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto/32 :goto_c

    nop

    nop

    :goto_2a
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_6
    goto/32 :goto_22

    nop

    :goto_2b
    add-int/lit8 p0, p0, -0x1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2c
    invoke-virtual {p1, v1}, Landroid/transition/TransitionSet;->getTransitionAt(I)Landroid/transition/Transition;

    move-result-object v2

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

    :goto_2d
    if-eq v0, v2, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez p0, :cond_8

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-static {p1}, Lcw;->A(Landroid/transition/Transition;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_30
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_32

    nop

    nop

    :goto_32
    if-lt v1, p0, :cond_9

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_9
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_33
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Lcs;

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0, p2, p3}, Lcs;-><init>(Landroid/view/View;Ljava/util/ArrayList;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast p1, Landroid/transition/Transition;

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final i(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Landroid/transition/Transition;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    new-instance p0, Lcv;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p2}, Lcv;-><init>(Landroid/graphics/Rect;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop
.end method

.method public final j(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p2, Lcr;

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

    :goto_1
    new-instance p0, Landroid/graphics/Rect;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, p2}, Landroid/transition/Transition;->setEpicenterCallback(Landroid/transition/Transition$EpicenterCallback;)V

    :goto_3
    goto/32 :goto_6

    nop

    nop

    :goto_4
    invoke-direct {p2, p0}, Lcr;-><init>(Landroid/graphics/Rect;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    check-cast p1, Landroid/transition/Transition;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {p2, p0}, Lcw;->y(Landroid/view/View;Landroid/graphics/Rect;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p2, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method public final k(Ljava/lang/Object;Landroid/view/View;Ljava/util/ArrayList;)V
    .locals 4

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v1

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

    :goto_5
    add-int/lit8 v2, v2, 0x1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    check-cast p1, Landroid/transition/TransitionSet;

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

    :goto_7
    check-cast v3, Landroid/view/View;

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

    :goto_8
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    :goto_b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    invoke-static {v0, v3}, Lcw;->v(Ljava/util/List;Landroid/view/View;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0, p1, p3}, Lcw;->e(Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_10

    nop

    nop

    :goto_15
    const v0, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    const v1, 0x1f

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

    :goto_17
    invoke-virtual {p3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

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

    :goto_18
    invoke-virtual {p3, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_19
    if-lt v2, v1, :cond_1

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

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop
.end method

.method public final l(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    check-cast p1, Landroid/transition/TransitionSet;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/transition/TransitionSet;->getTargets()Ljava/util/List;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1, p2, p3}, Lcw;->g(Ljava/lang/Object;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :goto_7
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final m(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    instance-of p0, p1, Landroid/transition/Transition;

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
.end method

.method public final n()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final o(Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-static {p1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-static {p0}, Lcj;->T(I)Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop
.end method

.method public final p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p2}, Landroid/transition/TransitionSet;->addTransition(Landroid/transition/Transition;)Landroid/transition/TransitionSet;

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Landroid/transition/TransitionSet;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5
    check-cast p2, Landroid/transition/Transition;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_7
    check-cast p1, Landroid/transition/Transition;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance p0, Landroid/transition/TransitionSet;

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
.end method

.method public final q(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V
    .locals 7

    goto/32 :goto_2

    nop

    nop

    :goto_0
    move-object v0, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    check-cast p1, Landroid/transition/Transition;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0x9

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

    nop

    nop

    :goto_3
    move-object v5, p5

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v6, Lct;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    move-object v4, p4

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

    :goto_6
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v6}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto/32 :goto_11

    nop

    nop

    :goto_9
    move-object v1, p0

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

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    move-object v2, p2

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
    move-object v3, p3

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_f

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct/range {v0 .. v5}, Lct;-><init>(Lcw;Ljava/lang/Object;Ljava/util/ArrayList;Ljava/lang/Object;Ljava/util/ArrayList;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop
.end method

.method public final r(Ljava/lang/Object;Ldui;Ljava/lang/Runnable;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-direct {p0, p3}, Lcu;-><init>(Ljava/lang/Runnable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0}, Landroid/transition/Transition;->addListener(Landroid/transition/Transition$TransitionListener;)Landroid/transition/Transition;

    goto/32 :goto_3

    nop

    nop

    :goto_2
    check-cast p1, Landroid/transition/Transition;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    new-instance p0, Lcu;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
