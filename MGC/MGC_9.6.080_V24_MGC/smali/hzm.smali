.class public final Lhzm;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljpt;
.implements Ljps;
.implements Ljpq;
.implements Ljpu;
.implements Ljpv;
.implements Ljog;


# instance fields
.field public final a:Ljava/util/Set;

.field public final b:Lhzq;

.field private final c:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

.field private final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final e:Lhot;


# direct methods
.method public constructor <init>(Lhzq;Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;Lhot;)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p0, Lhzm;->c:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x1c

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

    :goto_4
    iput-object p1, p0, Lhzm;->b:Lhzq;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    const v0, 0xa

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p3, p0, Lhzm;->e:Lhot;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_e
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object v0, p0, Lhzm;->a:Ljava/util/Set;

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

    :goto_12
    return-void

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Lhzm;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

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
.end method


# virtual methods
.method public final a(Lggn;)Lpci;
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x13

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

    :goto_2
    add-int v0, v0, v1

    nop

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

    :goto_3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x1c

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

    :goto_5
    return-object v0

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    const/16 v1, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    invoke-direct {v0, p0, p1, v1, v2}, Lhig;-><init>(Ljava/lang/Object;Ljava/lang/Object;I[B)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    new-instance v0, Lhig;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lhzm;->a:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final cX()V
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->pause()V

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->a:Landroid/animation/ValueAnimator;

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

    :goto_3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->b:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Lhzm;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_7
    const v1, 0x1e

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->b:Landroid/animation/ValueAnimator;

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

    :goto_e
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x20

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    :goto_12
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_15
    iget-object p0, p0, Lhzm;->c:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->pause()V

    :goto_18
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->a:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final cY()V
    .locals 5

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

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

    :goto_1
    invoke-interface {v2}, Ltud;->a()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2
    if-nez v2, :cond_1

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1d

    nop

    nop

    :goto_5
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v1}, Lsgj;->O(Ljava/lang/Object;)Lsui;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result v0

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_8
    new-instance v3, Liqe;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isPaused()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    const/4 v3, 0x4

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_b
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    iput-object v1, v0, Lhzq;->l:Lsui;

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->a:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_10
    iget-object v4, v2, Lhzm;->a:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_11
    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->b:Landroid/animation/ValueAnimator;

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

    :goto_12
    invoke-interface {v2, v1}, Lsui;->cancel(Z)Z

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lhzm;->c:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

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

    nop

    :goto_14
    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->b:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v4, 0x1

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

    :goto_16
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->resume()V

    :goto_17
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

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

    :goto_19
    const v1, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1a
    iget-object v2, v2, Lhzm;->c:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

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

    :goto_1b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    return-void

    nop

    nop

    :goto_1d
    goto/32 :goto_1b

    nop

    nop

    :goto_1e
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->setVisibility(I)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iget-object v2, v0, Lhzq;->l:Lsui;

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

    :goto_21
    invoke-virtual {v0}, Lhzq;->d()Z

    move-result v2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v2, Lhzm;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v4, v3}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->resume()V

    :goto_25
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_27
    iget-object v2, v0, Lhzq;->i:Ltud;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_28
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v3, v4}, Liqe;-><init>(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_2a
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->a:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Lhzm;->b:Lhzq;

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lhzm;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop
.end method

.method public final dj()V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const/4 v2, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, p0, Lhot;->c:Lstu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    invoke-direct {v0, p0, v1}, Lhiv;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0xa

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

    :goto_4
    invoke-static {v0, v1, v2}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {v0, v1}, Lsgj;->R(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

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

    :goto_6
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lhiv;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_8
    invoke-virtual {p0, v1}, Lows;->d(Lpci;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v2, p0, Lhot;->f:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    iget-object p0, p0, Lhzm;->e:Lhot;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    :goto_10
    invoke-direct {v1, v0, v2}, Lhjc;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_11
    new-instance v1, Lhjc;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lfwv;->i()Lows;

    move-result-object p0

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

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lhot;->a()I

    move-result v0

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_16
    iget-object v1, p0, Lhot;->f:Ljava/util/concurrent/Executor;

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

    :goto_17
    const/16 v1, 0xc

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lhot;->o:Lfwv;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_1a
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1d
    sget-object p0, Lsue;->a:Lsui;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method public final dv()V
    .locals 3

    goto/32 :goto_1c

    nop

    nop

    :goto_0
    const v1, 0x13

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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    iput-boolean v2, v0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->c:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

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

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->setVisibility(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    iget-object v1, v0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->b:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lhzm;->c:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, v0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->a:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    iput-boolean v2, v0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_14
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v1, v0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->b:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v2, 0x1

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

    nop

    :goto_17
    if-nez v1, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_2

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isStarted()Z

    move-result v1

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

    :goto_1a
    iget-object v1, v0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->a:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p0, p0, Lhzm;->c:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1c
    const v0, 0x9

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
.end method

.method public final f()V
    .locals 11

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Lfwq;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-class v3, Ljava/util/concurrent/CancellationException;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v4, v0}, Lrgu;->g(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v0, Lscz;

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v1, 0x0

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_6
    const v0, 0x7f1404d8

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v3, 0x142a

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v0, Lhzq;->a:Lsdb;

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

    :goto_9
    invoke-virtual {v3}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->a()Lhzu;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_a
    sget-object v2, Lstd;->a:Lstd;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    const/16 v2, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lnpo;->a()Landroid/content/pm/PackageInfo;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v6, 0x1429

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_11
    xor-int/2addr v0, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v5, v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setScaleY(F)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-interface {v0, v4}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSharedElementsUseOverlay(Z)V

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0, v4}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v0, v3, v1, v2}, Lsrv;->i(Lsui;Ljava/lang/Class;Lrsk;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v4, v2, v1}, Lrgu;->i(ILandroid/content/DialogInterface$OnClickListener;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0, v1}, Lgfl;-><init>(I)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    :goto_1c
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Lhot;->v()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_1e
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lhzq;->d:Ltud;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Lhzm;->b:Lhzq;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_22
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_23
    const-string v5, "Photos app package not found."

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v0, 0x7f1404d9

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

    :goto_25
    const-string v1, "FilmstripDataAdapter is empty in secure activity"

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Lfdn;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-interface {v0, v4}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    :goto_2a
    iget-object v0, v3, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->h:Lhzt;

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    new-instance v0, Lgte;

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_2c
    new-instance v0, Lgfl;

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Lhzq;->d()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v0, v3, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->a:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_2f
    const p0, 0x7f14061b

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-interface {v0}, Lmsx;->a()Landroid/graphics/Bitmap;

    move-result-object v0

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_31
    iget-object v5, v3, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->e:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-direct {v0, p0, v1}, Lgte;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Lhzq;->j:Landroid/app/Activity;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_34
    iget-object v3, p0, Lhzq;->f:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    :goto_35
    invoke-virtual {v4}, Ldq;->c()Ldr;

    goto/32 :goto_36

    nop

    nop

    :goto_36
    return-void

    nop

    nop

    :goto_37
    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v0, v3, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->h:Lhzt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v3, 0x6

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

    :goto_3a
    iput-object v0, p0, Lhzq;->l:Lsui;

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v4}, Lscs;->c()Lsdo;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3c
    invoke-static {v0}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_3d
    const-string v4, "Cannot find Photos package info. Canceling."

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/16 v1, 0x52d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    :goto_40
    const p0, 0x7f1404ea

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iput-object v1, v3, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->k:Lhzo;

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_42
    invoke-static {v1}, Lhzt;->d(F)F

    move-result v0

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_44
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_d6

    nop

    nop

    :goto_45
    const/4 v1, 0x3

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_46
    check-cast v0, Lhot;

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_47
    iget-object v6, v5, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_49
    iget-object v1, p0, Lhzm;->a:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v0, v1}, Lhzt;->a(F)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v0}, Lrss;->f()Ljava/lang/Object;

    move-result-object v0

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

    :goto_4c
    const-string v1, "com.google.android.apps.photos"

    nop

    nop

    nop

    nop

    :goto_4d
    goto/32 :goto_86

    nop

    nop

    nop

    :goto_4e
    iget-object v0, p0, Lhzq;->g:Lmsx;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_4f
    invoke-static {v0}, Lfsh;->h(Landroid/content/Context;)Lrss;

    move-result-object v0

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

    :goto_50
    invoke-direct {v0, p0, v3}, Lfwq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {v5, v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setScaleX(F)V

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_52
    invoke-direct {v1, p0, v2}, Lhzo;-><init>(Lhzq;Lsuu;)V

    goto/32 :goto_31

    nop

    nop

    :goto_53
    check-cast v0, Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget v0, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    :goto_55
    check-cast v0, Lscz;

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_56
    iget-object v1, p0, Lhzq;->k:Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p0, v0}, Lfdn;->i(Landroid/content/Intent;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_58
    iput-boolean v1, v3, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->g:Z

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v0, v1}, Lhzt;->b(F)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_5a
    iget-object v0, p0, Lhzq;->e:Lnpo;

    nop

    :try_start_0
    iget-object v0, v0, Lnpo;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v0, v4}, Landroid/content/pm/PackageManager;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_d5

    nop

    nop

    :goto_5b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_5c
    invoke-direct {v0, p0, v3}, Lfwq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_5d
    iget-object v3, p0, Lhzq;->f:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_5e
    const-string v1, "Z2FsbGV5X2tleQ"

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_5f
    iget-object v5, v3, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->e:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_b8

    nop

    :goto_61
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_62
    const/high16 v2, 0x1040000

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_63
    const v0, 0x7f1404d7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_64
    invoke-virtual {v3, v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->b(F)V

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_65
    iget-object v5, v3, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->e:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_66
    iget-object p0, p0, Lhzq;->p:Lfdn;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_67
    invoke-virtual {v5, v6}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setTranslationX(F)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_68
    const v0, 0x7f1404d6

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v0}, Lhzu;->a()Lhzt;

    move-result-object v0

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_6a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_6b
    throw p0

    nop

    :goto_6c
    goto/32 :goto_ce

    nop

    nop

    :goto_6d
    if-nez v0, :cond_4

    nop

    nop

    goto/32 :goto_4d

    nop

    :cond_4
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    goto :goto_71

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-static {v2, v3, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_71
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    const-string v4, "Photos is disabled. Canceling."

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_73
    new-instance v2, Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_74
    iget-boolean v0, p0, Lhzq;->c:Z

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

    :goto_75
    return-void

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_76
    const/16 v4, 0x52e

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v0, p0, Lhzq;->b:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_78
    sget-object v1, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_79
    new-instance v4, Lrgu;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_7a
    invoke-interface {v0}, Ltud;->a()Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v4, p0, v0}, Lrgu;->l(ILandroid/content/DialogInterface$OnClickListener;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v4, v0}, Lrgu;->g(I)V

    goto/32 :goto_82

    nop

    nop

    :goto_7d
    sget-object v1, Lnpo;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-direct {v4, v0, v3}, Lrgu;-><init>(Landroid/content/Context;I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    const/16 v4, 0x52f

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_80
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-static {p0, v0, v1}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_75

    nop

    nop

    :goto_82
    new-instance v0, Lfwq;

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :goto_83
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-static {v4}, Lcom/a;->aa_ma(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    :goto_85
    invoke-static {v1}, Lcom/a;->aa_ma(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v0, p0, Lhzq;->e:Lnpo;

    nop

    :try_start_1
    iget-object v0, v0, Lnpo;->b:Landroid/content/Context;

    nop

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->isPackageSuspended(Ljava/lang/String;)Z

    move-result v0

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_bd

    nop

    nop

    nop

    :goto_87
    iget-object v0, v3, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->h:Lhzt;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v0}, Lhzu;->a()Lhzt;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_89
    const/high16 v1, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {p0}, Lhzq;->d()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_8b
    iget-object v5, v3, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->e:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_8c
    return-void

    nop

    nop

    nop

    :goto_8d
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    :goto_8e
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v4, p0, v0}, Lrgu;->l(ILandroid/content/DialogInterface$OnClickListener;)V

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    invoke-static {}, Lowu;->a()V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_91
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_92
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v4, v0}, Lrgu;->n(I)V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_94
    if-eq v0, v4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :cond_6
    :goto_95
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v5, v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setTranslationY(F)V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    const-string v2, "Photos app package not found."

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_99
    if-lez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_7
    goto/32 :goto_26

    nop

    :goto_9a
    iget-object v5, v3, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->e:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_9b
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

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

    :goto_9c
    invoke-interface {v0, v4}, Lscz;->M(I)Lsdo;

    move-result-object v0

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

    :goto_9d
    check-cast v0, Landroid/content/Context;

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-direct {v0, v4}, Lpxf;-><init>(I)V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_9f
    const-string v1, "Photos is suspended. Canceling."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    const-string v4, "com.google.android.apps.photos"

    nop

    :goto_a1
    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_a2
    check-cast v0, Lscz;

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

    :goto_a3
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_a4
    invoke-direct {v2}, Lsuu;-><init>()V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_a5
    iput-object v0, v3, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->h:Lhzt;

    nop

    nop

    nop

    :goto_a6
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_a7
    monitor-enter v6

    nop

    nop

    nop

    nop

    :try_start_2
    iput-object v0, v5, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->b:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    iget-object v0, v5, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->b:Landroid/graphics/Bitmap;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    nop

    nop

    nop

    nop

    iget-object v7, v5, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->b:Landroid/graphics/Bitmap;

    nop

    nop

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    invoke-direct {v8, v0, v7}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v8}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v5}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->requestLayout()V

    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    nop

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    new-instance v7, Landroid/graphics/BitmapShader;

    nop

    nop

    iget-object v8, v5, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->b:Landroid/graphics/Bitmap;

    nop

    nop

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    nop

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    nop

    nop

    invoke-direct {v7, v8, v9, v10}, Landroid/graphics/BitmapShader;-><init>(Landroid/graphics/Bitmap;Landroid/graphics/Shader$TileMode;Landroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v7, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    invoke-direct {v7, v0}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v7, v5, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    monitor-exit v6

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_2e

    nop

    nop

    :goto_a8
    const/16 v1, 0x14

    nop

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

    :goto_a9
    new-instance v1, Lhzo;

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_aa
    sget-object v4, Lnpo;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_ab
    invoke-virtual {v1}, Lscs;->c()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_ac
    iput-object v5, v3, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->f:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    iget-object v0, v3, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->a:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    :goto_ae
    iget-object v0, p0, Lhzq;->e:Lnpo;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_af
    if-nez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_b1
    const/4 v3, 0x7

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    new-instance v1, Lfxd;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    const-string v0, ""

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-virtual {v4, v2, v1}, Lrgu;->i(ILandroid/content/DialogInterface$OnClickListener;)V

    goto/32 :goto_d3

    nop

    nop

    :goto_b6
    invoke-virtual {v4, v0}, Lrgu;->n(I)V

    goto/32 :goto_6

    nop

    nop

    :goto_b7
    invoke-static {v0, v1}, Lsgj;->T(Lssw;Ljava/util/concurrent/Executor;)Lsui;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_b8
    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_b9
    iget-object p0, p0, Lhzq;->o:Lfdn;

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

    :goto_ba
    sget-object v0, Lhzq;->a:Lsdb;

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_bb
    iput-object v0, v3, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->h:Lhzt;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_bc
    if-nez v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    :cond_9
    goto/32 :goto_73

    nop

    nop

    :goto_bd
    if-eqz v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :cond_a
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_be
    new-instance v0, Lpxf;

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    :goto_bf
    new-instance v4, Lrgu;

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    invoke-direct {v0, v1}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-static {v5, v6, v4, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    :goto_c2
    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_c4
    if-nez v0, :cond_b

    nop

    goto/32 :goto_8d

    nop

    :cond_b
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_c5
    const-string v0, ""

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-virtual {v5, v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;->b(F)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_c7
    invoke-direct {v4, v0, v3}, Lrgu;-><init>(Landroid/content/Context;I)V

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_c8
    move-object v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    const/16 v1, 0x528

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-direct {v1, p0, v2}, Lfxd;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_cb
    const-string v1, "Thumbnail is null when startLaunchingPhotos. Launch Photos Anyway."

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

    :goto_cc
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_c8

    nop

    nop

    :goto_cd
    const-string v4, "Z2FsbGV5X2tleQ"

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_ce
    sget-object v0, Lhzq;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_cf
    sget-object v0, Lhzq;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_d0
    iget-object p0, p0, Lhzq;->l:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    iget-object v5, v3, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->e:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionThumbnailView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d2
    iget v6, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-virtual {v4}, Ldq;->c()Ldr;

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    const v3, 0x7f15047b

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    const/4 v4, 0x1

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    new-instance v0, Ljava/util/concurrent/CancellationException;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_d7
    invoke-virtual {v3}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->a()Lhzu;

    move-result-object v0

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v0, v1}, Lhzt;->c(F)Landroid/graphics/PointF;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :goto_da
    invoke-static {v1, v0}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_db
    goto/16 :goto_b8

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_3
    monitor-exit v6

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_dc
    iget-object v5, p0, Lhzq;->h:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_dd
    invoke-virtual {v3, v1}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->setVisibility(I)V

    goto/32 :goto_5d

    nop

    nop

    :goto_de
    check-cast v0, Landroid/content/Intent;

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_df
    iget-object p0, p0, Lhzq;->p:Lfdn;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

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
.end method

.method public final g()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lhzm;->b:Lhzq;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lhzq;->d()Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final q()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lhzq;->d()Z

    move-result p0

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
    iget-object p0, p0, Lhzm;->b:Lhzq;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop
.end method
