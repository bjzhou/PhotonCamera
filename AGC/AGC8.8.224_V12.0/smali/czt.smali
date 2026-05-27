.class final Lczt;
.super Ljava/lang/Object;

# interfaces
.implements Liap;


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

.field final synthetic b:Lczu;


# direct methods
.method public constructor <init>(Lczu;Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;)V
    .locals 0

    iput-object p1, p0, Lczt;->b:Lczu;

    iput-object p2, p0, Lczt;->a:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;IZ)V
    .locals 2

    iget-object v0, p0, Lczt;->b:Lczu;

    iget-boolean v1, v0, Lczu;->d:Z

    if-nez v1, :cond_0

    iget-object v1, v0, Lczu;->e:Lczv;

    iget v0, v0, Lczu;->f:I

    invoke-virtual {v1, v0, p2}, Lczv;->n(II)V

    :cond_0
    if-eqz p3, :cond_1

    iget-object p2, p0, Lczt;->b:Lczu;

    iget-object p2, p2, Lczu;->e:Lczv;

    iget-boolean p2, p2, Lczv;->l:Z

    if-eqz p2, :cond_1

    invoke-static {p1}, Lnom;->h(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final b(Landroid/view/View;Z)V
    .locals 3

    check-cast p1, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    iget-object p2, p0, Lczt;->b:Lczu;

    iget-boolean v0, p2, Lczu;->d:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object p2, p2, Lczu;->e:Lczv;

    iget-object p2, p2, Lczv;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    invoke-virtual {p1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->a()I

    move-result v0

    if-eq p2, v0, :cond_0

    iget-object p2, p0, Lczt;->b:Lczu;

    iget-object p2, p2, Lczu;->e:Lczv;

    invoke-virtual {p2, v1}, Lczv;->i(Z)V

    iget-object p2, p0, Lczt;->b:Lczu;

    iget-object p2, p2, Lczu;->e:Lczv;

    iget-object p2, p2, Lczv;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->a()I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lczt;->b:Lczu;

    iget-object p2, p2, Lczu;->e:Lczv;

    iget-object v0, p2, Lczv;->c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setClickable(Z)V

    iget-object v0, p2, Lczv;->g:Libj;

    invoke-interface {v0, v2}, Libj;->l(Z)V

    iget-object v0, p2, Lczv;->h:Liff;

    invoke-interface {v0, v2}, Liff;->E(Z)V

    iget-object p2, p2, Lczv;->e:Leoa;

    invoke-virtual {p2, v2}, Leoa;->g(I)V

    :goto_0
    iget-object p2, p0, Lczt;->b:Lczu;

    iget-object v0, p2, Lczu;->e:Lczv;

    iget p2, p2, Lczu;->f:I

    invoke-virtual {p1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->a()I

    move-result v2

    invoke-virtual {v0, p2, v2}, Lczv;->n(II)V

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->i()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->a()I

    move-result p2

    iget-object v0, p0, Lczt;->b:Lczu;

    iget-object v0, v0, Lczu;->e:Lczv;

    iget v2, v0, Lczv;->m:I

    if-ne p2, v2, :cond_2

    invoke-virtual {v0}, Lczv;->b()V

    iget-object p2, p0, Lczt;->b:Lczu;

    iget-object p2, p2, Lczu;->e:Lczv;

    invoke-virtual {p2, v1}, Lczv;->i(Z)V

    invoke-virtual {p1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object p2

    invoke-virtual {p1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f020007

    invoke-static {v0, v1}, Landroid/animation/AnimatorInflater;->loadAnimator(Landroid/content/Context;I)Landroid/animation/Animator;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p2, v1, v0}, Landroid/animation/LayoutTransition;->setAnimator(ILandroid/animation/Animator;)V

    new-instance v0, Lczs;

    invoke-direct {v0, p0}, Lczs;-><init>(Lczt;)V

    invoke-virtual {p2, v0}, Landroid/animation/LayoutTransition;->addTransitionListener(Landroid/animation/LayoutTransition$TransitionListener;)V

    invoke-virtual {p1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iget-object v0, p0, Lczt;->b:Lczu;

    iget v0, v0, Lczu;->a:I

    iput v0, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-virtual {p1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->removeAllViews()V

    :cond_2
    return-void
.end method

.method public final c(Z)V
    .locals 2

    iget-object v0, p0, Lczt;->b:Lczu;

    iget-object v0, v0, Lczu;->e:Lczv;

    iget-object v0, v0, Lczv;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object v1, p0, Lczt;->a:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    if-eqz p1, :cond_0

    iget-object p1, p0, Lczt;->b:Lczu;

    iget-boolean v0, p1, Lczu;->d:Z

    if-eqz v0, :cond_0

    iget-object p1, p1, Lczu;->e:Lczv;

    invoke-virtual {p1}, Lczv;->b()V

    :cond_0
    return-void
.end method
