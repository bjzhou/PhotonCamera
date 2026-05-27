.class final Lfoq;
.super Lcom/google/android/apps/camera/bottombar/BottomBarListener;


# instance fields
.field final synthetic a:Lfor;


# direct methods
.method public constructor <init>(Lfor;)V
    .locals 0

    iput-object p1, p0, Lfoq;->a:Lfor;

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCameraSwitchButtonClicked()V
    .locals 0

    return-void
.end method

.method public final onPauseButtonClicked()V
    .locals 2

    iget-object v0, p0, Lfoq;->a:Lfor;

    iget-object v0, v0, Lfor;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoq;->a:Lfor;

    iget-object v1, v1, Lfor;->b:Lcox;

    invoke-virtual {v1}, Lcox;->o()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfoq;->a:Lfor;

    iget-object v1, v1, Lfor;->d:Lcqa;

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

    iget-object v0, p0, Lfoq;->a:Lfor;

    iget-object v0, v0, Lfor;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoq;->a:Lfor;

    iget-object v1, v1, Lfor;->b:Lcox;

    invoke-virtual {v1}, Lcox;->p()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lfoq;->a:Lfor;

    iget-object v1, v1, Lfor;->d:Lcqa;

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

    iget-object v0, p0, Lfoq;->a:Lfor;

    iget-object v0, v0, Lfor;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoq;->a:Lfor;

    iget-object v1, v1, Lfor;->b:Lcox;

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

    iget-object v0, p0, Lfoq;->a:Lfor;

    iget-object v0, v0, Lfor;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfoq;->a:Lfor;

    iget-object v1, v1, Lfor;->b:Lcox;

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
