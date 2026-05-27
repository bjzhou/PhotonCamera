.class public final Lgdu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final a:Ljava/lang/Object;

.field private final b:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lgdu;->b:I

    iput-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/widget/Button;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lgdu;->b:I

    iput-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;I[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lgdu;->b:I

    iput-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcgy;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lgdu;->b:I

    iput-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/toast/ToastView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lgdu;->b:I

    iput-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lgdu;->b:I

    iput-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lgdu;->b:I

    iput-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lfkz;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lgdu;->b:I

    iput-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgdm;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lgdu;->b:I

    iput-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgdv;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lgdu;->b:I

    iput-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgef;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lgdu;->b:I

    iput-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lgeh;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lgdu;->b:I

    iput-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhie;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lgdu;->b:I

    iput-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhqr;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lgdu;->b:I

    iput-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhww;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lgdu;->b:I

    iput-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lhzo;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lgdu;->b:I

    iput-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Lgdu;->b:I

    const-string v0, "https://support.google.com/photos/answer/10694388"

    const/4 v1, 0x1

    const-string v2, "android.intent.action.VIEW"

    packed-switch p1, :pswitch_data_0

    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Landroid/widget/Button;

    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    return-void

    :pswitch_0
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://download.agccam.com"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_1
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://t.me/AGC_Photography"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_2
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://t.me/AGC_AND_MORE"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_3
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;

    iget-object p1, p1, Lcom/google/android/apps/camera/ui/preference/ManagedSwitchPreference;->i:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_4
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Lhzo;

    iget-object p1, p1, Lhzo;->q:Llqh;

    invoke-virtual {p1}, Llqh;->d()V

    return-void

    :pswitch_5
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Lhzo;

    iget-object p1, p1, Lhzo;->q:Llqh;

    invoke-virtual {p1}, Llqh;->d()V

    return-void

    :pswitch_6
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_7
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :pswitch_8
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Lhww;

    iget-object p1, p1, Lhww;->a:Lhwy;

    invoke-virtual {p1, v1}, Lhwy;->b(Z)V

    return-void

    :pswitch_9
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    iget-object v0, p1, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->a:Landroid/widget/VideoView;

    invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v0

    iget-object p1, p1, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->b:Lhsw;

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lhsw;->b()V

    :cond_1
    :goto_0
    return-void

    :pswitch_a
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    iget-object p1, p1, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->b:Lhsw;

    if-nez p1, :cond_2

    return-void

    :cond_2
    invoke-interface {p1}, Lhsw;->c()V

    return-void

    :pswitch_b
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    iget-object p1, p1, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->b:Lhsw;

    if-nez p1, :cond_3

    return-void

    :cond_3
    invoke-interface {p1}, Lhsw;->a()V

    return-void

    :pswitch_c
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Lfkz;

    invoke-virtual {p1}, Lfkz;->a()V

    return-void

    :pswitch_d
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Lgeh;

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Lgeh;->L(I)V

    return-void

    :pswitch_e
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Lcgy;

    invoke-interface {p1}, Lcgy;->q()V

    return-void

    :pswitch_f
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Lhqr;

    invoke-virtual {p1}, Lhqr;->a()V

    return-void

    :pswitch_10
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Lcom/google/android/apps/camera/toast/ToastView;

    iget-object v0, p1, Lcom/google/android/apps/camera/toast/ToastView;->l:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object v0, p1, Lcom/google/android/apps/camera/toast/ToastView;->j:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    iget-object p1, p1, Lcom/google/android/apps/camera/toast/ToastView;->k:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    :pswitch_11
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Lhie;

    invoke-virtual {p1}, Lhie;->a()V

    return-void

    :pswitch_12
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    iget-object p1, p1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    check-cast p1, Lhey;

    iget-object p1, p1, Lhey;->c:Loiw;

    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lhfq;

    invoke-virtual {p1}, Lhfq;->k()V

    return-void

    :pswitch_13
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    invoke-virtual {p1}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->j()V

    return-void

    :pswitch_14
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Lgef;

    invoke-interface {p1}, Lgef;->a()V

    return-void

    :pswitch_15
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Lgdm;

    iget-object v0, p1, Lgdm;->a:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgeh;

    invoke-interface {v0}, Lgeh;->G()Z

    move-result v0

    iget-object p1, p1, Lgdm;->a:Loiw;

    invoke-interface {p1}, Loiw;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgeh;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lgeh;->M()V

    return-void

    :cond_4
    invoke-interface {p1, v1}, Lgeh;->L(I)V

    return-void

    :pswitch_16
    iget-object p1, p0, Lgdu;->a:Ljava/lang/Object;

    check-cast p1, Lgdv;

    iget-object v0, p1, Lgdv;->g:Lgeg;

    invoke-interface {v0}, Lgeg;->a()V

    iget-object p1, p1, Lgdv;->p:Lgdx;

    iput-boolean v1, p1, Lgdx;->a:Z

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
