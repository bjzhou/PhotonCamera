.class public final Lcyh;
.super Lcye;

# interfaces
.implements Lhiv;


# instance fields
.field public final a:Ldol;

.field public b:Lfuz;

.field public final c:Lhiu;

.field public final d:Lhiw;

.field public final e:Lhiw;

.field public final f:Ldqx;


# direct methods
.method public constructor <init>(Ldol;Ldqx;[B[B)V
    .locals 1

    invoke-direct {p0}, Lcye;-><init>()V

    iput-object p1, p0, Lcyh;->a:Ldol;

    iput-object p2, p0, Lcyh;->f:Ldqx;

    new-instance p1, Lcxm;

    invoke-direct {p1, p0}, Lcxm;-><init>(Lcyh;)V

    new-instance p2, Lhiw;

    const/4 p3, 0x0

    new-array p4, p3, [Lhis;

    invoke-direct {p2, p1, p4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p2, p0, Lcyh;->d:Lhiw;

    new-instance p1, Lcxn;

    invoke-direct {p1, p0}, Lcxn;-><init>(Lcyh;)V

    new-instance p4, Lhiw;

    new-array v0, p3, [Lhis;

    invoke-direct {p4, p1, v0}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p4, p0, Lcyh;->e:Lhiw;

    new-instance p1, Lhiu;

    invoke-direct {p1, p2, p3}, Lhiu;-><init>(Lhiw;Z)V

    iput-object p1, p0, Lcyh;->c:Lhiu;

    invoke-virtual {p1}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final a(Lfuz;)V
    .locals 1

    iget-object v0, p0, Lcyh;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcyh;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lcye;

    invoke-virtual {v0, p1}, Lcye;->a(Lfuz;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcyh;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcyh;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lcye;

    invoke-virtual {v0}, Lcye;->b()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcyh;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Lcyh;->d:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lcyh;->e:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lcyh;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lcyh;->c:Lhiu;

    invoke-virtual {v0}, Lhiu;->d()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Ljcb;->l(Lhiv;)V

    return-void
.end method
