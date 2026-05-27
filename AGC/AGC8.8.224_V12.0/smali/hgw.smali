.class public final Lhgw;
.super Ljava/lang/Object;

# interfaces
.implements Lhgn;


# instance fields
.field private A:Landroid/animation/AnimatorSet;

.field private B:Landroid/widget/FrameLayout;

.field private C:Landroid/widget/FrameLayout;

.field private D:Lhgh;

.field public final a:Z

.field public final b:Z

.field public final c:Landroid/content/Context;

.field public final d:Lgzm;

.field public final e:Lmrl;

.field public final f:Ljvs;

.field public final g:Ljava/util/ArrayList;

.field public h:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public i:Landroidx/constraintlayout/widget/ConstraintLayout;

.field public j:Landroid/view/GestureDetector;

.field public k:Licq;

.field public l:Liko;

.field public m:Ljava/lang/Runnable;

.field public n:Landroid/view/View;

.field public o:Landroid/view/View;

.field public p:Lhgm;

.field public q:Landroid/animation/Animator;

.field public r:I

.field public s:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private final t:Lcom/google/android/apps/camera/bottombar/BottomBar;

.field private final u:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field private final v:Ljava/util/concurrent/Executor;

.field private final w:Ldhi;

.field private final x:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

.field private final y:Lgzn;

