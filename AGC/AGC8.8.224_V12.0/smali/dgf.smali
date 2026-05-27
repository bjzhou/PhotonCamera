.class public abstract Ldgf;
.super Ljava/lang/Object;

# interfaces
.implements Lhdy;
.implements Ldga;


# instance fields
.field public a:I

.field public b:J

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Ljava/lang/String;

.field private e:Z

.field private f:Ljava/util/concurrent/ScheduledFuture;

.field private final g:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private h:Lheb;

.field private i:I

.field private j:Ljava/util/concurrent/ScheduledFuture;

.field private k:Lhec;

.field private final l:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final m:Ljew;


# direct methods
.method public constructor <init>(Ljew;Ljava/lang/String;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Ldgf;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const-string p3, "CoachSDProcessor"

    invoke-static {p3}, Ljvd;->j(Ljava/lang/String;)Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object p3

    iput-object p3, p0, Ldgf;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Ldgf;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p1, p0, Ldgf;->m:Ljew;

    iput-object p2, p0, Ldgf;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Ldgf;->f:Ljava/util/concurrent/ScheduledFuture;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    iget-object v0, p0, Ldgf;->j:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_1
    iget-object v0, p0, Ldgf;->c:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    return-void
.end method

.method public final b(Lhec;)V
    .locals 5

    iput-object p1, p0, Ldgf;->k:Lhec;

    invoke-virtual {p0}, Ldgf;->c()Ldge;

    move-result-object v0

    iget-object v1, v0, Ldge;->b:Lheb;

    iget-object v2, v1, Lheb;->h:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lheb;->b()Lhea;

    move-result-object v1

    new-instance v3, Ldgd;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v2, v4}, Ldgd;-><init>(Lhec;Ljava/lang/Runnable;I)V

    iput-object v3, v1, Lhea;->f:Ljava/lang/Runnable;

    invoke-virtual {v1}, Lhea;->a()Lheb;

    move-result-object p1

    iput-object p1, p0, Ldgf;->h:Lheb;

    goto :goto_0

    :cond_0
    iput-object v1, p0, Ldgf;->h:Lheb;

    :goto_0
    iget p1, v0, Ldge;->a:I

    iput p1, p0, Ldgf;->i:I

    return-void
.end method

.method public final by(JLjava/util/Map;)V
    .locals 7

    iget-object p1, p0, Ldgf;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Ldgf;->b:J

    invoke-virtual {p0, p3}, Ldgf;->e(Ljava/util/Map;)Z

    move-result p1

    const/4 p2, 0x1

    const/4 p3, 0x0

    if-eqz p1, :cond_1

    iget p1, p0, Ldgf;->a:I

    add-int/2addr p1, p2

    iget v0, p0, Ldgf;->i:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Ldgf;->a:I

    goto :goto_0

    :cond_1
    iput p3, p0, Ldgf;->a:I

    const/4 p1, 0x0

    :goto_0
    iget v0, p0, Ldgf;->i:I

    if-ne p1, v0, :cond_5

    iget-boolean p1, p0, Ldgf;->e:Z

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    iput-boolean p2, p0, Ldgf;->e:Z

    iget-object p1, p0, Ldgf;->m:Ljew;

    iget-object v0, p0, Ldgf;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljew;->ac(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Ldgf;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, p3, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Ldgf;->k:Lhec;

    if-eqz p1, :cond_3

    iget-object p2, p0, Ldgf;->h:Lheb;

    invoke-interface {p1, p2}, Lhec;->b(Lheb;)V

    :cond_3
    iget-object v0, p0, Ldgf;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Ldfd;

    const/16 p1, 0x12

    invoke-direct {v1, p0, p1}, Ldfd;-><init>(Ldgf;I)V

    const-wide/16 v4, 0x1388

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    move-wide v2, v4

    invoke-interface/range {v0 .. v6}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Ldgf;->j:Ljava/util/concurrent/ScheduledFuture;

    :cond_4
    return-void

    :cond_5
    :goto_1
    invoke-virtual {p0}, Ldgf;->d()V

    return-void
.end method

.method protected abstract c()Ldge;
.end method

.method public final d()V
    .locals 7

    iget-object v0, p0, Ldgf;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Ldgf;->k:Lhec;

    if-eqz v0, :cond_1

    iget-object v1, p0, Ldgf;->h:Lheb;

    iget-wide v3, v1, Lheb;->a:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-nez v1, :cond_0

    iget-object v1, p0, Ldgf;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Ldfd;

    const/16 v4, 0x11

    invoke-direct {v3, v0, v4}, Ldfd;-><init>(Lhec;I)V

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x3e8

    invoke-interface {v1, v3, v4, v5, v0}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Ldgf;->f:Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lhec;->a()V

    :cond_1
    :goto_0
    iget-object v0, p0, Ldgf;->j:Ljava/util/concurrent/ScheduledFuture;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, v2}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    const/4 v0, 0x0

    iput-object v0, p0, Ldgf;->j:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_2
    return-void
.end method

.method protected abstract e(Ljava/util/Map;)Z
.end method

.method public final v()V
    .locals 2

    iget-object v0, p0, Ldgf;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    iget-object v0, p0, Ldgf;->g:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public final w()V
    .locals 2

    iget-object v0, p0, Ldgf;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
