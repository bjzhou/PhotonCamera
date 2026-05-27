.class public final Lhwi;
.super Lcom/google/android/apps/camera/ui/widget/TracedFrameLayout;


# instance fields
.field public a:I

.field public b:Lhwh;

.field public final c:Landroid/view/ViewGroup;

.field public d:Z

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/android/apps/camera/ui/widget/TracedFrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lhwi;->a:I

    new-instance v0, Lhwg;

    invoke-direct {v0, p0}, Lhwg;-><init>(Lhwi;)V

    iput-object v0, p0, Lhwi;->f:Landroid/os/Handler;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhwi;->d:Z

    iput-object p1, p0, Lhwi;->c:Landroid/view/ViewGroup;

    const-string v0, "countdown"

    invoke-virtual {p0, v0}, Lhwi;->setTag(Ljava/lang/Object;)V

    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v1, 0x0

    const v2, 0x7f1501b2

    invoke-direct {v0, p1, v1, v2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-static {v0}, Ljvd;->C(Landroid/view/View;)V

    iput-object v0, p0, Lhwi;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextAppearance(I)V

    const/16 p1, 0x11

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setGravity(I)V

    invoke-virtual {p0, v0}, Lhwi;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget v0, p0, Lhwi;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lhwi;->a:I

    iget-object v0, p0, Lhwi;->f:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lhwi;->c:Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public final b(ZI)V
    .locals 7

    iput p2, p0, Lhwi;->a:I

    iget-object v0, p0, Lhwi;->b:Lhwh;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_d

    if-eqz p1, :cond_1

    move-object v4, v0

    check-cast v4, Lhwc;

    iget-object v5, v4, Lhwc;->b:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lhwc;->b:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->interrupt()V

    :cond_0
    iget-object v4, v4, Lhwc;->d:Ldpl;

    invoke-virtual {v4}, Ldpl;->b()V

    goto :goto_0

    :cond_1
    if-nez p2, :cond_2

    move-object p2, v0

    check-cast p2, Lhwc;

    iget-object p2, p2, Lhwc;->d:Ldpl;

    invoke-virtual {p2}, Ldpl;->c()V

    const/4 p2, 0x0

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v4, p2

    :goto_1
    move-object v5, v0

    check-cast v5, Lhwc;

    iget-object v6, v5, Lhwc;->n:Lhwf;

    if-nez v6, :cond_3

    goto/16 :goto_6

    :cond_3
    if-eqz p1, :cond_5

    iget-object p1, v5, Lhwc;->h:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, v5, Lhwc;->h:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lckq;

    invoke-interface {p1}, Lckq;->u()V

    :cond_4
    iget-object p1, v5, Lhwc;->n:Lhwf;

    invoke-interface {p1}, Lhwf;->b()V

    goto :goto_2

    :cond_5
    invoke-interface {v6, p2}, Lhwf;->bS(I)V

    :goto_2
    if-nez p2, :cond_7

    iget-object p1, v5, Lhwc;->n:Lhwf;

    invoke-interface {p1}, Lhwf;->a()V

    iget-object p1, v5, Lhwc;->h:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, v5, Lhwc;->h:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lckq;

    invoke-interface {p1}, Lckq;->g()V

    :cond_6
    iget-object p1, v5, Lhwc;->k:Lgdz;

    invoke-virtual {p1}, Lgdz;->e()V

    goto/16 :goto_6

    :cond_7
    iget-object p1, v5, Lhwc;->m:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, v5, Lhwc;->c:Ldbf;

    invoke-virtual {p1}, Ldbf;->j()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, v5, Lhwc;->e:Ldhi;

    sget-object v6, Ldho;->bK:Ldhj;

    invoke-interface {p1, v6}, Ldhi;->l(Ldhj;)Z

    move-result p1

    if-eqz p1, :cond_c

    invoke-static {}, Lgxb;->e()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, v5, Lhwc;->g:Ljwb;

    invoke-interface {p1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_c

    iget-object p1, v5, Lhwc;->f:Ljvs;

    invoke-interface {p1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_c

    iget-object p1, v5, Lhwc;->j:Lhnb;

    invoke-interface {p1}, Lhnb;->e()Lhna;

    move-result-object p1

    iget-object v6, v5, Lhwc;->i:Lhna;

    invoke-virtual {p1, v6}, Lhna;->a(Lhna;)Z

    move-result p1

    if-eqz p1, :cond_8

    goto :goto_5

    :cond_8
    if-le p2, v2, :cond_9

    iget-object p1, v5, Lhwc;->m:Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lken;

    :try_start_0
    invoke-interface {p1}, Lken;->d()Lker;

    move-result-object p1

    move-object v4, v0

    check-cast v4, Lhwc;

    iput-object p1, v4, Lhwc;->o:Lker;

    move-object p1, v0

    check-cast p1, Lhwc;

    iget-object p1, p1, Lhwc;->o:Lker;

    check-cast v0, Lhwc;

    invoke-virtual {v0, v2, p1, v3, v3}, Lhwc;->b(ZLker;ZZ)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lkdf; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    goto :goto_3

    :catch_1
    move-exception p1

    :cond_9
    :goto_3
    const/4 p1, 0x3

    if-le p2, p1, :cond_a

    const/16 p1, 0x12c

    invoke-virtual {v5, v3, p1, v2, v3}, Lhwc;->c(ZIZZ)V

    goto :goto_7

    :cond_a
    if-le p2, v2, :cond_d

    const/16 p1, 0x42

    invoke-virtual {v5, v3, p1, v3, v3}, Lhwc;->c(ZIZZ)V

    const/16 p1, 0x84

    invoke-virtual {v5, v2, p1, v3, v3}, Lhwc;->c(ZIZZ)V

    if-gt p2, v1, :cond_b

    const/4 p1, 0x1

    goto :goto_4

    :cond_b
    const/4 p1, 0x0

    :goto_4
    const/16 v0, 0xc6

    invoke-virtual {v5, v3, v0, v2, p1}, Lhwc;->c(ZIZZ)V

    goto :goto_7

    :cond_c
    :goto_5
    sget-object p1, Lhwc;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string p2, "Should not fire Led indicator"

    const/16 v0, 0xf9d

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :goto_6
    move p2, v4

    :cond_d
    :goto_7
    if-nez p2, :cond_e

    iget-object p1, p0, Lhwi;->c:Landroid/view/ViewGroup;

    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void

    :cond_e
    invoke-virtual {p0}, Lhwi;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v0, v3

    const-string p2, "%d"

    invoke-static {p1, p2, v0}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lhwi;->e:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    iget-object p2, p0, Lhwi;->e:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lhwi;->e:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    iget-boolean p1, p0, Lhwi;->d:Z

    if-eqz p1, :cond_f

    invoke-virtual {p0}, Lhwi;->d()V

    :cond_f
    iget-object p1, p0, Lhwi;->f:Landroid/os/Handler;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p1, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public final c()V
    .locals 5

    iget-object v0, p0, Lhwi;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, p0, Lhwi;->e:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    if-lez v0, :cond_1

    if-gtz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lhwi;->e:Landroid/widget/TextView;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setScaleX(F)V

    iget-object v2, p0, Lhwi;->e:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setScaleY(F)V

    iget-object v2, p0, Lhwi;->e:Landroid/widget/TextView;

    int-to-float v0, v0

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v0, v4

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setPivotX(F)V

    iget-object v0, p0, Lhwi;->e:Landroid/widget/TextView;

    int-to-float v1, v1

    div-float/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setPivotY(F)V

    iget-object v0, p0, Lhwi;->e:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Lchx;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lchx;-><init>(Lhwi;I)V

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lhwi;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lhwi;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lhwi;->c()V

    iget-object v0, p0, Lhwi;->e:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3fb00000    # 1.375f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :cond_1
    :goto_0
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object v0

    new-instance v1, Lchx;

    const/4 v2, 0x4

    invoke-direct {v1, p0, v2}, Lchx;-><init>(Lhwi;I)V

    invoke-virtual {v0, v1}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    return-void
.end method

.method public final e()Z
    .locals 1

    iget v0, p0, Lhwi;->a:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
