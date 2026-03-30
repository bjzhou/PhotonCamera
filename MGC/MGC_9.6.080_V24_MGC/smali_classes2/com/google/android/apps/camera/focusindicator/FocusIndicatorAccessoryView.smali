.class public final Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;
.super Lhp;
.source "PG"


# instance fields
.field public a:Landroid/animation/Animator;

.field public b:Landroid/view/View;

.field private final c:Lj$/time/Duration;

.field private d:Z


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_2
    invoke-interface {p1}, Lfwm;->b()Lhoh;

    move-result-object p1

    nop

    goto/32 :goto_a

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

    goto/32 :goto_e

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

    :goto_4
    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/animation/Animator;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5
    instance-of v0, p1, Lfwm;

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

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    new-instance v0, Landroid/animation/AnimatorSet;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1}, Lhp;-><init>(Landroid/content/Context;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    sget-object v0, Lhmp;->f:Lhmn;

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

    :goto_b
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_1a

    nop

    :goto_d
    iput-boolean p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->d:Z

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x16

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_12
    check-cast p1, Lfwm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_14
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c:Lj$/time/Duration;

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

    :goto_16
    int-to-long v0, v0

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_17
    const v1, 0x7f0c0003

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_19
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_5
    new-instance p2, Landroid/animation/AnimatorSet;

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

    :goto_6
    int-to-long v0, p2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/animation/Animator;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-boolean p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->d:Z

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    invoke-virtual {p1, p2}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

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

    :goto_d
    goto/32 :goto_2

    nop

    :goto_e
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, p1, p2}, Lhp;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    :goto_11
    if-nez p2, :cond_1

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

    :cond_1
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object p2

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

    :goto_13
    invoke-direct {p2}, Landroid/animation/AnimatorSet;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_14
    sget-object p2, Lhmp;->f:Lhmn;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_15
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_16
    check-cast p1, Lfwm;

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

    :goto_17
    const v0, 0x7f0c0003

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    const v0, 0x1c

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-interface {p1}, Lfwm;->b()Lhoh;

    move-result-object p1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object p2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    instance-of p2, p1, Lfwm;

    nop

    nop

    goto/32 :goto_11

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 0

    goto/32 :goto_1

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
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/animation/Animator;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b()V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_5
    const/high16 v1, 0x10b0000

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x7

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

    :goto_8
    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c:Lj$/time/Duration;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/animation/Animator;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x7f0c0004

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_11
    invoke-direct {v1, p0}, Lhzx;-><init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/animation/Animator;

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

    :goto_13
    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

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

    :goto_14
    invoke-virtual {v0}, Lj$/time/Duration;->toMillis()J

    move-result-wide v2

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

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getContext()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_16
    iget-boolean v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->d:Z

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

    :goto_17
    invoke-static {v0, v1}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v0

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

    nop

    :goto_18
    int-to-long v0, v0

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

    :goto_19
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/animation/Animator;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1a
    new-instance v1, Lhzx;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/animation/Animator;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_20
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/animation/Animator;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1, v2, v3}, Landroid/animation/Animator;->setStartDelay(J)V

    :goto_23
    goto/32 :goto_20

    nop

    nop

    :goto_24
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Z)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 p1, 0x8

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

    :goto_3
    invoke-virtual {p1, v0, v1}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x19

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_5
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->c:Lj$/time/Duration;

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/animation/Animator;->cancel()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1, v0}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/animation/Animator;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_c
    const v0, 0x10b0001

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_d
    new-instance v0, Lhzy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/animation/Animator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    invoke-static {p1, v0}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object p1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/animation/Animator;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    iput-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/animation/Animator;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p1, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->a:Landroid/animation/Animator;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_16
    invoke-direct {v0, p0}, Lhzy;-><init>(Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setTarget(Ljava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->setVisibility(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x16

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_9

    nop

    nop

    :goto_1b
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Lj$/time/Duration;->toMillis()J

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

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
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final d(F)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    float-to-int p1, p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->setImageAlpha(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/high16 v0, 0x437f0000    # 255.0f

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

    :goto_3
    return-void

    nop

    nop

    :goto_4
    mul-float/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 14

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v4, v10

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    move v6, v11

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xe

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_4
    invoke-virtual/range {v3 .. v8}, Ldso;->j(IIIII)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

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

    :goto_6
    move v5, v7

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    move v6, v11

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_9
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_a
    iget v4, v2, Landroid/graphics/Point;->y:I

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_48

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    move v6, v11

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

    nop

    :goto_e
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    move-result v2

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_f
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_10
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

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

    :goto_11
    const v1, 0x7f07080d

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    :goto_13
    const v4, 0x7f0701da

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v9, v10, v12}, Ldso;->f(II)V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_15
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_16
    move v4, v10

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_17
    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v3

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

    :goto_18
    add-int/2addr v1, v2

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_1a
    const/4 v7, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->b:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1c
    add-int/2addr v2, v0

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v9, v10, v5}, Ldso;->f(II)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1e
    iget v2, v2, Landroid/graphics/Point;->y:I

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

    :goto_1f
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_20
    add-int/2addr v0, v4

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_21
    const/4 v13, 0x7

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->b:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->setTranslationX(F)V

    goto/32 :goto_6c

    nop

    nop

    :goto_24
    sub-int/2addr v3, v1

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v9, v2}, Ldso;->g(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_28
    check-cast v0, Ldse;

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move v5, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2a
    invoke-virtual {v9, v2}, Ldso;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_2b
    const/4 v7, 0x6

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v5, 0x4

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    div-int/lit8 v3, v3, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_2e
    move-object v3, v9

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_2f
    const/4 v12, 0x6

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_30
    div-int/lit8 v4, v4, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget v0, v1, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_32
    invoke-virtual {v9, v10, v13, v11, v13}, Ldso;->i(IIII)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_33
    move-object v3, v9

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_34
    goto/16 :goto_45

    nop

    nop

    :goto_35
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_36
    add-int/2addr v1, v3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_37
    new-instance v9, Ldso;

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget v1, v0, Ldse;->leftMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_39
    sub-int/2addr v4, v0

    nop

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

    :goto_3a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getHeight()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_3c
    const/4 v4, 0x3

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_3d
    move v4, v10

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3e
    iget v3, v2, Landroid/graphics/Point;->x:I

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_3f
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_40
    sub-int/2addr v3, v0

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

    :goto_41
    iget v0, v0, Ldse;->topMargin:I

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

    nop

    :goto_42
    const/4 v7, 0x3

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v0}, Landroid/view/View;->getTranslationX()F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_44
    invoke-virtual/range {v3 .. v8}, Ldso;->j(IIIII)V

    :goto_45
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_47

    nop

    :goto_47
    goto/32 :goto_26

    nop

    nop

    :goto_48
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v9, v10, v5, v11, v5}, Ldso;->i(IIII)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual/range {v3 .. v8}, Ldso;->j(IIIII)V

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget v5, v2, Landroid/graphics/Point;->x:I

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {v3}, Landroid/view/View;->getId()I

    move-result v11

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

    nop

    :goto_4d
    add-int/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_4e
    iget-object v3, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->b:Landroid/view/View;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_4f
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-direct {v1, v3, v4, v5, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    if-gt v0, v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :cond_1
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-direct {v2, v1, v0}, Landroid/graphics/Point;-><init>(II)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getId()I

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_54
    div-int/lit8 v0, v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_55
    const v1, 0x1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v9, v10, v4}, Ldso;->f(II)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v3, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->b:Landroid/view/View;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_58
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->b:Landroid/view/View;

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

    nop

    :goto_59
    invoke-virtual {v9, v10, v4, v11, v4}, Ldso;->i(IIII)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result v0

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_5c
    sub-int v8, v3, v0

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_5d
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget v6, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v4, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->b:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_61
    div-int/lit8 v3, v3, 0x2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_62
    const/4 v5, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_63
    invoke-direct {v9}, Ldso;-><init>()V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_64
    new-instance v2, Landroid/graphics/Point;

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v9, v10, v13}, Ldso;->f(II)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_66
    add-int/2addr v5, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->setTranslationY(F)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_68
    move-object v3, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_69
    if-gez v6, :cond_2

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_62

    nop

    nop

    :goto_6a
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_6c
    iget-object v0, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->b:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v9, v10, v12, v11, v12}, Ldso;->i(IIII)V

    goto/32 :goto_32

    nop

    nop

    :goto_6e
    iget-object v2, p0, Lcom/google/android/apps/camera/focusindicator/FocusIndicatorAccessoryView;->b:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_6f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_46

    nop

    nop
.end method
