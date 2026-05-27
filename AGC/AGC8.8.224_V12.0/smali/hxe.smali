.class public final Lhxe;
.super Ljava/lang/Object;

# interfaces
.implements Lhxb;


# static fields
.field private static final f:Lhxa;


# instance fields
.field public a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:J

.field public e:J

.field private final g:Landroid/app/Activity;

.field private final h:Ldhi;

.field private final i:Ljuh;

.field private final j:Ljwb;

.field private final k:Lmrl;

.field private l:Landroid/view/View$OnLayoutChangeListener;

.field private m:Lhxa;

.field private n:Landroid/content/res/Resources;

.field private o:Landroid/view/View;

.field private p:Landroid/view/ViewGroup;

.field private q:Landroid/view/View;

.field private r:I

.field private s:Lkad;

.field private t:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lhxa;->a()Lhwz;

    move-result-object v0

    invoke-virtual {v0}, Lhwz;->a()Lhxa;

    move-result-object v0

    sput-object v0, Lhxe;->f:Lhxa;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ldhi;Ljuh;Ljwb;Lmrl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lhxe;->f:Lhxa;

    iput-object v0, p0, Lhxe;->m:Lhxa;

    iput-object p1, p0, Lhxe;->g:Landroid/app/Activity;

    iput-object p2, p0, Lhxe;->h:Ldhi;

    iput-object p3, p0, Lhxe;->i:Ljuh;

    iput-object p4, p0, Lhxe;->j:Ljwb;

    iput-object p5, p0, Lhxe;->k:Lmrl;

    return-void
.end method

