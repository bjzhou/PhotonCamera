.class public final Lhtg;
.super Lhtd;

# interfaces
.implements Lhiv;


# instance fields
.field public final a:Ljuh;

.field public final b:Ldol;

.field public final c:Lmqp;

.field public d:Lfuz;

.field public final e:Lhiu;

.field public final f:Lhiw;

.field public final g:Lhiw;

.field public final h:Ldqx;

.field public final i:Lbkb;


# direct methods
.method public constructor <init>(Ljuh;Ldqx;Lbkb;Ldol;Lmqp;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Lhtd;-><init>()V

    const/4 p6, 0x0

    iput-object p6, p0, Lhtg;->d:Lfuz;

    iput-object p1, p0, Lhtg;->a:Ljuh;

    iput-object p2, p0, Lhtg;->h:Ldqx;

    iput-object p3, p0, Lhtg;->i:Lbkb;

    iput-object p4, p0, Lhtg;->b:Ldol;

    iput-object p5, p0, Lhtg;->c:Lmqp;

    new-instance p1, Lhui;

    invoke-direct {p1, p0}, Lhui;-><init>(Lhtg;)V

    new-instance p2, Lhiw;

    const/4 p3, 0x0

    new-array p4, p3, [Lhis;

    invoke-direct {p2, p1, p4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p2, p0, Lhtg;->f:Lhiw;

    new-instance p1, Lhuj;

    invoke-direct {p1, p0}, Lhuj;-><init>(Lhtg;)V

    new-instance p4, Lhiw;

    new-array p5, p3, [Lhis;

    invoke-direct {p4, p1, p5}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p4, p0, Lhtg;->g:Lhiw;

    new-instance p1, Lhiu;

    invoke-direct {p1, p2, p3}, Lhiu;-><init>(Lhiw;Z)V

    iput-object p1, p0, Lhtg;->e:Lhiu;

    invoke-virtual {p1}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lhtg;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhtg;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhtd;

    invoke-virtual {v0}, Lhtd;->a()V

    return-void
.end method

.method public final b(Lfuz;Ljuf;)V
    .locals 1

    iget-object v0, p0, Lhtg;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhtg;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhtd;

    invoke-virtual {v0, p1, p2}, Lhtd;->b(Lfuz;Ljuf;)V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lhtg;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Lhtg;->f:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lhtg;->g:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lhtg;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lhtg;->e:Lhiu;

    invoke-virtual {v0}, Lhiu;->d()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Ljcb;->l(Lhiv;)V

    return-void
.end method
