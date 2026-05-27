.class final Lfdb;
.super Ljava/lang/Object;

# interfaces
.implements Lgxm;


# instance fields
.field final synthetic a:Lfdc;


# direct methods
.method public constructor <init>(Lfdc;)V
    .locals 0

    iput-object p1, p0, Lfdb;->a:Lfdc;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic j(Lgxy;)V
    .locals 0

    return-void
.end method

.method public final synthetic k(Lgxy;)V
    .locals 0

    return-void
.end method

.method public final synthetic l(Lgxy;)V
    .locals 0

    return-void
.end method

.method public final m(J)V
    .locals 4

    iget-object v0, p0, Lfdb;->a:Lfdc;

    iget-boolean v1, v0, Lfdc;->c:Z

    if-nez v1, :cond_0

    iget-boolean v1, v0, Lfdc;->d:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Lfdc;->f(Lfdc;)V

    iget-object v0, p0, Lfdb;->a:Lfdc;

    iget v1, v0, Lfdc;->g:I

    const/4 v2, 0x0

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    new-instance v2, Lafx;

    const/16 v3, 0xd

    invoke-direct {v2, v0, v3}, Lafx;-><init>(Lfdc;I)V

    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    invoke-virtual {v1, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    invoke-virtual {v1, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->start()V

    :cond_0
    return-void
.end method

.method public final synthetic n(Landroid/graphics/Bitmap;)V
    .locals 0

    return-void
.end method

.method public final o(Landroid/graphics/Bitmap;I)V
    .locals 2

    iget-object v0, p0, Lfdb;->a:Lfdc;

    iget-boolean v1, v0, Lfdc;->d:Z

    if-eqz v1, :cond_0

    iget v1, v0, Lfdc;->e:I

    sub-int/2addr v1, p2

    iget p2, v0, Lfdc;->f:I

    add-int/2addr v1, p2

    invoke-static {v0}, Lfdc;->f(Lfdc;)V

    iget-object p2, p0, Lfdb;->a:Lfdc;

    iget-object p2, p2, Lfdc;->a:Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

    invoke-static {p1, v1}, Lilu;->a(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->b(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public final synthetic p(Lgxy;Lkae;)V
    .locals 0

    return-void
.end method

.method public final synthetic q(Lgxy;Lgxt;Lgyb;)V
    .locals 0

    return-void
.end method

.method public final synthetic r(Lgxy;)V
    .locals 0

    return-void
.end method

.method public final synthetic x(Lgxy;)V
    .locals 0

    return-void
.end method
