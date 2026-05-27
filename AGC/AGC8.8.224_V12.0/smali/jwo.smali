.class public final Ljwo;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljyc;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/util/concurrent/ConcurrentLinkedQueue;

.field public final d:Ljava/lang/Object;

.field public e:Ljwn;

.field public f:Ljxy;


# direct methods
.method public constructor <init>(Ljyc;Ljava/util/concurrent/Executor;Lmqp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Ljwo;->d:Ljava/lang/Object;

    new-instance v0, Ljwk;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljwk;-><init>(Ljwo;I)V

    iput-object v0, p0, Ljwo;->f:Ljxy;

    iput-object p1, p0, Ljwo;->a:Ljyc;

    iput-object p2, p0, Ljwo;->b:Ljava/util/concurrent/Executor;

    new-instance p1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object p1, p0, Ljwo;->c:Ljava/util/concurrent/ConcurrentLinkedQueue;

    sget-object p1, Ljwn;->a:Ljwn;

    iput-object p1, p0, Ljwo;->e:Ljwn;

    invoke-virtual {p3}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljxy;

    iput-object p1, p0, Ljwo;->f:Ljxy;

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 5

    iget-object v0, p0, Ljwo;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljwo;->e:Ljwn;

    sget-object v2, Ljwn;->b:Ljwn;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "%s is expected but we get %s"

    sget-object v3, Ljwn;->b:Ljwn;

    iget-object v4, p0, Ljwo;->e:Ljwn;

    invoke-static {v1, v2, v3, v4}, Lmoz;->t(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Ljwn;->c:Ljwn;

    iput-object v1, p0, Ljwo;->e:Ljwn;

    iget-object v1, p0, Ljwo;->a:Ljyc;

    invoke-interface {v1}, Ljyc;->g()Lnou;

    move-result-object v1

    new-instance v2, Ldje;

    const/16 v3, 0x12

    invoke-direct {v2, p0, v3}, Ldje;-><init>(Ljwo;I)V

    iget-object v3, p0, Ljwo;->b:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, v3}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b()V
    .locals 6

    iget-object v0, p0, Ljwo;->d:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljwo;->e:Ljwn;

    sget-object v2, Ljwn;->b:Ljwn;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Ljwo;->e:Ljwn;

    sget-object v2, Ljwn;->c:Ljwn;

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    :goto_0
    const-string v1, "%s or %s is expected but we get %s"

    sget-object v2, Ljwn;->b:Ljwn;

    sget-object v4, Ljwn;->c:Ljwn;

    iget-object v5, p0, Ljwo;->e:Ljwn;

    invoke-static {v3, v1, v2, v4, v5}, Lmoz;->u(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Ljwn;->d:Ljwn;

    iput-object v1, p0, Ljwo;->e:Ljwn;

    iget-object v1, p0, Ljwo;->a:Ljyc;

    invoke-interface {v1}, Ljyc;->k()Lnou;

    move-result-object v1

    new-instance v2, Ljvv;

    const/4 v3, 0x3

    invoke-direct {v2, p0, v3}, Ljvv;-><init>(Ljwo;I)V

    iget-object v3, p0, Ljwo;->b:Ljava/util/concurrent/Executor;

    invoke-static {v1, v2, v3}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
