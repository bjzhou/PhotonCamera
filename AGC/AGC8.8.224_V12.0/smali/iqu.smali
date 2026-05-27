.class public final Liqu;
.super Ljava/lang/Object;

# interfaces
.implements Lire;
.implements Lkad;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lmqp;

.field public final c:Ljwb;

.field public d:Z

.field public e:Landroid/widget/ImageButton;

.field public f:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

.field public g:Lirc;

.field private final h:Ldbf;

.field private final i:Ljuh;

.field private final j:Loiw;

.field private final k:Lhws;

.field private final l:Ljwb;

.field private final m:Ljwb;

.field private final n:Ljwb;

.field private o:Landroid/animation/AnimatorSet;

.field private p:Liko;

.field private q:Z

.field private final r:Lcdi;

.field private final s:Ligo;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/whitebalance/ManualWhiteBalanceControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Liqu;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lcdi;Ldbf;Ljuh;Lmqp;Loiw;Lhws;Ljwb;Ljwb;Ligo;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p10, Ljvk;

    const/4 p11, 0x0

    invoke-static {p11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p12

    invoke-direct {p10, p12}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p10, p0, Liqu;->c:Ljwb;

    new-instance p10, Ljvk;

    invoke-direct {p10, p12}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p10, p0, Liqu;->n:Ljwb;

    sget-object p10, Liko;->a:Liko;

    iput-object p10, p0, Liqu;->p:Liko;

    iput-boolean p11, p0, Liqu;->q:Z

    iput-object p1, p0, Liqu;->r:Lcdi;

    iput-object p7, p0, Liqu;->l:Ljwb;

    iput-object p2, p0, Liqu;->h:Ldbf;

    iput-object p3, p0, Liqu;->i:Ljuh;

    iput-object p4, p0, Liqu;->b:Lmqp;

    iput-object p5, p0, Liqu;->j:Loiw;

    iput-object p6, p0, Liqu;->k:Lhws;

    iput-object p9, p0, Liqu;->s:Ligo;

    iput-object p8, p0, Liqu;->m:Ljwb;

    return-void
.end method

.method static bridge synthetic l(Liqu;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Liqu;->m(Z)V

    return-void
.end method

.method private final m(Z)V
    .locals 2

    const-wide/16 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Liqu;->e:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Liqg;

    const/16 v1, 0xc

    invoke-direct {v0, p0, v1}, Liqg;-><init>(Liqu;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withStartAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void

    :cond_0
    iget-object p1, p0, Liqu;->e:Landroid/widget/ImageButton;

    invoke-virtual {p1}, Landroid/widget/ImageButton;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    new-instance v0, Liqg;

    const/16 v1, 0xd

    invoke-direct {v0, p0, v1}, Liqg;-><init>(Liqu;I)V

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method public final a()Ljvs;
    .locals 1

    iget-object v0, p0, Liqu;->n:Ljwb;

    return-object v0
.end method

.method public final b()Ljvs;
    .locals 1

    iget-object v0, p0, Liqu;->g:Lirc;

    iget-object v0, v0, Lirc;->k:Ljwb;

    return-object v0
.end method

.method public final c()Ljvs;
    .locals 1

    iget-object v0, p0, Liqu;->c:Ljwb;

    return-object v0
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Liqu;->n:Ljwb;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public final d(ZZ)V
    .locals 3

    iget-object v0, p0, Liqu;->m:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Liqu;->i:Ljuh;

    new-instance v1, Liqr;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p2, p1, v2}, Liqr;-><init>(Liqu;ZZI)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final e(Landroid/view/View;)V
    .locals 11

    check-cast p1, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    iput-object p1, p0, Liqu;->f:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->a()Landroid/widget/ImageButton;

    move-result-object p1

    iput-object p1, p0, Liqu;->e:Landroid/widget/ImageButton;

    iget-object p1, p0, Liqu;->f:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->b()Landroid/widget/SeekBar;

    move-result-object p1

    const/16 v0, 0xc8

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setMax(I)V

    new-instance v0, Liqs;

    invoke-direct {v0, p0}, Liqs;-><init>(Liqu;)V

    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    new-instance p1, Liqq;

    iget-object v2, p0, Liqu;->f:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    iget-object v3, p0, Liqu;->i:Ljuh;

    iget-object v4, p0, Liqu;->k:Lhws;

    iget-object v5, p0, Liqu;->s:Ligo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v1, p1

    invoke-direct/range {v1 .. v10}, Liqq;-><init>(Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;Ljuh;Lhws;Ligo;[B[B[B[B[B)V

    iput-object p1, p0, Liqu;->g:Lirc;

    invoke-virtual {p1}, Liqw;->f()V

    iget-object p1, p0, Liqu;->e:Landroid/widget/ImageButton;

    new-instance v0, Lidm;

    const/4 v1, 0x7

    invoke-direct {v0, p0, v1}, Lidm;-><init>(Liqu;I)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Liqu;->j:Loiw;

    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Liqu;->j:Loiw;

    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmqp;

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhfu;

    new-instance v0, Liqt;

    invoke-direct {v0, p0}, Liqt;-><init>(Liqu;)V

    invoke-interface {p1, v0}, Lhfu;->a(Lhfv;)V

    :cond_0
    iget-object p1, p0, Liqu;->b:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lglm;

    iget-object v0, p0, Liqu;->r:Lcdi;

    invoke-interface {p1, v0}, Lglm;->h(Lcdi;)V

    iget-object v0, p0, Liqu;->r:Lcdi;

    invoke-virtual {v0}, Lcdi;->i()Ljuf;

    move-result-object v0

    invoke-interface {p1}, Lglm;->a()Ljwb;

    move-result-object p1

    new-instance v2, Liiz;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v3}, Liiz;-><init>(Liqu;I)V

    sget-object v3, Lnnv;->a:Lnnv;

    invoke-interface {p1, v2, v3}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljuf;->d(Lkad;)V

    :cond_1
    iget-object p1, p0, Liqu;->r:Lcdi;

    invoke-virtual {p1}, Lcdi;->i()Ljuf;

    move-result-object p1

    iget-object v0, p0, Liqu;->l:Ljwb;

    new-instance v2, Liiz;

    invoke-direct {v2, p0, v1}, Liiz;-><init>(Liqu;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-interface {v0, v2, v1}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljuf;->d(Lkad;)V

    iget-object p1, p0, Liqu;->r:Lcdi;

    invoke-virtual {p1}, Lcdi;->i()Ljuf;

    move-result-object p1

    iget-object v0, p0, Liqu;->h:Ldbf;

    new-instance v1, Liiz;

    const/16 v2, 0x8

    invoke-direct {v1, p0, v2}, Liiz;-><init>(Liqu;I)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-virtual {v0, v1, v2}, Ldbf;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljuf;->d(Lkad;)V

    iget-object p1, p0, Liqu;->n:Ljwb;

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-interface {p1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public final f()V
    .locals 3

    sget-object v0, Liqu;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "reset()"

    const/16 v2, 0x113a

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Liqu;->m(Z)V

    iget-object v1, p0, Liqu;->c:Ljwb;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v1, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v1, p0, Liqu;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lglm;

    invoke-interface {v1, v0}, Lglm;->e(Z)V

    :cond_0
    iget-object v0, p0, Liqu;->f:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->b()Landroid/widget/SeekBar;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    iget-object v0, p0, Liqu;->g:Lirc;

    invoke-virtual {v0}, Liqw;->j()V

    return-void
.end method

.method public final g(Liko;Lhyn;)V
    .locals 4

    iput-object p1, p0, Liqu;->p:Liko;

    iget-object v0, p0, Liqu;->f:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lhyf;

    sget-object v1, Lhyn;->d:Lhyn;

    invoke-virtual {v1, p2}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Liqu;->f:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0703f6

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v2, v1, v2, v2}, Lhyf;->setMargins(IIII)V

    iget-object v0, p0, Liqu;->f:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    iget-object v1, p0, Liqu;->l:Ljwb;

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lika;

    invoke-virtual {v0, p1, p2, v1}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->d(Liko;Lhyn;Lika;)V

    return-void
.end method

.method public final h(Z)V
    .locals 8

    iget-object v0, p0, Liqu;->p:Liko;

    invoke-static {v0}, Liko;->e(Liko;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Liqu;->o:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_1

    iget-object v0, p0, Liqu;->f:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0703f2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Liqu;->f:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->b()Landroid/widget/SeekBar;

    move-result-object v1

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    const/4 v3, 0x1

    new-array v4, v3, [F

    const/4 v5, 0x0

    aput v0, v4, v5

    invoke-static {v1, v2, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Liqu;->f:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->c()Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceKnob;

    move-result-object v2

    sget-object v4, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v6, v3, [F

    aput v0, v6, v5

    invoke-static {v2, v4, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    iget-object v4, p0, Liqu;->f:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    invoke-virtual {v4}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->a()Landroid/widget/ImageButton;

    move-result-object v4

    sget-object v6, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    new-array v7, v3, [F

    aput v0, v7, v5

    invoke-static {v4, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    const-wide/16 v6, 0x12c

    invoke-virtual {v4, v6, v7}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    const/4 v6, 0x3

    new-array v6, v6, [Landroid/animation/Animator;

    aput-object v1, v6, v5

    aput-object v2, v6, v3

    const/4 v1, 0x2

    aput-object v0, v6, v1

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    iput-object v4, p0, Liqu;->o:Landroid/animation/AnimatorSet;

    :cond_1
    if-eqz p1, :cond_2

    iget-object p1, p0, Liqu;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Liqu;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->reverse()V

    :goto_0
    iget-object p1, p0, Liqu;->f:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Liqu;->o:Landroid/animation/AnimatorSet;

    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->end()V

    :cond_3
    return-void
.end method

.method public final i(ZZ)V
    .locals 3

    iget-object v0, p0, Liqu;->m:Ljwb;

    invoke-interface {v0}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Liqu;->i:Ljuh;

    new-instance v1, Liqr;

    const/4 v2, 0x2

    invoke-direct {v1, p0, p2, p1, v2}, Liqr;-><init>(Liqu;ZZI)V

    invoke-virtual {v0, v1}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final j(I)V
    .locals 4

    iget-object v0, p0, Liqu;->g:Lirc;

    iget-object v1, v0, Lirc;->g:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Lirc;->k()V

    iget-object v1, v0, Lirc;->g:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    iget-object v0, v0, Lirc;->m:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public final k(Lhyn;Lika;)V
    .locals 3

    sget-object v0, Lhyn;->d:Lhyn;

    invoke-virtual {v0, p1}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean p2, p2, Lika;->w:Z

    if-eqz p2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    iput-boolean v2, p0, Liqu;->q:Z

    sget-object p2, Lhyn;->d:Lhyn;

    invoke-virtual {p2, p1}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v1

    iget-object p2, p0, Liqu;->g:Lirc;

    iget-boolean v0, p0, Liqu;->q:Z

    if-nez v0, :cond_2

    iget-boolean v1, p2, Lirc;->l:Z

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    return-void

    :cond_2
    :goto_1
    iput-boolean v0, p2, Lirc;->l:Z

    if-eqz v0, :cond_3

    invoke-virtual {p2, p1}, Liqw;->b(Z)V

    return-void

    :cond_3
    invoke-virtual {p2, p1}, Liqw;->cp(Z)V

    return-void
.end method
