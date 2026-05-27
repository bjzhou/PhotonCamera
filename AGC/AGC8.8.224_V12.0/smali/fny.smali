.class final Lfny;
.super Lcom/google/android/apps/camera/bottombar/BottomBarListener;


# instance fields
.field final synthetic a:Lfoa;


# direct methods
.method public constructor <init>(Lfoa;)V
    .locals 0

    iput-object p1, p0, Lfny;->a:Lfoa;

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onFpsSwitch(I)V
    .locals 3

    iget-object v0, p0, Lfny;->a:Lfoa;

    iget-object v0, v0, Lfoa;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfny;->a:Lfoa;

    iget-object v1, v1, Lfoa;->c:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setClickable(Z)V

    iget-object v1, p0, Lfny;->a:Lfoa;

    invoke-virtual {v1, p1}, Lfoa;->w(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final onPauseButtonClicked()V
    .locals 2

    iget-object v0, p0, Lfny;->a:Lfoa;

    iget-object v0, v0, Lfoa;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfny;->a:Lfoa;

    iget-object v1, v1, Lfoa;->b:Lcox;

    invoke-virtual {v1}, Lcox;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfny;->a:Lfoa;

    iget-object v1, v1, Lfoa;->d:Lcqa;

    invoke-virtual {v1}, Lcqa;->f()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onResumeButtonClicked()V
    .locals 2

    iget-object v0, p0, Lfny;->a:Lfoa;

    iget-object v0, v0, Lfoa;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfny;->a:Lfoa;

    iget-object v1, v1, Lfoa;->b:Lcox;

    invoke-virtual {v1}, Lcox;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfny;->a:Lfoa;

    iget-object v1, v1, Lfoa;->d:Lcqa;

    invoke-virtual {v1}, Lcqa;->g()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onSnapshotButtonClicked()V
    .locals 2

    iget-object v0, p0, Lfny;->a:Lfoa;

    iget-object v0, v0, Lfoa;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfny;->a:Lfoa;

    iget-object v1, v1, Lfoa;->b:Lcox;

    invoke-virtual {v1}, Lcox;->h()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final onThumbnailButtonClicked()V
    .locals 2

    iget-object v0, p0, Lfny;->a:Lfoa;

    iget-object v0, v0, Lfoa;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfny;->a:Lfoa;

    iget-object v1, v1, Lfoa;->b:Lcox;

    invoke-virtual {v1}, Lcox;->i()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
