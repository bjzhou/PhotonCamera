.class public final Lodo;
.super Ljava/lang/Object;

# interfaces
.implements Lodq;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lodq;

.field public c:I

.field public d:Llho;

.field private final e:Lodl;

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private final h:Lodj;

.field private i:D

.field private j:J

.field private final k:Ljava/util/Random;

.field private l:I

.field private m:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lodl;Lodj;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p5, :cond_0

    iput-object p1, p0, Lodo;->f:Ljava/lang/String;

    iput-object p2, p0, Lodo;->g:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lodo;->a:Ljava/lang/String;

    :goto_0
    if-nez p3, :cond_1

    new-instance p3, Lodl;

    invoke-direct {p3}, Lodl;-><init>()V

    :cond_1
    iput-object p3, p0, Lodo;->e:Lodl;

    iput-object p4, p0, Lodo;->h:Lodj;

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lodo;->i:D

    const-wide/16 p1, 0x1

    iput-wide p1, p0, Lodo;->j:J

    new-instance p1, Ljava/util/Random;

    invoke-direct {p1}, Ljava/util/Random;-><init>()V

    iput-object p1, p0, Lodo;->k:Ljava/util/Random;

    const/4 p1, 0x1

    iput p1, p0, Lodo;->c:I

    return-void
.end method

