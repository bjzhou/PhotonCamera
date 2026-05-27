.class final Lcqm;
.super Ljava/lang/Object;

# interfaces
.implements Lccx;


# instance fields
.field final synthetic a:Lnph;

.field final synthetic b:Lcqo;


# direct methods
.method public constructor <init>(Lcqo;Lnph;)V
    .locals 0

    iput-object p1, p0, Lcqm;->b:Lcqo;

    iput-object p2, p0, Lcqm;->a:Lnph;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 1

    iget-object v0, p0, Lcqm;->a:Lnph;

    return-object v0
.end method

.method public final b()Lnou;
    .locals 1

    iget-object v0, p0, Lcqm;->b:Lcqo;

    iget-object v0, v0, Lcqo;->j:Lnph;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final c()Lnou;
    .locals 1

    iget-object v0, p0, Lcqm;->b:Lcqo;

    iget-object v0, v0, Lcqo;->i:Lnph;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final d()V
    .locals 2

    iget-object v0, p0, Lcqm;->b:Lcqo;

    iget-object v0, v0, Lcqo;->e:Lcrz;

    iget-object v0, v0, Lcrz;->d:Ljwb;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lcqm;->b:Lcqo;

    iget-object v0, v0, Lcqo;->f:Lken;

    invoke-static {}, Lbze;->m()Lkfh;

    move-result-object v1

    invoke-interface {v0, v1}, Lken;->k(Lkfh;)V

    return-void
.end method

.method public final e()V
    .locals 3

    iget-object v0, p0, Lcqm;->b:Lcqo;

    iget-object v0, v0, Lcqo;->e:Lcrz;

    iget-object v0, v0, Lcrz;->d:Ljwb;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lcqm;->b:Lcqo;

    iget-object v0, v0, Lcqo;->e:Lcrz;

    iget-object v0, v0, Lcrz;->e:Ljwb;

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lcqm;->b:Lcqo;

    iget-object v0, v0, Lcqo;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcqf;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lcqf;-><init>(Lcqm;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lcqm;->b:Lcqo;

    iget-object v0, v0, Lcqo;->e:Lcrz;

    iget-object v0, v0, Lcrz;->e:Ljwb;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lcqm;->b:Lcqo;

    iget-object v0, v0, Lcqo;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/Executor;

    new-instance v1, Lcqf;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcqf;-><init>(Lcqm;I)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final g()V
    .locals 3

    iget-object v0, p0, Lcqm;->b:Lcqo;

    iget-object v0, v0, Lcqo;->n:Ldqx;

    invoke-virtual {v0}, Ldqx;->f()V

    iget-object v0, p0, Lcqm;->b:Lcqo;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcqo;->g(Lcqo;ZZ)V

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lcqm;->b:Lcqo;

    iget-object v1, v0, Lcqo;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhrd;

    invoke-virtual {v0, v1}, Lcqo;->b(Lhrd;)V

    iget-object v0, p0, Lcqm;->b:Lcqo;

    invoke-virtual {v0}, Lcqo;->c()V

    iget-object v0, p0, Lcqm;->b:Lcqo;

    iget-object v0, v0, Lcqo;->n:Ldqx;

    invoke-virtual {v0}, Ldqx;->f()V

    iget-object v0, p0, Lcqm;->b:Lcqo;

    const/4 v1, 0x1

    invoke-static {v0, v1, v1}, Lcqo;->g(Lcqo;ZZ)V

    return-void
.end method

.method public final i()V
    .locals 3

    iget-object v0, p0, Lcqm;->b:Lcqo;

    iget-object v1, v0, Lcqo;->b:Lmqp;

    invoke-virtual {v1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhrd;

    invoke-virtual {v0, v1}, Lcqo;->b(Lhrd;)V

    iget-object v0, p0, Lcqm;->b:Lcqo;

    invoke-virtual {v0}, Lcqo;->c()V

    iget-object v0, p0, Lcqm;->b:Lcqo;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcqo;->g(Lcqo;ZZ)V

    return-void
.end method
