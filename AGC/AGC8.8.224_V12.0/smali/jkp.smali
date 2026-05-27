.class public final Ljkp;
.super Ljava/lang/Object;

# interfaces
.implements Ljkd;


# instance fields
.field public final a:Ljava/util/Deque;

.field public final b:Ljava/util/concurrent/atomic/AtomicReference;

.field public final c:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final d:Ljava/lang/String;

.field private final e:Ljks;

.field private final f:Ljava/util/concurrent/ExecutorService;

.field private final g:Lnts;


# direct methods
.method public constructor <init>(Ljks;Ljava/lang/String;Lnts;Lntr;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p5, p0, Ljkp;->f:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Ljkp;->e:Ljks;

    iput-object p2, p0, Ljkp;->d:Ljava/lang/String;

    iput-object p3, p0, Ljkp;->g:Lnts;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p4}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ljkp;->b:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Ljkp;->a:Ljava/util/Deque;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Ljkp;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a(Ljkc;)V
    .locals 8

    iget-object v0, p0, Ljkp;->a:Ljava/util/Deque;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljkp;->a:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-static {v1}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v1

    monitor-exit v0

    goto :goto_1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ljkp;->e:Ljks;

    iget-object v3, p0, Ljkp;->d:Ljava/lang/String;

    iget-object v4, p0, Ljkp;->g:Lnts;

    iget-object v1, p0, Ljkp;->b:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lntr;

    iget-object v1, p0, Ljkp;->g:Lnts;

    iget v1, v1, Lnts;->g:I

    const/16 v2, 0x64

    if-lez v1, :cond_1

    iget-object v6, p0, Ljkp;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    sub-int/2addr v1, v6

    invoke-static {v2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v6, v1

    goto :goto_0

    :cond_1
    const/16 v6, 0x64

    :goto_0
    new-instance v7, Ljkr;

    move-object v1, v7

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Ljkr;-><init>(Ljks;Ljava/lang/String;Lnts;Lntr;I)V

    iget-object v0, v0, Ljks;->d:Ljava/util/concurrent/ExecutorService;

    invoke-static {v7, v0}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    new-instance v1, Lhga;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lhga;-><init>(Ljkp;I)V

    iget-object v2, p0, Ljkp;->f:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v1

    :goto_1
    new-instance v0, Ljko;

    const/4 v2, 0x0

    invoke-direct {v0, p0, p1, v2}, Ljko;-><init>(Ljkp;Ljkc;I)V

    iget-object p1, p0, Ljkp;->f:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v0, p1}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final close()V
    .locals 0

    return-void
.end method
