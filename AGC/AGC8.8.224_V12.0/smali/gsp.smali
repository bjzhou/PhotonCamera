.class public final Lgsp;
.super Ljava/lang/Object;

# interfaces
.implements Lgsm;


# instance fields
.field public final a:Ldvc;

.field private final b:[Lgsl;

.field private final c:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 4

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x7530

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v0

    const-wide/16 v2, 0x1e

    mul-long v0, v0, v2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lgsp;->c:Ljava/lang/Object;

    new-instance v2, Ldvc;

    long-to-int v1, v0

    invoke-direct {v2, v1}, Ldvc;-><init>(I)V

    iput-object v2, p0, Lgsp;->a:Ldvc;

    new-array v0, v1, [Lgsl;

    iput-object v0, p0, Lgsp;->b:[Lgsl;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lgsp;->b:[Lgsl;

    array-length v0, v0

    return v0
.end method

.method public final b()Ldtd;
    .locals 1

    iget-object v0, p0, Lgsp;->a:Ldvc;

    return-object v0
.end method

.method public final c(J)Lgsl;
    .locals 2

    iget-object v0, p0, Lgsp;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgsp;->a:Ldvc;

    invoke-virtual {v1, p1, p2}, Ldvc;->g(J)I

    move-result p1

    if-ltz p1, :cond_0

    iget-object p2, p0, Lgsp;->b:[Lgsl;

    aget-object p1, p2, p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final d(J)Lgsl;
    .locals 7

    iget-object v0, p0, Lgsp;->c:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lgsp;->a:Ldvc;

    invoke-virtual {v1}, Ldvc;->e()I

    move-result v1

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    iget-object v1, p0, Lgsp;->a:Ldvc;

    invoke-virtual {v1, p1, p2}, Ldvc;->c(J)I

    move-result v3

    invoke-virtual {v1, v3}, Ldvc;->f(I)I

    move-result v1

    iget-object v3, p0, Lgsp;->a:Ldvc;

    invoke-virtual {v3, p1, p2}, Ldvc;->d(J)I

    move-result v4

    invoke-virtual {v3, v4}, Ldvc;->f(I)I

    move-result v3

    if-ltz v1, :cond_1

    iget-object v4, p0, Lgsp;->b:[Lgsl;

    aget-object v1, v4, v1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    if-ltz v3, :cond_2

    iget-object v2, p0, Lgsp;->b:[Lgsl;

    aget-object v2, v2, v3

    goto :goto_1

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    monitor-exit v0

    return-object v2

    :cond_3
    if-nez v2, :cond_4

    monitor-exit v0

    return-object v1

    :cond_4
    iget-wide v3, v1, Lgsl;->a:J

    sub-long v3, p1, v3

    iget-wide v5, v2, Lgsl;->a:J

    sub-long/2addr v5, p1

    cmp-long p1, v3, v5

    if-ltz p1, :cond_5

    move-object v1, v2

    :cond_5
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final e()V
    .locals 0

    return-void
.end method

.method public final f(Lgsl;)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lgsp;->c:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lgsp;->b:[Lgsl;

    iget-object v2, p0, Lgsp;->a:Ldvc;

    iget-wide v3, p1, Lgsl;->a:J

    invoke-virtual {v2, v3, v4}, Ldvc;->b(J)I

    move-result v2

    aput-object p1, v1, v2

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p1

    return-void
.end method
