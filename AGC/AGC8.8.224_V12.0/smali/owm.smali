.class public final Lowm;
.super Lopq;

# interfaces
.implements Ljava/lang/Runnable;
.implements Loqa;


# instance fields
.field private final c:Lopq;

.field private final d:I

.field private final synthetic e:Loqa;

.field private final f:Ljava/lang/Object;

.field private final g:Llhz;

.field private volatile runningWorkers:I


# direct methods
.method public constructor <init>(Lopq;I)V
    .locals 0

    invoke-direct {p0}, Lopq;-><init>()V

    iput-object p1, p0, Lowm;->c:Lopq;

    iput p2, p0, Lowm;->d:I

    sget-object p1, Lopz;->a:Loqa;

    iput-object p1, p0, Lowm;->e:Loqa;

    new-instance p1, Llhz;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p2}, Llhz;-><init>([B[B)V

    iput-object p1, p0, Lowm;->g:Llhz;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lowm;->f:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Looz;)V
    .locals 1

    iget-object v0, p0, Lowm;->e:Loqa;

    invoke-interface {v0, p1}, Loqa;->a(Looz;)V

    return-void
.end method

.method public final d(Lola;Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lowm;->g:Llhz;

    invoke-virtual {p1, p2}, Llhz;->n(Ljava/lang/Object;)Z

    iget p1, p0, Lowm;->runningWorkers:I

    iget p2, p0, Lowm;->d:I

    if-lt p1, p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lowm;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget p2, p0, Lowm;->runningWorkers:I

    iget v0, p0, Lowm;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-lt p2, v0, :cond_1

    monitor-exit p1

    return-void

    :cond_1
    :try_start_1
    iget p2, p0, Lowm;->runningWorkers:I

    add-int/lit8 p2, p2, 0x1

    iput p2, p0, Lowm;->runningWorkers:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p1

    iget-object p1, p0, Lowm;->c:Lopq;

    invoke-virtual {p1, p0, p0}, Lopq;->d(Lola;Ljava/lang/Runnable;)V

    return-void

    :catchall_0
    move-exception p2

    monitor-exit p1

    throw p2
.end method

.method public final f(JLjava/lang/Runnable;Lola;)Loqh;
    .locals 1

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lowm;->e:Loqa;

    invoke-interface {v0, p1, p2, p3, p4}, Loqa;->f(JLjava/lang/Runnable;Lola;)Loqh;

    move-result-object p1

    return-object p1
.end method

.method public final run()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    iget-object v2, p0, Lowm;->g:Llhz;

    invoke-virtual {v2}, Llhz;->l()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    :try_start_0
    invoke-interface {v2}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v2

    sget-object v3, Lolb;->a:Lolb;

    invoke-static {v3, v2}, Lonm;->k(Lola;Ljava/lang/Throwable;)V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    const/16 v2, 0x10

    if-lt v1, v2, :cond_0

    iget-object v0, p0, Lowm;->c:Lopq;

    invoke-virtual {v0, p0}, Lopq;->e(Lola;)Z

    iget-object v0, p0, Lowm;->c:Lopq;

    invoke-virtual {v0, p0, p0}, Lopq;->d(Lola;Ljava/lang/Runnable;)V

    return-void

    :cond_1
    iget-object v1, p0, Lowm;->f:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v2, p0, Lowm;->runningWorkers:I

    add-int/lit8 v2, v2, -0x1

    iput v2, p0, Lowm;->runningWorkers:I

    iget-object v2, p0, Lowm;->g:Llhz;

    invoke-virtual {v2}, Llhz;->k()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    :try_start_2
    iget v2, p0, Lowm;->runningWorkers:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lowm;->runningWorkers:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v1

    const/4 v1, 0x0

    goto :goto_0

    :catchall_1
    move-exception v0

    monitor-exit v1

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