.method private final declared-synchronized f()V
    .locals 3

    monitor-enter p0

    :goto_0
    :try_start_0
    iget v0, p0, Lodo;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    :try_start_2
    invoke-static {v1}, Llkj;->x(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_3
    new-instance v0, Lods;

    sget-object v1, Lodr;->b:Lodr;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lods;-><init>(Lodr;Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method private final h(Lods;)V
    .locals 8

    iget-wide v0, p0, Lodo;->i:D

    const-wide/high16 v2, 0x404e000000000000L    # 60.0

    cmpl-double v4, v0, v2

    if-gez v4, :cond_0

    iget-object p1, p0, Lodo;->k:Ljava/util/Random;

    invoke-virtual {p1}, Ljava/util/Random;->nextDouble()D

    move-result-wide v0

    :try_start_0
    iget-wide v2, p0, Lodo;->i:D

    iget-wide v4, p0, Lodo;->j:J
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-double v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v6, v6, v0

    add-double/2addr v2, v6

    :try_start_1
    iput-wide v2, p0, Lodo;->i:D
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    const-wide/16 v2, 0x3e8

    mul-long v4, v4, v2

    long-to-double v2, v4

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v2, v2, v0

    double-to-long v0, v2

    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    :goto_0
    iget-wide v0, p0, Lodo;->j:J

    add-long/2addr v0, v0

    iput-wide v0, p0, Lodo;->j:J

    return-void

    :cond_0
    throw p1
.end method

.method private final i()V
    .locals 2

    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lodo;->j:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lodo;->i:D

    return-void
.end method

.method private final j()Z
    .locals 4

    :try_start_0
    iget-object v0, p0, Lodo;->h:Lodj;

    invoke-interface {v0}, Lodj;->g()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    new-instance v1, Lods;

    sget-object v2, Lodr;->c:Lodr;

    const-string v3, "Could not call hasMoreData() on upload stream."

    invoke-direct {v1, v2, v3, v0}, Lods;-><init>(Lodr;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private final k(Lodl;Ljava/lang/String;Lodj;)Llpu;
    .locals 7

    invoke-direct {p0}, Lodo;->f()V

    new-instance v0, Lodl;

    invoke-direct {v0}, Lodl;-><init>()V

    const-string v1, "X-Goog-Upload-Protocol"

    const-string v2, "resumable"

    invoke-virtual {v0, v1, v2}, Lodl;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "X-Goog-Upload-Command"

    invoke-virtual {v0, v1, p2}, Lodl;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Lodl;->c()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lodl;->b(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v2, v4}, Lodl;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p1, "start"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lodo;->f:Ljava/lang/String;

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lodo;->a:Ljava/lang/String;

    :goto_1
    const-string v1, "start"

    invoke-virtual {p2, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lodo;->g:Ljava/lang/String;

    goto :goto_2

    :cond_3
    const-string v1, "PUT"

    :goto_2
    invoke-static {p1, v1, v0, p3}, Lkwp;->v(Ljava/lang/String;Ljava/lang/String;Lodl;Lodj;)Lodq;

    move-result-object p1

    iget-object p3, p0, Lodo;->d:Llho;

    if-eqz p3, :cond_4

    const-string p3, "start"

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    monitor-enter p0

    :try_start_0
    new-instance p2, Lodn;

    iget-object v2, p0, Lodo;->d:Llho;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p2

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lodn;-><init>(Lodq;Llho;[B[B[B[B)V

    iget p3, p0, Lodo;->l:I

    iget v0, p0, Lodo;->m:I

    invoke-interface {p1, p2, p3, v0}, Lodq;->g(Llho;II)V

    monitor-exit p0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_3
    monitor-enter p0

    :try_start_1
    iput-object p1, p0, Lodo;->b:Lodq;

    new-instance p2, Lkhk;

    check-cast p1, Lodm;

    const/16 p3, 0xe

    invoke-direct {p2, p1, p3}, Lkhk;-><init>(Lodm;I)V

    invoke-static {p2}, Lnov;->a(Ljava/util/concurrent/Callable;)Lnov;

    move-result-object p1

    new-instance p2, Lnaa;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lnaa;-><init>([B)V

    const-string p3, "Scotty-Uploader-HttpUrlConnectionHttpClient-%d"

    invoke-virtual {p2, p3}, Lnaa;->c(Ljava/lang/String;)V

    invoke-static {p2}, Lnaa;->d(Lnaa;)Ljava/util/concurrent/ThreadFactory;

    move-result-object p2

    invoke-static {p2}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object p2

    invoke-interface {p2, p1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    invoke-interface {p2}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lmaf;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_0

    iget-object p2, p1, Lmaf;->a:Ljava/lang/Object;

    if-eqz p2, :cond_6

    check-cast p2, Lods;

    iget-object p2, p2, Lods;->a:Lodr;

    sget-object p3, Lodr;->b:Lodr;

    if-eq p2, p3, :cond_5

    iget-object p1, p1, Lmaf;->a:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Throwable;

    throw p1

    :cond_5
    invoke-direct {p0}, Lodo;->f()V

    new-instance p1, Lods;

    sget-object p2, Lodr;->d:Lodr;

    const-string p3, ""

    invoke-direct {p1, p2, p3}, Lods;-><init>(Lodr;Ljava/lang/String;)V

    throw p1

    :cond_6
    iget-object p1, p1, Lmaf;->b:Ljava/lang/Object;

    check-cast p1, Llpu;

    return-object p1

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    :goto_4
    new-instance p2, Ljava/lang/RuntimeException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "Unexpected error occurred: "

    invoke-virtual {v0, p3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method private static final l(Llpu;)Z
    .locals 1

    iget p0, p0, Llpu;->a:I

    div-int/lit8 p0, p0, 0x64

    const/4 v0, 0x4

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private static final m(Llpu;)Z
    .locals 2

    iget-object p0, p0, Llpu;->c:Ljava/lang/Object;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    check-cast p0, Lodl;

    const-string v1, "X-Goog-Upload-Status"

    invoke-virtual {p0, v1}, Lodl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v1, "final"

    invoke-static {v1, p0}, Lmoz;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v0
.end method

.method private static final n(Llpu;)Z
    .locals 3

    iget-object v0, p0, Llpu;->c:Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast v0, Lodl;

    const-string v2, "X-Goog-Upload-Status"

    invoke-virtual {v0, v2}, Lodl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "active"

    invoke-static {v2, v0}, Lmoz;->D(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget p0, p0, Llpu;->a:I

    const/16 v0, 0xc8

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    return v1
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-object v0, p0, Lodo;->h:Lodj;

    invoke-interface {v0}, Lodj;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lodo;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c(Z)Llpu;
    .locals 7

    if-eqz p1, :cond_0

    move-object p1, p0

    goto/16 :goto_4

    :cond_0
    move-object p1, p0

    :goto_0
    invoke-direct {p1}, Lodo;->j()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p1, Lodo;->h:Lodj;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lodo;->h:Lodj;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    :goto_1
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    invoke-direct {p1}, Lodo;->j()Z

    move-result v2

    if-eq v1, v2, :cond_2

    const-string v1, "finalize"

    goto :goto_2

    :cond_2
    const-string v1, "upload, finalize"

    :goto_2
    iget-object v2, p1, Lodo;->d:Llho;

    if-eqz v2, :cond_3

    invoke-virtual {v2, p1}, Llho;->X(Lodq;)V

    :cond_3
    iget-object v2, p1, Lodo;->e:Lodl;

    iget-object v3, p1, Lodo;->h:Lodj;

    invoke-interface {v3}, Lodj;->c()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    const-string v4, "X-Goog-Upload-Offset"

    invoke-virtual {v2, v4, v3}, Lodl;->e(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    invoke-direct {p1, v2, v1, v0}, Lodo;->k(Lodl;Ljava/lang/String;Lodj;)Llpu;

    move-result-object v0
    :try_end_0
    .catch Lods; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {v0}, Lodo;->m(Llpu;)Z

    move-result v1

    if-eqz v1, :cond_4

    return-object v0

    :cond_4
    invoke-static {v0}, Lodo;->n(Llpu;)Z

    move-result v1

    if-nez v1, :cond_7

    invoke-static {v0}, Lodo;->l(Llpu;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget v1, v0, Llpu;->a:I

    const/16 v2, 0x190

    if-ne v1, v2, :cond_5

    goto :goto_3

    :cond_5
    return-object v0

    :cond_6
    :goto_3
    new-instance v1, Lods;

    sget-object v2, Lodr;->e:Lodr;

    invoke-virtual {v0}, Llpu;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lods;-><init>(Lodr;Ljava/lang/String;)V

    invoke-direct {p1, v1}, Lodo;->h(Lods;)V

    goto :goto_4

    :cond_7
    new-instance p1, Lods;

    sget-object v0, Lodr;->e:Lodr;

    const-string v1, "Finalize call returned active state."

    invoke-direct {p1, v0, v1}, Lods;-><init>(Lodr;Ljava/lang/String;)V

    throw p1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lods;->a()Z

    move-result v1

    if-eqz v1, :cond_13

    invoke-direct {p1, v0}, Lodo;->h(Lods;)V

    :goto_4
    iget-object v0, p1, Lodo;->e:Lodl;

    :goto_5
    :try_start_1
    const-string v1, "query"

    new-instance v2, Lodp;

    const-string v3, ""

    invoke-direct {v2, v3}, Lodp;-><init>(Ljava/lang/String;)V

    invoke-direct {p1, v0, v1, v2}, Lodo;->k(Lodl;Ljava/lang/String;Lodj;)Llpu;

    move-result-object v1
    :try_end_1
    .catch Lods; {:try_start_1 .. :try_end_1} :catch_4

    invoke-static {v1}, Lodo;->m(Llpu;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto/16 :goto_9

    :cond_8
    invoke-static {v1}, Lodo;->n(Llpu;)Z

    move-result v2

    if-eqz v2, :cond_f

    iget-object v0, v1, Llpu;->c:Ljava/lang/Object;

    check-cast v0, Lodl;

    const-string v2, "X-Goog-Upload-Chunk-Granularity"

    invoke-virtual {v0, v2}, Lodl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_9

    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_6

    :catch_1
    move-exception p1

    new-instance v0, Lods;

    sget-object v1, Lodr;->e:Lodr;

    const-string v2, "Server returned an invalid chunk granularity."

    invoke-direct {v0, v1, v2, p1}, Lods;-><init>(Lodr;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_9
    :goto_6
    :try_start_3
    iget-object v0, v1, Llpu;->c:Ljava/lang/Object;

    const-string v1, "X-Goog-Upload-Size-Received"

    check-cast v0, Lodl;

    invoke-virtual {v0, v1}, Lodl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    iget-object v2, p1, Lodo;->h:Lodj;

    invoke-interface {v2}, Lodj;->b()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-ltz v5, :cond_e

    invoke-interface {v2}, Lodj;->c()J

    move-result-wide v3

    cmp-long v5, v0, v3

    if-ltz v5, :cond_a

    goto :goto_7

    :cond_a
    invoke-interface {v2}, Lodj;->f()V

    :goto_7
    iget-object v2, p1, Lodo;->h:Lodj;

    invoke-interface {v2}, Lodj;->c()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-gez v5, :cond_c

    invoke-direct {p1}, Lodo;->j()Z

    move-result v2

    if-eqz v2, :cond_b

    :try_start_4
    iget-object v2, p1, Lodo;->h:Lodj;

    invoke-interface {v2}, Lodj;->c()J

    move-result-wide v3

    sub-long v3, v0, v3

    invoke-interface {v2, v3, v4}, Lodj;->h(J)V

    iget-object v2, p1, Lodo;->h:Lodj;

    invoke-interface {v2}, Lodj;->e()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :catch_2
    move-exception p1

    new-instance v0, Lods;

    sget-object v1, Lodr;->c:Lodr;

    const-string v2, "Could not skip in the data stream."

    invoke-direct {v0, v1, v2, p1}, Lods;-><init>(Lodr;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_b
    new-instance v2, Lods;

    sget-object v3, Lodr;->c:Lodr;

    iget-object p1, p1, Lodo;->h:Lodj;

    invoke-interface {p1}, Lodj;->c()J

    move-result-wide v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Upload stream does not have more data but it should. Maybe the caller passed in a data stream to upload with a mark position that didn\'t match the transfer handle? Confirmed offset from server: "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " Size: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lods;-><init>(Lodr;Ljava/lang/String;)V

    throw v2

    :cond_c
    invoke-interface {v2}, Lodj;->c()J

    move-result-wide v0

    invoke-interface {v2}, Lodj;->b()J

    move-result-wide v3

    const/4 v5, 0x0

    cmp-long v6, v0, v3

    if-lez v6, :cond_d

    invoke-interface {v2}, Lodj;->e()V

    invoke-direct {p1}, Lodo;->i()V

    goto :goto_8

    :cond_d
    :goto_8
    move-object v1, v5

    goto :goto_9

    :cond_e
    new-instance v2, Lods;

    sget-object v3, Lodr;->e:Lodr;

    iget-object p1, p1, Lodo;->h:Lodj;

    invoke-interface {p1}, Lodj;->b()J

    move-result-wide v4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "The server lost bytes that were previously committed. Our offset: "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", server offset: "

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, v3, p1}, Lods;-><init>(Lodr;Ljava/lang/String;)V

    throw v2

    :catch_3
    move-exception p1

    new-instance v0, Lods;

    sget-object v1, Lodr;->e:Lodr;

    const-string v2, "Failed to parse X-Goog-Upload-Size-Received header"

    invoke-direct {v0, v1, v2, p1}, Lods;-><init>(Lodr;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_f
    invoke-static {v1}, Lodo;->l(Llpu;)Z

    move-result v2

    if-eqz v2, :cond_11

    :goto_9
    if-nez v1, :cond_10

    goto/16 :goto_0

    :cond_10
    return-object v1

    :cond_11
    new-instance v2, Lods;

    sget-object v3, Lodr;->e:Lodr;

    invoke-virtual {v1}, Llpu;->b()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lods;-><init>(Lodr;Ljava/lang/String;)V

    invoke-direct {p1, v2}, Lodo;->h(Lods;)V

    goto/16 :goto_5

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Lods;->a()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-direct {p1, v1}, Lodo;->h(Lods;)V

    goto/16 :goto_5

    :cond_12
    throw v1

    :cond_13
    goto :goto_b

    :goto_a
    throw v0

    :goto_b
    goto :goto_a
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lodo;->d:Llho;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Llpu;
    .locals 5

    monitor-enter p0

    :try_start_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0}, Lodo;->i()V

    :goto_0
    :try_start_1
    iget-object v0, p0, Lodo;->e:Lodl;

    const-string v1, "start"

    new-instance v2, Lodp;

    const/4 v3, 0x0

    invoke-static {v3}, Lmqr;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lodp;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0, v1, v2}, Lodo;->k(Lodl;Ljava/lang/String;Lodj;)Llpu;

    move-result-object v0
    :try_end_1
    .catch Lods; {:try_start_1 .. :try_end_1} :catch_2

    invoke-static {v0}, Lodo;->m(Llpu;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    invoke-static {v0}, Lodo;->n(Llpu;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v0, v0, Llpu;->c:Ljava/lang/Object;

    check-cast v0, Lodl;

    const-string v1, "X-Goog-Upload-URL"

    invoke-virtual {v0, v1}, Lodl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :try_start_2
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lodo;->a:Ljava/lang/String;

    monitor-enter p0
    :try_end_2
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_1

    :try_start_3
    iget-object v1, p0, Lodo;->d:Llho;

    if-eqz v1, :cond_4

    iget-object v2, p0, Lodo;->a:Ljava/lang/String;

    if-eqz v2, :cond_2

    invoke-static {v2}, Lolp;->o(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    move-object v3, v2

    goto :goto_1

    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    check-cast v1, Lmbo;

    iget-object v1, v1, Lmbo;->d:Lotd;

    new-instance v2, Lmdi;

    invoke-direct {v2, v3}, Lmdi;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Lolp;->N(Lotj;Ljava/lang/Object;)V

    goto :goto_2

    :cond_3
    const-string v2, "Upload transfer handle blank"

    new-instance v3, Lods;

    sget-object v4, Lodr;->a:Lodr;

    invoke-direct {v3, v4, v2}, Lods;-><init>(Lodr;Ljava/lang/String;)V

    check-cast v1, Lmbo;

    invoke-virtual {v1, p0, v3}, Lmbo;->a(Lodq;Lods;)V

    :cond_4
    :goto_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const-string v1, "X-Goog-Upload-Chunk-Granularity"

    invoke-virtual {v0, v1}, Lodl;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    new-instance v1, Lods;

    sget-object v2, Lodr;->e:Lodr;

    const-string v3, "Server returned an invalid chunk granularity."

    invoke-direct {v1, v2, v3, v0}, Lods;-><init>(Lodr;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_5
    :goto_3
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lodo;->c(Z)Llpu;

    move-result-object v0

    return-object v0

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Ljava/net/MalformedURLException; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Lods;

    sget-object v2, Lodr;->e:Lodr;

    const-string v3, "Server returned an invalid upload url."

    invoke-direct {v1, v2, v3, v0}, Lods;-><init>(Lodr;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_6
    invoke-static {v0}, Lodo;->l(Llpu;)Z

    move-result v1

    if-eqz v1, :cond_7

    return-object v0

    :cond_7
    new-instance v1, Lods;

    sget-object v2, Lodr;->e:Lodr;

    invoke-virtual {v0}, Llpu;->b()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Lods;-><init>(Lodr;Ljava/lang/String;)V

    invoke-direct {p0, v1}, Lodo;->h(Lods;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Lods;->a()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-direct {p0, v0}, Lodo;->h(Lods;)V

    goto/16 :goto_0

    :cond_8
    throw v0

    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method

.method public final declared-synchronized g(Llho;II)V
    .locals 0

    monitor-enter p0

    :try_start_0
    const-string p2, "Progress threshold (bytes) must be greater than 0"

    const/4 p3, 0x1

    invoke-static {p3, p2}, Lmoz;->f(ZLjava/lang/Object;)V

    const-string p2, "Progress threshold (millis) must be greater or equal to 0"

    invoke-static {p3, p2}, Lmoz;->f(ZLjava/lang/Object;)V

    iput-object p1, p0, Lodo;->d:Llho;

    const/high16 p1, 0x400000

    iput p1, p0, Lodo;->l:I

    const/16 p1, 0xfa

    iput p1, p0, Lodo;->m:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
