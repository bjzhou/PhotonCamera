.class public final Lhsg;
.super Landroid/animation/AnimatorListenerAdapter;


# instance fields
.field final synthetic a:Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;

.field final synthetic b:Lhsh;


# direct methods
.method public constructor <init>(Lhsh;Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;)V
    .locals 0

    iput-object p1, p0, Lhsg;->b:Lhsh;

    iput-object p2, p0, Lhsg;->a:Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lhsg;->b:Lhsh;

    iget-object p1, p1, Lhsh;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lhsg;->b:Lhsh;

    iget-object v0, v0, Lhsh;->d:Ljava/lang/Object;

    sget-object v1, Lhsj;->a:Lhsj;

    check-cast v0, Lhsj;

    invoke-virtual {v0, v1}, Lhsj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhsg;->a:Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Lhsg;->b:Lhsh;

    iget-object v1, v0, Lhsh;->d:Ljava/lang/Object;

    iput-object v1, v0, Lhsh;->c:Ljava/lang/Object;

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object p1, p0, Lhsg;->b:Lhsh;

    iget-object p1, p1, Lhsh;->a:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lhsg;->b:Lhsh;

    iget-object v0, v0, Lhsh;->d:Ljava/lang/Object;

    sget-object v1, Lhsj;->a:Lhsj;

    check-cast v0, Lhsj;

    invoke-virtual {v0, v1}, Lhsj;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lhsg;->a:Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/ui/captureframe/CaptureFrameUi;->setVisibility(I)V

    :cond_0
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
