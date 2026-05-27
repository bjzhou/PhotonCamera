.class final Lcpr;
.super Ljava/lang/Object;

# interfaces
.implements Lnoj;


# instance fields
.field final synthetic a:Ljyc;

.field final synthetic b:Lnph;

.field final synthetic c:Lcpu;


# direct methods
.method public constructor <init>(Lcpu;Ljyc;Lnph;)V
    .locals 0

    iput-object p1, p0, Lcpr;->c:Lcpu;

    iput-object p2, p0, Lcpr;->a:Ljyc;

    iput-object p3, p0, Lcpr;->b:Lnph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Throwable;)V
    .locals 2

    iget-object v0, p0, Lcpr;->c:Lcpu;

    sget-object v1, Lcpt;->f:Lcpt;

    invoke-virtual {v0, v1}, Lcpu;->j(Lcpt;)V

    iget-object v0, p0, Lcpr;->b:Lnph;

    invoke-virtual {v0, p1}, Lnph;->a(Ljava/lang/Throwable;)Z

    iget-object p1, p0, Lcpr;->c:Lcpu;

    iget-object p1, p1, Lcpu;->I:Lkbf;

    invoke-interface {p1}, Lkbf;->a()V

    return-void
.end method

.method public final synthetic b(Ljava/lang/Object;)V
    .locals 4

    check-cast p1, Ljava/lang/Void;

    iget-object p1, p0, Lcpr;->c:Lcpu;

    iget-object p1, p1, Lcpu;->f:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iget-object v0, p0, Lcpr;->c:Lcpu;

    iget-object v0, v0, Lcpu;->t:Lhkn;

    sget-object v1, Lhkm;->d:Lhkm;

    invoke-virtual {v0, v1}, Lhkh;->h(Ljava/lang/Enum;)V

    iget-object v0, p0, Lcpr;->c:Lcpu;

    iget-object v0, v0, Lcpu;->F:Lcpt;

    sget-object v1, Lcpt;->f:Lcpt;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcpr;->a:Ljyc;

    invoke-interface {v0}, Ljyc;->i()Lnou;

    monitor-exit p1

    return-void

    :cond_0
    iget-object v0, p0, Lcpr;->c:Lcpu;

    iget-object v0, v0, Lcpu;->m:Lcrz;

    sget-object v1, Lcrx;->e:Lcrx;

    invoke-virtual {v0, v1}, Lcrz;->a(Lcrx;)V

    iget-object v0, p0, Lcpr;->c:Lcpu;

    iget-object v1, v0, Lcpu;->g:Lcty;

    invoke-virtual {v0}, Lcpu;->b()Lcsu;

    move-result-object v0

    iget v0, v0, Lcsu;->b:I

    invoke-virtual {v1, v0}, Lcty;->b(I)V

    iget-object v0, p0, Lcpr;->c:Lcpu;

    iget-object v1, v0, Lcpu;->g:Lcty;

    iget-object v0, v0, Lcpu;->l:Lcsc;

    iget-object v0, v0, Lcsc;->c:Ljws;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iput-object v0, v1, Lcty;->e:Lmqp;

    iget-object v0, p0, Lcpr;->c:Lcpu;

    iget-object v0, v0, Lcpu;->g:Lcty;

    invoke-virtual {v0}, Lcty;->e()V

    iget-object v0, p0, Lcpr;->c:Lcpu;

    iget-object v1, v0, Lcpu;->h:Lcqv;

    invoke-interface {v1}, Lcqv;->l()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcpu;->p:Lcwj;

    iget-object v2, v0, Lcpu;->l:Lcsc;

    iget-object v2, v2, Lcsc;->x:Lklv;

    iget-object v3, v0, Lcpu;->k:Lgft;

    invoke-interface {v3}, Lgft;->f()Lkab;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcwj;->b(Lklv;Lkab;)Lnou;

    move-result-object v1

    new-instance v2, Lcmc;

    const/4 v3, 0x6

    invoke-direct {v2, v0, v3}, Lcmc;-><init>(Lcpu;I)V

    sget-object v0, Lnnv;->a:Lnnv;

    invoke-static {v1, v2, v0}, Lnsy;->L(Lnou;Lnoj;Ljava/util/concurrent/Executor;)V

    :cond_1
    iget-object v0, p0, Lcpr;->c:Lcpu;

    iget-object v0, v0, Lcpu;->s:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lckf;

    invoke-interface {v0}, Lckf;->b()V

    :cond_2
    iget-object v0, p0, Lcpr;->c:Lcpu;

    iget-object v1, v0, Lcpu;->l:Lcsc;

    iget-boolean v1, v1, Lcsc;->B:Z

    if-eqz v1, :cond_3

    iget-object v0, v0, Lcpu;->w:Lczf;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lczf;->c(Z)V

    iget-object v0, p0, Lcpr;->c:Lcpu;

    iget-object v0, v0, Lcpu;->v:Lczd;

    invoke-virtual {v0}, Lczd;->b()V

    :cond_3
    iget-object v0, p0, Lcpr;->c:Lcpu;

    sget-object v1, Lcpt;->c:Lcpt;

    invoke-virtual {v0, v1}, Lcpu;->j(Lcpt;)V

    iget-object v0, p0, Lcpr;->b:Lnph;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnph;->e(Ljava/lang/Object;)Z

    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
