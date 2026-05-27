.class public final Ljox;
.super Ljot;


# instance fields
.field public final a:Ljava/lang/Object;

.field public b:Z

.field public volatile c:Z

.field public d:Ljava/lang/Object;

.field public e:Ljava/lang/Exception;

.field public final f:Lmob;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljot;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljox;->a:Ljava/lang/Object;

    new-instance v0, Lmob;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lmob;-><init>([B[B)V

    iput-object v0, p0, Ljox;->f:Lmob;

    return-void
.end method

.method private final q()V
    .locals 4

    iget-boolean v0, p0, Ljox;->b:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Ljot;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Ljot;->b()Ljava/lang/Exception;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Ljot;->e()Z

    move-result v1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Ljox;->c:Z

    if-eqz v1, :cond_0

    const-string v1, "cancellation"

    goto :goto_0

    :cond_0
    const-string v1, "unknown issue"

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Ljot;->c()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "result "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "failure"

    :goto_0
    new-instance v2, Ljok;

    const-string v3, "Complete with: "

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljok;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v0, "DuplicateTaskCompletionException can only be created from completed Task."

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_1
    throw v2

    :cond_4
    return-void
.end method


# virtual methods
.method public final a(Ljava/util/concurrent/Executor;Ljoj;)Ljot;
    .locals 4

    new-instance v0, Ljox;

    invoke-direct {v0}, Ljox;-><init>()V

    iget-object v1, p0, Ljox;->f:Lmob;

    new-instance v2, Ljol;

    const/4 v3, 0x1

    invoke-direct {v2, p1, p2, v0, v3}, Ljol;-><init>(Ljava/util/concurrent/Executor;Ljoj;Ljox;I)V

    invoke-virtual {v1, v2}, Lmob;->d(Ljou;)V

    invoke-virtual {p0}, Ljox;->m()V

    return-object v0
.end method

.method public final b()Ljava/lang/Exception;
    .locals 2

    iget-object v0, p0, Ljox;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljox;->e:Ljava/lang/Exception;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final c()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Ljox;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ljox;->b:Z

    const-string v2, "Task is not yet complete"

    invoke-static {v1, v2}, Ljhp;->Y(ZLjava/lang/Object;)V

    iget-boolean v1, p0, Ljox;->c:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Ljox;->e:Ljava/lang/Exception;

    if-nez v1, :cond_0

    iget-object v1, p0, Ljox;->d:Ljava/lang/Object;

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v2, Ljos;

    invoke-direct {v2, v1}, Ljos;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_1
    new-instance v1, Ljava/util/concurrent/CancellationException;

    const-string v2, "Task is already canceled."

    invoke-direct {v1, v2}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final d()Z
    .locals 2

    iget-object v0, p0, Ljox;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ljox;->b:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final e()Z
    .locals 3

    iget-object v0, p0, Ljox;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ljox;->b:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Ljox;->c:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Ljox;->e:Ljava/lang/Exception;

    if-nez v1, :cond_0

    const/4 v2, 0x1

    :cond_0
    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final f(Ljava/util/concurrent/Executor;Ljom;)V
    .locals 3

    iget-object v0, p0, Ljox;->f:Lmob;

    new-instance v1, Ljol;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Ljol;-><init>(Ljava/util/concurrent/Executor;Ljom;I)V

    invoke-virtual {v0, v1}, Lmob;->d(Ljou;)V

    invoke-virtual {p0}, Ljox;->m()V

    return-void
.end method

.method public final g(Ljon;)V
    .locals 1

    sget-object v0, Ljow;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Ljot;->h(Ljava/util/concurrent/Executor;Ljon;)V

    return-void
.end method

.method public final h(Ljava/util/concurrent/Executor;Ljon;)V
    .locals 3

    iget-object v0, p0, Ljox;->f:Lmob;

    new-instance v1, Ljol;

    const/4 v2, 0x2

    invoke-direct {v1, p1, p2, v2}, Ljol;-><init>(Ljava/util/concurrent/Executor;Ljon;I)V

    invoke-virtual {v0, v1}, Lmob;->d(Ljou;)V

    invoke-virtual {p0}, Ljox;->m()V

    return-void
.end method

.method public final i(Ljoo;)V
    .locals 1

    sget-object v0, Ljow;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Ljox;->j(Ljava/util/concurrent/Executor;Ljoo;)V

    return-void
.end method

.method public final j(Ljava/util/concurrent/Executor;Ljoo;)V
    .locals 3

    iget-object v0, p0, Ljox;->f:Lmob;

    new-instance v1, Ljol;

    const/4 v2, 0x3

    invoke-direct {v1, p1, p2, v2}, Ljol;-><init>(Ljava/util/concurrent/Executor;Ljoo;I)V

    invoke-virtual {v0, v1}, Lmob;->d(Ljou;)V

    invoke-virtual {p0}, Ljox;->m()V

    return-void
.end method

.method public final k(Ljava/util/concurrent/Executor;Ljop;)V
    .locals 3

    iget-object v0, p0, Ljox;->f:Lmob;

    new-instance v1, Ljol;

    const/4 v2, 0x4

    invoke-direct {v1, p1, p2, v2}, Ljol;-><init>(Ljava/util/concurrent/Executor;Ljop;I)V

    invoke-virtual {v0, v1}, Lmob;->d(Ljou;)V

    invoke-virtual {p0}, Ljox;->m()V

    return-void
.end method

.method public final l(Ljop;)V
    .locals 1

    sget-object v0, Ljow;->a:Ljava/util/concurrent/Executor;

    invoke-virtual {p0, v0, p1}, Ljox;->k(Ljava/util/concurrent/Executor;Ljop;)V

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Ljox;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ljox;->b:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ljox;->f:Lmob;

    invoke-virtual {v0, p0}, Lmob;->e(Ljot;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public final n(Ljava/lang/Exception;)V
    .locals 2

    const-string v0, "Exception must not be null"

    invoke-static {p1, v0}, Ljhp;->ac(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Ljox;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Ljox;->q()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljox;->b:Z

    iput-object p1, p0, Ljox;->e:Ljava/lang/Exception;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ljox;->f:Lmob;

    invoke-virtual {p1, p0}, Lmob;->e(Ljot;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final o(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Ljox;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Ljox;->q()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Ljox;->b:Z

    iput-object p1, p0, Ljox;->d:Ljava/lang/Object;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Ljox;->f:Lmob;

    invoke-virtual {p1, p0}, Lmob;->e(Ljot;)V

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public final p()V
    .locals 2

    iget-object v0, p0, Ljox;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Ljox;->b:Z

    if-eqz v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Ljox;->b:Z

    iput-boolean v1, p0, Ljox;->c:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Ljox;->f:Lmob;

    invoke-virtual {v0, p0}, Lmob;->e(Ljot;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
