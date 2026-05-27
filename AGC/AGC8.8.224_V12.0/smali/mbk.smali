.class final Lmbk;
.super Lonf;

# interfaces
.implements Lolz;


# instance fields
.field final synthetic a:Lodq;

.field final synthetic b:Lnou;

.field final synthetic c:Lodj;


# direct methods
.method public constructor <init>(Lodq;Lnou;Lodj;)V
    .locals 0

    iput-object p1, p0, Lmbk;->a:Lodq;

    iput-object p2, p0, Lmbk;->b:Lnou;

    iput-object p3, p0, Lmbk;->c:Lodj;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Lmbk;->a:Lodq;

    invoke-interface {v0}, Lodq;->d()V

    iget-object v0, p0, Lmbk;->a:Lodq;

    monitor-enter v0

    :try_start_0
    move-object v1, v0

    check-cast v1, Lodo;

    iget-object v1, v1, Lodo;->b:Lodq;

    const/4 v2, 0x3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v3, v1

    check-cast v3, Lodm;

    iput v2, v3, Lodm;->g:I

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    move-object v1, v0

    check-cast v1, Lodo;

    const/4 v3, 0x0

    iput-object v3, v1, Lodo;->b:Lodq;

    :goto_0
    move-object v1, v0

    check-cast v1, Lodo;

    iput v2, v1, Lodo;->c:I

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v0, p0, Lmbk;->b:Lnou;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lnou;->cancel(Z)Z

    iget-object v0, p0, Lmbk;->c:Lodj;

    invoke-interface {v0}, Lodj;->close()V

    sget-object v0, Lojk;->a:Lojk;

    return-object v0

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method
