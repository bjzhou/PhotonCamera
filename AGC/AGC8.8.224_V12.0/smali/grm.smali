.class public final Lgrm;
.super Ljava/lang/Object;


# instance fields
.field public a:Lgrr;

.field public b:J

.field private c:Lgrv;

.field private final d:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lgrm;->b:J

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {v0}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lgrm;->d:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lgrm;->c:Lgrv;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lgrs;->b()V

    invoke-virtual {p0}, Lgrm;->e()V

    invoke-virtual {p0}, Lgrm;->f()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lgrm;->c:Lgrv;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-virtual {v0}, Lgrs;->a()V

    invoke-virtual {p0}, Lgrm;->e()V

    invoke-virtual {p0}, Lgrm;->f()V

    return-void
.end method

.method public final c()V
    .locals 6

    iget-object v0, p0, Lgrm;->a:Lgrr;

    invoke-static {v0}, Llkj;->C(Ljava/lang/Object;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lgrm;->b:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x12c

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    invoke-virtual {v0}, Lgrn;->b()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lgrm;->d:Landroid/os/Handler;

    new-instance v2, Lgot;

    const/16 v5, 0xb

    invoke-direct {v2, v0, v5}, Lgot;-><init>(Lgrr;I)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lgrm;->d:Landroid/os/Handler;

    new-instance v2, Lgot;

    invoke-direct {v2, v0, v5}, Lgot;-><init>(Lgrr;I)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    invoke-virtual {p0}, Lgrm;->e()V

    invoke-virtual {p0}, Lgrm;->f()V

    return-void
.end method

.method public final d(Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;)V
    .locals 2

    new-instance v0, Lgrr;

    invoke-direct {v0, p1}, Lgrr;-><init>(Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;)V

    iput-object v0, p0, Lgrm;->a:Lgrr;

    new-instance v0, Lgrv;

    iget-object v1, p0, Lgrm;->a:Lgrr;

    invoke-direct {v0, p1, v1}, Lgrv;-><init>(Lcom/google/android/apps/camera/progressoverlay/ProgressOverlay;Lgrn;)V

    iput-object v0, p0, Lgrm;->c:Lgrv;

    invoke-virtual {v0}, Lgrs;->f()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lgrm;->c:Lgrv;

    iget-boolean v0, v0, Lgrv;->b:Z

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lgrm;->a:Lgrr;

    iget-boolean v0, v0, Lgrr;->b:Z

    return-void
.end method
