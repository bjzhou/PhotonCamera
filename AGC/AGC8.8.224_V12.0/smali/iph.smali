.class final Liph;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;


# instance fields
.field final synthetic a:Lipj;


# direct methods
.method public constructor <init>(Lipj;)V
    .locals 0

    iput-object p1, p0, Liph;->a:Lipj;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object p1, p0, Liph;->a:Lipj;

    iget-object p1, p1, Lipj;->f:Lipf;

    invoke-interface {p1}, Lipf;->b()V

    iget-object p1, p0, Liph;->a:Lipj;

    iget-object v0, p1, Lipj;->g:Lmtc;

    check-cast v0, Lmyt;

    iget-object v0, v0, Lmyt;->c:Lmyt;

    iget-object p1, p1, Lipj;->h:Ljvs;

    check-cast p1, Ljvk;

    iget-object p1, p1, Ljvk;->d:Ljava/lang/Object;

    invoke-interface {v0, p1}, Lmtc;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lioz;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    iget-object v1, p0, Liph;->a:Lipj;

    iget-object v1, v1, Lipj;->j:Ldhi;

    sget-object v2, Ldho;->bJ:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Liph;->a:Lipj;

    iget-object v1, v1, Lipj;->j:Ldhi;

    sget-object v2, Ldhw;->q:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_0
    sget-object v1, Lioz;->b:Lioz;

    if-ne p1, v1, :cond_2

    sget-boolean v1, Lipj;->b:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    :goto_0
    iget-object v1, p0, Liph;->a:Lipj;

    iget-object v1, v1, Lipj;->t:Ljes;

    invoke-virtual {p1}, Lioz;->ordinal()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "Invalid double tap action option "

    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_0
    iget-object p1, v1, Ljes;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->switchCamera()V

    goto :goto_1

    :pswitch_1
    iget-object p1, v1, Ljes;->b:Ljava/lang/Object;

    check-cast p1, Lisi;

    iget-object v1, p1, Lisi;->y:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p1, Lisi;->o:Ljvs;

    invoke-interface {v1}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lika;

    invoke-virtual {p1, v0, v1}, Lisi;->c(ZLika;)F

    move-result v1

    iget-object v2, p1, Lisi;->E:Lita;

    iput v1, v2, Lita;->K:F

    iget-object v1, p1, Lisi;->y:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhei;

    iget-object v2, p1, Lisi;->o:Ljvs;

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lika;

    invoke-interface {v1, v2}, Lhei;->i(Lika;)V

    iget-object v1, p1, Lisi;->y:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhei;

    invoke-interface {v1}, Lhei;->g()V

    iget-object v1, p1, Lisi;->M:Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    invoke-virtual {p1}, Lisi;->g()F

    move-result p1

    iput p1, v1, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->n:F

    goto :goto_1

    :cond_3
    iget-object v1, p1, Lisi;->d:Ldhi;

    sget-object v2, Ldho;->aj:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-virtual {p1}, Lisi;->p()V

    :cond_4
    iget-object p1, p1, Lisi;->E:Lita;

    invoke-virtual {p1}, Lisk;->j()V

    :goto_1
    :pswitch_2
    return v0

    :cond_5
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public final onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 1

    iget-object p1, p0, Liph;->a:Lipj;

    iget-object p1, p1, Lipj;->u:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    move-result p2

    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    iget-object p1, p1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    check-cast p1, Liaw;

    invoke-virtual {p1, p3}, Liaw;->c(F)V

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    check-cast p1, Liaw;

    invoke-virtual {p1, p4}, Liaw;->c(F)V

    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onLongPress(Landroid/view/MotionEvent;)V
    .locals 2

    iget-object v0, p0, Liph;->a:Lipj;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lipj;->l:Z

    iget-object v0, v0, Lipj;->f:Lipf;

    invoke-interface {v0}, Lipf;->b()V

    iget-object v0, p0, Liph;->a:Lipj;

    iget-object v1, v0, Lipj;->e:Lipc;

    invoke-virtual {v0, p1}, Lipj;->a(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-interface {v1, p1}, Lipc;->d(Landroid/graphics/PointF;)V

    return-void
.end method

.method public final onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 2

    iget-object p1, p0, Liph;->a:Lipj;

    iget-object p1, p1, Lipj;->e:Lipc;

    invoke-interface {p1}, Lipc;->c()V

    iget-object p1, p0, Liph;->a:Lipj;

    iget p2, p1, Lipj;->q:I

    add-int/lit8 v0, p2, -0x1

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    packed-switch v0, :pswitch_data_0

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown scrolling state"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :pswitch_0
    iget-object p1, p1, Lipj;->s:Lijn;

    invoke-virtual {p1, p4}, Lijn;->a(F)V

    return p2

    :pswitch_1
    iget-object p1, p1, Lipj;->r:Lijm;

    invoke-virtual {p1, p3}, Lijm;->a(F)V

    return p2

    :pswitch_2
    iget v0, p1, Lipj;->o:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    return v1

    :cond_0
    iget v0, p1, Lipj;->m:F

    add-float/2addr v0, p3

    iput v0, p1, Lipj;->m:F

    iget p3, p1, Lipj;->n:F

    add-float/2addr p3, p4

    iput p3, p1, Lipj;->n:F

    invoke-static {v0}, Lipj;->e(F)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Liph;->a:Lipj;

    iget-object p3, p1, Lipj;->r:Lijm;

    iget p1, p1, Lipj;->m:F

    invoke-virtual {p3, p1}, Lijm;->a(F)V

    iget-object p1, p0, Liph;->a:Lipj;

    const/4 p3, 0x2

    iput p3, p1, Lipj;->q:I

    return p2

    :cond_1
    iget-object p1, p0, Liph;->a:Lipj;

    iget p1, p1, Lipj;->n:F

    invoke-static {p1}, Lipj;->e(F)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Liph;->a:Lipj;

    iget-object p3, p1, Lipj;->s:Lijn;

    iget p1, p1, Lipj;->n:F

    invoke-virtual {p3, p1}, Lijn;->a(F)V

    iget-object p1, p0, Liph;->a:Lipj;

    const/4 p3, 0x3

    iput p3, p1, Lipj;->q:I

    return p2

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x0

    throw p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Liph;->a:Lipj;

    iget-object v1, v0, Lipj;->f:Lipf;

    invoke-virtual {v0, p1}, Lipj;->a(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-interface {v1, p1}, Lipf;->a(Landroid/graphics/PointF;)Z

    const/4 p1, 0x0

    return p1
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 2

    iget-object v0, p0, Liph;->a:Lipj;

    iget-object v1, v0, Lipj;->f:Lipf;

    invoke-virtual {v0, p1}, Lipj;->a(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    invoke-interface {v1, p1}, Lipf;->f(Landroid/graphics/PointF;)Z

    const/4 p1, 0x0

    return p1
.end method
