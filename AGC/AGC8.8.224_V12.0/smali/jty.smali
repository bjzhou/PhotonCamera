.class public final Ljty;
.super Ljava/lang/Object;

# interfaces
.implements Lkad;


# instance fields
.field public final a:Lkad;

.field public b:I

.field public final c:Ljux;

.field public final d:Ljava/lang/Object;

.field public final e:Ljava/lang/Runnable;

.field public f:Z


# direct methods
.method public constructor <init>(Lkad;)V
    .locals 2

    invoke-static {}, Lnsy;->q()Lnow;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljty;-><init>(Lkad;Ljava/util/concurrent/Executor;Ljux;)V

    return-void
.end method

.method public constructor <init>(Lkad;Ljava/util/concurrent/Executor;Ljux;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljty;->f:Z

    iput-object p1, p0, Ljty;->a:Lkad;

    iput-object p3, p0, Ljty;->c:Ljux;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljty;->d:Ljava/lang/Object;

    iput v0, p0, Ljty;->b:I

    new-instance p1, Lbdy;

    new-instance p3, Liwu;

    const/16 v0, 0x13

    invoke-direct {p3, p0, v0}, Liwu;-><init>(Ljty;I)V

    const/4 v0, 0x5

    invoke-direct {p1, p3, p2, v0}, Lbdy;-><init>(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;I)V

    iput-object p1, p0, Ljty;->e:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final a()Lkad;
    .locals 2

    iget-object v0, p0, Ljty;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ljty;->f:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget v1, p0, Ljty;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Ljty;->b:I

    iget-object v1, p0, Ljty;->c:Ljux;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljux;->a()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v0, Ljtx;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljtx;-><init>(Ljty;I)V

    return-object v0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final close()V
    .locals 2

    iget-object v0, p0, Ljty;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ljty;->f:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljty;->f:Z

    iget-object v1, p0, Ljty;->c:Ljux;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljux;->a()V

    :cond_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ljty;->a:Lkad;

    invoke-interface {v0}, Lkad;->close()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
