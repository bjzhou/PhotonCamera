.class public final Lfwx;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final a:Lgda;

.field private final b:Ljava/lang/Object;

.field private final c:Ljava/util/Queue;

.field private d:I

.field private final e:Ljvk;

.field private volatile f:Z


# direct methods
.method public constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lfwx;->b:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfwx;->f:Z

    iput p1, p0, Lfwx;->d:I

    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lfwx;->c:Ljava/util/Queue;

    new-instance p1, Lgda;

    invoke-direct {p1}, Lgda;-><init>()V

    iput-object p1, p0, Lfwx;->a:Lgda;

    new-instance p1, Ljvk;

    iget v0, p0, Lfwx;->d:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p1, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lfwx;->e:Ljvk;

    return-void
.end method

.method private final c(Lfwu;Lgcy;Lnph;)V
    .locals 1

    invoke-interface {p1}, Lfwu;->a()Lnou;

    move-result-object p1

    new-instance v0, Lfwv;

    invoke-direct {v0, p0, p3, p2}, Lfwv;-><init>(Lfwx;Lnph;Lgcy;)V

    sget-object p2, Lnnv;->a:Lnnv;

    invoke-static {p1, v0, p2}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    return-void
.end method


# virtual methods
.method public final a(Lfwu;)Lnou;
    .locals 5

    iget-boolean v0, p0, Lfwx;->f:Z

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lfwu;->b()Lnou;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v0

    iget-object v1, p0, Lfwx;->a:Lgda;

    iget-object v2, v1, Lgda;->a:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, v1, Ljvk;->d:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljvk;->bn(Ljava/lang/Object;)V

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v2, Lgcz;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Lgcz;-><init>(Lgda;I)V

    iget-object v1, p0, Lfwx;->b:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget v3, p0, Lfwx;->d:I

    if-lez v3, :cond_1

    iget-object v3, p0, Lfwx;->c:Ljava/util/Queue;

    invoke-interface {v3}, Ljava/util/Queue;->isEmpty()Z

    move-result v3

    invoke-static {v3}, Lmoz;->p(Z)V

    iget v3, p0, Lfwx;->d:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lfwx;->d:I

    iget-object v4, p0, Lfwx;->e:Ljvk;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljvk;->bn(Ljava/lang/Object;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-direct {p0, p1, v2, v0}, Lfwx;->c(Lfwu;Lgcy;Lnph;)V

    return-object v0

    :cond_1
    :try_start_2
    iget-object v3, p0, Lfwx;->c:Ljava/util/Queue;

    new-instance v4, Lfww;

    invoke-direct {v4, p1, v2, v0}, Lfww;-><init>(Lfwu;Lgcy;Lnph;)V

    invoke-interface {v3, v4}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1

    :catchall_1
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p1
.end method

.method public final b()V
    .locals 3

    iget-object v0, p0, Lfwx;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lfwx;->c:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lfww;

    if-nez v1, :cond_0

    iget v1, p0, Lfwx;->d:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lfwx;->d:I

    iget-object v2, p0, Lfwx;->e:Ljvk;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljvk;->bn(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, v1, Lfww;->a:Lfwu;

    iget-object v2, v1, Lfww;->c:Lnph;

    iget-object v1, v1, Lfww;->b:Lgcy;

    invoke-direct {p0, v0, v1, v2}, Lfwx;->c(Lfwu;Lgcy;Lnph;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final close()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lfwx;->f:Z

    return-void
.end method
