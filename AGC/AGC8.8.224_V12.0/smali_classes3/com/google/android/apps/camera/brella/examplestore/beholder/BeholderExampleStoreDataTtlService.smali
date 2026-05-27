.class public Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;
.super Lcmw;


# instance fields
.field public a:Lgzi;

.field public b:Lcnt;

.field public c:Lcoh;

.field public d:Ljava/util/concurrent/ExecutorService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcmw;-><init>()V

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lcnt;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;->b:Lcnt;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected final declared-synchronized b()Lgzi;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;->a:Lgzi;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Lnou;
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;->a()Lcnt;

    move-result-object v0

    invoke-interface {v0}, Lcnt;->g()Lnou;

    move-result-object v0

    invoke-static {v0}, Lnoo;->q(Lnou;)Lnoo;

    move-result-object v0

    new-instance v1, Lcmq;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcmq;-><init>(Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;I)V

    iget-object v2, p0, Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;->d:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    invoke-static {v0}, Lnoo;->q(Lnou;)Lnoo;

    move-result-object v0

    new-instance v1, Lcmq;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lcmq;-><init>(Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;I)V

    iget-object v2, p0, Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;->d:Ljava/util/concurrent/ExecutorService;

    invoke-static {v0, v1, v2}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lnou;
    .locals 4

    invoke-virtual {p0}, Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;->b()Lgzi;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;->a()Lcnt;

    move-result-object v1

    invoke-interface {v1}, Lcnt;->k()Lnou;

    move-result-object v1

    invoke-static {v1}, Lnoo;->q(Lnou;)Lnoo;

    move-result-object v1

    new-instance v2, Lcdu;

    const/4 v3, 0x3

    invoke-direct {v2, v0, v3}, Lcdu;-><init>(Lgzi;I)V

    iget-object v0, p0, Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;->d:Ljava/util/concurrent/ExecutorService;

    invoke-static {v1, v2, v0}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method protected final e()Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;->d:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method public final onCreate()V
    .locals 2

    invoke-super {p0}, Lcmw;->onCreate()V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lemj;

    const-class v1, Lcmr;

    invoke-interface {v0, v1}, Lemj;->e(Ljava/lang/Class;)Leml;

    move-result-object v0

    check-cast v0, Lcmr;

    invoke-interface {v0, p0}, Lcmr;->c(Lcom/google/android/apps/camera/brella/examplestore/beholder/BeholderExampleStoreDataTtlService;)V

    return-void
.end method
