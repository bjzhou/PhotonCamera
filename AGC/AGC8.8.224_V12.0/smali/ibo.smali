.class public final Libo;
.super Landroid/widget/LinearLayout;


# static fields
.field public static final a:Lnak;

.field private static final p:Likl;


# instance fields
.field public final b:Lmtc;

.field public final c:Ljava/util/HashMap;

.field public final d:Ljava/util/EnumSet;

.field public final e:Ljava/util/EnumMap;

.field public f:Z

.field public g:Landroid/widget/TextView;

.field public h:I

.field public i:I

.field public j:I

.field public k:Lika;

.field public final l:Landroid/graphics/drawable/Drawable;

.field public m:Landroid/animation/Animator;

.field public n:Lmqp;

.field public o:I

.field private q:Landroid/animation/Animator;

.field private final r:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/ui/modeswitcher/ModeList"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Libo;->a:Lnak;

    new-instance v0, Likl;

    invoke-direct {v0}, Likl;-><init>()V

    sput-object v0, Libo;->p:Likl;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    new-instance v0, Lmuk;

    const-class v1, Lika;

    invoke-direct {v0, v1}, Lmuk;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Libo;->b:Lmtc;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Libo;->c:Ljava/util/HashMap;

    const-class v0, Lika;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    iput-object v0, p0, Libo;->d:Ljava/util/EnumSet;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lika;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Libo;->e:Ljava/util/EnumMap;

    const/4 v0, 0x1

    iput v0, p0, Libo;->o:I

    sget-object v1, Lmpx;->a:Lmpx;

    iput-object v1, p0, Libo;->n:Lmqp;

    invoke-static {}, Ljuh;->a()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    instance-of v2, p1, Lcdd;

    if-eqz v2, :cond_0

    check-cast p1, Lcdd;

    invoke-interface {p1}, Lcdd;->a()Ldhi;

    move-result-object p1

    sget v2, Ldhn;->a:I

    invoke-interface {p1}, Ldhi;->c()V

    :cond_0
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Libo;->setVisibility(I)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Libo;->setAlpha(F)V

    const p1, 0x7f040178

    invoke-static {p0, p1}, Lkwp;->l(Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Libo;->h:I

    const p1, 0x7f040181

    invoke-static {p0, p1}, Lkwp;->l(Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Libo;->i:I

    const p1, 0x7f0401a5

    invoke-static {p0, p1}, Lkwp;->l(Landroid/view/View;I)I

    move-result p1

    iput p1, p0, Libo;->j:I

    const p1, 0x7f0c0081

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Libo;->r:I

    invoke-virtual {p0}, Libo;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f0802b9

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Libo;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v0, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    invoke-virtual {p0}, Libo;->a()Like;

    move-result-object p1

    iget v0, p0, Libo;->j:I

    invoke-interface {p1, v0}, Like;->setColor(I)V

    new-instance p1, Lhcl;

    const/4 v0, 0x5

    invoke-direct {p1, p0, v0}, Lhcl;-><init>(Libo;I)V

    invoke-virtual {p0, p1}, Libo;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private static f(Landroid/widget/TextView;)Landroid/graphics/Rect;
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTop()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getRight()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/TextView;->getBottom()I

    move-result p0

    invoke-direct {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method private final g(Landroid/widget/TextView;)V
    .locals 2

    iget-object v0, p0, Libo;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object v0, p0, Libo;->g:Landroid/widget/TextView;

    invoke-direct {p0, v0, v1}, Libo;->h(Landroid/widget/TextView;Z)V

    :cond_0
    iput-object p1, p0, Libo;->g:Landroid/widget/TextView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    iget-object p1, p0, Libo;->g:Landroid/widget/TextView;

    invoke-direct {p0, p1, v0}, Libo;->h(Landroid/widget/TextView;Z)V

    return-void
.end method

.method private final h(Landroid/widget/TextView;Z)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    iget-object p2, p0, Libo;->b:Lmtc;

    check-cast p2, Lmry;

    iget-object p2, p2, Lmry;->b:Lmry;

    invoke-interface {p2, p1}, Lmtc;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lika;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p2}, Lijy;->b(Lika;)Lijy;

    move-result-object p2

    invoke-virtual {p0}, Libo;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p2, v0}, Lijy;->c(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void

    :cond_1
    return-void
.end method


# virtual methods
.method final a()Like;
    .locals 2

    new-instance v0, Libm;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Libm;-><init>(Libo;I)V

    return-object v0
.end method

.method public final b(Lika;Z)V
    .locals 4

    invoke-static {}, Ljuh;->a()V

    iget-object v0, p0, Libo;->b:Lmtc;

    invoke-interface {v0}, Lmtc;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Libo;->b:Lmtc;

    invoke-interface {v0, p1}, Lmtc;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "attempted to activate non-existent mode "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmoz;->f(ZLjava/lang/Object;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    if-nez v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Libo;->g:Landroid/widget/TextView;

    if-eq v1, v0, :cond_4

    if-eqz p2, :cond_3

    invoke-virtual {p0, p1}, Libo;->d(Lika;)V

    goto :goto_1

    :cond_3
    invoke-virtual {p0, v0}, Libo;->e(Landroid/widget/TextView;)V

    :cond_4
    :goto_1
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    iget-object p1, p0, Libo;->n:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Libo;->n:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLeft()I

    move-result v1

    invoke-virtual {v0}, Landroid/widget/TextView;->getRight()I

    move-result v0

    add-int/2addr v1, v0

    iget-object p1, p1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p1, v1, p2}, Lcom/google/android/apps/camera/ui/modeswitcher/ModeSwitcher;->f(IZ)V

    :cond_5
    return-void
.end method

.method public final c(ZZ)V
    .locals 2

    if-eqz p2, :cond_2

    iget-object p2, p0, Libo;->q:Landroid/animation/Animator;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/animation/Animator;->end()V

    :cond_0
    const-string p2, "alpha"

    const/4 v0, 0x2

    if-eqz p1, :cond_1

    new-array p1, v0, [F

    fill-array-data p1, :array_0

    invoke-static {p0, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-array p1, v0, [F

    fill-array-data p1, :array_1

    invoke-static {p0, p2, p1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    :goto_0
    const-wide/16 v0, 0xd9

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    iput-object p1, p0, Libo;->q:Landroid/animation/Animator;

    return-void

    :cond_2
    const/4 p2, 0x1

    if-eq p2, p1, :cond_3

    const/4 p1, 0x0

    goto :goto_1

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    :goto_1
    invoke-virtual {p0, p1}, Libo;->setAlpha(F)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final d(Lika;)V
    .locals 6

    iget-object v0, p0, Libo;->m:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iget v1, p0, Libo;->r:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    iget-object v1, p0, Libo;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Libo;->l:Landroid/graphics/drawable/Drawable;

    sget-object v3, Libo;->p:Likl;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    iget-object v1, p0, Libo;->b:Lmtc;

    invoke-interface {v1, p1}, Lmtc;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-static {v1}, Libo;->f(Landroid/widget/TextView;)Landroid/graphics/Rect;

    move-result-object v1

    const/4 v5, 0x1

    aput-object v1, v4, v5

    const-string v1, "bounds"

    invoke-static {v2, v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofObject(Ljava/lang/Object;Ljava/lang/String;Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ObjectAnimator;

    move-result-object v1

    new-instance v2, Liba;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Liba;-><init>(Libo;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, p0, Libo;->g:Landroid/widget/TextView;

    iget v3, p0, Libo;->h:I

    iget v4, p0, Libo;->i:I

    filled-new-array {v3, v4}, [I

    move-result-object v3

    const-string v4, "textColor"

    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v3, p0, Libo;->b:Lmtc;

    invoke-interface {v3, p1}, Lmtc;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0, p1}, Libo;->g(Landroid/widget/TextView;)V

    iget-object p1, p0, Libo;->g:Landroid/widget/TextView;

    iget v3, p0, Libo;->i:I

    iget v5, p0, Libo;->h:I

    filled-new-array {v3, v5}, [I

    move-result-object v3

    invoke-static {p1, v4, v3}, Landroid/animation/ObjectAnimator;->ofArgb(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {p1, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {p0}, Libo;->invalidate()V

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iput-object v0, p0, Libo;->m:Landroid/animation/Animator;

    return-void
.end method

.method public final e(Landroid/widget/TextView;)V
    .locals 2

    iget-object v0, p0, Libo;->m:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    :cond_0
    iget-object v0, p0, Libo;->g:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget v1, p0, Libo;->i:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget v0, p0, Libo;->h:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Libo;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Libo;->f(Landroid/widget/TextView;)Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Libo;->g(Landroid/widget/TextView;)V

    invoke-virtual {p0}, Libo;->invalidate()V

    return-void
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Libo;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Libo;->l:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void

    :cond_0
    sget-object p1, Libo;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "highlight chip is not visible"

    const/16 v1, 0x1015

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void
.end method

.method protected final onLayout(ZIIII)V
    .locals 4

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    iget p1, p0, Libo;->o:I

    const/4 p2, 0x3

    const/4 p3, 0x0

    const/4 p4, 0x1

    const/4 p5, 0x2

    if-eq p1, p5, :cond_0

    if-ne p1, p2, :cond_5

    :cond_0
    invoke-static {}, Ljuh;->a()V

    monitor-enter p0

    :try_start_0
    iget-boolean p1, p0, Libo;->f:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Libo;->d:Ljava/util/EnumSet;

    invoke-static {p1}, Ljava/util/EnumSet;->copyOf(Ljava/util/EnumSet;)Ljava/util/EnumSet;

    move-result-object p1

    iput-boolean p3, p0, Libo;->f:Z

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_5

    iget-object v0, p0, Libo;->b:Lmtc;

    invoke-interface {v0}, Lmtc;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lika;

    iget-object v2, p0, Libo;->b:Lmtc;

    invoke-interface {v2, v1}, Lmtc;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_2

    :cond_3
    const/4 v2, 0x1

    :goto_2
    invoke-virtual {p1, v1}, Ljava/util/EnumSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eq v2, v3, :cond_2

    iget-object v2, p0, Libo;->e:Ljava/util/EnumMap;

    invoke-virtual {v2, v1}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Licq;

    if-eqz v1, :cond_2

    if-eqz v3, :cond_4

    invoke-virtual {v1}, Licq;->b()V

    goto :goto_1

    :cond_4
    invoke-virtual {v1, p4}, Licq;->a(Z)V

    goto :goto_1

    :cond_5
    iget p1, p0, Libo;->o:I

    if-ne p1, p5, :cond_8

    invoke-static {p4}, Lmoz;->p(Z)V

    invoke-static {p0}, Lafc;->c(Landroid/view/View;)I

    move-result p1

    iget-object p5, p0, Libo;->k:Lika;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne p1, p4, :cond_6

    const/4 p1, 0x1

    goto :goto_3

    :cond_6
    const/4 p1, 0x0

    :goto_3
    invoke-virtual {p0, p5, p1}, Libo;->b(Lika;Z)V

    invoke-virtual {p0}, Libo;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-virtual {p0, p3}, Libo;->setVisibility(I)V

    invoke-virtual {p0, p4, p3}, Libo;->c(ZZ)V

    :cond_7
    iput p2, p0, Libo;->o:I

    :cond_8
    iget-object p1, p0, Libo;->g:Landroid/widget/TextView;

    if-eqz p1, :cond_9

    iget-object p2, p0, Libo;->l:Landroid/graphics/drawable/Drawable;

    invoke-static {p1}, Libo;->f(Landroid/widget/TextView;)Landroid/graphics/Rect;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :cond_9
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method protected final onMeasure(II)V
    .locals 9

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-static {}, Ljuh;->a()V

    new-instance v0, Landroid/util/Size;

    invoke-direct {v0, p1, p2}, Landroid/util/Size;-><init>(II)V

    iget-object v1, p0, Libo;->c:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Libn;

    if-nez v1, :cond_7

    new-instance v1, Libn;

    invoke-direct {v1}, Libn;-><init>()V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-virtual {p0}, Libo;->getChildCount()I

    move-result v6

    if-ge v3, v6, :cond_0

    invoke-virtual {p0, v3}, Libo;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v4, v6

    invoke-virtual {p0, v3}, Libo;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iput v4, v1, Libn;->a:I

    iput v5, v1, Libn;->b:I

    const/4 v3, 0x1

    if-lez v4, :cond_1

    if-lez v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    invoke-static {p0}, Lafc;->c(Landroid/view/View;)I

    move-result v6

    invoke-virtual {p0}, Libo;->getChildCount()I

    move-result v7

    if-lez v7, :cond_6

    if-ne v6, v3, :cond_2

    const/4 v6, 0x1

    goto :goto_2

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_3

    invoke-virtual {p0}, Libo;->getChildCount()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {p0, v7}, Libo;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    goto :goto_3

    :cond_3
    invoke-virtual {p0, v2}, Libo;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    :goto_3
    if-eqz v6, :cond_4

    invoke-virtual {p0, v2}, Libo;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Libo;->getChildCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p0, v6}, Libo;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    :goto_4
    if-eqz v7, :cond_5

    if-eqz v6, :cond_5

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v8

    if-lez v8, :cond_5

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v5, v2

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    div-int/lit8 v2, v2, 0x2

    goto :goto_5

    :cond_5
    goto :goto_6

    :cond_6
    const/4 v5, 0x0

    :goto_5
    iput v2, v1, Libn;->c:I

    iput v5, v1, Libn;->d:I

    const/4 v2, 0x1

    :goto_6
    if-eqz v4, :cond_7

    if-eqz v2, :cond_7

    iget-object v2, p0, Libo;->c:Ljava/util/HashMap;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7

    :cond_7
    :goto_7
    iget v0, v1, Libn;->c:I

    invoke-virtual {p0}, Libo;->getPaddingTop()I

    move-result v2

    iget v3, v1, Libn;->d:I

    invoke-virtual {p0}, Libo;->getPaddingBottom()I

    move-result v4

    invoke-virtual {p0, v0, v2, v3, v4}, Libo;->setPadding(IIII)V

    iget v0, v1, Libn;->a:I

    iget v2, v1, Libn;->c:I

    add-int/2addr v0, v2

    iget v2, v1, Libn;->d:I

    add-int/2addr v0, v2

    invoke-static {v0, p1}, Libo;->resolveSize(II)I

    move-result p1

    iget v0, v1, Libn;->b:I

    invoke-static {v0, p2}, Libo;->resolveSize(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Libo;->setMeasuredDimension(II)V

    return-void
.end method