.method private final m(Landroid/view/ViewGroup;I)V
    .locals 1

    iget-object v0, p0, Lhxe;->p:Landroid/view/ViewGroup;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lhxe;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lhxe;->p:Landroid/view/ViewGroup;

    iget-object v0, p0, Lhxe;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lhxe;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lhxe;->r:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v0, p0, Lhxe;->r:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p2, p0, Lhxe;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {p2, p1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final n(Landroid/view/ViewGroup;)V
    .locals 5

    iget-object v0, p0, Lhxe;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lhxe;->g:Landroid/app/Activity;

    const v0, 0x7f0b0053

    invoke-virtual {p1, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lhxe;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lhxe;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->bringToFront()V

    new-instance v0, Lzy;

    invoke-direct {v0}, Lzy;-><init>()V

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, p1}, Lzy;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v1, p0, Lhxe;->q:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lhxe;->n:Landroid/content/res/Resources;

    const v3, 0x7f0706e0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iget-object v3, p0, Lhxe;->q:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getY()F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v1, v1, 0x2

    div-int/lit8 v2, v2, 0x2

    iget-object v4, p0, Lhxe;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    add-int/2addr v3, v1

    sub-int/2addr v3, v2

    invoke-static {v0, v4, v3}, Ljji;->r(Lzy;Landroid/view/View;I)V

    invoke-virtual {v0, p1}, Lzy;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    iget-object v0, p0, Lhxe;->s:Lkad;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkad;->close()V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lhxe;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const-wide/16 v1, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Lhxc;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lhxc;-><init>(Lhxe;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lhxe;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lhxe;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->setAlpha(F)V

    iget-object p1, p0, Lhxe;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->setVisibility(I)V

    invoke-virtual {p0}, Lhxe;->k()V

    :goto_0
    iget-object p1, p0, Lhxe;->h:Ldhi;

    sget-object v0, Ldho;->a:Ldhk;

    invoke-interface {p1}, Ldhi;->e()V

    iget-object p1, p0, Lhxe;->j:Ljwb;

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object p1, p0, Lhxe;->g:Landroid/app/Activity;

    const-string v0, "accessibility"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lhxe;->q:Landroid/view/View;

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setFocusable(Z)V

    iget-object p1, p0, Lhxe;->q:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_2
    iget-object p1, p0, Lhxe;->q:Landroid/view/View;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lhxe;->l:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_3
    return-void
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Lhxe;->c:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lhxe;->t:Z

    iget-object v0, p0, Lhxe;->b:Landroid/widget/TextView;

    iget-object v3, p0, Lhxe;->n:Landroid/content/res/Resources;

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v4, p0, Lhxe;->d:J

    invoke-static {v4, v5}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v4

    invoke-virtual {v4}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v4

    invoke-static {v4, v5}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    const v2, 0x7f14058b

    invoke-virtual {v3, v2, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lhxe;->b:Landroid/widget/TextView;

    iget-wide v1, p0, Lhxe;->d:J

    invoke-static {v1, v2}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object v1

    invoke-virtual {v1}, Lj$/time/Duration;->getSeconds()J

    move-result-wide v1

    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-boolean v0, p0, Lhxe;->t:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lhxe;->e()V

    :cond_0
    return-void
.end method

.method public final d(Lhxa;)V
    .locals 0

    iput-object p1, p0, Lhxe;->m:Lhxa;

    return-void
.end method

.method public final e()V
    .locals 7

    iget-object v0, p0, Lhxe;->n:Landroid/content/res/Resources;

    const v1, 0x7f0706e1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lhxe;->n:Landroid/content/res/Resources;

    const v2, 0x7f070125

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lhxe;->c:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v1, p0, Lhxe;->n:Landroid/content/res/Resources;

    const v2, 0x7f0600b7

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iget-object v2, p0, Lhxe;->g:Landroid/app/Activity;

    const v5, 0x7f080397

    invoke-virtual {v2, v5}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v5, p0, Lhxe;->m:Lhxa;

    iget-boolean v6, v5, Lhxa;->b:Z

    if-eqz v6, :cond_0

    iget-object v5, p0, Lhxe;->g:Landroid/app/Activity;

    const v6, 0x7f08035e

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_0

    :cond_0
    iget-object v5, v5, Lhxa;->d:Ljvs;

    invoke-interface {v5}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    iget-object v5, p0, Lhxe;->g:Landroid/app/Activity;

    const v6, 0x7f0801a4

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_0

    :cond_1
    iget-object v5, p0, Lhxe;->m:Lhxa;

    iget-object v5, v5, Lhxa;->e:Ljvs;

    invoke-interface {v5}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_2

    iget-object v5, p0, Lhxe;->g:Landroid/app/Activity;

    const v6, 0x7f0801a1

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    goto :goto_0

    :cond_2
    move-object v5, v4

    :goto_0
    if-eqz v5, :cond_3

    invoke-virtual {v5, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_3
    iget-object v1, p0, Lhxe;->c:Landroid/widget/TextView;

    invoke-virtual {v1, v0, v3, v0, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lhxe;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v4, v5, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lhxe;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    invoke-virtual {v0, v1, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lhxe;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lhxe;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final f()V
    .locals 7

    const/4 v0, 0x2

    new-array v1, v0, [Ljvs;

    iget-object v2, p0, Lhxe;->m:Lhxa;

    iget-object v3, v2, Lhxa;->d:Ljvs;

    const/4 v4, 0x0

    aput-object v3, v1, v4

    iget-object v2, v2, Lhxa;->e:Ljvs;

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-static {v1}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object v1

    new-instance v2, Lhml;

    const/16 v5, 0xe

    invoke-direct {v2, p0, v5}, Lhml;-><init>(Lhxe;I)V

    iget-object v5, p0, Lhxe;->i:Ljuh;

    invoke-interface {v1, v2, v5}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    iput-object v1, p0, Lhxe;->s:Lkad;

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2}, Lhxe;->h(J)V

    iget-object v5, p0, Lhxe;->p:Landroid/view/ViewGroup;

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lhxe;->l()V

    :cond_0
    invoke-virtual {p0}, Lhxe;->j()V

    invoke-virtual {p0, v1, v2}, Lhxe;->g(J)V

    iget-object v1, p0, Lhxe;->c:Landroid/widget/TextView;

    new-instance v2, Lhcl;

    const/4 v5, 0x4

    invoke-direct {v2, p0, v5}, Lhcl;-><init>(Lhxe;I)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iget-object v1, p0, Lhxe;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v5, 0xc8

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v5, 0x205

    invoke-virtual {v1, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lhxc;

    invoke-direct {v2, p0, v4}, Lhxc;-><init>(Lhxe;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    iget-object v1, p0, Lhxe;->j:Ljwb;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v1, p0, Lhxe;->g:Landroid/app/Activity;

    const-string v2, "accessibility"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhxe;->q:Landroid/view/View;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v4}, Landroid/view/View;->setFocusable(Z)V

    iget-object v1, p0, Lhxe;->q:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setImportantForAccessibility(I)V

    :cond_1
    iget-object v0, p0, Lhxe;->h:Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    iget-object v0, p0, Lhxe;->q:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lhxe;->l:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    :cond_2
    return-void
.end method

.method public final g(J)V
    .locals 0

    iput-wide p1, p0, Lhxe;->e:J

    invoke-static {p1, p2}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/Duration;->getSeconds()J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lhxe;->c:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final h(J)V
    .locals 0

    iput-wide p1, p0, Lhxe;->d:J

    invoke-static {p1, p2}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/Duration;->getSeconds()J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p1

    iget-object p2, p0, Lhxe;->b:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final i(Landroid/widget/LinearLayout;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lhxe;->n:Landroid/content/res/Resources;

    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    iput-object v0, p0, Lhxe;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->b()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lhxe;->b:Landroid/widget/TextView;

    iget-object v1, p0, Lhxe;->n:Landroid/content/res/Resources;

    const v2, 0x7f070266

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v0, p0, Lhxe;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->a()Landroid/widget/TextView;

    move-result-object v0

    iput-object v0, p0, Lhxe;->c:Landroid/widget/TextView;

    iget-object v1, p0, Lhxe;->n:Landroid/content/res/Resources;

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    iget-object v0, p0, Lhxe;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    const v1, 0x7f0b034c

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lhxe;->o:Landroid/view/View;

    iget-object v0, p0, Lhxe;->n:Landroid/content/res/Resources;

    const v1, 0x7f0705ef

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lhxe;->r:I

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    const v1, 0x7f0b009f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-nez v1, :cond_0

    move-object v1, v0

    :cond_0
    const v2, 0x7f0b03d8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iput-object v1, p0, Lhxe;->p:Landroid/view/ViewGroup;

    const v1, 0x7f0b0236

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lhxe;->q:Landroid/view/View;

    new-instance v0, Lhcl;

    const/4 v1, 0x3

    invoke-direct {v0, p0, v1}, Lhcl;-><init>(Lhxe;I)V

    iput-object v0, p0, Lhxe;->l:Landroid/view/View$OnLayoutChangeListener;

    iget-object v0, p0, Lhxe;->h:Ldhi;

    sget-object v1, Ldho;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->e()V

    new-instance v0, Lhxd;

    invoke-direct {v0, p0}, Lhxd;-><init>(Lhxe;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    return-void
.end method

.method public final j()V
    .locals 7

    iget-object v0, p0, Lhxe;->n:Landroid/content/res/Resources;

    const v1, 0x7f080137

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Lhxe;->n:Landroid/content/res/Resources;

    const v3, 0x7f0600b7

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    iget-object v3, p0, Lhxe;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {v3, v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lhxe;->n:Landroid/content/res/Resources;

    const v3, 0x7f0706e1

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v3, p0, Lhxe;->n:Landroid/content/res/Resources;

    const v4, 0x7f070125

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    int-to-float v3, v3

    iget-object v4, p0, Lhxe;->b:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v3, p0, Lhxe;->b:Landroid/widget/TextView;

    iget-object v4, p0, Lhxe;->m:Lhxa;

    iget-boolean v4, v4, Lhxa;->c:Z

    const/4 v6, 0x1

    if-eq v6, v4, :cond_0

    move v4, v0

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v0, v5, v4, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lhxe;->m:Lhxa;

    iget-boolean v3, v0, Lhxa;->b:Z

    if-eqz v3, :cond_1

    iget-object v0, p0, Lhxe;->g:Landroid/app/Activity;

    const v3, 0x7f08035e

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lhxa;->d:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lhxe;->g:Landroid/app/Activity;

    const v3, 0x7f0801a4

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lhxe;->m:Lhxa;

    iget-object v0, v0, Lhxa;->e:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lhxe;->g:Landroid/app/Activity;

    const v3, 0x7f0801a1

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_3
    move-object v0, v2

    :goto_1
    if-eqz v0, :cond_4

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :cond_4
    iget-object v1, p0, Lhxe;->o:Landroid/view/View;

    iget-object v3, p0, Lhxe;->m:Lhxa;

    iget-boolean v3, v3, Lhxa;->c:Z

    if-eq v6, v3, :cond_5

    const/16 v5, 0x8

    goto :goto_2

    :cond_5
    :goto_2
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lhxe;->m:Lhxa;

    iget-boolean v1, v1, Lhxa;->a:Z

    if-eqz v1, :cond_6

    iget-object v0, p0, Lhxe;->b:Landroid/widget/TextView;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lhxe;->e()V

    return-void

    :cond_6
    iget-object v1, p0, Lhxe;->b:Landroid/widget/TextView;

    invoke-virtual {v1, v2, v2, v0, v2}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lhxe;->k()V

    return-void
.end method

.method public final k()V
    .locals 4

    iget-object v0, p0, Lhxe;->c:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lhxe;->c:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lhxe;->b:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v1

    iget-object v2, p0, Lhxe;->b:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public final l()V
    .locals 3

    iget-object v0, p0, Lhxe;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->getDisplay()Landroid/view/Display;

    move-result-object v0

    iget-object v1, p0, Lhxe;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Liko;->b(Landroid/view/Display;Landroid/content/Context;)Liko;

    move-result-object v0

    iget-object v1, p0, Lhxe;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v2, p0, Lhxe;->k:Lmrl;

    invoke-interface {v2}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lhxe;->k:Lmrl;

    invoke-interface {v2}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhyt;

    iget-object v2, v2, Lhyt;->a:Lhys;

    iget-object v2, v2, Lhys;->i:Lhyn;

    invoke-static {v2}, Ljji;->m(Lhyn;)Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v1}, Lhxe;->n(Landroid/view/ViewGroup;)V

    return-void

    :cond_1
    :goto_0
    invoke-virtual {v0}, Liko;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    const/16 v0, 0x30

    invoke-direct {p0, v1, v0}, Lhxe;->m(Landroid/view/ViewGroup;I)V

    return-void

    :pswitch_1
    const/16 v0, 0x50

    invoke-direct {p0, v1, v0}, Lhxe;->m(Landroid/view/ViewGroup;I)V

    return-void

    :pswitch_2
    invoke-direct {p0, v1}, Lhxe;->n(Landroid/view/ViewGroup;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method
