.class final Leut;
.super Lcom/google/android/apps/camera/bottombar/BottomBarListener;


# instance fields
.field final synthetic a:Leuy;


# direct methods
.method public constructor <init>(Leuy;)V
    .locals 0

    iput-object p1, p0, Leut;->a:Leuy;

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraSwitchButtonClicked()V
    .locals 2

    iget-object v0, p0, Leut;->a:Leuy;

    iget-object v0, v0, Leuy;->k:Ldbf;

    if-eqz v0, :cond_0

    sget-object v1, Lchy;->e:Lchy;

    invoke-virtual {v0, v1}, Ldbf;->h(Ljava/lang/Runnable;)V

    iget-object v0, p0, Leut;->a:Leuy;

    iget-object v0, v0, Leuy;->d:Litm;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Litm;->B(Z)V

    iget-object v0, p0, Leut;->a:Leuy;

    iget-object v0, v0, Leuy;->d:Litm;

    invoke-interface {v0}, Litm;->s()V

    :cond_0
    return-void
.end method

.method public final onRetakeButtonPressed()V
    .locals 3

    iget-object v0, p0, Leut;->a:Leuy;

    iget-object v0, v0, Leuy;->i:Lhvt;

    invoke-virtual {v0}, Lhvq;->b()V

    iget-object v0, p0, Leut;->a:Leuy;

    iget-object v0, v0, Leuy;->p:Leuo;

    invoke-static {}, Ljuh;->a()V

    const/4 v1, 0x0

    iput-boolean v1, v0, Leuo;->g:Z

    iget-object v1, v0, Leuo;->e:Lcom/google/android/apps/camera/ui/widget/ReviewImageView;

    invoke-virtual {v1}, Lcom/google/android/apps/camera/ui/widget/ReviewImageView;->a()V

    iget-object v1, v0, Leuo;->f:Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;->setVisibility(I)V

    iget-object v1, v0, Leuo;->b:Lcha;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcha;->j(Z)V

    iget-object v1, v0, Leuo;->b:Lcha;

    check-cast v1, Lcie;

    iget-object v1, v1, Lcie;->q:Lhsl;

    invoke-interface {v1, v2}, Lhsl;->f(Z)V

    iget-object v0, v0, Leuo;->b:Lcha;

    invoke-interface {v0}, Lcha;->o()V

    return-void
.end method
