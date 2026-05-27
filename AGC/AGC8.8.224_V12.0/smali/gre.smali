.class public final Lgre;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:I

.field public final c:Ljava/lang/Object;

.field public final d:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    const-string v1, "maxSize must be > 0."

    invoke-static {v0, v1}, Lmoz;->f(ZLjava/lang/Object;)V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lgre;->a:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lgre;->c:Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lgre;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lkbc;Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lgre;->b:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lgre;->d:Ljava/lang/Object;

    const-string v0, "InteractivityReadinessLatch"

    invoke-interface {p1, v0}, Lkbc;->b(Ljava/lang/String;)Lkbh;

    move-result-object p1

    iput-object p1, p0, Lgre;->a:Ljava/lang/Object;

    iput-object p2, p0, Lgre;->c:Ljava/lang/Object;

    iget p2, p0, Lgre;->b:I

    invoke-interface {p1, p2}, Lkbh;->c(I)V

    return-void
.end method

.method public static final a()V
    .locals 2

    const/4 v0, 0x1

    const-string v1, "Size was < 0."

    invoke-static {v0, v1}, Lmoz;->f(ZLjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final declared-synchronized b(Ljava/util/concurrent/Executor;)Lcju;
    .locals 1

    monitor-enter p0

    :try_start_0
    new-instance v0, Lcju;

    invoke-direct {v0, p1}, Lcju;-><init>(Ljava/util/concurrent/Executor;)V

    iget p1, p0, Lgre;->b:I

    if-lez p1, :cond_0

    invoke-virtual {v0}, Lcju;->a()V

    :cond_0
    iget-object p1, p0, Lgre;->d:Ljava/lang/Object;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized c()Lkad;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lgre;->b:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lgre;->b:I

    iget-object v2, p0, Lgre;->a:Ljava/lang/Object;

    invoke-interface {v2, v0}, Lkbh;->c(I)V

    iget v0, p0, Lgre;->b:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lgre;->d:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcju;

    invoke-virtual {v1}, Lcju;->a()V

    goto :goto_0

    :cond_0
    new-instance v0, Lcjr;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcjr;-><init>(Lgre;[B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized d()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lgre;->b:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lgre;->b:I

    iget-object v1, p0, Lgre;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Lkbh;->c(I)V

    iget v0, p0, Lgre;->b:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->p(Z)V

    iget v0, p0, Lgre;->b:I

    if-nez v0, :cond_1

    iget-object v0, p0, Lgre;->d:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcju;

    invoke-virtual {v1}, Lcju;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
