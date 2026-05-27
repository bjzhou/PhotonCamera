.class public final Lhfs;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lei;

.field public final b:Lnph;

.field public final c:Lhgn;

.field public final d:Lhet;

.field public e:Z

.field public f:Landroid/view/View;

.field public g:Landroid/view/View;

.field public h:Liko;

.field public i:Lhyn;

.field public j:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field private final k:I

.field private l:Landroid/animation/AnimatorSet;


# direct methods
.method public constructor <init>(Lei;Lhgn;Lhet;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iput-object v0, p0, Lhfs;->b:Lnph;

    sget-object v0, Liko;->a:Liko;

    iput-object v0, p0, Lhfs;->h:Liko;

    sget-object v0, Lhyn;->b:Lhyn;

    iput-object v0, p0, Lhfs;->i:Lhyn;

    iput-object p1, p0, Lhfs;->a:Lei;

    iput-object p2, p0, Lhfs;->c:Lhgn;

    iput-object p3, p0, Lhfs;->d:Lhet;

    invoke-virtual {p1}, Lei;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0c00a6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lhfs;->k:I

    return-void
.end method


# virtual methods
.method public final a()Landroid/animation/Animator;
    .locals 3

    iget-object v0, p0, Lhfs;->g:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v1, p0, Lhfs;->k:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lgxg;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lgxg;-><init>(Lhfs;I)V

    invoke-static {v1}, Ljvd;->L(Ljava/util/function/Consumer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final b()Landroid/animation/Animator;
    .locals 3

    iget-object v0, p0, Lhfs;->g:Landroid/view/View;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget v1, p0, Lhfs;->k:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    new-instance v1, Lgxg;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lgxg;-><init>(Lhfs;I)V

    invoke-static {v1}, Ljvd;->K(Ljava/util/function/Consumer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method final c()V
    .locals 3

    iget-object v0, p0, Lhfs;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhfs;->f:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lhfs;->i:Lhyn;

    invoke-static {v0}, Ljji;->m(Lhyn;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lhfs;->b()Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {p0}, Lhfs;->a()Landroid/animation/Animator;

    move-result-object v1

    invoke-static {v0, v1}, Lmvv;->m(Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v0

    invoke-virtual {p0, v0}, Lhfs;->d(Ljava/util/List;)V

    :cond_1
    iget-object v0, p0, Lhfs;->a:Lei;

    iget-object v1, p0, Lhfs;->f:Landroid/view/View;

    iget-object v2, p0, Lhfs;->h:Liko;

    invoke-static {v0, v1, v2}, Ljji;->s(Landroid/content/Context;Landroid/view/View;Liko;)V

    iget-object v0, p0, Lhfs;->a:Lei;

    iget-object v1, p0, Lhfs;->f:Landroid/view/View;

    iget-object v2, p0, Lhfs;->h:Liko;

    invoke-static {v0, v1, v2}, Ljji;->t(Landroid/content/Context;Landroid/view/View;Liko;)V

    iget-object v0, p0, Lhfs;->d:Lhet;

    iget-object v1, p0, Lhfs;->h:Liko;

    invoke-interface {v0, v1}, Lhet;->e(Liko;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public final d(Ljava/util/List;)V
    .locals 1

    iget-boolean v0, p0, Lhfs;->e:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhfs;->l:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhfs;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lhfs;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    iget-object p1, p0, Lhfs;->l:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 8

    iget-object v0, p0, Lhfs;->g:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lzy;

    invoke-direct {v1}, Lzy;-><init>()V

    invoke-virtual {v1, v0}, Lzy;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v2, p0, Lhfs;->g:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4, v3}, Lzy;->g(IIII)V

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3, v4, v3}, Lzy;->g(IIII)V

    iget-object v3, p0, Lhfs;->i:Lhyn;

    invoke-static {v3}, Ljji;->m(Lhyn;)Z

    move-result v3

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x3

    const/4 v7, 0x4

    if-eqz v3, :cond_0

    invoke-virtual {v1, v2, v7, v4, v7}, Lzy;->g(IIII)V

    invoke-virtual {v1, v2, v6, v4, v6}, Lzy;->g(IIII)V

    invoke-virtual {v1, v2, v5}, Lzy;->r(IF)V

    const v3, 0x3f6b851f    # 0.92f

    invoke-virtual {v1, v2, v3}, Lzy;->s(IF)V

    goto :goto_0

    :cond_0
    const v3, 0x7f0b0399

    invoke-virtual {v1, v2, v7, v3, v7}, Lzy;->g(IIII)V

    invoke-virtual {v1, v2, v6, v3, v6}, Lzy;->g(IIII)V

    const v3, 0x3df5c28f    # 0.12f

    invoke-virtual {v1, v2, v3}, Lzy;->r(IF)V

    invoke-virtual {v1, v2, v5}, Lzy;->s(IF)V

    :goto_0
    invoke-virtual {v1, v0}, Lzy;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method
