.class public final Lczj;
.super Ljava/lang/Object;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

.field public final c:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

.field public final d:Landroid/net/Uri;

.field public final e:Ljava/util/concurrent/ScheduledExecutorService;

.field public f:Ljava/lang/Runnable;

.field public g:Ljava/util/concurrent/ScheduledFuture;

.field public final h:Ligo;

.field private final i:Ljava/util/concurrent/Executor;

.field private j:Lnou;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;Ligo;Landroid/content/Context;Ljava/util/concurrent/Executor;Landroid/net/Uri;Ljava/util/concurrent/ScheduledExecutorService;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p8, Lchy;->d:Lchy;

    iput-object p8, p0, Lczj;->f:Ljava/lang/Runnable;

    iput-object p1, p0, Lczj;->b:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    iput-object p2, p0, Lczj;->c:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    iput-object p3, p0, Lczj;->h:Ligo;

    iput-object p4, p0, Lczj;->a:Landroid/content/Context;

    iput-object p5, p0, Lczj;->i:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lczj;->d:Landroid/net/Uri;

    iput-object p7, p0, Lczj;->e:Ljava/util/concurrent/ScheduledExecutorService;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lczj;->j:Lnou;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lnou;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lczj;->j:Lnou;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnou;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Lczj;->h:Ligo;

    iget-object v1, p0, Lczj;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ligo;->f(Landroid/net/Uri;)V

    invoke-virtual {p0}, Lczj;->c()V

    return-void
.end method

.method public final c()V
    .locals 3

    iget-object v0, p0, Lczj;->h:Ligo;

    iget-object v1, p0, Lczj;->d:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ligo;->e(Landroid/net/Uri;)Lnou;

    move-result-object v0

    iput-object v0, p0, Lczj;->j:Lnou;

    new-instance v1, Lcig;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcig;-><init>(Lczj;I)V

    iget-object v2, p0, Lczj;->i:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1, v2}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public final d()V
    .locals 1

    invoke-virtual {p0}, Lczj;->e()V

    iget-object v0, p0, Lczj;->c:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->b()V

    iget-object v0, p0, Lczj;->b:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->b()V

    iget-object v0, p0, Lczj;->c:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->a()V

    iget-object v0, p0, Lczj;->b:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->a()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lczj;->b:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->m()V

    iget-object v0, p0, Lczj;->c:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->m()V

    return-void
.end method

.method public final f()V
    .locals 2

    iget-object v0, p0, Lczj;->b:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    new-instance v1, Lczi;

    invoke-direct {v1, p0}, Lczi;-><init>(Lczj;)V

    iput-object v1, v0, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->b:Lhsw;

    return-void
.end method
