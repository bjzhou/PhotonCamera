.class public final Lgpf;
.super Landroid/os/Handler;


# instance fields
.field public final synthetic a:Lcom/google/android/apps/camera/prewarm/ProcessingBoostService;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/prewarm/ProcessingBoostService;)V
    .locals 0

    iput-object p1, p0, Lgpf;->a:Lcom/google/android/apps/camera/prewarm/ProcessingBoostService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lgpf;->a:Lcom/google/android/apps/camera/prewarm/ProcessingBoostService;

    iget-object v1, v0, Lcom/google/android/apps/camera/prewarm/ProcessingBoostService;->b:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_0

    const-string v1, "PBS#ensureInjection"

    invoke-static {v1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/apps/camera/prewarm/ProcessingBoostService;->getApplication()Landroid/app/Application;

    move-result-object v1

    check-cast v1, Lemj;

    const-class v2, Lgpg;

    invoke-interface {v1, v2}, Lemj;->e(Ljava/lang/Class;)Leml;

    move-result-object v1

    check-cast v1, Lgpg;

    invoke-interface {v1, v0}, Lgpg;->p(Lcom/google/android/apps/camera/prewarm/ProcessingBoostService;)V

    invoke-static {}, Landroid/os/Trace;->endSection()V

    :cond_0
    iget-object v0, p0, Lgpf;->a:Lcom/google/android/apps/camera/prewarm/ProcessingBoostService;

    iget-object v0, v0, Lcom/google/android/apps/camera/prewarm/ProcessingBoostService;->b:Ljava/util/concurrent/Executor;

    new-instance v1, Lgot;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lgot;-><init>(Lgpf;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
