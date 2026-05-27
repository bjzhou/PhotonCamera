.class public final Lczv;
.super Ljava/lang/Object;

# interfaces
.implements Lczx;


# instance fields
.field public final a:Ljava/util/ArrayList;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

.field public final d:Lell;

.field public final e:Leoa;

.field public final f:Ljuh;

.field public final g:Libj;

.field public final h:Liff;

.field public final i:Landroid/view/WindowManager;

.field public j:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

.field public k:Lkad;

.field public l:Z

.field public m:I

.field public n:I

.field public final o:Lcdi;

.field public p:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

.field public final q:Ljew;

.field private final r:Ljava/util/Set;

.field private s:Lj$/util/Optional;

.field private t:I


# direct methods
.method public constructor <init>(Lcdi;Lcom/google/android/apps/camera/bottombar/BottomBarController;Lell;Leoa;Ljuh;Libj;Liff;Ljew;Landroid/view/WindowManager;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p10, Ljava/util/ArrayList;

    invoke-direct {p10}, Ljava/util/ArrayList;-><init>()V

    iput-object p10, p0, Lczv;->a:Ljava/util/ArrayList;

    new-instance p10, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 p11, -0x1

    invoke-direct {p10, p11}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p10, p0, Lczv;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance p10, Ljava/util/HashSet;

    invoke-direct {p10}, Ljava/util/HashSet;-><init>()V

    iput-object p10, p0, Lczv;->r:Ljava/util/Set;

    sget-object p10, Lcgk;->i:Lcgk;

    iput-object p10, p0, Lczv;->k:Lkad;

    iput-object p1, p0, Lczv;->o:Lcdi;

    iput-object p2, p0, Lczv;->c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    iput-object p3, p0, Lczv;->d:Lell;

    iput-object p4, p0, Lczv;->e:Leoa;

    iput-object p5, p0, Lczv;->f:Ljuh;

    iput-object p6, p0, Lczv;->g:Libj;

    iput-object p7, p0, Lczv;->h:Liff;

    iput-object p8, p0, Lczv;->q:Ljew;

    iput-object p9, p0, Lczv;->i:Landroid/view/WindowManager;

    return-void
.end method

.method private final q(I)V
    .locals 1

    iget-object v0, p0, Lczv;->j:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lczv;->j:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final r(I)V
    .locals 2

    iget-object v0, p0, Lczv;->r:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lczy;

    invoke-interface {v1, p1}, Lczy;->a(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private final s(I)V
    .locals 1

    iget-object v0, p0, Lczv;->j:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lczv;->j:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    invoke-virtual {v0, p1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private final t()I
    .locals 2

    sget-object v0, Liko;->a:Liko;

    iget v0, p0, Lczv;->t:I

    add-int/lit8 v1, v0, -0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lczy;)V
    .locals 1

    iget-object v0, p0, Lczv;->r:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lczv;->c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setClickable(Z)V

    iget-object v0, p0, Lczv;->g:Libj;

    invoke-interface {v0, v1}, Libj;->l(Z)V

    iget-object v0, p0, Lczv;->h:Liff;

    invoke-interface {v0, v1}, Liff;->E(Z)V

    iget-object v0, p0, Lczv;->e:Leoa;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Leoa;->g(I)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lczv;->j:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->e()V

    :cond_0
    iget-object v0, p0, Lczv;->p:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    if-eqz v0, :cond_1

    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    check-cast v0, Lczp;

    iget-object v0, v0, Lczp;->f:Liaj;

    invoke-virtual {v0}, Liad;->a()V

    :cond_1
    return-void
.end method

.method public final d()V
    .locals 1

    iget v0, p0, Lczv;->m:I

    invoke-direct {p0, v0}, Lczv;->q(I)V

    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lczv;->j:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    iget v1, p0, Lczv;->m:I

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->f(I)V

    return-void
.end method

.method public final f()V
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lczv;->i(Z)V

    iget-object v1, p0, Lczv;->j:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->j()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lczv;->s:Lj$/util/Optional;

    new-instance v2, Ldcc;

    invoke-direct {v2, p0, v0}, Ldcc;-><init>(Lczv;I)V

    invoke-virtual {v1, v2}, Lj$/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public final g(Lczy;)V
    .locals 1

    iget-object v0, p0, Lczv;->r:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final h(Z)V
    .locals 0

    iput-boolean p1, p0, Lczv;->l:Z

    return-void
.end method

.method public final i(Z)V
    .locals 1

    iget-object v0, p0, Lczv;->j:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {v0}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->d()V

    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->c()V

    return-void
.end method

.method public final j()V
    .locals 2

    iget-object v0, p0, Lczv;->j:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->h()V

    :cond_0
    iget-object v0, p0, Lczv;->p:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    if-eqz v0, :cond_1

    iget-object v1, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    check-cast v1, Lczp;

    iget-object v1, v1, Lczp;->f:Liaj;

    invoke-virtual {v1}, Liad;->a()V

    iget-object v0, v0, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    check-cast v0, Lczp;

    iget-object v0, v0, Lczp;->f:Liaj;

    invoke-virtual {v0}, Liad;->d()V

    :cond_1
    return-void
.end method

.method public final k()V
    .locals 1

    iget v0, p0, Lczv;->m:I

    invoke-direct {p0, v0}, Lczv;->s(I)V

    return-void
.end method

.method public final l()V
    .locals 1

    invoke-direct {p0}, Lczv;->t()I

    move-result v0

    invoke-direct {p0, v0}, Lczv;->q(I)V

    return-void
.end method

.method public final m()V
    .locals 1

    invoke-direct {p0}, Lczv;->t()I

    move-result v0

    invoke-direct {p0, v0}, Lczv;->s(I)V

    return-void
.end method

.method public final n(II)V
    .locals 1

    iget-object v0, p0, Lczv;->j:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Liko;->a:Liko;

    add-int/lit8 p1, p1, -0x1

    packed-switch p1, :pswitch_data_0

    iget p1, p0, Lczv;->m:I

    if-ge p2, p1, :cond_0

    invoke-direct {p0, p2}, Lczv;->r(I)V

    return-void

    :pswitch_0
    iget p1, p0, Lczv;->m:I

    if-le p2, p1, :cond_0

    add-int/lit8 p2, p2, -0x1

    invoke-direct {p0, p2}, Lczv;->r(I)V

    return-void

    :cond_0
    return-void

    :cond_1
    sget-object v0, Liko;->a:Liko;

    add-int/lit8 p1, p1, -0x1

    packed-switch p1, :pswitch_data_1

    invoke-direct {p0, p2}, Lczv;->r(I)V

    return-void

    :pswitch_1
    add-int/lit8 p2, p2, -0x1

    invoke-direct {p0, p2}, Lczv;->r(I)V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method

.method public final o(Lmtb;Liaq;IIIZILj$/util/Optional;)V
    .locals 7

    check-cast p2, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    iput-object p2, p0, Lczv;->j:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lczv;->i(Z)V

    invoke-virtual {p1}, Lmtb;->r()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne p3, v1, :cond_0

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    iput p2, p0, Lczv;->m:I

    iput-boolean v1, p0, Lczv;->l:Z

    iget-object p2, p0, Lczv;->a:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    iput p3, p0, Lczv;->t:I

    iput-object p8, p0, Lczv;->s:Lj$/util/Optional;

    if-ne p3, v1, :cond_1

    add-int/lit8 p4, p4, 0x1

    :cond_1
    iput p4, p0, Lczv;->n:I

    iget-object p2, p0, Lczv;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result p2

    const/4 p4, -0x1

    if-ne p2, p4, :cond_2

    iget-object p2, p0, Lczv;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iget p4, p0, Lczv;->n:I

    invoke-virtual {p2, p4}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    :cond_2
    iget-object p2, p0, Lczv;->j:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    invoke-virtual {p2}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    iput p7, p2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object p2, p0, Lczv;->j:Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;

    new-instance p4, Lczu;

    move-object v0, p4

    move-object v1, p0

    move v2, p7

    move-object v3, p1

    move v4, p3

    move v5, p5

    move v6, p6

    invoke-direct/range {v0 .. v6}, Lczu;-><init>(Lczv;ILmtb;IIZ)V

    invoke-virtual {p2, p4}, Lcom/google/android/apps/camera/camcorder/ui/modeslider/recordspeed/RecordSpeedSlider;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method public final p(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)V
    .locals 0

    iput-object p1, p0, Lczv;->p:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    return-void
.end method
