.class final Ldql;
.super Ldqe;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ldqe;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ldqm;Ldqm;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p2, p1, Ldqm;->next:Ldqm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop
.end method

.method public final b(Ldqm;Ljava/lang/Thread;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    iput-object p2, p1, Ldqm;->thread:Ljava/lang/Thread;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ldqn;Ldqi;Ldqi;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    monitor-enter p1

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p1, Ldqn;->listeners:Ldqi;

    nop

    nop

    nop

    nop

    nop

    if-ne p0, p2, :cond_0

    nop

    nop

    nop

    iput-object p3, p1, Ldqn;->listeners:Ldqi;

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    return p0

    nop

    nop

    :cond_0
    monitor-exit p1

    nop

    nop

    nop

    nop

    const/4 p0, 0x0

    nop

    nop

    return p0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit p1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Ldqn;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p1

    nop

    :try_start_0
    iget-object p0, p1, Ldqn;->value:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    if-ne p0, p2, :cond_0

    nop

    iput-object p3, p1, Ldqn;->value:Ljava/lang/Object;

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop

    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    return p0

    nop

    nop

    :cond_0
    monitor-exit p1

    nop

    const/4 p0, 0x0

    nop

    nop

    nop

    return p0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop
.end method

.method public final e(Ldqn;Ldqm;Ldqm;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    monitor-enter p1

    nop

    :try_start_0
    iget-object p0, p1, Ldqn;->waiters:Ldqm;

    nop

    nop

    nop

    if-ne p0, p2, :cond_0

    nop

    iput-object p3, p1, Ldqn;->waiters:Ldqm;

    nop

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop

    nop

    const/4 p0, 0x1

    nop

    nop

    nop

    return p0

    nop

    nop

    :cond_0
    monitor-exit p1

    nop

    nop

    nop

    const/4 p0, 0x0

    nop

    return p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit p1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop
.end method
