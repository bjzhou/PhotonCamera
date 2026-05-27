.class public final Lifd;
.super Ljava/lang/Object;


# instance fields
.field public final synthetic a:Life;

.field private final b:Landroid/animation/Animator;


# direct methods
.method public constructor <init>(Life;Landroid/animation/Animator;)V
    .locals 0

    iput-object p1, p0, Lifd;->a:Life;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lifd;->b:Landroid/animation/Animator;

    return-void
.end method


# virtual methods
.method final a()V
    .locals 3

    iget-object v0, p0, Lifd;->b:Landroid/animation/Animator;

    const-wide/16 v1, 0x96

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setStartDelay(J)V

    return-void
.end method

.method final b()V
    .locals 2

    iget-object v0, p0, Lifd;->b:Landroid/animation/Animator;

    new-instance v1, Lifc;

    invoke-direct {v1, p0}, Lifc;-><init>(Lifd;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method final c(Lmqp;)V
    .locals 3

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lifd;->b:Landroid/animation/Animator;

    new-instance v1, Lgdt;

    const/4 v2, 0x7

    invoke-direct {v1, p0, p1, v2}, Lgdt;-><init>(Lifd;Lmqp;I)V

    invoke-static {v1}, Ljvd;->K(Ljava/util/function/Consumer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method final d(I)V
    .locals 3

    iget-object v0, p0, Lifd;->b:Landroid/animation/Animator;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    return-void
.end method

.method final e()V
    .locals 2

    iget-object v0, p0, Lifd;->b:Landroid/animation/Animator;

    sget-object v1, Life;->a:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method final f()V
    .locals 2

    iget-object v0, p0, Lifd;->b:Landroid/animation/Animator;

    iget-object v1, p0, Lifd;->a:Life;

    iget-object v1, v1, Life;->s:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method final g()V
    .locals 2

    iget-object v0, p0, Lifd;->b:Landroid/animation/Animator;

    iget-object v1, p0, Lifd;->a:Life;

    iget-object v1, v1, Life;->t:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    return-void
.end method

.method final h(Lmqp;)V
    .locals 3

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lifd;->b:Landroid/animation/Animator;

    new-instance v1, Lgdt;

    const/16 v2, 0x8

    invoke-direct {v1, p0, p1, v2}, Lgdt;-><init>(Lifd;Lmqp;I)V

    invoke-static {v1}, Ljvd;->L(Ljava/util/function/Consumer;)Landroid/animation/Animator$AnimatorListener;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method final i()V
    .locals 2

    iget-object v0, p0, Lifd;->b:Landroid/animation/Animator;

    new-instance v1, Lifb;

    invoke-direct {v1, p0}, Lifb;-><init>(Lifd;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method
