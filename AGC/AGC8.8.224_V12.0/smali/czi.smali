.class final Lczi;
.super Ljava/lang/Object;

# interfaces
.implements Lhsw;


# instance fields
.field final synthetic a:Lczj;


# direct methods
.method public constructor <init>(Lczj;)V
    .locals 0

    iput-object p1, p0, Lczi;->a:Lczj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lczi;->a:Lczj;

    iget-object v0, v0, Lczj;->a:Landroid/content/Context;

    invoke-static {v0}, Linb;->w(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lczi;->a:Lczj;

    iget-object v0, v0, Lczj;->b:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->a()V

    iget-object v0, p0, Lczi;->a:Lczj;

    invoke-virtual {v0}, Lczj;->b()V

    return-void

    :cond_0
    iget-object v0, p0, Lczi;->a:Lczj;

    iget-object v0, v0, Lczj;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/google/android/apps/camera/ui/eduimageview/EduImageView;->d(Landroid/content/Context;)V

    return-void
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    iget-object p1, p0, Lczi;->a:Lczj;

    iget-object p1, p1, Lczj;->b:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->d(I)V

    iget-object p1, p0, Lczi;->a:Lczj;

    iget-object p1, p1, Lczj;->c:Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/compositevideoview/CompositeVideoView;->d(I)V

    iget-object p1, p0, Lczi;->a:Lczj;

    invoke-virtual {p1}, Lczj;->e()V

    return-void
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    iget-object p1, p0, Lczi;->a:Lczj;

    iget-object p1, p1, Lczj;->f:Ljava/lang/Runnable;

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void
.end method