.field private final z:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(ZZLandroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/apps/camera/bottombar/BottomBar;Lcom/google/android/apps/camera/bottombar/BottomBarController;Ldhi;Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;Lgzm;Lgzn;Lmrl;Ljvs;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Liko;->a:Liko;

    iput-object v0, p0, Lhgw;->l:Liko;

    const/4 v0, 0x1

    iput v0, p0, Lhgw;->r:I

    iput-boolean p1, p0, Lhgw;->a:Z

    iput-boolean p2, p0, Lhgw;->b:Z

    iput-object p3, p0, Lhgw;->c:Landroid/content/Context;

    iput-object p5, p0, Lhgw;->t:Lcom/google/android/apps/camera/bottombar/BottomBar;

    iput-object p6, p0, Lhgw;->u:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iput-object p4, p0, Lhgw;->v:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lhgw;->w:Ldhi;

    iput-object p8, p0, Lhgw;->x:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    invoke-virtual {p8}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lhgw;->z:Landroid/view/ViewGroup;

    iput-object p9, p0, Lhgw;->d:Lgzm;

    iput-object p10, p0, Lhgw;->y:Lgzn;

    iput-object p11, p0, Lhgw;->e:Lmrl;

    iput-object p12, p0, Lhgw;->f:Ljvs;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lhgw;->g:Ljava/util/ArrayList;

    return-void
.end method

.method public static final m(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 7

    new-instance v6, Lzy;

    invoke-direct {v6}, Lzy;-><init>()V

    invoke-virtual {v6, p0}, Lzy;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x6

    iget v5, p2, Landroid/graphics/Rect;->left:I

    move-object v0, v6

    move v2, v4

    invoke-virtual/range {v0 .. v5}, Lzy;->h(IIIII)V

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    const/4 v2, 0x3

    const/4 v4, 0x3

    iget v5, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual/range {v0 .. v5}, Lzy;->h(IIIII)V

    invoke-virtual {v6, p0}, Lzy;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method

.method private final n(Landroid/view/ViewGroup;)V
    .locals 2

    iget-object v0, p0, Lhgw;->p:Lhgm;

    invoke-virtual {v0}, Lhgm;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhgw;->p:Lhgm;

    invoke-virtual {v0}, Lhgm;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lhgw;->p:Lhgm;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lhgw;->p:Lhgm;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method private final o(Lmvv;)V
    .locals 1

    iget-object v0, p0, Lhgw;->A:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhgw;->A:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lhgw;->A:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    iget-object p1, p0, Lhgw;->A:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method

.method private static final p(Lhyn;Liko;)Z
    .locals 1

    sget-object v0, Lhyn;->a:Lhyn;

    invoke-virtual {p0, v0}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lhyn;->e:Lhyn;

    invoke-virtual {p0, v0}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    sget-object p0, Liko;->b:Liko;

    invoke-virtual {p1, p0}, Liko;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method public final a(Ljava/util/ArrayList;)Lnou;
    .locals 4

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iget v1, p0, Lhgw;->r:I

    if-eqz v1, :cond_1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnph;->e(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v1

    new-instance v2, Lhgq;

    invoke-direct {v2, p0, p1, v1}, Lhgq;-><init>(Lhgw;Ljava/util/ArrayList;Lnph;)V

    iget-object p1, p0, Lhgw;->v:Ljava/util/concurrent/Executor;

    const-string v3, "ssui"

    invoke-static {v2, p1, v3}, Lbze;->ai(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;Ljava/lang/String;)Lcik;

    move-result-object p1

    invoke-interface {p1}, Lcik;->bl()Lnou;

    new-instance p1, Lhgr;

    invoke-direct {p1, p0, v0}, Lhgr;-><init>(Lhgw;Lnph;)V

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-static {v1, p1, v2}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    return-object v0

    :cond_1
    const/4 p1, 0x0

    throw p1
.end method

.method public final b()Lnou;
    .locals 6

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iget v1, p0, Lhgw;->r:I

    if-eqz v1, :cond_2

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    return-object v0

    :cond_0
    iput v2, p0, Lhgw;->r:I

    iget-object v1, p0, Lhgw;->D:Lhgh;

    iget-object v2, v1, Lhgh;->a:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/TransitionDrawable;->resetTransition()V

    iget-object v2, v1, Lhgh;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Lhgh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {v1}, Lhgh;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f14003c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lhgh;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lhgw;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v2, p0, Lhgw;->o:Landroid/view/View;

    iget-object v3, p0, Lhgw;->l:Liko;

    iget-object v4, p0, Lhgw;->e:Lmrl;

    invoke-interface {v4}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhyt;

    iget-object v4, v4, Lhyt;->a:Lhys;

    iget-object v4, v4, Lhys;->i:Lhyn;

    invoke-virtual {p0, v3, v4}, Lhgw;->j(Liko;Lhyn;)Landroid/graphics/Rect;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lhgw;->m(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lhgw;->C:Landroid/widget/FrameLayout;

    invoke-direct {p0, v1}, Lhgw;->n(Landroid/view/ViewGroup;)V

    iget-object v1, p0, Lhgw;->w:Ldhi;

    sget-object v2, Ldho;->bd:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhgw;->d:Lgzm;

    sget-object v2, Lgzd;->R:Lgzr;

    invoke-interface {v1, v2}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lhgw;->a:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lhgw;->p:Lhgm;

    new-instance v2, Lhgo;

    invoke-direct {v2, v0}, Lhgo;-><init>(Lnph;)V

    invoke-virtual {v1}, Lhgm;->d()Landroid/animation/Animator;

    move-result-object v3

    invoke-virtual {v1}, Lhgm;->c()I

    move-result v4

    const v5, 0x7f070674

    invoke-virtual {v1, v5}, Lhgm;->a(I)I

    move-result v5

    add-int/2addr v4, v5

    const/4 v5, 0x0

    filled-new-array {v5, v4}, [I

    move-result-object v4

    move-object v5, v3

    check-cast v5, Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lhgl;

    invoke-direct {v4, v1, v2}, Lhgl;-><init>(Lhgm;Laip;)V

    invoke-virtual {v5, v4}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iput-object v3, p0, Lhgw;->q:Landroid/animation/Animator;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lhgw;->p:Lhgm;

    invoke-virtual {v1}, Lhgm;->d()Landroid/animation/Animator;

    move-result-object v1

    iput-object v1, p0, Lhgw;->q:Landroid/animation/Animator;

    new-instance v2, Lhgp;

    invoke-direct {v2, v0}, Lhgp;-><init>(Lnph;)V

    invoke-static {v2}, Ljvd;->K(Ljava/util/function/Consumer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :goto_0
    iget-object v1, p0, Lhgw;->q:Landroid/animation/Animator;

    new-instance v2, Lhgu;

    invoke-direct {v2, p0}, Lhgu;-><init>(Lhgw;)V

    invoke-virtual {v1, v2}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v1, p0, Lhgw;->q:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->start()V

    return-object v0

    :cond_2
    const/4 v0, 0x0

    throw v0
.end method

.method public final c(Z)V
    .locals 7

    iget v0, p0, Lhgw;->r:I

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    return-void

    :cond_0
    iput v2, p0, Lhgw;->r:I

    iget-object v0, p0, Lhgw;->u:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setSocialShareState(Z)V

    const/4 v0, 0x2

    if-eqz p1, :cond_4

    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object p1

    iget-object v4, p0, Lhgw;->p:Lhgm;

    new-array v5, v0, [I

    invoke-virtual {v4}, Lhgm;->getHeight()I

    move-result v6

    aput v6, v5, v3

    iget v6, v4, Lhgm;->f:I

    if-eqz v6, :cond_3

    if-ne v6, v0, :cond_1

    invoke-virtual {v4}, Lhgm;->b()I

    move-result v3

    goto :goto_0

    :cond_1
    :goto_0
    aput v3, v5, v2

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v1, v4, Lhgm;->f:I

    if-ne v1, v2, :cond_2

    sget-object v1, Limz;->a:Lj$/time/Duration;

    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto :goto_1

    :cond_2
    iget-object v1, v4, Lhgm;->a:Lj$/time/Duration;

    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :goto_1
    new-instance v1, Lgxg;

    const/16 v2, 0xf

    invoke-direct {v1, v4, v2}, Lgxg;-><init>(Lhgm;I)V

    invoke-static {v1}, Ljvd;->L(Ljava/util/function/Consumer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lgxg;

    const/16 v2, 0x10

    invoke-direct {v1, v4, v2}, Lgxg;-><init>(Lhgm;I)V

    invoke-static {v1}, Ljvd;->K(Ljava/util/function/Consumer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lafx;

    const/16 v2, 0xe

    invoke-direct {v1, v4, v2}, Lafx;-><init>(Lhgm;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p1, v0}, Lmvq;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lhgw;->p:Lhgm;

    iget-object v0, v0, Lhgm;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lhfj;->p:Lhfj;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lgxg;

    const/16 v2, 0x13

    invoke-direct {v1, p1, v2}, Lgxg;-><init>(Lmvq;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lmvq;->f()Lmvv;

    move-result-object p1

    invoke-direct {p0, p1}, Lhgw;->o(Lmvv;)V

    return-void

    :cond_3
    throw v1

    :cond_4
    iget-object p1, p0, Lhgw;->p:Lhgm;

    const/16 v4, 0x8

    invoke-virtual {p1, v4}, Lhgm;->setVisibility(I)V

    invoke-virtual {p1, v3}, Lhgm;->f(Z)V

    iget v4, p1, Lhgm;->f:I

    if-eqz v4, :cond_7

    if-ne v4, v0, :cond_5

    invoke-virtual {p1}, Lhgm;->b()I

    move-result v3

    goto :goto_2

    :cond_5
    :goto_2
    invoke-virtual {p1}, Lhgm;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget v1, p1, Lhgm;->f:I

    if-ne v1, v2, :cond_6

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Lhgm;->setAlpha(F)V

    :cond_6
    invoke-virtual {p1, v0}, Lhgm;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lhgw;->p:Lhgm;

    iget-object p1, p1, Lhgm;->b:Ljava/util/ArrayList;

    sget-object v0, Lfah;->l:Lfah;

    invoke-static {p1, v0}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    return-void

    :cond_7
    throw v1

    :cond_8
    throw v1
.end method

.method public final d(Landroid/view/View;Landroid/view/View;)V
    .locals 11

    const v0, 0x7f0b0340

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lhgw;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b033d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p2, p0, Lhgw;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b033e

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lhgw;->C:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout;

    iput-object p2, p0, Lhgw;->B:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lhgw;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    const v0, 0x7f0b0399

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lhgw;->o:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lhgw;->n:Landroid/view/View;

    iget-object p2, p0, Lhgw;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v0, Lclb;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lclb;-><init>(Lhgw;I)V

    invoke-virtual {p2, v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance p2, Lhgv;

    invoke-direct {p2, p0}, Lhgv;-><init>(Lhgw;)V

    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lhgw;->c:Landroid/content/Context;

    invoke-direct {v0, v1, p2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lhgw;->j:Landroid/view/GestureDetector;

    new-instance p2, Lhgt;

    iget-object v0, p0, Lhgw;->c:Landroid/content/Context;

    invoke-direct {p2, p0, v0}, Lhgt;-><init>(Lhgw;Landroid/content/Context;)V

    iput-object p2, p0, Lhgw;->D:Lhgh;

    new-instance v0, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    const v2, 0x7f0803b6

    invoke-virtual {p2, v2}, Lhgh;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f0803ab

    invoke-virtual {p2, v2}, Lhgh;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    iput-object v0, p2, Lhgh;->a:Landroid/graphics/drawable/TransitionDrawable;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p2}, Lhgh;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x101045c

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p2, v0}, Lhgh;->setBackgroundResource(I)V

    iget-object v0, p2, Lhgh;->a:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {p2, v0}, Lhgh;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Lhgw;->D:Lhgh;

    new-instance v0, Lclb;

    const/16 v1, 0xb

    invoke-direct {v0, p0, v1}, Lclb;-><init>(Lhgw;I)V

    invoke-virtual {p2, v0}, Lhgh;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p2, p0, Lhgw;->c:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070676

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p1

    if-ne p1, v4, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lhgw;->c:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f070679

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    :goto_0
    new-instance v1, Licq;

    iget-object v2, p0, Lhgw;->c:Landroid/content/Context;

    iget-object v5, p0, Lhgw;->D:Lhgh;

    invoke-direct {v1, v2, v5}, Licq;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v1, p0, Lhgw;->k:Licq;

    add-int/2addr p2, p1

    invoke-virtual {v1, v3, v3, p2}, Licq;->c(III)V

    new-instance p1, Lhgm;

    iget-object p2, p0, Lhgw;->c:Landroid/content/Context;

    iget-boolean v1, p0, Lhgw;->a:Z

    invoke-direct {p1, p2, v1}, Lhgm;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lhgw;->p:Lhgm;

    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-virtual {p2, v3}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    invoke-virtual {p1}, Lhgm;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060953

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iput-object p2, p1, Lhgm;->d:Landroid/graphics/drawable/GradientDrawable;

    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    const v1, 0x7f07067c

    invoke-virtual {p1, v1}, Lhgm;->a(I)I

    move-result v1

    invoke-virtual {p1, v0}, Lhgm;->a(I)I

    move-result v2

    add-int/2addr v2, v2

    add-int/2addr v1, v2

    const/4 v2, -0x2

    invoke-direct {p2, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v4, p2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p1, v4}, Lhgm;->setOrientation(I)V

    invoke-virtual {p1, p2}, Lhgm;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance p2, Landroid/graphics/drawable/InsetDrawable;

    iget-object v6, p1, Lhgm;->d:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Lhgm;->a(I)I

    move-result v7

    const/4 v8, 0x0

    invoke-virtual {p1, v0}, Lhgm;->a(I)I

    move-result v9

    const/4 v10, 0x0

    move-object v5, p2

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {p1, p2}, Lhgm;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const/16 p2, 0x30

    invoke-virtual {p1, p2}, Lhgm;->setGravity(I)V

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Lhgm;->setVisibility(I)V

    iget-object p1, p0, Lhgw;->p:Lhgm;

    iget-object p2, p0, Lhgw;->D:Lhgh;

    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iput-object p2, p1, Lhgm;->e:Lhgh;

    iget-object v1, p1, Lhgm;->g:Ljew;

    invoke-virtual {v1, p2}, Ljew;->W(Lhgi;)V

    invoke-virtual {p1, p2, v0}, Lhgm;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p1, p0, Lhgw;->B:Landroid/widget/FrameLayout;

    iget-object p2, p0, Lhgw;->p:Lhgm;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    iget-object p1, p0, Lhgw;->x:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    new-instance p2, Lclb;

    const/16 v0, 0xc

    invoke-direct {p2, p0, v0}, Lclb;-><init>(Lhgw;I)V

    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object p1, p0, Lhgw;->u:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    new-instance p2, Lhgs;

    invoke-direct {p2, p0}, Lhgs;-><init>(Lhgw;)V

    invoke-virtual {p1, p2}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setLayoutListener(Lcom/google/android/apps/camera/bottombar/BottomBarLayoutListener;)V

    return-void
.end method

.method public final e(Liko;)V
    .locals 3

    iput-object p1, p0, Lhgw;->l:Liko;

    iget-object v0, p0, Lhgw;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhgw;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lhgw;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroidx/constraintlayout/widget/ConstraintLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredWidth()I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v2, p0, Lhgw;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v2

    invoke-static {v2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget-object v2, p0, Lhgw;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->measure(II)V

    :cond_1
    iget-object v0, p0, Lhgw;->p:Lhgm;

    iget-object v0, v0, Lhgm;->b:Ljava/util/ArrayList;

    new-instance v1, Lgxg;

    const/16 v2, 0xa

    invoke-direct {v1, p1, v2}, Lgxg;-><init>(Liko;I)V

    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    iget-object v0, p0, Lhgw;->c:Landroid/content/Context;

    iget-object v1, p0, Lhgw;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0, v1, p1}, Ljji;->s(Landroid/content/Context;Landroid/view/View;Liko;)V

    iget-object v0, p0, Lhgw;->c:Landroid/content/Context;

    iget-object v1, p0, Lhgw;->i:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-static {v0, v1, p1}, Ljji;->t(Landroid/content/Context;Landroid/view/View;Liko;)V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lhgw;->p:Lhgm;

    iget-object v0, v0, Lhgm;->b:Ljava/util/ArrayList;

    sget-object v1, Lfah;->m:Lfah;

    invoke-static {v0, v1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final g()V
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lhgw;->g:Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhgx;

    iget-boolean v5, v4, Lhgx;->d:Z

    if-nez v5, :cond_0

    iget-object v4, v4, Lhgx;->a:Landroid/content/pm/ResolveInfo;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lhgw;->p:Lhgm;

    iget-object v1, v1, Lhgm;->b:Ljava/util/ArrayList;

    new-instance v2, Lgxg;

    const/16 v3, 0x14

    invoke-direct {v2, v0, v3}, Lgxg;-><init>(Ljava/util/List;I)V

    invoke-static {v1, v2}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final h(Ljava/lang/Runnable;)V
    .locals 6

    iget-object v0, p0, Lhgw;->q:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    :cond_0
    iput-object p1, p0, Lhgw;->m:Ljava/lang/Runnable;

    iget v0, p0, Lhgw;->r:I

    if-eqz v0, :cond_4

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :cond_1
    iput v1, p0, Lhgw;->r:I

    iget-object p1, p0, Lhgw;->y:Lgzn;

    sget-object v0, Lgzd;->R:Lgzr;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    iget-object p1, p0, Lhgw;->u:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setSocialShareState(Z)V

    iget-object p1, p0, Lhgw;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v0, p0, Lhgw;->n:Landroid/view/View;

    iget-object v2, p0, Lhgw;->l:Liko;

    iget-object v3, p0, Lhgw;->e:Lmrl;

    invoke-interface {v3}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhyt;

    iget-object v3, v3, Lhyt;->a:Lhys;

    iget-object v3, v3, Lhys;->i:Lhyn;

    invoke-virtual {p0, v2, v3}, Lhgw;->j(Liko;Lhyn;)Landroid/graphics/Rect;

    move-result-object v2

    invoke-static {p1, v0, v2}, Lhgw;->m(Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/view/View;Landroid/graphics/Rect;)V

    iget-object p1, p0, Lhgw;->B:Landroid/widget/FrameLayout;

    invoke-direct {p0, p1}, Lhgw;->n(Landroid/view/ViewGroup;)V

    iget-object p1, p0, Lhgw;->D:Lhgh;

    iget-object v0, p1, Lhgh;->a:Landroid/graphics/drawable/TransitionDrawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    iget-object v0, p1, Lhgh;->a:Landroid/graphics/drawable/TransitionDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iget-object v0, p1, Lhgh;->c:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Lhgh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p1}, Lhgh;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x7f140030

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lhgh;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lhgw;->p:Lhgm;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Lhgm;->setAlpha(F)V

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lhgm;->h(I)V

    iget-object v0, p1, Lhgm;->g:Ljew;

    invoke-static {}, Ljuh;->a()V

    iget-object v0, v0, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    :goto_0
    if-ge v1, v2, :cond_3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhgi;

    if-eqz v3, :cond_2

    invoke-interface {v3}, Lhgi;->c()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Lhgm;->getHeight()I

    move-result v0

    const v1, 0x7f07067b

    invoke-virtual {p1, v1}, Lhgm;->a(I)I

    move-result v1

    const v2, 0x7f070677

    invoke-virtual {p1, v2}, Lhgm;->a(I)I

    move-result v2

    const v3, 0x7f070672

    invoke-virtual {p1, v3}, Lhgm;->a(I)I

    move-result v3

    const v4, 0x7f070673

    invoke-virtual {p1, v4}, Lhgm;->a(I)I

    move-result v4

    iget-object v5, p1, Lhgm;->b:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    mul-int v2, v2, v5

    add-int/2addr v1, v2

    add-int/2addr v1, v3

    add-int/2addr v1, v4

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p1, Lhgm;->a:Lj$/time/Duration;

    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lgxg;

    const/16 v2, 0x9

    invoke-direct {v1, p1, v2}, Lgxg;-><init>(Lhgm;I)V

    invoke-static {v1}, Ljvd;->L(Ljava/util/function/Consumer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lgxg;

    const/16 v2, 0xb

    invoke-direct {v1, p1, v2}, Lgxg;-><init>(Lhgm;I)V

    invoke-static {v1}, Ljvd;->K(Ljava/util/function/Consumer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lafx;

    const/16 v2, 0xf

    invoke-direct {v1, p1, v2}, Lafx;-><init>(Lhgm;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance p1, Lgxg;

    const/16 v1, 0x11

    invoke-direct {p1, p0, v1}, Lgxg;-><init>(Lhgw;I)V

    invoke-static {p1}, Ljvd;->L(Ljava/util/function/Consumer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance p1, Lgxg;

    const/16 v1, 0x12

    invoke-direct {p1, p0, v1}, Lgxg;-><init>(Lhgw;I)V

    invoke-static {p1}, Ljvd;->K(Ljava/util/function/Consumer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    invoke-static {}, Lmvv;->e()Lmvq;

    move-result-object p1

    invoke-virtual {p1, v0}, Lmvq;->g(Ljava/lang/Object;)V

    iget-object v0, p0, Lhgw;->p:Lhgm;

    iget-object v0, v0, Lhgm;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lhfj;->o:Lhfj;

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lgxg;

    const/16 v2, 0x13

    invoke-direct {v1, p1, v2}, Lgxg;-><init>(Lmvq;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    invoke-virtual {p1}, Lmvq;->f()Lmvv;

    move-result-object p1

    invoke-direct {p0, p1}, Lhgw;->o(Lmvv;)V

    return-void

    :cond_4
    const/4 p1, 0x0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final i(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V
    .locals 9

    iput-object p1, p0, Lhgw;->s:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iget-object v7, p0, Lhgw;->D:Lhgh;

    if-eqz v7, :cond_0

    iput-object p1, v7, Lhgh;->d:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    new-instance v8, Lgdu;

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v8

    move-object v1, p1

    invoke-direct/range {v0 .. v6}, Lgdu;-><init>(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B[B[B[B)V

    iput-object v8, v7, Lhgh;->b:Landroid/view/View$OnClickListener;

    new-instance v8, Lgdu;

    const/4 v2, 0x4

    move-object v0, v8

    invoke-direct/range {v0 .. v6}, Lgdu;-><init>(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B[B[B[B)V

    iput-object v8, v7, Lhgh;->c:Landroid/view/View$OnClickListener;

    iget-object v0, v7, Lhgh;->b:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v0}, Lhgh;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final j(Liko;Lhyn;)Landroid/graphics/Rect;
    .locals 8

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lhgw;->t:Lcom/google/android/apps/camera/bottombar/BottomBar;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getUiOrientation()Liko;

    move-result-object v1

    iget-object v2, p0, Lhgw;->e:Lmrl;

    invoke-interface {v2}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhyt;

    iget-object v3, v2, Lhyt;->b:Lhyq;

    iget-object v3, v3, Lhyq;->b:Landroid/util/Size;

    invoke-static {p2}, Ljji;->m(Lhyn;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v2, p0, Lhgw;->t:Lcom/google/android/apps/camera/bottombar/BottomBar;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getX()F

    move-result v2

    float-to-int v2, v2

    iget-object v4, p0, Lhgw;->t:Lcom/google/android/apps/camera/bottombar/BottomBar;

    invoke-virtual {v4}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getY()F

    move-result v4

    float-to-int v4, v4

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, p0, Lhgw;->t:Lcom/google/android/apps/camera/bottombar/BottomBar;

    invoke-virtual {v6}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getWidth()I

    move-result v6

    add-int/2addr v6, v2

    iget-object v7, p0, Lhgw;->t:Lcom/google/android/apps/camera/bottombar/BottomBar;

    invoke-virtual {v7}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getHeight()I

    move-result v7

    add-int/2addr v7, v4

    invoke-direct {v5, v2, v4, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    :cond_0
    iget-object v2, v2, Lhyt;->b:Lhyq;

    iget-object v5, v2, Lhyq;->i:Landroid/graphics/Rect;

    :goto_0
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    sget-object v4, Liko;->a:Liko;

    invoke-virtual {p1}, Liko;->ordinal()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget v3, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v3

    iput p1, v2, Landroid/graphics/Point;->x:I

    iget p1, v5, Landroid/graphics/Rect;->top:I

    iput p1, v2, Landroid/graphics/Point;->y:I

    goto :goto_2

    :pswitch_1
    iget p1, v5, Landroid/graphics/Rect;->top:I

    iput p1, v2, Landroid/graphics/Point;->x:I

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result p1

    iget v3, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, v3

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr p1, v3

    iput p1, v2, Landroid/graphics/Point;->y:I

    goto :goto_2

    :pswitch_2
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v3

    sub-int/2addr p1, v3

    iget v3, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, v3

    iput p1, v2, Landroid/graphics/Point;->x:I

    iget p1, v5, Landroid/graphics/Rect;->left:I

    iput p1, v2, Landroid/graphics/Point;->y:I

    goto :goto_2

    :pswitch_3
    iget p1, v5, Landroid/graphics/Rect;->left:I

    iput p1, v2, Landroid/graphics/Point;->x:I

    invoke-static {p2, v1}, Lhgw;->p(Lhyn;Liko;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, v5, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v3

    sub-int/2addr p1, v3

    goto :goto_1

    :cond_1
    iget p1, v5, Landroid/graphics/Rect;->top:I

    :goto_1
    iput p1, v2, Landroid/graphics/Point;->y:I

    :goto_2
    iget-object p1, p0, Lhgw;->z:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getWidth()I

    move-result p1

    iget-object v3, p0, Lhgw;->x:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getWidth()I

    move-result v3

    sub-int/2addr p1, v3

    iget-object v3, p0, Lhgw;->z:Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getHeight()I

    move-result v3

    iget-object v4, p0, Lhgw;->x:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    invoke-virtual {v4}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {p2, v1}, Lhgw;->p(Lhyn;Liko;)Z

    move-result p2

    div-int/lit8 v3, v3, 0x2

    div-int/lit8 p1, p1, 0x2

    if-eqz p2, :cond_2

    iget p2, v2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lhgw;->z:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTop()I

    move-result v1

    add-int/2addr p2, v1

    add-int/2addr p2, p1

    iput p2, v0, Landroid/graphics/Rect;->left:I

    iget p1, v2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lhgw;->t:Lcom/google/android/apps/camera/bottombar/BottomBar;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/bottombar/BottomBar;->getWidth()I

    move-result p2

    iget-object v1, p0, Lhgw;->z:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getRight()I

    move-result v1

    sub-int/2addr p2, v1

    add-int/2addr p1, p2

    add-int/2addr p1, v3

    iput p1, v0, Landroid/graphics/Rect;->top:I

    goto :goto_3

    :cond_2
    iget p2, v2, Landroid/graphics/Point;->x:I

    iget-object v1, p0, Lhgw;->z:Landroid/view/ViewGroup;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLeft()I

    move-result v1

    add-int/2addr p2, v1

    add-int/2addr p2, p1

    iput p2, v0, Landroid/graphics/Rect;->left:I

    iget p1, v2, Landroid/graphics/Point;->y:I

    iget-object p2, p0, Lhgw;->z:Landroid/view/ViewGroup;

    invoke-virtual {p2}, Landroid/view/ViewGroup;->getTop()I

    move-result p2

    add-int/2addr p1, p2

    add-int/2addr p1, v3

    iput p1, v0, Landroid/graphics/Rect;->top:I

    :goto_3
    iget p1, v0, Landroid/graphics/Rect;->left:I

    iget-object p2, p0, Lhgw;->x:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getWidth()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->right:I

    iget p1, v0, Landroid/graphics/Rect;->top:I

    iget-object p2, p0, Lhgw;->x:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getHeight()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, v0, Landroid/graphics/Rect;->bottom:I

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Lhgw;->p:Lhgm;

    iget v0, v0, Lhgm;->f:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lhgw;->C:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lzm;

    iget-object v1, p0, Lhgw;->x:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, v0, Lzm;->bottomMargin:I

    iget-object v1, p0, Lhgw;->C:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lhgw;->C:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void

    :cond_0
    iget-object v0, p0, Lhgw;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lzm;

    iget-object v1, p0, Lhgw;->x:Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/bottombar/RoundedThumbnailView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lhgw;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070601

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, v0, Lzm;->bottomMargin:I

    iget-object v1, p0, Lhgw;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lhgw;->B:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->requestLayout()V

    return-void

    :cond_1
    const/4 v0, 0x0

    throw v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lhgw;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lhgw;->c:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method
