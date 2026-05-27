.class final Lfon;
.super Lcom/google/android/apps/camera/bottombar/BottomBarListener;


# instance fields
.field final synthetic a:Lfoo;


# direct methods
.method public constructor <init>(Lfoo;)V
    .locals 0

    iput-object p1, p0, Lfon;->a:Lfoo;

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraSwitchButtonClicked()V
    .locals 1

    iget-object v0, p0, Lfon;->a:Lfoo;

    iget-object v0, v0, Lfoo;->c:Lcox;

    invoke-virtual {v0}, Lcox;->e()V

    return-void
.end method

.method public final onRetakeButtonPressed()V
    .locals 1

    iget-object v0, p0, Lfon;->a:Lfoo;

    invoke-virtual {v0}, Lfoo;->x()V

    return-void
.end method

.method public final onReviewPlayButtonPressed()V
    .locals 4

    iget-object v0, p0, Lfon;->a:Lfoo;

    iget-object v0, v0, Lfoo;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfon;->a:Lfoo;

    iget-object v2, v1, Lfoo;->i:Lcsc;

    if-eqz v2, :cond_0

    iget-object v1, v1, Lfoo;->g:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    const-string v2, "URI not set."

    invoke-static {v1, v2}, Lmoz;->q(ZLjava/lang/Object;)V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lfon;->a:Lfoo;

    iget-object v2, v2, Lfoo;->g:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/Uri;

    iget-object v3, p0, Lfon;->a:Lfoo;

    iget-object v3, v3, Lfoo;->i:Lcsc;

    iget-object v3, v3, Lcsc;->g:Ljxa;

    iget-object v3, v3, Ljxa;->a:Ljwt;

    iget-object v3, v3, Ljwt;->f:Lkqi;

    iget-object v3, v3, Lkqi;->i:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v2, p0, Lfon;->a:Lfoo;

    iget-object v2, v2, Lfoo;->f:Lcgy;

    invoke-interface {v2, v1}, Lcgy;->o(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    sget-object v2, Lfoo;->b:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    invoke-interface {v2, v1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x98c

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const-string v2, "Couldn\'t view video"

    invoke-interface {v1, v2}, Lnah;->o(Ljava/lang/String;)V

    :goto_0
    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
