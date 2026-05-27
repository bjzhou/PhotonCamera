.class public final Lfhm;
.super Ljava/lang/Object;


# instance fields
.field private final a:Lfgg;

.field private final b:Lmqp;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>(Lfgg;Lmqp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfhm;->c:Z

    iput-boolean v0, p0, Lfhm;->d:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lfhm;->e:Z

    iput-boolean v0, p0, Lfhm;->f:Z

    iput-object p1, p0, Lfhm;->a:Lfgg;

    iput-object p2, p0, Lfhm;->b:Lmqp;

    return-void
.end method

.method private final c()V
    .locals 4

    iget-boolean v0, p0, Lfhm;->e:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lfhm;->f:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    iget-boolean v3, p0, Lfhm;->d:Z

    if-ne v3, v0, :cond_3

    iget-boolean v3, p0, Lfhm;->c:Z

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_1
    iput-boolean v2, p0, Lfhm;->c:Z

    if-eqz v0, :cond_4

    iget-object v1, p0, Lfhm;->a:Lfgg;

    invoke-interface {v1}, Lfgg;->i()V

    iget-object v1, p0, Lfhm;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lfhm;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldwx;

    invoke-interface {v1, v2}, Ldwx;->a(Z)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lfhm;->a:Lfgg;

    invoke-interface {v2}, Lfgg;->i()V

    iget-object v2, p0, Lfhm;->b:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lfhm;->b:Lmqp;

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldwx;

    invoke-interface {v2, v1}, Ldwx;->a(Z)V

    :cond_5
    :goto_2
    iput-boolean v0, p0, Lfhm;->d:Z

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lfhm;->e:Z

    invoke-direct {p0}, Lfhm;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Z)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-boolean p1, p0, Lfhm;->f:Z

    invoke-direct {p0}, Lfhm;->c()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
