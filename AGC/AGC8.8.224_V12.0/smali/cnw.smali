.class final Lcnw;
.super Lkfg;


# instance fields
.field final synthetic a:Lkeb;

.field final synthetic b:Lkfj;

.field final synthetic c:Lcny;


# direct methods
.method public constructor <init>(Lcny;Lkeb;Lkfj;)V
    .locals 0

    iput-object p1, p0, Lcnw;->c:Lcny;

    iput-object p2, p0, Lcnw;->a:Lkeb;

    iput-object p3, p0, Lcnw;->b:Lkfj;

    invoke-direct {p0}, Lkfg;-><init>()V

    return-void
.end method


# virtual methods
.method public final bj()V
    .locals 1

    iget-object v0, p0, Lcnw;->a:Lkeb;

    invoke-interface {v0}, Lkeb;->close()V

    return-void
.end method

.method public final bk()V
    .locals 6

    :try_start_0
    iget-object v0, p0, Lcnw;->c:Lcny;

    iget-object v1, p0, Lcnw;->a:Lkeb;

    iget-object v2, p0, Lcnw;->b:Lkfj;

    iget-object v3, v0, Lcny;->g:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    iget-object v4, v0, Lcny;->m:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->size()I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_0

    iget-object v4, v0, Lcny;->m:Ljava/util/Deque;

    invoke-interface {v4}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcnx;

    iget-object v4, v4, Lcnx;->a:Lkeb;

    invoke-interface {v4}, Lkeb;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lcny;->m:Ljava/util/Deque;

    new-instance v4, Lcnx;

    invoke-direct {v4, v1, v2}, Lcnx;-><init>(Lkeb;Lkfj;)V

    invoke-interface {v0, v4}, Ljava/util/Deque;->addLast(Ljava/lang/Object;)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    sget-object v1, Lcny;->e:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Frame is not ready."

    const/16 v3, 0x160

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-object v0, p0, Lcnw;->a:Lkeb;

    invoke-interface {v0}, Lkeb;->close()V

    return-void
.end method
