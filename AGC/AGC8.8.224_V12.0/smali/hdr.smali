.class public abstract Lhdr;
.super Ljava/lang/Object;

# interfaces
.implements Lhdx;


# instance fields
.field private a:Ljava/util/concurrent/ScheduledFuture;

.field private final b:Ljava/lang/String;

.field private final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private d:Z

.field private e:Lheb;

.field private f:I

.field private g:I

.field private h:I

.field protected final i:Ljava/util/concurrent/ScheduledExecutorService;

.field private j:I

.field private k:Lhec;

.field private final l:Ljew;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Ljew;Ljava/lang/String;[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhdr;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x0

    invoke-direct {p1, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lhdr;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    iput-object p2, p0, Lhdr;->l:Ljew;

    iput-object p3, p0, Lhdr;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lhdr;->a:Ljava/util/concurrent/ScheduledFuture;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public final b(Lhec;)V
    .locals 4

    iput-object p1, p0, Lhdr;->k:Lhec;

    invoke-virtual {p0}, Lhdr;->d()Lhdq;

    move-result-object p1

    iget-object v0, p1, Lhdq;->c:Lheb;

    iget-object v1, v0, Lheb;->h:Ljava/lang/Runnable;

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lheb;->b()Lhea;

    move-result-object v0

    new-instance v2, Lhdg;

    const/4 v3, 0x6

    invoke-direct {v2, p0, v1, v3}, Lhdg;-><init>(Lhdr;Ljava/lang/Runnable;I)V

    iput-object v2, v0, Lhea;->f:Ljava/lang/Runnable;

    invoke-virtual {v0}, Lhea;->a()Lheb;

    move-result-object v0

    goto :goto_0

    :cond_0
    :goto_0
    iput-object v0, p0, Lhdr;->e:Lheb;

    iget v0, p1, Lhdq;->a:I

    iput v0, p0, Lhdr;->f:I

    iget p1, p1, Lhdq;->b:I

    iput p1, p0, Lhdr;->h:I

    return-void
.end method

.method public c(Lkli;)V
    .locals 0

    invoke-virtual {p0}, Lhdr;->g()V

    const/4 p1, 0x0

    iput p1, p0, Lhdr;->j:I

    return-void
.end method

.method protected abstract d()Lhdq;
.end method

.method protected abstract e(Lkou;)Z
.end method

.method protected f(Lkou;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lhdr;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhdr;->k:Lhec;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lhec;->a()V

    :cond_0
    return-void
.end method

.method public final i(Lkou;)V
    .locals 6

    iget v0, p0, Lhdr;->g:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lhdr;->g:I

    iget v2, p0, Lhdr;->f:I

    if-ge v0, v2, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lhdr;->g:I

    invoke-virtual {p0, p1}, Lhdr;->f(Lkou;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget p1, p0, Lhdr;->f:I

    iput p1, p0, Lhdr;->g:I

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lhdr;->e(Lkou;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lhdr;->j:I

    add-int/2addr p1, v1

    iget v2, p0, Lhdr;->h:I

    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    move-result p1

    iput p1, p0, Lhdr;->j:I

    goto :goto_0

    :cond_2
    iput v0, p0, Lhdr;->j:I

    const/4 p1, 0x0

    :goto_0
    iget v2, p0, Lhdr;->h:I

    if-ne p1, v2, :cond_4

    iget-boolean p1, p0, Lhdr;->d:Z

    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    iput-boolean v1, p0, Lhdr;->d:Z

    iget-object p1, p0, Lhdr;->l:Ljew;

    iget-object v2, p0, Lhdr;->b:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljew;->ac(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lhdr;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lhdr;->k:Lhec;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lhdr;->e:Lheb;

    invoke-interface {p1, v0}, Lhec;->b(Lheb;)V

    return-void

    :cond_4
    :goto_1
    iget-object p1, p0, Lhdr;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {p1, v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lhdr;->k:Lhec;

    if-eqz p1, :cond_7

    iget-object v0, p0, Lhdr;->e:Lheb;

    iget-wide v0, v0, Lheb;->a:J

    const/16 v2, 0xe

    const-wide/16 v3, 0x0

    cmp-long v5, v0, v3

    if-nez v5, :cond_5

    iget-object v0, p0, Lhdr;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v1, Lhbi;

    invoke-direct {v1, p1, v2}, Lhbi;-><init>(Lhec;I)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3e8

    invoke-interface {v0, v1, v2, v3, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lhdr;->a:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_5
    cmp-long v5, v0, v3

    if-lez v5, :cond_6

    iget-object v3, p0, Lhdr;->i:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v4, Lhbi;

    invoke-direct {v4, p1, v2}, Lhbi;-><init>(Lhec;I)V

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v3, v4, v0, v1, p1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object p1

    iput-object p1, p0, Lhdr;->a:Ljava/util/concurrent/ScheduledFuture;

    return-void

    :cond_6
    invoke-interface {p1}, Lhec;->a()V

    :cond_7
    return-void
.end method

.method public v()V
    .locals 2

    iget-object v0, p0, Lhdr;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method

.method public w()V
    .locals 0

    return-void
.end method
