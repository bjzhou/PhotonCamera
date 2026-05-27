.class public final Lcfp;
.super Ljava/lang/Object;

# interfaces
.implements Lces;


# instance fields
.field public a:Z

.field public final b:Lcfq;

.field private c:J

.field private d:Ljava/util/concurrent/ScheduledFuture;

.field private e:Ljava/util/concurrent/ScheduledExecutorService;

.field private f:Lklv;

.field private final g:Landroid/content/res/Resources;

.field private final h:Lfbz;

.field private final i:Lceg;

.field private final j:Ljvs;

.field private final k:Ljvs;

.field private final l:Ljvs;

.field private final m:Ldhi;

.field private n:Lcew;

.field private o:Lcey;

.field private final p:Lbkb;


# direct methods
.method public constructor <init>(Lbkb;Lcfq;Landroid/content/res/Resources;Lfbz;Ljvs;Ljvs;Ljvs;Ldhi;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 p9, 0x0

    iput-wide p9, p0, Lcfp;->c:J

    iput-object p1, p0, Lcfp;->p:Lbkb;

    iput-object p2, p0, Lcfp;->b:Lcfq;

    iput-object p3, p0, Lcfp;->g:Landroid/content/res/Resources;

    iput-object p4, p0, Lcfp;->h:Lfbz;

    new-instance p1, Lceg;

    invoke-direct {p1}, Lceg;-><init>()V

    iput-object p1, p0, Lcfp;->i:Lceg;

    iput-object p5, p0, Lcfp;->j:Ljvs;

    iput-object p6, p0, Lcfp;->k:Ljvs;

    iput-object p7, p0, Lcfp;->l:Ljvs;

    iput-object p8, p0, Lcfp;->m:Ldhi;

    iput-object p1, p0, Lcfp;->n:Lcew;

    return-void
.end method

.method private final declared-synchronized h(J)Ljava/util/concurrent/ScheduledFuture;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcfp;->e:Ljava/util/concurrent/ScheduledExecutorService;

    if-nez v0, :cond_0

    const-string v0, "scn-dist"

    invoke-static {v0}, Ljvd;->j(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcfp;->e:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    iget-object v0, p0, Lcfp;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lcdw;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcdw;-><init>(Lcfp;I)V

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, p1, p2, v2}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final i()Z
    .locals 4

    iget-object v0, p0, Lcfp;->n:Lcew;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcew;->c()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-interface {v0}, Lcew;->c()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public final a(Lkou;)V
    .locals 4

    iget-object v0, p0, Lcfp;->f:Lklv;

    if-eqz v0, :cond_1

    sget-object v1, Lklv;->a:Lklv;

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcfp;->b:Lcfq;

    invoke-virtual {v0}, Lcfq;->c()Z

    move-result v0

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcfp;->m:Ldhi;

    sget-object v1, Ldho;->cc:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcfp;->a:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcfp;->l:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcfp;->m:Ldhi;

    sget-object v2, Ldho;->cd:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_4

    iget-object v0, p0, Lcfp;->k:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhmu;

    sget-object v1, Lhmu;->a:Lhmu;

    invoke-virtual {v0, v1}, Lhmu;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcfp;->j:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhmt;

    sget-object v1, Lhmt;->a:Lhmt;

    invoke-virtual {v0, v1}, Lhmt;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {p0}, Lcfp;->c()V

    return-void

    :cond_4
    :goto_1
    iget-object v0, p0, Lcfp;->p:Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcfp;->c()V

    return-void

    :cond_5
    sget-object v0, Landroid/hardware/camera2/CaptureResult;->CONTROL_AF_MODE:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_6

    return-void

    :cond_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual {p0}, Lcfp;->c()V

    return-void

    :cond_7
    sget-object v0, Liuw;->a:Landroid/hardware/camera2/CaptureResult$Key;

    invoke-interface {p1, v0}, Lkou;->d(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_8

    return-void

    :cond_8
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lnak;->b:Lnaj;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {p1, v0}, Lnah;->H(Ljava/util/concurrent/TimeUnit;)Lnaz;

    invoke-direct {p0}, Lcfp;->i()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_9

    iget-object p1, p0, Lcfp;->o:Lcey;

    if-eqz p1, :cond_a

    iget-object v1, p0, Lcfp;->g:Landroid/content/res/Resources;

    const v2, 0x7f14006b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lced;->a:Lbze;

    const/4 v3, 0x1

    invoke-static {v1, v1, v2, v3, v0}, Lced;->a(Ljava/lang/String;Ljava/lang/String;Lbze;ZI)Ljgt;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcey;->a(Ljgt;)Lcew;

    move-result-object p1

    iput-object p1, p0, Lcfp;->n:Lcew;

    if-eqz p1, :cond_a

    invoke-interface {p1}, Lcew;->c()I

    move-result p1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcfp;->c:J

    iget-object p1, p0, Lcfp;->h:Lfbz;

    invoke-interface {p1}, Lfbz;->z()V

    return-void

    :cond_9
    iget-object p1, p0, Lcfp;->d:Ljava/util/concurrent/ScheduledFuture;

    if-eqz p1, :cond_a

    invoke-interface {p1, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    return-void

    :cond_a
    return-void

    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcfp;->c:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x7d0

    cmp-long p1, v0, v2

    if-gez p1, :cond_c

    sub-long/2addr v2, v0

    invoke-direct {p0, v2, v3}, Lcfp;->h(J)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lcfp;->d:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_c
    invoke-virtual {p0}, Lcfp;->g()V

    return-void
.end method

.method public final b()Lceq;
    .locals 1

    iget-object v0, p0, Lcfp;->b:Lcfq;

    return-object v0
.end method

.method public final declared-synchronized c()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcfp;->g()V

    iget-object v0, p0, Lcfp;->e:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdown()V

    iput-object v1, p0, Lcfp;->e:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_0
    iput-object v1, p0, Lcfp;->d:Ljava/util/concurrent/ScheduledFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final d(Lkll;)V
    .locals 0

    return-void
.end method

.method public final e(Lkli;)V
    .locals 0

    invoke-interface {p1}, Lkli;->k()Lklv;

    move-result-object p1

    iput-object p1, p0, Lcfp;->f:Lklv;

    invoke-virtual {p0}, Lcfp;->g()V

    return-void
.end method

.method public final f(Lcey;)V
    .locals 0

    iput-object p1, p0, Lcfp;->o:Lcey;

    if-nez p1, :cond_0

    iget-object p1, p0, Lcfp;->i:Lceg;

    iput-object p1, p0, Lcfp;->n:Lcew;

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lcfp;->n:Lcew;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcfp;->i()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Lcew;->a()V

    :cond_1
    return-void
.end method
