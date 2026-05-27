.class public final Lcmv;
.super Ljava/lang/Object;

# interfaces
.implements Ljkd;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Ljava/util/Deque;

.field public final c:Ljava/util/concurrent/atomic/AtomicReference;

.field public final d:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final e:Lcnf;

.field private final f:Ljava/util/concurrent/ExecutorService;

.field private final g:Lcnm;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/brella/examplestore/lib/CamExampleIterator"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcmv;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lcnf;Lcnm;Lcnk;Ljava/util/concurrent/ExecutorService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p4, p0, Lcmv;->f:Ljava/util/concurrent/ExecutorService;

    iput-object p1, p0, Lcmv;->e:Lcnf;

    iput-object p2, p0, Lcmv;->g:Lcnm;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p1, p3}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcmv;->c:Ljava/util/concurrent/atomic/AtomicReference;

    new-instance p1, Ljava/util/ArrayDeque;

    invoke-direct {p1}, Ljava/util/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcmv;->b:Ljava/util/Deque;

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object p1, p0, Lcmv;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final a(Ljkc;)V
    .locals 9

    iget-object v0, p0, Lcmv;->b:Ljava/util/Deque;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcmv;->b:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget-object v1, Lnor;->a:Lnou;

    monitor-exit v0

    goto :goto_3

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcmv;->e:Lcnf;

    iget-object v5, p0, Lcmv;->g:Lcnm;

    iget-object v1, p0, Lcmv;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcnk;

    iget-object v1, p0, Lcmv;->g:Lcnm;

    iget v1, v1, Lcnm;->g:I

    const/16 v3, 0x64

    if-lez v1, :cond_1

    iget-object v4, p0, Lcmv;->d:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    sub-int/2addr v1, v4

    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v7, v1

    goto :goto_0

    :cond_1
    const/16 v7, 0x64

    :goto_0
    iget-boolean v1, v5, Lcnm;->i:Z

    if-eqz v1, :cond_3

    iget-object v1, v5, Lcnm;->h:Lnxa;

    invoke-interface {v1}, Lnxa;->size()I

    move-result v1

    if-gtz v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    :goto_1
    const-string v3, "Cannot get both session and media records.Please select only one."

    invoke-static {v1, v3}, Lmoz;->f(ZLjava/lang/Object;)V

    iget-boolean v1, v5, Lcnm;->i:Z

    if-eqz v1, :cond_4

    new-instance v1, Llsk;

    const/4 v8, 0x1

    move-object v3, v1

    move-object v4, v0

    invoke-direct/range {v3 .. v8}, Llsk;-><init>(Lcnf;Lcnm;Lcnk;II)V

    iget-object v0, v0, Lcnf;->e:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v0}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v1, Lcmz;

    invoke-direct {v1, v0, v5, v6, v7}, Lcmz;-><init>(Lcnf;Lcnm;Lcnk;I)V

    iget-object v0, v0, Lcnf;->e:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v0}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    :goto_2
    new-instance v1, Lcdu;

    const/4 v3, 0x4

    invoke-direct {v1, p0, v3}, Lcdu;-><init>(Lcmv;I)V

    iget-object v3, p0, Lcmv;->f:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v3}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v1

    :goto_3
    new-instance v0, Ljko;

    invoke-direct {v0, p0, p1, v2}, Ljko;-><init>(Lcmv;Ljkc;I)V

    iget-object p1, p0, Lcmv;->f:Ljava/util/concurrent/ExecutorService;

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
