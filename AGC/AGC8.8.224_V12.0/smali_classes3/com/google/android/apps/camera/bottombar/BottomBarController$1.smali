.class Lcom/google/android/apps/camera/bottombar/BottomBarController$1;
.super Lcom/google/android/apps/camera/bottombar/BottomBarListener;


# instance fields
.field final synthetic this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/bottombar/BottomBarController;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-direct {p0}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCameraSwitchButtonClicked()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-static {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->-$$Nest$fgetlock(Lcom/google/android/apps/camera/bottombar/BottomBarController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-static {v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->-$$Nest$fgetlisteners(Lcom/google/android/apps/camera/bottombar/BottomBarController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;->onCameraSwitchButtonClicked()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public onCancelButtonPressed()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-static {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->-$$Nest$fgetlock(Lcom/google/android/apps/camera/bottombar/BottomBarController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-static {v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->-$$Nest$fgetlisteners(Lcom/google/android/apps/camera/bottombar/BottomBarController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;->onCancelButtonPressed()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public onFpsSwitch(I)V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-static {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->-$$Nest$fgetlock(Lcom/google/android/apps/camera/bottombar/BottomBarController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-static {v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->-$$Nest$fgetlisteners(Lcom/google/android/apps/camera/bottombar/BottomBarController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v2, p1}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;->onFpsSwitch(I)V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public onJupiterButtonClicked()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-static {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->-$$Nest$fgetlock(Lcom/google/android/apps/camera/bottombar/BottomBarController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-static {v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->-$$Nest$fgetlisteners(Lcom/google/android/apps/camera/bottombar/BottomBarController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;->onJupiterButtonClicked()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public onPauseButtonClicked()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-static {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->-$$Nest$fgetlock(Lcom/google/android/apps/camera/bottombar/BottomBarController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-static {v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->-$$Nest$fgetlisteners(Lcom/google/android/apps/camera/bottombar/BottomBarController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;->onPauseButtonClicked()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public onResumeButtonClicked()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-static {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->-$$Nest$fgetlock(Lcom/google/android/apps/camera/bottombar/BottomBarController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-static {v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->-$$Nest$fgetlisteners(Lcom/google/android/apps/camera/bottombar/BottomBarController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;->onResumeButtonClicked()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public onRetakeButtonPressed()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-static {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->-$$Nest$fgetlock(Lcom/google/android/apps/camera/bottombar/BottomBarController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-static {v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->-$$Nest$fgetlisteners(Lcom/google/android/apps/camera/bottombar/BottomBarController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;->onRetakeButtonPressed()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public onReviewPlayButtonPressed()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-static {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->-$$Nest$fgetlock(Lcom/google/android/apps/camera/bottombar/BottomBarController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-static {v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->-$$Nest$fgetlisteners(Lcom/google/android/apps/camera/bottombar/BottomBarController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;->onReviewPlayButtonPressed()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public onShutterButtonClicked()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-static {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->-$$Nest$fgetlock(Lcom/google/android/apps/camera/bottombar/BottomBarController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-static {v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->-$$Nest$fgetlisteners(Lcom/google/android/apps/camera/bottombar/BottomBarController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;->onShutterButtonClicked()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public onSnapshotButtonClicked()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-static {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->-$$Nest$fgetlock(Lcom/google/android/apps/camera/bottombar/BottomBarController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-static {v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->-$$Nest$fgetlisteners(Lcom/google/android/apps/camera/bottombar/BottomBarController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;->onSnapshotButtonClicked()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public onThumbnailButtonClicked()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-static {v0}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->-$$Nest$fgetlock(Lcom/google/android/apps/camera/bottombar/BottomBarController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/google/android/apps/camera/bottombar/BottomBarController$1;->this$0:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    invoke-static {v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->-$$Nest$fgetlisteners(Lcom/google/android/apps/camera/bottombar/BottomBarController;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/apps/camera/bottombar/BottomBarListener;

    invoke-virtual {v2}, Lcom/google/android/apps/camera/bottombar/BottomBarListener;->onThumbnailButtonClicked()V

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method
