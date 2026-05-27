.class public final Lczf;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljava/util/List;

.field b:Lkad;

.field private c:Z

.field private final d:Ljvs;

.field private e:Z


# direct methods
.method public constructor <init>(Ljvs;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lczf;->c:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lczf;->a:Ljava/util/List;

    iput-boolean v0, p0, Lczf;->e:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lczf;->b:Lkad;

    iput-object p1, p0, Lczf;->d:Ljvs;

    new-instance v1, Lcze;

    invoke-direct {v1, p0, v0}, Lcze;-><init>(Lczf;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-interface {p1, v1, v0}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    return-void
.end method

.method private final e()V
    .locals 1

    iget-boolean v0, p0, Lczf;->c:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lczf;->e:Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lczf;->d:Ljvs;

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lczf;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lczf;->b:Lkad;

    if-nez v0, :cond_2

    iget-object v0, p0, Lczf;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lczf;->a:Ljava/util/List;

    invoke-static {v0}, Llyh;->S(Ljava/lang/Iterable;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lczc;

    invoke-virtual {v0}, Lczc;->a()Lkad;

    move-result-object v0

    iput-object v0, p0, Lczf;->b:Lkad;

    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lczf;->b:Lkad;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lkad;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lczf;->b:Lkad;

    :cond_2
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lczc;)Lkad;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lczf;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lczf;->e()V

    new-instance v0, Lchq;

    const/16 v1, 0x8

    invoke-direct {v0, p0, p1, v1}, Lchq;-><init>(Lczf;Lczc;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lczf;->e:Z

    invoke-direct {p0}, Lczf;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lczf;->c:Z

    invoke-direct {p0}, Lczf;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lczf;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
