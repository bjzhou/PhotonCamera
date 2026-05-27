.class final Lgqg;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final a:Lgqh;

.field private final b:Lgra;

.field private final c:Lkbc;

.field private final d:Lgxb;


# direct methods
.method public constructor <init>(Lgqh;Lgxb;Lgra;Lkbc;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgqg;->a:Lgqh;

    iput-object p2, p0, Lgqg;->d:Lgxb;

    iput-object p3, p0, Lgqg;->b:Lgra;

    iput-object p4, p0, Lgqg;->c:Lkbc;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    iget-object v0, p0, Lgqg;->c:Lkbc;

    const-string v1, "TaskDoneWrapper#run"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lgqg;->b:Lgra;

    invoke-virtual {v0}, Lgra;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    iget-object v0, p0, Lgqg;->a:Lgqh;

    iget-object v1, p0, Lgqg;->b:Lgra;

    invoke-virtual {v0, v1}, Lgqh;->a(Lgra;)V

    iget-object v0, p0, Lgqg;->d:Lgxb;

    iget-object v0, v0, Lgxb;->b:Ljava/lang/Object;

    iget-object v1, p0, Lgqg;->a:Lgqh;

    iget-object v1, v1, Lgqh;->f:Ljava/util/Map;

    monitor-enter v1

    :try_start_1
    move-object v2, v0

    check-cast v2, Lgqo;

    iget-object v2, v2, Lgqo;->b:Lgpn;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lgpn;->a(I)I

    move-result v2

    if-nez v2, :cond_3

    move-object v2, v0

    check-cast v2, Lgqo;

    iget-object v2, v2, Lgqo;->b:Lgpn;

    invoke-virtual {v2}, Lgpn;->d()V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v1, p0, Lgqg;->d:Lgxb;

    iget-object v1, v1, Lgxb;->a:Ljava/lang/Object;

    iget-object v2, p0, Lgqg;->a:Lgqh;

    iget-object v3, v2, Lgqh;->e:Ljava/util/Map;

    monitor-enter v3

    :try_start_2
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkpb;

    iget-object v5, v2, Lgqh;->e:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgqf;

    if-eqz v5, :cond_0

    iget-object v5, v2, Lgqh;->g:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, v2, Lgqh;->g:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    check-cast v0, Lgqo;

    iget-object v0, v0, Lgqo;->c:Ljava/lang/Runnable;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lgqg;->c:Lkbc;

    const-string v2, "TaskDoneWrapper#done#run"

    invoke-interface {v1, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v1, p0, Lgqg;->b:Lgra;

    iget-object v1, v1, Lgra;->d:Ljava/util/concurrent/Executor;

    if-nez v1, :cond_2

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_1

    :cond_2
    invoke-interface {v1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_1
    iget-object v0, p0, Lgqg;->c:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :cond_3
    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_4
    :goto_2
    iget-object v0, p0, Lgqg;->c:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lgqg;->a:Lgqh;

    iget-object v2, p0, Lgqg;->b:Lgra;

    invoke-virtual {v1, v2}, Lgqh;->a(Lgra;)V

    goto :goto_4

    :goto_3
    throw v0

    :goto_4
    goto :goto_3
.end method
