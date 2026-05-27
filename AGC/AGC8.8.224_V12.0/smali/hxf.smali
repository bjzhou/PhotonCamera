.class public final Lhxf;
.super Ljava/lang/Object;

# interfaces
.implements Lhxb;


# static fields
.field private static final b:Lnak;


# instance fields
.field public a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

.field private final c:Landroid/app/Activity;

.field private final d:Lhxb;

.field private final e:Lgzm;

.field private final f:Lmrl;

.field private g:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

.field private h:Landroid/view/ViewGroup;

.field private i:Landroid/content/res/Resources;

.field private final j:[I

.field private k:I

.field private final l:Z

.field private final m:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeUIControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhxf;->b:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lhxb;Lgzm;Ldhi;Lmrl;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lhxf;->j:[I

    iput-object p1, p0, Lhxf;->c:Landroid/app/Activity;

    iput-object p2, p0, Lhxf;->d:Lhxb;

    iput-object p3, p0, Lhxf;->e:Lgzm;

    iput-object p5, p0, Lhxf;->f:Lmrl;

    sget-object p1, Ldhv;->o:Ldhj;

    invoke-interface {p4, p1}, Ldhi;->l(Ldhj;)Z

    move-result p1

    iput-boolean p1, p0, Lhxf;->l:Z

    sget-object p1, Ldhv;->a:Ldhk;

    invoke-interface {p4, p1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Lhxf;->m:I

    return-void
.end method

.method private final k(Landroid/view/ViewGroup;I)V
    .locals 1

    iget-object v0, p0, Lhxf;->h:Landroid/view/ViewGroup;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object p1, p0, Lhxf;->h:Landroid/view/ViewGroup;

    iget-object v0, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object p1, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, p0, Lhxf;->k:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    iget v0, p0, Lhxf;->k:I

    iput v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    or-int/lit8 p2, p2, 0x1

    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iget-object p2, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    invoke-virtual {p2, p1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private final l(Lzy;Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lhxf;->c:Landroid/app/Activity;

    const v1, 0x7f0b0087

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lhxf;->j:[I

    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v0, p0, Lhxf;->j:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    iget-object v1, p0, Lhxf;->i:Landroid/content/res/Resources;

    const v2, 0x7f0706e0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lhxf;->i:Landroid/content/res/Resources;

    const v2, 0x7f070282

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    sub-int/2addr v0, v1

    invoke-static {p1, p2, v0}, Ljji;->r(Lzy;Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public final a(Z)V
    .locals 3

    iget-boolean v0, p0, Lhxf;->l:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    iget-object v1, p1, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->d:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object p1, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->animate()Landroid/view/ViewPropertyAnimator;

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

    const/4 v1, 0x4

    invoke-direct {v0, p0, v1}, Lhxc;-><init>(Lhxf;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_0
    iget-object p1, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    iget-object p1, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->setAlpha(F)V

    iget-object p1, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, p0, Lhxf;->d:Lhxb;

    invoke-interface {v0, p1}, Lhxb;->a(Z)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lhxf;->d:Lhxb;

    invoke-interface {v0}, Lhxb;->b()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lhxf;->d:Lhxb;

    invoke-interface {v0}, Lhxb;->c()V

    return-void
.end method

.method public final d(Lhxa;)V
    .locals 0

    return-void
.end method

.method public final synthetic e()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 14

    iget-object v0, p0, Lhxf;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    const-string v1, "Orientation can not be determined"

    if-eqz v0, :cond_b

    iget-boolean v2, p0, Lhxf;->l:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Liko;->b(Landroid/view/Display;Landroid/content/Context;)Liko;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lhxf;->g:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v2}, Liko;->b(Landroid/view/Display;Landroid/content/Context;)Liko;

    move-result-object v0

    :goto_0
    iget-object v2, p0, Lhxf;->f:Lmrl;

    invoke-interface {v2}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    const-wide/16 v4, 0x205

    const-wide/16 v6, 0xc8

    const-wide/16 v8, 0x0

    if-eqz v2, :cond_1

    iget-object v2, p0, Lhxf;->f:Lmrl;

    invoke-interface {v2}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lhyt;

    iget-object v2, v2, Lhyt;->a:Lhys;

    iget-object v2, v2, Lhys;->i:Lhyn;

    invoke-static {v2}, Ljji;->m(Lhyn;)Z

    move-result v2

    if-nez v2, :cond_2

    :cond_1
    invoke-static {v0}, Liko;->e(Liko;)Z

    move-result v0

    if-eqz v0, :cond_6

    :cond_2
    iget-boolean v0, p0, Lhxf;->l:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lhxf;->g:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    :goto_1
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    iget-object v1, p0, Lhxf;->c:Landroid/app/Activity;

    const v2, 0x7f0b0053

    invoke-virtual {v1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->bringToFront()V

    new-instance v2, Lzy;

    invoke-direct {v2}, Lzy;-><init>()V

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v2, v1}, Lzy;->e(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    iget-object v10, p0, Lhxf;->e:Lgzm;

    sget-object v11, Lgzd;->e:Lgzs;

    invoke-interface {v10, v11}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {v10}, Linb;->E(I)I

    move-result v10

    iget-object v11, p0, Lhxf;->f:Lmrl;

    invoke-interface {v11}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v11

    const v12, 0x7f0706e0

    const/4 v13, 0x1

    if-eqz v11, :cond_4

    iget-object v11, p0, Lhxf;->f:Lmrl;

    invoke-interface {v11}, Lmrl;->a()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lhyt;

    iget-object v11, v11, Lhyt;->a:Lhys;

    iget-object v11, v11, Lhys;->i:Lhyn;

    invoke-static {v11}, Ljji;->m(Lhyn;)Z

    move-result v11

    if-eqz v11, :cond_4

    iget-object v10, p0, Lhxf;->c:Landroid/app/Activity;

    const v11, 0x7f0b0236

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lhxf;->j:[I

    invoke-virtual {v10, v11}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v11, p0, Lhxf;->j:[I

    aget v11, v11, v13

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v11, v10

    iget-object v10, p0, Lhxf;->i:Landroid/content/res/Resources;

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    sub-int/2addr v11, v10

    invoke-static {v2, v0, v11}, Ljji;->r(Lzy;Landroid/view/View;I)V

    goto :goto_2

    :cond_4
    add-int/lit8 v10, v10, -0x1

    packed-switch v10, :pswitch_data_0

    sget-object v10, Lhxf;->b:Lnak;

    invoke-virtual {v10}, Lnaf;->b()Lnaz;

    move-result-object v10

    const-string v11, "Invalid aspect ratio detected!"

    const/16 v12, 0xfac

    invoke-static {v10, v11, v12}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    goto :goto_2

    :pswitch_0
    invoke-direct {p0, v2, v0}, Lhxf;->l(Lzy;Landroid/view/View;)V

    goto :goto_2

    :pswitch_1
    iget-object v10, p0, Lhxf;->e:Lgzm;

    sget-object v11, Lgzd;->u:Lgzr;

    invoke-interface {v10, v11}, Lgzm;->c(Lgzb;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-direct {p0, v2, v0}, Lhxf;->l(Lzy;Landroid/view/View;)V

    goto :goto_2

    :cond_5
    iget-object v10, p0, Lhxf;->c:Landroid/app/Activity;

    const v11, 0x7f0b0315

    invoke-virtual {v10, v11}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    iget-object v11, p0, Lhxf;->j:[I

    invoke-virtual {v10, v11}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v11, p0, Lhxf;->j:[I

    aget v11, v11, v13

    invoke-virtual {v10}, Landroid/view/View;->getHeight()I

    move-result v10

    div-int/lit8 v10, v10, 0x2

    add-int/2addr v11, v10

    iget-object v10, p0, Lhxf;->i:Landroid/content/res/Resources;

    const v13, 0x7f070285

    invoke-virtual {v10, v13}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    sub-int/2addr v11, v10

    iget-object v10, p0, Lhxf;->i:Landroid/content/res/Resources;

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    sub-int/2addr v11, v10

    iget-object v10, p0, Lhxf;->i:Landroid/content/res/Resources;

    const v12, 0x7f070282

    invoke-virtual {v10, v12}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v10

    sub-int/2addr v11, v10

    invoke-static {v2, v0, v11}, Ljji;->r(Lzy;Landroid/view/View;I)V

    :goto_2
    invoke-virtual {v2, v1}, Lzy;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    invoke-virtual {p0, v8, v9}, Lhxf;->h(J)V

    invoke-virtual {p0}, Lhxf;->j()V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    new-instance v2, Lhxc;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lhxc;-><init>(Landroid/widget/LinearLayout;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_4

    :cond_6
    iget-boolean v0, p0, Lhxf;->l:Z

    if-eqz v0, :cond_9

    invoke-virtual {p0, v8, v9}, Lhxf;->h(J)V

    iget-object v0, p0, Lhxf;->h:Landroid/view/ViewGroup;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lhxf;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_7

    iget-object v1, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Liko;->b(Landroid/view/Display;Landroid/content/Context;)Liko;

    move-result-object v0

    iget-object v1, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v0}, Liko;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    goto :goto_3

    :pswitch_2
    const/16 v0, 0x30

    invoke-direct {p0, v1, v0}, Lhxf;->k(Landroid/view/ViewGroup;I)V

    goto :goto_3

    :pswitch_3
    const/16 v0, 0x50

    invoke-direct {p0, v1, v0}, Lhxf;->k(Landroid/view/ViewGroup;I)V

    goto :goto_3

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lhxf;->j()V

    iget-object v0, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lhxc;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lhxc;-><init>(Lhxf;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_4

    :cond_9
    iget-object v0, p0, Lhxf;->d:Lhxb;

    invoke-interface {v0}, Lhxb;->f()V

    :goto_4
    iget-boolean v0, p0, Lhxf;->l:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    iget v1, p0, Lhxf;->m:I

    packed-switch v1, :pswitch_data_2

    goto :goto_5

    :pswitch_4
    iget-object v0, v0, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->d:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_5
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->c:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->b:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :pswitch_6
    iget-object v1, v0, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->c:Landroid/widget/ImageView;

    iget-object v0, v0, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->a:Landroid/view/animation/Animation;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    :cond_a
    :goto_5
    return-void

    :cond_b
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method

.method public final g(J)V
    .locals 0

    return-void
.end method

.method public final h(J)V
    .locals 1

    iget-boolean v0, p0, Lhxf;->l:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-static {p1, p2}, Lj$/time/Duration;->ofMillis(J)Lj$/time/Duration;

    move-result-object p1

    invoke-virtual {p1}, Lj$/time/Duration;->getSeconds()J

    move-result-wide p1

    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    iget-object v0, p0, Lhxf;->d:Lhxb;

    invoke-interface {v0, p1, p2}, Lhxb;->h(J)V

    return-void
.end method

.method public final i(Landroid/widget/LinearLayout;)V
    .locals 1

    iget-boolean v0, p0, Lhxf;->l:Z

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    iput-object v0, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    iput-object v0, p0, Lhxf;->g:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    :goto_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lhxf;->i:Landroid/content/res/Resources;

    iget-boolean p1, p0, Lhxf;->l:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->getRootView()Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    const v0, 0x7f0b009f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    move-object p1, v0

    :cond_1
    const v0, 0x7f0b03d8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lhxf;->h:Landroid/view/ViewGroup;

    iget-object p1, p0, Lhxf;->i:Landroid/content/res/Resources;

    const v0, 0x7f0705ef

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lhxf;->k:I

    :cond_2
    return-void
.end method

.method public final j()V
    .locals 8

    iget-boolean v0, p0, Lhxf;->l:Z

    const/16 v1, 0x8

    const v2, 0x7f08025d

    const v3, 0x7f0706e1

    const v4, 0x7f080145

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    iget-object v7, p0, Lhxf;->i:Landroid/content/res/Resources;

    invoke-virtual {v7, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lhxf;->i:Landroid/content/res/Resources;

    const v4, 0x7f070287

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v4, p0, Lhxf;->i:Landroid/content/res/Resources;

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    invoke-virtual {v4}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->b()Landroid/widget/TextView;

    move-result-object v4

    int-to-float v0, v0

    invoke-virtual {v4, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v6, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lhxf;->a:Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/LongPressElapsedTimeView;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    :cond_0
    iget-object v0, p0, Lhxf;->g:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    iget-object v7, p0, Lhxf;->i:Landroid/content/res/Resources;

    invoke-virtual {v7, v4, v5}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lhxf;->i:Landroid/content/res/Resources;

    const v4, 0x7f07027e

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v4, p0, Lhxf;->i:Landroid/content/res/Resources;

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iget-object v4, p0, Lhxf;->g:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {v4}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->b()Landroid/widget/TextView;

    move-result-object v4

    int-to-float v0, v0

    invoke-virtual {v4, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lhxf;->g:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v3, v6, v3, v6}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v0, p0, Lhxf;->g:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->b()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2, v6, v6, v6}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    iget-object v0, p0, Lhxf;->g:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lhxf;->g:Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/elapsedtimeui/ElapsedTimerView;->a()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
