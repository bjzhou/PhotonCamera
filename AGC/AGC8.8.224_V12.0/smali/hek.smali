.class public final Lhek;
.super Ljava/lang/Object;

# interfaces
.implements Lhet;


# instance fields
.field public final a:Lei;

.field protected final b:Lmrl;

.field protected final c:I

.field protected final d:Landroid/view/WindowManager;

.field protected final e:Lhmd;

.field public final f:Landroid/graphics/Rect;

.field public g:Landroid/widget/FrameLayout;

.field public h:Landroid/view/ViewGroup;

.field public i:Landroid/view/View;

.field private j:Lchd;

.field private k:Liko;


# direct methods
.method public constructor <init>(Lei;Lhmd;Lmrl;Landroid/view/WindowManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhek;->a:Lei;

    iput-object p2, p0, Lhek;->e:Lhmd;

    iput-object p3, p0, Lhek;->b:Lmrl;

    iput-object p4, p0, Lhek;->d:Landroid/view/WindowManager;

    invoke-virtual {p1}, Lei;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0c00a6

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lhek;->c:I

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lhek;->f:Landroid/graphics/Rect;

    return-void
.end method

.method private final h(Lchd;Lmrl;)Lmqp;
    .locals 1

    invoke-interface {p1}, Lchd;->b()Lche;

    move-result-object p1

    invoke-interface {p1}, Lche;->e()Lkaf;

    move-result-object p1

    invoke-static {p1}, Ljzr;->g(Lkaf;)Ljzr;

    move-result-object p1

    sget-object v0, Ljzr;->a:Ljzr;

    invoke-virtual {v0, p1}, Ljzr;->m(Ljzr;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Ljzr;->a:Ljzr;

    invoke-virtual {v0, p1}, Ljzr;->n(Ljzr;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    sget-object v0, Ljzr;->b:Ljzr;

    invoke-virtual {v0, p1}, Ljzr;->m(Ljzr;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Ljzr;->b:Ljzr;

    invoke-virtual {v0, p1}, Ljzr;->n(Ljzr;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    sget-object p1, Lmpx;->a:Lmpx;

    return-object p1

    :cond_2
    :goto_0
    sget-object p1, Ljzr;->b:Ljzr;

    invoke-virtual {p0, p1, p2}, Lhek;->a(Ljzr;Lmrl;)Lmqp;

    move-result-object p1

    return-object p1

    :cond_3
    :goto_1
    sget-object p1, Ljzr;->a:Ljzr;

    invoke-virtual {p0, p1, p2}, Lhek;->a(Ljzr;Lmrl;)Lmqp;

    move-result-object p1

    return-object p1
.end method

.method private final i()V
    .locals 5

    iget-object v0, p0, Lhek;->i:Landroid/view/View;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lhek;->f:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lhek;->f:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    iget-object v3, p0, Lhek;->f:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iget-object v4, p0, Lhek;->f:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method private final j(Lmqp;)V
    .locals 4

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p1, p0, Lhek;->f:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    return-void

    :cond_0
    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyq;

    iget-object v0, v0, Lhyq;->k:Landroid/graphics/Rect;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhyq;

    iget-object p1, p1, Lhyq;->e:Landroid/graphics/Rect;

    sget-object v1, Liko;->b:Liko;

    iget-object v2, p0, Lhek;->k:Liko;

    invoke-virtual {v1, v2}, Liko;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lhek;->f:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v1, p1, v2, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_1
    sget-object v1, Liko;->c:Liko;

    iget-object v3, p0, Lhek;->k:Liko;

    invoke-virtual {v1, v3}, Liko;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    sub-int/2addr v0, p1

    iget-object p1, p0, Lhek;->f:Landroid/graphics/Rect;

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0, v2, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_2
    iget-object v1, p0, Lhek;->b:Lmrl;

    invoke-interface {v1}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhyt;

    iget-object v1, v1, Lhyt;->a:Lhys;

    iget-object v1, v1, Lhys;->i:Lhyn;

    sget-object v3, Lhyn;->b:Lhyn;

    invoke-virtual {v1, v3}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Lhyn;->c:Lhyn;

    invoke-virtual {v1, v3}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lhek;->f:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v1, v2, p1, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method protected final a(Ljzr;Lmrl;)Lmqp;
    .locals 5

    sget-object v0, Ljzr;->a:Ljzr;

    invoke-virtual {v0, p1}, Ljzr;->m(Ljzr;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    sget-object v0, Ljzr;->b:Ljzr;

    invoke-virtual {v0, p1}, Ljzr;->m(Ljzr;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :goto_0
    invoke-static {v1}, Lmoz;->p(Z)V

    iget-object v0, p0, Lhek;->b:Lmrl;

    invoke-interface {v0}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhyt;

    iget-object v1, v0, Lhyt;->a:Lhys;

    iget-object v2, v1, Lhys;->b:Landroid/util/Size;

    if-nez v2, :cond_2

    sget-object p1, Lmpx;->a:Lmpx;

    return-object p1

    :cond_2
    iget-object v3, v1, Lhys;->d:Landroid/util/Size;

    if-nez v3, :cond_3

    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    invoke-static {v3}, Ljzr;->i(Landroid/util/Size;)Ljzr;

    move-result-object v3

    :goto_1
    if-eqz v3, :cond_5

    invoke-virtual {v3, p1}, Ljzr;->m(Ljzr;)Z

    move-result v3

    if-nez v3, :cond_4

    goto :goto_2

    :cond_4
    iget-object p1, v0, Lhyt;->b:Lhyq;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    return-object p1

    :cond_5
    :goto_2
    sget-object v0, Liko;->b:Liko;

    iget-object v3, v1, Lhys;->g:Liko;

    invoke-virtual {v0, v3}, Liko;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Liko;->c:Liko;

    iget-object v3, v1, Lhys;->g:Liko;

    invoke-virtual {v0, v3}, Liko;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    goto :goto_3

    :cond_6
    new-instance v0, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v2}, Ljzr;->b(F)F

    move-result p1

    float-to-int p1, p1

    invoke-direct {v0, v3, p1}, Landroid/util/Size;-><init>(II)V

    goto :goto_4

    :cond_7
    :goto_3
    new-instance v0, Landroid/util/Size;

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p1, Ljzr;->d:I

    int-to-float v4, v4

    iget p1, p1, Ljzr;->e:I

    int-to-float p1, p1

    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    move-result v2

    mul-float v3, v3, v4

    div-float/2addr v3, p1

    float-to-int p1, v3

    invoke-direct {v0, p1, v2}, Landroid/util/Size;-><init>(II)V

    :goto_4
    invoke-virtual {v1}, Lhys;->b()Lhyr;

    move-result-object p1

    iput-object v0, p1, Lhyr;->b:Landroid/util/Size;

    invoke-virtual {p1}, Lhyr;->a()Lhys;

    move-result-object p1

    iget-object v0, p0, Lhek;->a:Lei;

    iget-object v1, p0, Lhek;->d:Landroid/view/WindowManager;

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-static {v0, v1}, Ljji;->n(Landroid/content/Context;Landroid/view/Display;)Z

    move-result v0

    iget-object v1, p0, Lhek;->a:Lei;

    iget-object v2, p0, Lhek;->e:Lhmd;

    invoke-static {p1, v0, v1, v2, p2}, Lhyo;->d(Lhys;ZLandroid/content/Context;Lhmd;Lmrl;)Lhyq;

    move-result-object p1

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    return-object p1
.end method

.method protected final b()V
    .locals 2

    iget-object v0, p0, Lhek;->a:Lei;

    invoke-virtual {v0}, Lbz;->bI()Lcq;

    move-result-object v0

    const-string v1, "VIDEO_PLAYER_TAG"

    invoke-virtual {v0, v1}, Lcq;->e(Ljava/lang/String;)Lbw;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcq;->i()Lcx;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcx;->k(Lbw;)V

    invoke-virtual {v0}, Lcx;->b()V

    :cond_0
    return-void
.end method

.method public final c(Z)V
    .locals 5

    invoke-virtual {p0}, Lhek;->b()V

    iget-object v0, p0, Lhek;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lbnd;

    const/16 v2, 0xf

    invoke-direct {v1, p0, p1, v2}, Lbnd;-><init>(Lhek;ZI)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v2

    const/16 v3, 0x8

    const/4 v4, 0x0

    cmpl-float v2, v2, v4

    if-nez v2, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-eq v2, v3, :cond_2

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v0, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    :cond_1
    iget p1, p0, Lhek;->c:I

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v2

    mul-float p1, p1, v2

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    float-to-int p1, p1

    int-to-long v3, p1

    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v2, Lhdg;

    const/16 v3, 0x9

    invoke-direct {v2, v0, v1, v3}, Lhdg;-><init>(Landroid/view/View;Ljava/lang/Runnable;I)V

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_2
    :goto_0
    const/4 p1, 0x0

    iput-object p1, p0, Lhek;->j:Lchd;

    return-void
.end method

.method public final d(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0b033b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0b0336

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const v0, 0x7f0b0337

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lhek;->g:Landroid/widget/FrameLayout;

    const v0, 0x7f0b0339

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lhek;->h:Landroid/view/ViewGroup;

    return-void
.end method

.method public final e(Liko;)V
    .locals 3

    iput-object p1, p0, Lhek;->k:Liko;

    iget-object p1, p0, Lhek;->j:Lchd;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lhek;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ldet;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Ldet;-><init>(Landroid/widget/FrameLayout;I)V

    invoke-direct {p0, p1, v1}, Lhek;->h(Lchd;Lmrl;)Lmqp;

    move-result-object p1

    invoke-direct {p0, p1}, Lhek;->j(Lmqp;)V

    invoke-direct {p0}, Lhek;->i()V

    iget-object p1, p0, Lhek;->a:Lei;

    invoke-virtual {p1}, Lbz;->bI()Lcq;

    move-result-object p1

    const-string v0, "VIDEO_PLAYER_TAG"

    invoke-virtual {p1, v0}, Lcq;->e(Ljava/lang/String;)Lbw;

    move-result-object p1

    instance-of v0, p1, Line;

    if-eqz v0, :cond_0

    check-cast p1, Line;

    iget-object v0, p0, Lhek;->f:Landroid/graphics/Rect;

    iget-object p1, p1, Line;->a:Liof;

    invoke-virtual {p1, v0}, Liof;->d(Landroid/graphics/Rect;)V

    :cond_0
    return-void
.end method

.method public final f(Landroid/view/View$OnTouchListener;)V
    .locals 1

    iget-object v0, p0, Lhek;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public final g(Lchd;)V
    .locals 6

    iget-object v0, p0, Lhek;->j:Lchd;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    :goto_0
    invoke-static {v1}, Lmoz;->p(Z)V

    iget-object v0, p0, Lhek;->j:Lchd;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    instance-of v0, p1, Ldjt;

    if-eqz v0, :cond_3

    move-object v0, p1

    check-cast v0, Ldjt;

    iget-object v1, p0, Lhek;->i:Landroid/view/View;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v1}, Ldjt;->k(Landroid/view/View;)Ldjk;

    move-result-object v1

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    iget-object v1, v1, Ldjk;->a:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    :goto_1
    invoke-static {v1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    iput-object v1, v0, Ldjt;->g:Lmqp;

    :cond_3
    iput-object p1, p0, Lhek;->j:Lchd;

    iget-object v0, p0, Lhek;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Ldet;

    const/4 v3, 0x3

    invoke-direct {v1, v0, v3}, Ldet;-><init>(Landroid/widget/FrameLayout;I)V

    invoke-direct {p0, p1, v1}, Lhek;->h(Lchd;Lmrl;)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lhek;->j:Lchd;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v1}, Lchd;->b()Lche;

    move-result-object v1

    invoke-interface {v1}, Lche;->e()Lkaf;

    move-result-object v1

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhyq;

    iget-object v3, v3, Lhyq;->e:Landroid/graphics/Rect;

    invoke-static {v3}, Lkaf;->g(Landroid/graphics/Rect;)Lkaf;

    move-result-object v3

    invoke-virtual {v1}, Lkaf;->k()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v3}, Lkaf;->d()Lkaf;

    move-result-object v1

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lkaf;->e()Lkaf;

    move-result-object v1

    :goto_2
    iget-object v3, p0, Lhek;->j:Lchd;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v1, Lkaf;->a:I

    iget v1, v1, Lkaf;->b:I

    invoke-interface {v3, v4, v1}, Lchd;->h(II)V

    :cond_5
    iget-object v1, p0, Lhek;->i:Landroid/view/View;

    invoke-static {v1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    iget-object v3, p0, Lhek;->g:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p1, v1, v3}, Lchd;->a(Lmqp;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lhek;->i:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0, v0}, Lhek;->j(Lmqp;)V

    invoke-direct {p0}, Lhek;->i()V

    iget-object v0, p0, Lhek;->i:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_6

    iget-object v0, p0, Lhek;->g:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lhek;->i:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :cond_6
    iget-object v0, p0, Lhek;->g:Landroid/widget/FrameLayout;

    new-instance v1, Lhdg;

    const/16 v3, 0xa

    invoke-direct {v1, p0, p1, v3}, Lhdg;-><init>(Lhek;Lchd;I)V

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result p1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v3

    if-nez p1, :cond_7

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_7

    return-void

    :cond_7
    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result p1

    const v4, 0x38d1b717    # 1.0E-4f

    invoke-static {p1, v4}, Ljava/lang/Math;->max(FF)F

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget p1, p0, Lhek;->c:I

    int-to-float p1, p1

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v2

    sub-float v2, v3, v2

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    mul-float p1, p1, v2

    float-to-int p1, p1

    int-to-long v4, p1

    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v2, Lhdg;

    const/16 v3, 0x8

    invoke-direct {v2, v0, v1, v3}, Lhdg;-><init>(Landroid/view/View;Ljava/lang/Runnable;I)V

    invoke-virtual {p1, v2}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
