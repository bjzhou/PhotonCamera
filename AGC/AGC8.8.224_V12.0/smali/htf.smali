.class Lhtf;
.super Lhtd;


# instance fields
.field final synthetic a:Lhtg;

.field private b:Ljuf;


# direct methods
.method public constructor <init>(Lhtg;)V
    .locals 0

    iput-object p1, p0, Lhtf;->a:Lhtg;

    invoke-direct {p0}, Lhtd;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public final f()V
    .locals 4

    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iput-object v0, p0, Lhtf;->b:Ljuf;

    iget-object v0, p0, Lhtf;->a:Lhtg;

    iget-object v0, v0, Lhtg;->h:Ldqx;

    invoke-virtual {v0}, Ldqx;->f()V

    iget-object v0, p0, Lhtf;->a:Lhtg;

    iget-object v0, v0, Lhtg;->i:Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lhtf;->a:Lhtg;

    iget-object v0, v0, Lhtg;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhtf;->a:Lhtg;

    iget-object v0, v0, Lhtg;->c:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lire;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lire;->d(ZZ)V

    :cond_0
    iget-object v0, p0, Lhtf;->a:Lhtg;

    iget-object v0, v0, Lhtg;->d:Lfuz;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Lklw;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lhtf;->a:Lhtg;

    iget-object v1, v0, Lhtg;->b:Ldol;

    iget-object v0, v0, Lhtg;->d:Lfuz;

    invoke-virtual {v0}, Lklw;->e()I

    move-result v0

    iget-object v2, p0, Lhtf;->a:Lhtg;

    iget-object v2, v2, Lhtg;->d:Lfuz;

    invoke-virtual {v2}, Lklw;->d()I

    move-result v2

    iget-object v3, p0, Lhtf;->a:Lhtg;

    iget-object v3, v3, Lhtg;->d:Lfuz;

    invoke-virtual {v3}, Lklw;->a()F

    move-result v3

    invoke-interface {v1, v0, v2, v3}, Ldol;->g(IIF)V

    :cond_1
    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lhtf;->a:Lhtg;

    iget-object v0, v0, Lhtg;->b:Ldol;

    invoke-interface {v0}, Ldol;->d()V

    iget-object v0, p0, Lhtf;->b:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    iget-object v0, p0, Lhtf;->a:Lhtg;

    const/4 v1, 0x0

    iput-object v1, v0, Lhtg;->d:Lfuz;

    return-void
.end method
