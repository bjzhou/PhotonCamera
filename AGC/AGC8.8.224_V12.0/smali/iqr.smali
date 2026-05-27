.class public final synthetic Liqr;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Z

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Object;

.field private final synthetic d:I


# direct methods
.method public synthetic constructor <init>(Lifi;ZZI)V
    .locals 0

    iput p4, p0, Liqr;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liqr;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Liqr;->a:Z

    iput-boolean p3, p0, Liqr;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Liqu;ZZI)V
    .locals 0

    iput p4, p0, Liqr;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liqr;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Liqr;->a:Z

    iput-boolean p3, p0, Liqr;->b:Z

    return-void
.end method

.method public synthetic constructor <init>(Lirc;ZZI)V
    .locals 0

    iput p4, p0, Liqr;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Liqr;->c:Ljava/lang/Object;

    iput-boolean p2, p0, Liqr;->a:Z

    iput-boolean p3, p0, Liqr;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget v0, p0, Liqr;->d:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Liqr;->c:Ljava/lang/Object;

    iget-boolean v2, p0, Liqr;->a:Z

    iget-boolean v3, p0, Liqr;->b:Z

    if-eqz v2, :cond_8

    move-object v2, v0

    check-cast v2, Lirc;

    invoke-virtual {v2}, Lirc;->m()V

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Liqr;->c:Ljava/lang/Object;

    iget-boolean v2, p0, Liqr;->a:Z

    iget-boolean v3, p0, Liqr;->b:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lirc;

    invoke-virtual {v2}, Lirc;->m()V

    :cond_0
    check-cast v0, Lirc;

    invoke-virtual {v0}, Lirc;->k()V

    if-eqz v3, :cond_2

    iget-object v2, v0, Lirc;->g:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getAlpha()F

    move-result v2

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_1

    iget-object v0, v0, Lirc;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->reverse()V

    :cond_1
    return-void

    :cond_2
    iget-object v1, v0, Lirc;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v1, v0, Lirc;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->reverse()V

    iget-object v0, v0, Lirc;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    return-void

    :pswitch_1
    iget-object v0, p0, Liqr;->c:Ljava/lang/Object;

    iget-boolean v1, p0, Liqr;->a:Z

    iget-boolean v2, p0, Liqr;->b:Z

    if-eqz v1, :cond_3

    check-cast v0, Liqu;

    invoke-virtual {v0}, Liqu;->f()V

    iget-object v0, v0, Liqu;->g:Lirc;

    invoke-virtual {v0, v2}, Liqw;->a(Z)V

    return-void

    :cond_3
    check-cast v0, Liqu;

    iget-object v0, v0, Liqu;->g:Lirc;

    invoke-virtual {v0, v2}, Liqw;->b(Z)V

    return-void

    :pswitch_2
    iget-object v0, p0, Liqr;->c:Ljava/lang/Object;

    iget-boolean v1, p0, Liqr;->a:Z

    iget-boolean v2, p0, Liqr;->b:Z

    check-cast v0, Lifi;

    iget-object v3, v0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v3}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->isEnabled()Z

    move-result v3

    if-eq v3, v1, :cond_4

    iget-object v0, v0, Lifi;->a:Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;

    invoke-virtual {v0, v1, v2}, Lcom/google/android/apps/camera/ui/shutterbutton/ShutterButton;->setEnabled(ZZ)V

    :cond_4
    return-void

    :pswitch_3
    iget-object v0, p0, Liqr;->c:Ljava/lang/Object;

    iget-boolean v1, p0, Liqr;->a:Z

    iget-boolean v2, p0, Liqr;->b:Z

    if-eqz v1, :cond_6

    check-cast v0, Liqu;

    iget-object v1, v0, Liqu;->g:Lirc;

    iget-boolean v3, v1, Lirc;->l:Z

    if-nez v3, :cond_5

    invoke-virtual {v1, v2}, Liqw;->c(Z)V

    goto :goto_0

    :cond_5
    iget-object v2, v1, Lirc;->h:Ljuh;

    new-instance v3, Liqg;

    const/16 v4, 0xf

    invoke-direct {v3, v1, v4}, Liqg;-><init>(Lirc;I)V

    invoke-virtual {v2, v3}, Ljuh;->c(Ljava/lang/Runnable;)V

    :goto_0
    invoke-virtual {v0}, Liqu;->f()V

    return-void

    :cond_6
    check-cast v0, Liqu;

    iget-object v0, v0, Liqu;->g:Lirc;

    iget-boolean v1, v0, Lirc;->l:Z

    if-nez v1, :cond_7

    invoke-virtual {v0, v2}, Liqw;->cp(Z)V

    :cond_7
    return-void

    :cond_8
    move-object v2, v0

    check-cast v2, Lirc;

    iget-object v2, v2, Lirc;->k:Ljwb;

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_9

    move-object v2, v0

    check-cast v2, Liqw;

    invoke-virtual {v2}, Liqw;->d()V

    :cond_9
    :goto_1
    check-cast v0, Lirc;

    iget-object v2, v0, Lirc;->i:Lhws;

    invoke-interface {v2}, Lhws;->o()Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, v0, Lirc;->g:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    iget-object v2, v2, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->a:Lhyn;

    sget-object v4, Lhyn;->e:Lhyn;

    if-ne v2, v4, :cond_a

    iget-object v2, v0, Lirc;->i:Lhws;

    invoke-interface {v2}, Lhws;->a()Liko;

    move-result-object v2

    sget-object v4, Liko;->a:Liko;

    if-eq v2, v4, :cond_a

    iget-object v1, v0, Lirc;->g:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0703eb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, v0, Lirc;->g:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    int-to-float v1, v1

    invoke-virtual {v2, v1}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->setTranslationX(F)V

    goto :goto_2

    :cond_a
    iget-object v2, v0, Lirc;->g:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    invoke-virtual {v2, v1}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->setTranslationX(F)V

    :goto_2
    iget-object v1, v0, Lirc;->g:Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/whitebalance/ManualWhiteBalanceUi;->setVisibility(I)V

    if-eqz v3, :cond_b

    iget-object v0, v0, Lirc;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    return-void

    :cond_b
    iget-object v1, v0, Lirc;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    iget-object v0, v0, Lirc;->j:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
