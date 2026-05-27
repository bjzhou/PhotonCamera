.class public final Lhgm;
.super Landroid/widget/LinearLayout;


# instance fields
.field public final a:Lj$/time/Duration;

.field public final b:Ljava/util/ArrayList;

.field public final c:Landroid/view/View;

.field public d:Landroid/graphics/drawable/GradientDrawable;

.field public e:Lhgh;

.field public f:I

.field public final g:Ljew;

.field private final h:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 5

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    iput v0, p0, Lhgm;->f:I

    iput-boolean p2, p0, Lhgm;->h:Z

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0c00a6

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    int-to-long v1, p2

    invoke-static {v1, v2}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object p2

    iput-object p2, p0, Lhgm;->a:Lj$/time/Duration;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lhgm;->b:Ljava/util/ArrayList;

    new-instance p2, Ljew;

    const/4 v1, 0x0

    invoke-direct {p2, v1, v1}, Ljew;-><init>([C[B)V

    iput-object p2, p0, Lhgm;->g:Ljew;

    instance-of p2, p1, Lcdd;

    if-eqz p2, :cond_0

    move-object p2, p1

    check-cast p2, Lcdd;

    invoke-interface {p2}, Lcdd;->a()Ldhi;

    move-result-object p2

    sget-object v2, Ldho;->be:Ldhj;

    invoke-interface {p2, v2}, Ldhi;->l(Ldhj;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f07066e

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const v3, 0x7f07066f

    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const v4, 0x7f07066d

    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-direct {v2, v3, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p2, 0x0

    invoke-virtual {v2, p2, v1, p2, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    new-instance p2, Landroid/view/View;

    invoke-direct {p2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lhgm;->c:Landroid/view/View;

    const p1, 0x106000b

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p2, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_0
    iput-object v1, p0, Lhgm;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final a(I)I
    .locals 1

    invoke-virtual {p0}, Lhgm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    return p1
.end method

.method public final b()I
    .locals 1

    const v0, 0x7f070601

    invoke-virtual {p0, v0}, Lhgm;->a(I)I

    move-result v0

    return v0
.end method

.method public final c()I
    .locals 2

    const v0, 0x7f07067e

    invoke-virtual {p0, v0}, Lhgm;->a(I)I

    move-result v0

    const v1, 0x7f07067f

    invoke-virtual {p0, v1}, Lhgm;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x7f070673

    invoke-virtual {p0, v1}, Lhgm;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    const v1, 0x7f07067d

    invoke-virtual {p0, v1}, Lhgm;->a(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final d()Landroid/animation/Animator;
    .locals 6

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0}, Lhgm;->setAlpha(F)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lhgm;->h(I)V

    iget-boolean v1, p0, Lhgm;->h:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhgm;->g:Ljew;

    invoke-static {}, Ljuh;->a()V

    iget-object v1, v1, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhgi;

    if-eqz v5, :cond_0

    invoke-interface {v5}, Lhgi;->d()V

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lhgm;->g:Ljew;

    invoke-static {}, Ljuh;->a()V

    iget-object v1, v1, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_3

    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lhgi;

    if-eqz v5, :cond_2

    invoke-interface {v5}, Lhgi;->b()V

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    new-array v3, v1, [I

    aput v2, v3, v2

    iget-boolean v2, p0, Lhgm;->h:Z

    if-eqz v2, :cond_4

    const v2, 0x7f07067e

    invoke-virtual {p0, v2}, Lhgm;->a(I)I

    move-result v2

    const v4, 0x7f070601

    invoke-virtual {p0, v4}, Lhgm;->a(I)I

    move-result v4

    div-int/2addr v4, v1

    add-int/2addr v2, v4

    goto :goto_2

    :cond_4
    invoke-virtual {p0}, Lhgm;->c()I

    move-result v2

    :goto_2
    aput v2, v3, v0

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget-object v1, p0, Lhgm;->a:Lj$/time/Duration;

    invoke-virtual {v1}, Lj$/time/Duration;->toMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lgxg;

    const/16 v2, 0xc

    invoke-direct {v1, p0, v2}, Lgxg;-><init>(Lhgm;I)V

    invoke-static {v1}, Ljvd;->L(Ljava/util/function/Consumer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lgxg;

    const/16 v2, 0xd

    invoke-direct {v1, p0, v2}, Lgxg;-><init>(Lhgm;I)V

    invoke-static {v1}, Ljvd;->K(Ljava/util/function/Consumer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    new-instance v1, Lafx;

    const/16 v2, 0x10

    invoke-direct {v1, p0, v2}, Lafx;-><init>(Lhgm;I)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-object v0
.end method

.method public final e(I)V
    .locals 1

    iget-object v0, p0, Lhgm;->e:Lhgh;

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lhgm;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lhgm;->e:Lhgh;

    invoke-virtual {p0, v0, p1}, Lhgm;->addView(Landroid/view/View;I)V

    :cond_0
    return-void
.end method

.method public final f(Z)V
    .locals 3

    iget-object v0, p0, Lhgm;->e:Lhgh;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lhgh;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lhgm;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lhgk;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lhgk;-><init>(ZI)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final g(Lmqp;)V
    .locals 3

    iget-object v0, p0, Lhgm;->b:Ljava/util/ArrayList;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lgxg;

    const/16 v2, 0xe

    invoke-direct {v1, p1, v2}, Lgxg;-><init>(Lmqp;I)V

    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->forEachOrdered(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final h(I)V
    .locals 10

    const v0, 0x7f07067a

    invoke-virtual {p0, v0}, Lhgm;->a(I)I

    move-result v0

    iput p1, p0, Lhgm;->f:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x3

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v6, 0x6

    const/4 v7, 0x7

    const/16 v8, 0x8

    const/4 v9, 0x1

    if-ne p1, v9, :cond_0

    iget-object p1, p0, Lhgm;->d:Landroid/graphics/drawable/GradientDrawable;

    new-array v8, v8, [F

    int-to-float v0, v0

    aput v0, v8, v1

    aput v0, v8, v9

    aput v0, v8, v2

    aput v0, v8, v3

    const/4 v0, 0x0

    aput v0, v8, v4

    aput v0, v8, v5

    aput v0, v8, v6

    aput v0, v8, v7

    invoke-virtual {p1, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-void

    :cond_0
    iget-object p1, p0, Lhgm;->d:Landroid/graphics/drawable/GradientDrawable;

    new-array v8, v8, [F

    int-to-float v0, v0

    aput v0, v8, v1

    aput v0, v8, v9

    aput v0, v8, v2

    aput v0, v8, v3

    aput v0, v8, v4

    aput v0, v8, v5

    aput v0, v8, v6

    aput v0, v8, v7

    invoke-virtual {p1, v8}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadii([F)V

    return-void
.end method
