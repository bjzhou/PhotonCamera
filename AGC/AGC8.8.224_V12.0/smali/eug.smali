.class public final synthetic Leug;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:F

.field public final synthetic b:Ljava/lang/Object;

.field private final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcgb;FI)V
    .locals 0

    iput p3, p0, Leug;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leug;->b:Ljava/lang/Object;

    iput p2, p0, Leug;->a:F

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;FI)V
    .locals 0

    iput p3, p0, Leug;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leug;->b:Ljava/lang/Object;

    iput p2, p0, Leug;->a:F

    return-void
.end method

.method public synthetic constructor <init>(Leuh;FI)V
    .locals 0

    iput p3, p0, Leug;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leug;->b:Ljava/lang/Object;

    iput p2, p0, Leug;->a:F

    return-void
.end method

.method public constructor <init>(Lgac;FI)V
    .locals 0

    iput p3, p0, Leug;->c:I

    iput-object p1, p0, Leug;->b:Ljava/lang/Object;

    iput p2, p0, Leug;->a:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lhpq;FI)V
    .locals 0

    iput p3, p0, Leug;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leug;->b:Ljava/lang/Object;

    iput p2, p0, Leug;->a:F

    return-void
.end method

.method public synthetic constructor <init>(Lieb;FI)V
    .locals 0

    iput p3, p0, Leug;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leug;->b:Ljava/lang/Object;

    iput p2, p0, Leug;->a:F

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 8

    iget v0, p0, Leug;->c:I

    const-string v1, "%.1f"

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Leug;->b:Ljava/lang/Object;

    iget v1, p0, Leug;->a:F

    check-cast v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;

    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->c:F

    cmpg-float v2, v1, v2

    if-ltz v2, :cond_a

    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d:F

    cmpl-float v2, v1, v2

    if-lez v2, :cond_7

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Leug;->b:Ljava/lang/Object;

    iget v5, p0, Leug;->a:F

    check-cast v0, Lieb;

    iget-object v6, v0, Lieb;->c:Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;

    if-eqz v6, :cond_2

    iget-boolean v0, v0, Lieb;->i:Z

    const/high16 v7, -0x3d380000    # -100.0f

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_1

    const/high16 v7, 0x43480000    # 200.0f

    cmpg-float v7, v5, v7

    if-gtz v7, :cond_1

    if-eqz v0, :cond_0

    const/high16 v0, 0x41100000    # 9.0f

    mul-float v5, v5, v0

    const/high16 v0, 0x40a00000    # 5.0f

    div-float/2addr v5, v0

    const/high16 v0, 0x42000000    # 32.0f

    add-float/2addr v5, v0

    const-string v0, "F"

    goto :goto_0

    :cond_0
    const-string v0, "C"

    :goto_0
    iget-object v2, v6, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;->d:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;->f:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_1
    iget-object v0, v6, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;->d:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void

    :pswitch_1
    iget-object v0, p0, Leug;->b:Ljava/lang/Object;

    iget v5, p0, Leug;->a:F

    check-cast v0, Lieb;

    iget-object v6, v0, Lieb;->c:Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;

    if-eqz v6, :cond_5

    iget-boolean v0, v0, Lieb;->i:Z

    const/4 v7, 0x0

    cmpl-float v7, v5, v7

    if-ltz v7, :cond_4

    if-eqz v0, :cond_3

    const v0, 0x4051f8a1

    mul-float v5, v5, v0

    const-string v0, "ft"

    goto :goto_1

    :cond_3
    const-string v0, "m"

    :goto_1
    iget-object v2, v6, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;->c:Landroid/widget/TextView;

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, v6, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;->e:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_4
    iget-object v0, v6, Lcom/google/android/apps/camera/ui/remotecontrol/RemoteControlView;->c:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    return-void

    :pswitch_2
    iget-object v0, p0, Leug;->b:Ljava/lang/Object;

    iget v1, p0, Leug;->a:F

    check-cast v0, Lhpq;

    iget-object v0, v0, Lhpq;->p:Liff;

    const/high16 v2, 0x42c80000    # 100.0f

    mul-float v1, v1, v2

    float-to-int v1, v1

    invoke-interface {v0, v1}, Liff;->C(I)V

    return-void

    :pswitch_3
    iget-object v0, p0, Leug;->b:Ljava/lang/Object;

    check-cast v0, Lgac;

    iget-object v0, v0, Lgac;->a:Lgxl;

    iget v1, p0, Leug;->a:F

    invoke-static {v1}, Lkae;->b(F)Lkae;

    move-result-object v1

    invoke-interface {v0, v1}, Lgxl;->b(Lkae;)V

    return-void

    :pswitch_4
    iget-object v0, p0, Leug;->b:Ljava/lang/Object;

    iget v1, p0, Leug;->a:F

    check-cast v0, Lftk;

    const-wide/16 v2, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lftk;->f(FJ)V

    return-void

    :pswitch_5
    iget-object v0, p0, Leug;->b:Ljava/lang/Object;

    iget v1, p0, Leug;->a:F

    check-cast v0, Lcgb;

    iget-object v0, v0, Lcgb;->b:Lcgn;

    invoke-virtual {v0}, Lcgn;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void

    :pswitch_6
    iget-object v0, p0, Leug;->b:Ljava/lang/Object;

    iget v1, p0, Leug;->a:F

    check-cast v0, Leuh;

    invoke-virtual {v0, v1}, Leuh;->g(F)V

    iget-object v2, v0, Leuh;->a:Leuj;

    iget-object v2, v2, Leuj;->k:Lfmd;

    invoke-interface {v2}, Lfmd;->a()V

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-nez v1, :cond_6

    iget-object v1, v0, Leuh;->a:Leuj;

    iget-object v1, v1, Leuj;->i:Liff;

    invoke-interface {v1}, Liff;->m()V

    iget-object v0, v0, Leuh;->a:Leuj;

    iget-object v0, v0, Leuj;->j:Lhgy;

    const v1, 0x7f130008

    invoke-interface {v0, v1}, Lhgy;->b(I)V

    :cond_6
    return-void

    :cond_7
    iget-object v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->o:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->o:Landroid/widget/Scroller;

    invoke-virtual {v2, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    :cond_8
    iput-boolean v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->p:Z

    iput v1, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->h:F

    const/high16 v2, 0x41c80000    # 25.0f

    mul-float v1, v1, v2

    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->j:I

    float-to-int v1, v1

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->l:I

    int-to-float v2, v2

    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->i:F

    int-to-float v1, v1

    div-float/2addr v1, v2

    mul-float v1, v1, v3

    iget v2, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->m:F

    sub-float/2addr v1, v2

    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->k:F

    float-to-int v1, v1

    mul-int/lit16 v5, v1, 0x7d0

    float-to-int v3, v3

    div-int/2addr v5, v3

    if-eqz v1, :cond_9

    iget-object v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->o:Landroid/widget/Scroller;

    float-to-int v2, v2

    invoke-virtual {v3, v2, v4, v1, v5}, Landroid/widget/Scroller;->startScroll(IIII)V

    :cond_9
    invoke-virtual {v0}, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->invalidate()V

    return-void

    :cond_a
    :goto_2
    sget-object v2, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v3, 0x1163

    invoke-interface {v2, v3}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    iget v3, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->c:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    iget v0, v0, Lcom/google/android/apps/camera/zoomui/view/ZoomSliderView;->d:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    const-string v4, "The currentValue of %f is out of range: [%f, %f]"

    invoke-interface {v2, v4, v1, v3, v0}, Lnah;->B(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

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
.end method
