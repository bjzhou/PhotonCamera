.class final Leuw;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field final synthetic a:Leuy;


# direct methods
.method public constructor <init>(Leuy;)V
    .locals 0

    iput-object p1, p0, Leuw;->a:Leuy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 3

    sget-object v0, Leuy;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v1, "Error capturing image"

    const/16 v2, 0x7b4

    invoke-static {v0, v1, v2, p1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    iget-object v0, p0, Leuw;->a:Leuy;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Leuw;->a:Leuy;

    iget-object v1, v1, Leuy;->o:Lnph;

    invoke-virtual {v1, p1}, Lnph;->a(Ljava/lang/Throwable;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final b(Ljava/lang/Object;)V
    .locals 3

    iget-object p1, p0, Leuw;->a:Leuy;

    iget-object p1, p1, Leuy;->i:Lhvt;

    invoke-virtual {p1}, Lhvq;->a()V

    iget-object p1, p0, Leuw;->a:Leuy;

    iget-object v0, p1, Leuy;->p:Leuo;

    iget-object p1, p1, Leuy;->h:Lgft;

    invoke-interface {p1}, Lgft;->c()Lkab;

    move-result-object p1

    invoke-virtual {p1}, Lkab;->a()I

    move-result p1

    iget-object v1, p0, Leuw;->a:Leuy;

    iget-object v1, v1, Leuy;->k:Ldbf;

    invoke-virtual {v1}, Ldbf;->j()Z

    move-result v1

    new-instance v2, Leun;

    invoke-direct {v2, v0, p1, v1}, Leun;-><init>(Leuo;IZ)V

    iget-object p1, v0, Leuo;->d:Ljava/util/concurrent/Executor;

    invoke-static {v2, p1}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    new-instance v1, Ldje;

    const/4 v2, 0x2

    invoke-direct {v1, v0, v2}, Ldje;-><init>(Leuo;I)V

    invoke-static {}, Ljvd;->l()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-static {p1, v1, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    iget-object p1, p0, Leuw;->a:Leuy;

    iget-object p1, p1, Leuy;->s:Lhdk;

    invoke-virtual {p1}, Lhdk;->g()V

    return-void
.end method
