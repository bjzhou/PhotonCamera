.class public final Liip;
.super Ljava/lang/Object;

# interfaces
.implements Lijk;


# instance fields
.field private final a:Loiw;

.field private final synthetic b:I

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lclu;Loiw;I)V
    .locals 0

    iput p3, p0, Liip;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liip;->c:Ljava/lang/Object;

    iput-object p2, p0, Liip;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Lczq;Loiw;I)V
    .locals 0

    iput p3, p0, Liip;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liip;->c:Ljava/lang/Object;

    iput-object p2, p0, Liip;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Lgrm;Loiw;I)V
    .locals 0

    iput p3, p0, Liip;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liip;->c:Ljava/lang/Object;

    iput-object p2, p0, Liip;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Lhsh;Loiw;I)V
    .locals 0

    iput p3, p0, Liip;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liip;->c:Ljava/lang/Object;

    iput-object p2, p0, Liip;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Lhxt;Loiw;I)V
    .locals 0

    iput p3, p0, Liip;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liip;->c:Ljava/lang/Object;

    iput-object p2, p0, Liip;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Libj;Loiw;I)V
    .locals 0

    iput p3, p0, Liip;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liip;->c:Ljava/lang/Object;

    iput-object p2, p0, Liip;->a:Loiw;

    return-void
.end method

.method public constructor <init>(Lmqp;Loiw;I)V
    .locals 0

    iput p3, p0, Liip;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Liip;->a:Loiw;

    iput-object p1, p0, Liip;->c:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lmqp;Loiw;I[B)V
    .locals 0

    iput p3, p0, Liip;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liip;->c:Ljava/lang/Object;

    iput-object p2, p0, Liip;->a:Loiw;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget v0, p0, Liip;->b:I

    packed-switch v0, :pswitch_data_0

    return-void

    :pswitch_0
    iget-object v0, p0, Liip;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Ljew;

    const v1, 0x7f0b02ae

    invoke-virtual {v0, v1}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

    iget-object v1, p0, Liip;->c:Ljava/lang/Object;

    check-cast v1, Lgrm;

    invoke-virtual {v1, v0}, Lgrm;->d(Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Liip;->c:Ljava/lang/Object;

    iget-object v1, p0, Liip;->a:Loiw;

    check-cast v1, Lihj;

    invoke-virtual {v1}, Lihj;->a()Lihg;

    move-result-object v1

    invoke-interface {v0, v1}, Libj;->e(Lihg;)V

    return-void

    :pswitch_2
    iget-object v0, p0, Liip;->a:Loiw;

    check-cast v0, Lihj;

    invoke-virtual {v0}, Lihj;->a()Lihg;

    move-result-object v0

    iget-object v1, v0, Lihg;->q:Ljava/lang/Object;

    check-cast v1, Ljew;

    const v2, 0x7f0b0234

    invoke-virtual {v1, v2}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iget-object v2, p0, Liip;->c:Ljava/lang/Object;

    invoke-interface {v2, v1}, Lczq;->e(Landroid/view/ViewStub;)V

    iget-object v0, v0, Lihg;->c:Ljava/lang/Object;

    iget-object v1, p0, Liip;->c:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    iput-object v1, v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->g:Lczq;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    move-result-object v1

    iget-object v1, v1, Lhys;->i:Lhyn;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    move-result-object v2

    iget-object v2, v2, Lhys;->g:Liko;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->l(Lhyn;Liko;)V

    return-void

    :pswitch_3
    iget-object v0, p0, Liip;->c:Ljava/lang/Object;

    check-cast v0, Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Liip;->a:Loiw;

    check-cast v0, Lihj;

    invoke-virtual {v0}, Lihj;->a()Lihg;

    move-result-object v0

    iget-object v1, v0, Lihg;->q:Ljava/lang/Object;

    check-cast v1, Ljew;

    const v2, 0x7f0b00c3

    invoke-virtual {v1, v2}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    invoke-virtual {v1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Liip;->c:Ljava/lang/Object;

    check-cast v2, Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lire;

    invoke-interface {v2, v1}, Lire;->e(Landroid/view/View;)V

    iget-object v0, v0, Lihg;->c:Ljava/lang/Object;

    iget-object v1, p0, Liip;->c:Ljava/lang/Object;

    check-cast v1, Lmqp;

    check-cast v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    iput-object v1, v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->k:Lmqp;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    move-result-object v1

    iget-object v1, v1, Lhys;->i:Lhyn;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->a()Lhys;

    move-result-object v2

    iget-object v2, v2, Lhys;->g:Liko;

    iget-object v3, v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->o:Ljwb;

    invoke-interface {v3}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lika;

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->j(Lhyn;Liko;Lika;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Liip;->a:Loiw;

    check-cast v0, Lihj;

    invoke-virtual {v0}, Lihj;->a()Lihg;

    move-result-object v0

    iget-object v1, v0, Lihg;->q:Ljava/lang/Object;

    check-cast v1, Ljew;

    const v2, 0x7f0b0189

    invoke-virtual {v1, v2}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/ViewStub;

    iget-object v2, p0, Liip;->c:Ljava/lang/Object;

    check-cast v2, Lhxt;

    invoke-virtual {v2, v1}, Lhxt;->c(Landroid/view/ViewStub;)V

    iget-object v0, v0, Lihg;->c:Ljava/lang/Object;

    iget-object v1, p0, Liip;->c:Ljava/lang/Object;

    sget-object v2, Lhyh;->b:Lhyh;

    check-cast v0, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->d(Lhyi;Lhyh;)V

    return-void

    :pswitch_5
    iget-object v0, p0, Liip;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Ljew;

    const v1, 0x7f0b0077

    invoke-virtual {v0, v1}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;

    iget-object v1, p0, Liip;->c:Ljava/lang/Object;

    check-cast v1, Lclu;

    iput-object v0, v1, Lclu;->c:Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;

    iget-object v0, v1, Lclu;->e:Lcdi;

    invoke-virtual {v0}, Lcdi;->i()Ljuf;

    move-result-object v0

    iget-object v2, v1, Lclu;->a:Ljvs;

    new-instance v3, Lckj;

    const/4 v4, 0x5

    invoke-direct {v3, v1, v4}, Lckj;-><init>(Lclu;I)V

    iget-object v1, v1, Lclu;->b:Ljuh;

    invoke-interface {v2, v3, v1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    return-void

    :pswitch_6
    iget-object v0, p0, Liip;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldja;

    iget-object v0, v0, Ldja;->a:Ljava/lang/Object;

    check-cast v0, Ljew;

    const v1, 0x7f0b00ae

    invoke-virtual {v0, v1}, Ljew;->f(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;

    iget-object v1, p0, Liip;->c:Ljava/lang/Object;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    check-cast v1, Lhsh;

    iput-object v2, v1, Lhsh;->b:Ljava/lang/Object;

    iget-object v2, v1, Lhsh;->b:Ljava/lang/Object;

    check-cast v2, Landroid/animation/ValueAnimator;

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v2, v1, Lhsh;->b:Ljava/lang/Object;

    new-instance v3, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v2, v1, Lhsh;->b:Ljava/lang/Object;

    new-instance v3, Lies;

    const/4 v4, 0x1

    invoke-direct {v3, v1, v0, v4}, Lies;-><init>(Lhsh;Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;I)V

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v2, v1, Lhsh;->b:Ljava/lang/Object;

    new-instance v3, Lhsg;

    invoke-direct {v3, v1, v0}, Lhsg;-><init>(Lhsh;Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;)V

    check-cast v2, Landroid/animation/ValueAnimator;

    invoke-virtual {v2, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
