.class public final Llfh;
.super Ljava/lang/Object;

# interfaces
.implements Llfg;


# instance fields
.field final synthetic a:Llfg;

.field final synthetic b:Ljava/lang/Iterable;

.field private final c:Z


# direct methods
.method public constructor <init>(Llfg;Ljava/lang/Iterable;)V
    .locals 0

    iput-object p1, p0, Llfh;->a:Llfg;

    iput-object p2, p0, Llfh;->b:Ljava/lang/Iterable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Llfh;->c:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lkzf;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Llfh;->a:Llfg;

    invoke-interface {v0}, Llfg;->a()Lkzf;

    move-result-object v0

    sget-object v1, Lnnv;->a:Lnnv;

    new-instance v2, Llhe;

    iget-object v3, p0, Llfh;->b:Ljava/lang/Iterable;

    invoke-direct {v2, v3}, Llhe;-><init>(Ljava/lang/Iterable;)V

    invoke-virtual {v0, v1, v2}, Lkzf;->m(Ljava/util/concurrent/Executor;Llhe;)Lkzf;

    move-result-object v0

    invoke-static {v0}, Lkzf;->j(Lkzc;)Lkzf;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Llfh;->a:Llfg;

    invoke-interface {v0}, Llfg;->c()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    invoke-virtual {p0}, Llfh;->a()Lkzf;

    move-result-object v0

    invoke-static {v0}, Llpm;->j(Lkzc;)Ljava/lang/Object;

    return-void
.end method

.method public final declared-synchronized cu()Ljava/lang/Object;
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
