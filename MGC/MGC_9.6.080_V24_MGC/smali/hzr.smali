.class public final Lhzr;
.super Landroid/animation/AnimatorListenerAdapter;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lhzr;->a:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

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

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    :goto_0
    const-string v0, "Animation is cancelled"

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lhzo;->b:Lhzq;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lhzo;->b:Lhzq;

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
    iget-object p1, p1, Lhzq;->h:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lhzr;->a:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

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

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Lsuu;->a(Ljava/lang/Throwable;)Z

    :goto_8
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p1, p1, Lhzq;->f:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Lhzo;->a:Lsuu;

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

    :goto_b
    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->setVisibility(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->k:Lhzo;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setVisibility(I)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    new-instance p1, Ljava/util/concurrent/CancellationException;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    const-string v1, "onTransitionEnd"

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

    :goto_1
    iget-object p1, p1, Lhzq;->l:Lsui;

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

    :goto_2
    iget-object p0, p0, Lhzo;->a:Lsuu;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_3
    const v0, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lhzo;->b:Lhzq;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_7
    invoke-interface {p1}, Lsui;->isDone()Z

    move-result p1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lhzr;->a:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

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

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_14

    nop

    nop

    :goto_c
    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->setVisibility(I)V

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    const v1, 0x1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_10
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p1, p0, Lhzo;->a:Lsuu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_16
    const/16 v2, 0x51d

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_18
    iput-boolean p1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->c:Z

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-boolean v0, p1, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->g:Z

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p0, Lhzr;->a:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1b
    invoke-virtual {p1, p0}, Lsuu;->f(Lsui;)Z

    :goto_1c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_20
    iget-object p0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->k:Lhzo;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_21
    invoke-static {v1, v2, v0, p1}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_2

    nop

    nop

    :goto_22
    iget-boolean p1, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->c:Z

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_23
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v0, Lhzq;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_27
    new-instance p1, Ljava/util/concurrent/CancellationException;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0, p1}, Lsuu;->a(Ljava/lang/Throwable;)Z

    goto/32 :goto_25

    nop

    nop

    :goto_29
    if-nez p0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2a
    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2b
    iget-object p1, p0, Lhzo;->b:Lhzq;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Lhzq;->c()Lsui;

    move-result-object p0

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

    :goto_2d
    const-string v0, "Photos Launch was already cancelled."

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

    nop
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iget-object p1, p0, Lhzr;->a:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->setVisibility(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;->f:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

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

    :goto_5
    iget-object p0, p0, Lhzr;->a:Lcom/google/android/apps/camera/filmstrip/transition/FilmstripTransitionLayout;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_6
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setVisibility(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x4

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method
