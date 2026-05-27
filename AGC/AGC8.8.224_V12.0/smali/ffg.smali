.class final Lffg;
.super Ljava/lang/Object;

# interfaces
.implements Lfkm;


# instance fields
.field final synthetic a:Lfss;

.field final synthetic b:Lfkm;

.field final synthetic c:Lffo;

.field final synthetic d:Lkxv;

.field final synthetic e:Z

.field final synthetic f:Lffp;

.field final synthetic g:Llij;


# direct methods
.method public constructor <init>(Lffp;Lfss;Lfkm;Llij;Lffo;Lkxv;Z[B[B[B)V
    .locals 0

    iput-object p1, p0, Lffg;->f:Lffp;

    iput-object p2, p0, Lffg;->a:Lfss;

    iput-object p3, p0, Lffg;->b:Lfkm;

    iput-object p4, p0, Lffg;->g:Llij;

    iput-object p5, p0, Lffg;->c:Lffo;

    iput-object p6, p0, Lffg;->d:Lkxv;

    iput-boolean p7, p0, Lffg;->e:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lfkd;)V
    .locals 2

    iget-object v0, p0, Lffg;->a:Lfss;

    invoke-interface {v0}, Lfss;->a()V

    iget-object v0, p0, Lffg;->b:Lfkm;

    invoke-interface {v0, p1}, Lfkm;->a(Lfkd;)V

    iget-object v0, p0, Lffg;->d:Lkxv;

    invoke-interface {v0}, Lkxv;->c()V

    iget-object v0, p0, Lffg;->g:Llij;

    invoke-virtual {v0}, Llij;->g()V

    iget-object v0, p0, Lffg;->c:Lffo;

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, v0, Lffo;->s:Lmqp;

    sget-object p1, Lffp;->a:Lnak;

    iget-boolean p1, p0, Lffg;->e:Z

    if-eqz p1, :cond_1

    iget-object p1, p0, Lffg;->c:Lffo;

    iget-object p1, p1, Lffo;->p:Lmqp;

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lffg;->f:Lffp;

    iget-object p1, p1, Lffp;->x:Lgkr;

    iget-object v0, p0, Lffg;->c:Lffo;

    iget-object v0, v0, Lffo;->p:Lmqp;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbkb;

    iget-object v0, v0, Lbkb;->a:Ljava/lang/Object;

    invoke-virtual {p1, v0}, Lgkr;->b(Lfmd;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lffp;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    const-string v0, "Didn\'t take second shot since UI resources are missing"

    const/16 v1, 0x87b

    invoke-static {p1, v0, v1}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lffg;->c:Lffo;

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p1, Lffo;->p:Lmqp;

    return-void
.end method

.method public final b(JLfkq;)V
    .locals 4

    iget-object v0, p0, Lffg;->a:Lfss;

    invoke-interface {v0, p1, p2}, Lfss;->b(J)V

    iget-object v0, p0, Lffg;->b:Lfkm;

    invoke-interface {v0, p1, p2, p3}, Lfkm;->b(JLfkq;)V

    iget-object p1, p0, Lffg;->g:Llij;

    invoke-virtual {p1}, Llij;->g()V

    iget-object p1, p0, Lffg;->c:Lffo;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {p2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p2

    iput-object p2, p1, Lffo;->q:Lmqp;

    iget-object p1, p0, Lffg;->c:Lffo;

    iget-boolean p2, p1, Lffo;->o:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lffg;->f:Lffp;

    const/4 p3, 0x1

    invoke-static {p3}, Lmoz;->p(Z)V

    iget-object p3, p2, Lffp;->o:Landroid/os/Handler;

    new-instance v0, Levy;

    const/16 v1, 0x9

    invoke-direct {v0, p2, p1, v1}, Levy;-><init>(Lffp;Lffo;I)V

    iget-object v1, p1, Lffo;->a:Lgxy;

    const-wide/16 v2, 0x3a98

    invoke-virtual {p3, v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    iget-object p3, p1, Lffo;->g:Lfst;

    iget-object p1, p1, Lffo;->a:Lgxy;

    iget-object p2, p2, Lffp;->o:Landroid/os/Handler;

    invoke-static {p3, p1, p2}, Lffp;->d(Lfst;Lgxy;Landroid/os/Handler;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lmpx;->a:Lmpx;

    iput-object p2, p1, Lffo;->p:Lmqp;

    :goto_0
    sget-object p1, Lffp;->a:Lnak;

    return-void
.end method
