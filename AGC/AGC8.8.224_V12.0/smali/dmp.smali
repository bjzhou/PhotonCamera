.class public final Ldmp;
.super Ldmq;

# interfaces
.implements Lfaz;
.implements Lfan;
.implements Lezh;
.implements Lfay;


# instance fields
.field private final a:Lkbh;

.field private final b:Ljava/util/concurrent/ScheduledExecutorService;

.field private final c:I

.field private volatile d:Z

.field private e:Ljava/util/concurrent/Future;

.field private final f:Lbkc;


# direct methods
.method public constructor <init>(Lbkc;Ljava/util/concurrent/ScheduledExecutorService;Lkbc;Ldhi;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ldmq;-><init>()V

    const/4 p5, 0x1

    iput-boolean p5, p0, Ldmp;->d:Z

    iput-object p1, p0, Ldmp;->f:Lbkc;

    iput-object p2, p0, Ldmp;->b:Ljava/util/concurrent/ScheduledExecutorService;

    const-string p1, "StartupViewfinderFrameDeltaMs"

    invoke-interface {p3, p1}, Lkbc;->b(Ljava/lang/String;)Lkbh;

    move-result-object p1

    iput-object p1, p0, Ldmp;->a:Lkbh;

    sget-object p1, Ldho;->w:Ldhk;

    invoke-interface {p4, p1}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    iput p1, p0, Ldmp;->c:I

    return-void
.end method

.method private final p()V
    .locals 5

    const/4 v0, 0x1

    iput-boolean v0, p0, Ldmp;->d:Z

    iget-object v0, p0, Ldmp;->b:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Ldgg;

    const/16 v2, 0x9

    invoke-direct {v1, p0, v2}, Ldgg;-><init>(Ldmp;I)V

    const-wide/16 v2, 0x5

    sget-object v4, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Ldmp;->e:Ljava/util/concurrent/Future;

    return-void
.end method


# virtual methods
.method public final bL(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ldmp;->p()V

    return-void
.end method

.method public final bQ()V
    .locals 0

    invoke-direct {p0}, Ldmp;->p()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-boolean v0, p0, Ldmp;->d:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ldmp;->i()V

    :cond_0
    return-void
.end method

.method public final g(D)V
    .locals 3

    iget-boolean v0, p0, Ldmp;->d:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldmp;->a:Lkbh;

    double-to-int v1, p1

    invoke-interface {v0, v1}, Lkbh;->c(I)V

    iget v0, p0, Ldmp;->c:I

    int-to-double v0, v0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    iget-object p1, p0, Ldmp;->f:Lbkc;

    invoke-virtual {p1}, Lbkc;->v()V

    invoke-virtual {p0}, Ldmp;->i()V

    :cond_1
    return-void
.end method

.method public final i()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Ldmp;->d:Z

    iget-object v1, p0, Ldmp;->e:Ljava/util/concurrent/Future;

    if-eqz v1, :cond_0

    invoke-interface {v1, v0}, Ljava/util/concurrent/Future;->cancel(Z)Z

    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Ldmp;->e:Ljava/util/concurrent/Future;

    iget-object v1, p0, Ldmp;->a:Lkbh;

    invoke-interface {v1, v0}, Lkbh;->c(I)V

    return-void
.end method
