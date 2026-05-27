.class public final Ldfb;
.super Ljava/lang/Object;

# interfaces
.implements Lknx;


# instance fields
.field public final a:Lgft;

.field public final b:Ljvs;

.field public c:Z

.field public d:Z

.field public e:Lmqp;

.field public final f:Lcdi;


# direct methods
.method public constructor <init>(Lgft;Lcdi;Ljvs;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldfb;->c:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldfb;->d:Z

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Ldfb;->e:Lmqp;

    iput-object p2, p0, Ldfb;->f:Lcdi;

    iput-object p1, p0, Ldfb;->a:Lgft;

    iput-object p3, p0, Ldfb;->b:Ljvs;

    return-void
.end method

.method static final e(Ljava/lang/Runnable;Ljava/util/concurrent/ScheduledExecutorService;)Lkad;
    .locals 7

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x21

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-object v0, p1

    move-object v1, p0

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p0

    new-instance p1, Ldei;

    const/4 v0, 0x3

    invoke-direct {p1, p0, v0}, Ldei;-><init>(Ljava/util/concurrent/ScheduledFuture;I)V

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldfb;->d:Z

    iget-object v0, p0, Ldfb;->e:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldfb;->e:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ldfd;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Ldfd;-><init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->post(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->c:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ldfd;

    const/4 v2, 0x3

    invoke-direct {v1, v0, v2}, Ldfd;-><init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->d:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ldfd;

    const/4 v2, 0x4

    invoke-direct {v1, v0, v2}, Ldfd;-><init>(Lcom/google/android/apps/camera/coach/CameraCoachHudView;I)V

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public final b()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldfb;->d:Z

    return-void
.end method

.method public final c(Z)V
    .locals 1

    iget-object v0, p0, Ldfb;->e:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldfb;->e:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    iput-boolean p1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->e:Z

    :cond_0
    return-void
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldfb;->c:Z

    return-void
.end method

.method public final h(Lkab;)V
    .locals 1

    iget-object v0, p0, Ldfb;->e:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ldfb;->e:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;

    iget p1, p1, Lkab;->e:I

    int-to-float p1, p1

    iput p1, v0, Lcom/google/android/apps/camera/coach/CameraCoachHudView;->a:F

    :cond_0
    return-void
.end method
