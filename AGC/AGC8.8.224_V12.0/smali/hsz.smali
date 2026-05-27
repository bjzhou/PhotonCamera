.class Lhsz;
.super Lhsy;


# instance fields
.field final synthetic a:Lhtb;


# direct methods
.method public constructor <init>(Lhtb;)V
    .locals 0

    iput-object p1, p0, Lhsz;->a:Lhtb;

    invoke-direct {p0}, Lhsy;-><init>()V

    return-void
.end method


# virtual methods
.method public b()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 8

    iget-object v0, p0, Lhsz;->a:Lhtb;

    iget-object v0, v0, Lhtb;->h:Lhrq;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhrq;->b(Z)V

    iget-object v0, p0, Lhsz;->a:Lhtb;

    iget-object v0, v0, Lhtb;->c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->startAutoTimerCapturing()V

    iget-object v0, p0, Lhsz;->a:Lhtb;

    iget-object v2, v0, Lhtb;->b:Libj;

    invoke-interface {v2}, Libj;->r()Z

    move-result v2

    iput-boolean v2, v0, Lhtb;->i:Z

    iget-object v0, p0, Lhsz;->a:Lhtb;

    iget-object v0, v0, Lhtb;->b:Libj;

    invoke-interface {v0, v1}, Libj;->l(Z)V

    iget-object v0, p0, Lhsz;->a:Lhtb;

    iget-object v0, v0, Lhtb;->b:Libj;

    invoke-interface {v0, v1}, Libj;->v(Z)V

    iget-object v0, p0, Lhsz;->a:Lhtb;

    iget-object v0, v0, Lhtb;->d:Liff;

    invoke-interface {v0}, Liff;->H()V

    iget-object v0, p0, Lhsz;->a:Lhtb;

    iget-object v0, v0, Lhtb;->e:Lhwu;

    invoke-virtual {v0, v1}, Lhwu;->d(Z)V

    iget-object v0, p0, Lhsz;->a:Lhtb;

    iget-object v0, v0, Lhtb;->f:Lgeh;

    invoke-interface {v0}, Lgeh;->m()V

    invoke-static {}, Lipj;->c()V

    iget-object v0, p0, Lhsz;->a:Lhtb;

    iget-object v0, v0, Lhtb;->a:Lclc;

    iget-object v2, v0, Lclc;->a:Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    sget-object v3, Lclj;->b:Lclj;

    iget-object v4, v0, Lclc;->a:Ljvk;

    iget-object v4, v4, Ljvk;->d:Ljava/lang/Object;

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    const-string v2, "Cannot transition to CAPTURING from %s"

    invoke-static {v1, v2, v4}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lclj;->c:Lclj;

    invoke-virtual {v0, v1}, Lclc;->d(Lclj;)V

    iget-object v1, v0, Lclc;->b:Lclu;

    iget-object v2, v1, Lclu;->c:Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->f:Landroid/view/ViewPropertyAnimator;

    if-eqz v3, :cond_1

    invoke-static {v3}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->f:Landroid/view/ViewPropertyAnimator;

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v4, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->a:Lj$/time/Duration;

    invoke-virtual {v4}, Lj$/time/Duration;->toMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lclv;

    invoke-direct {v4, v2}, Lclv;-><init>(Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    iput-object v3, v2, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->f:Landroid/view/ViewPropertyAnimator;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->getLeft()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->getTop()I

    move-result v4

    invoke-virtual {v2}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->getRight()I

    move-result v6

    invoke-virtual {v2}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->getBottom()I

    move-result v7

    invoke-virtual {v2, v3, v4, v6, v7}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->b(IIII)V

    iget-object v3, v2, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->c:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-boolean v5, v1, Lclu;->d:Z

    :cond_2
    iget-object v1, v0, Lclc;->e:Lmpa;

    iget v2, v1, Lmpa;->b:I

    add-int/2addr v2, v5

    iput v2, v1, Lmpa;->b:I

    iget-object v2, v1, Lmpa;->f:Ljava/lang/Object;

    check-cast v2, Lmrg;

    invoke-virtual {v2}, Lmrg;->d()V

    iget-object v2, v1, Lmpa;->f:Ljava/lang/Object;

    check-cast v2, Lmrg;

    invoke-virtual {v2}, Lmrg;->e()V

    iget-object v2, v1, Lmpa;->c:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v1, v1, Lmpa;->a:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iget-object v0, v0, Lclc;->c:Lhgy;

    const v1, 0x7f13002f

    invoke-interface {v0, v1}, Lhgy;->b(I)V

    return-void
.end method

.method public final g()V
    .locals 10

    iget-object v0, p0, Lhsz;->a:Lhtb;

    iget-object v0, v0, Lhtb;->a:Lclc;

    iget-object v1, v0, Lclc;->a:Ljvk;

    iget-object v1, v1, Ljvk;->d:Ljava/lang/Object;

    sget-object v2, Lclj;->c:Lclj;

    iget-object v3, v0, Lclc;->a:Ljvk;

    iget-object v3, v3, Ljvk;->d:Ljava/lang/Object;

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "Cannot transition to IDLE from %s"

    invoke-static {v1, v2, v3}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    sget-object v1, Lclj;->b:Lclj;

    invoke-virtual {v0, v1}, Lclc;->d(Lclj;)V

    iget-object v1, v0, Lclc;->b:Lclu;

    iget-object v2, v1, Lclu;->c:Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;

    if-eqz v2, :cond_2

    iget-object v3, v2, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->f:Landroid/view/ViewPropertyAnimator;

    if-eqz v3, :cond_1

    invoke-static {v3}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->cancel()V

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->f:Landroid/view/ViewPropertyAnimator;

    :cond_1
    invoke-virtual {v2}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    sget-object v6, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->a:Lj$/time/Duration;

    invoke-virtual {v6}, Lj$/time/Duration;->toMillis()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v6, Lclw;

    invoke-direct {v6, v2}, Lclw;-><init>(Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;)V

    invoke-virtual {v3, v6}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

    iput-object v3, v2, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->f:Landroid/view/ViewPropertyAnimator;

    iget-object v3, v2, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->c:Landroid/view/View$OnLayoutChangeListener;

    invoke-virtual {v2, v3}, Lcom/google/android/apps/camera/autotimer/ui/AutoTimerIndicatorView;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    iput-boolean v5, v1, Lclu;->d:Z

    :cond_2
    iget-object v1, v0, Lclc;->e:Lmpa;

    iget-object v1, v1, Lmpa;->f:Ljava/lang/Object;

    check-cast v1, Lmrg;

    iget-boolean v2, v1, Lmrg;->a:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Lmrg;->f()V

    :cond_3
    iget-object v1, v0, Lclc;->e:Lmpa;

    iget v1, v1, Lmpa;->b:I

    if-lez v1, :cond_b

    iget-object v1, v0, Lclc;->f:Ldne;

    sget-object v2, Lnkh;->h:Lnkh;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    iget-object v3, v1, Ldne;->a:Ljava/lang/Object;

    check-cast v3, Lmpa;

    iget-object v3, v3, Lmpa;->e:Ljava/lang/Object;

    check-cast v3, Ljava/util/UUID;

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v6, v2, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_4
    iget-object v6, v2, Lnwn;->b:Lnws;

    move-object v7, v6

    check-cast v7, Lnkh;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v8, v7, Lnkh;->a:I

    or-int/2addr v8, v4

    iput v8, v7, Lnkh;->a:I

    iput-object v3, v7, Lnkh;->b:Ljava/lang/String;

    iget-object v3, v1, Ldne;->a:Ljava/lang/Object;

    check-cast v3, Lmpa;

    iget v3, v3, Lmpa;->b:I

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_5

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_5
    iget-object v6, v2, Lnwn;->b:Lnws;

    move-object v7, v6

    check-cast v7, Lnkh;

    iget v8, v7, Lnkh;->a:I

    or-int/lit8 v8, v8, 0x2

    iput v8, v7, Lnkh;->a:I

    iput v3, v7, Lnkh;->c:I

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_6
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lnkh;

    iput v5, v3, Lnkh;->d:I

    iget v6, v3, Lnkh;->a:I

    or-int/lit8 v6, v6, 0x4

    iput v6, v3, Lnkh;->a:I

    iget-object v3, v1, Ldne;->a:Ljava/lang/Object;

    check-cast v3, Lmpa;

    iget-object v3, v3, Lmpa;->f:Ljava/lang/Object;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    check-cast v3, Lmrg;

    invoke-virtual {v3, v6}, Lmrg;->a(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v6

    iget-object v3, v2, Lnwn;->b:Lnws;

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_7
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lnkh;

    iget v8, v3, Lnkh;->a:I

    or-int/lit8 v8, v8, 0x8

    iput v8, v3, Lnkh;->a:I

    iput-wide v6, v3, Lnkh;->e:J

    iget-object v3, v1, Ldne;->a:Ljava/lang/Object;

    check-cast v3, Lmpa;

    iget-object v3, v3, Lmpa;->c:Ljava/lang/Object;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v6, v2, Lnwn;->b:Lnws;

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_8
    iget-object v6, v2, Lnwn;->b:Lnws;

    check-cast v6, Lnkh;

    iget v7, v6, Lnkh;->a:I

    or-int/lit8 v7, v7, 0x10

    iput v7, v6, Lnkh;->a:I

    iput v3, v6, Lnkh;->f:I

    if-le v3, v4, :cond_a

    add-int/lit8 v3, v3, -0x1

    iget-object v6, v1, Ldne;->a:Ljava/lang/Object;

    check-cast v6, Lmpa;

    iget-object v6, v6, Lmpa;->c:Ljava/lang/Object;

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iget-object v8, v1, Ldne;->a:Ljava/lang/Object;

    check-cast v8, Lmpa;

    iget-object v8, v8, Lmpa;->c:Ljava/lang/Object;

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    sub-long/2addr v6, v8

    iget-object v5, v2, Lnwn;->b:Lnws;

    invoke-virtual {v5}, Lnws;->ac()Z

    move-result v5

    if-nez v5, :cond_9

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_9
    int-to-long v8, v3

    div-long/2addr v6, v8

    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lnkh;

    iget v5, v3, Lnkh;->a:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v3, Lnkh;->a:I

    iput-wide v6, v3, Lnkh;->g:J

    :cond_a
    iget-object v1, v1, Ldne;->b:Ljava/lang/Object;

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lnkh;

    invoke-interface {v1, v2}, Lfbz;->F(Lnkh;)V

    :cond_b
    iget-object v0, v0, Lclc;->c:Lhgy;

    const v1, 0x7f130030

    invoke-interface {v0, v1}, Lhgy;->b(I)V

    iget-object v0, p0, Lhsz;->a:Lhtb;

    iget-object v0, v0, Lhtb;->c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->stopAutoTimerCapturing()V

    iget-object v0, p0, Lhsz;->a:Lhtb;

    iget-object v1, v0, Lhtb;->b:Libj;

    iget-boolean v0, v0, Lhtb;->i:Z

    invoke-interface {v1, v0}, Libj;->l(Z)V

    iget-object v0, p0, Lhsz;->a:Lhtb;

    iget-object v1, v0, Lhtb;->b:Libj;

    iget-boolean v0, v0, Lhtb;->i:Z

    invoke-interface {v1, v0}, Libj;->v(Z)V

    iget-object v0, p0, Lhsz;->a:Lhtb;

    iget-object v0, v0, Lhtb;->d:Liff;

    invoke-interface {v0}, Liff;->Y()V

    iget-object v0, p0, Lhsz;->a:Lhtb;

    iget-object v0, v0, Lhtb;->e:Lhwu;

    invoke-virtual {v0, v4}, Lhwu;->d(Z)V

    iget-object v0, p0, Lhsz;->a:Lhtb;

    iget-object v0, v0, Lhtb;->f:Lgeh;

    invoke-interface {v0}, Lgeh;->l()V

    invoke-static {}, Lipj;->d()V

    iget-object v0, p0, Lhsz;->a:Lhtb;

    iget-object v0, v0, Lhtb;->j:Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_c

    iget-object v0, p0, Lhsz;->a:Lhtb;

    iget-object v0, v0, Lhtb;->h:Lhrq;

    invoke-virtual {v0}, Lhrq;->e()V

    :cond_c
    iget-object v0, p0, Lhsz;->a:Lhtb;

    iget-object v0, v0, Lhtb;->g:Litm;

    invoke-interface {v0}, Litm;->aa()Z

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lhsz;->a:Lhtb;

    iget-object v0, v0, Lhtb;->g:Litm;

    sget-object v1, Lika;->b:Lika;

    invoke-interface {v0, v1}, Litm;->Z(Lika;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_1

    :cond_d
    return-void

    :cond_e
    :goto_1
    iget-object v0, p0, Lhsz;->a:Lhtb;

    iget-object v0, v0, Lhtb;->g:Litm;

    invoke-interface {v0}, Litm;->p()V

    return-void
.end method
