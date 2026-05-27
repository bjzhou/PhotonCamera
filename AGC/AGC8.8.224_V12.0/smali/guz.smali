.class public final Lguz;
.super Ljava/lang/Object;

# interfaces
.implements Lgvd;


# instance fields
.field public a:Lika;

.field public b:Lcom/google/android/apps/camera/ui/views/CutoutBar;

.field public c:Z

.field public d:Z

.field public final e:Landroid/os/Handler;

.field public final f:Ljuh;

.field public final g:Ljava/lang/Object;

.field public final h:Ljvs;

.field public final i:Ljvs;

.field public j:Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

.field public k:Ljava/lang/Runnable;

.field public final l:Lcdi;

.field private final m:Lgvu;


# direct methods
.method public constructor <init>(Lcdi;Ljwb;Ljvs;Ljuh;Lgvu;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lika;->a:Lika;

    iput-object v0, p0, Lguz;->a:Lika;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lguz;->g:Ljava/lang/Object;

    iput-object p2, p0, Lguz;->h:Ljvs;

    iput-object p3, p0, Lguz;->i:Ljvs;

    iput-object p1, p0, Lguz;->l:Lcdi;

    iput-object p4, p0, Lguz;->f:Ljuh;

    iput-object p5, p0, Lguz;->m:Lgvu;

    invoke-static {}, Ljvd;->n()Landroid/os/Handler;

    move-result-object p1

    iput-object p1, p0, Lguz;->e:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public final a(Lika;)V
    .locals 4

    iget-object v0, p0, Lguz;->g:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lguz;->j:Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-boolean v1, p0, Lguz;->c:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lguz;->d:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lguz;->m:Lgvu;

    invoke-interface {v1}, Lgvu;->d()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lguz;->e:Landroid/os/Handler;

    iget-object v2, p0, Lguz;->k:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    new-instance v1, Lgps;

    const/4 v2, 0x6

    invoke-direct {v1, p0, p1, v2}, Lgps;-><init>(Lguz;Lika;I)V

    iput-object v1, p0, Lguz;->k:Ljava/lang/Runnable;

    iget-object p1, p0, Lguz;->e:Landroid/os/Handler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lguz;->j:Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/google/android/apps/camera/ui/views/FrontLensIndicatorOverlay;->setVisibility(I)V

    :goto_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lguz;->c:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Lika;)V
    .locals 3

    iget-object v0, p0, Lguz;->b:Lcom/google/android/apps/camera/ui/views/CutoutBar;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lguz;->d:Z

    if-eqz v0, :cond_3

    sget-object v0, Lika;->m:Lika;

    invoke-virtual {p1, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lguz;->b:Lcom/google/android/apps/camera/ui/views/CutoutBar;

    iget-object v0, p1, Lcom/google/android/apps/camera/ui/views/CutoutBar;->b:Ldgy;

    if-nez v0, :cond_1

    sget-object p1, Lcom/google/android/apps/camera/ui/views/CutoutBar;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string v0, "Not showing due to cutout info is null."

    const/16 v1, 0x10a1

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    return-void

    :cond_1
    iget v1, p1, Lcom/google/android/apps/camera/ui/views/CutoutBar;->c:I

    const/16 v2, 0x9

    if-ne v1, v2, :cond_2

    iget v0, v0, Ldgy;->d:F

    invoke-static {v0}, Likp;->b(F)I

    move-result v0

    int-to-float v0, v0

    goto :goto_0

    :cond_2
    iget v0, v0, Ldgy;->d:F

    :goto_0
    iput v0, p1, Lcom/google/android/apps/camera/ui/views/CutoutBar;->f:F

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/views/CutoutBar;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/google/android/apps/camera/ui/views/CutoutBar;->invalidate()V

    return-void

    :cond_3
    iget-object p1, p0, Lguz;->b:Lcom/google/android/apps/camera/ui/views/CutoutBar;

    const/4 v0, 0x0

    iput v0, p1, Lcom/google/android/apps/camera/ui/views/CutoutBar;->f:F

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lcom/google/android/apps/camera/ui/views/CutoutBar;->setVisibility(I)V

    return-void
.end method
