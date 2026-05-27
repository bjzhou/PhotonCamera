.class public final Lfdm;
.super Lfdu;

# interfaces
.implements Lhiv;


# instance fields
.field public final a:Lhiu;

.field public final b:Lhiw;

.field public final c:Lhiw;

.field public final d:Lhiw;

.field public final e:Lhiw;

.field public final f:Lhiw;

.field public final g:Lhiw;


# direct methods
.method public constructor <init>(Liff;Liec;Lgeh;Libj;Lcom/google/android/apps/camera/bottombar/BottomBarController;Lgft;Lebl;Litm;Ljvs;Lfdc;Lmqp;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lfdu;-><init>(Liff;Liec;Lgeh;Libj;Lcom/google/android/apps/camera/bottombar/BottomBarController;Lgft;Lebl;Litm;Ljvs;Lfdc;Lmqp;)V

    new-instance p1, Lfdg;

    invoke-direct {p1, p0}, Lfdg;-><init>(Lfdm;)V

    new-instance p2, Lhiw;

    const/4 p3, 0x0

    new-array p4, p3, [Lhis;

    invoke-direct {p2, p1, p4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p2, p0, Lfdm;->b:Lhiw;

    new-instance p1, Lfdh;

    invoke-direct {p1, p0}, Lfdh;-><init>(Lfdm;)V

    new-instance p2, Lhiw;

    new-array p4, p3, [Lhis;

    invoke-direct {p2, p1, p4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p2, p0, Lfdm;->c:Lhiw;

    new-instance p1, Lfdi;

    invoke-direct {p1, p0}, Lfdi;-><init>(Lfdm;)V

    new-instance p2, Lhiw;

    new-array p4, p3, [Lhis;

    invoke-direct {p2, p1, p4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p2, p0, Lfdm;->d:Lhiw;

    new-instance p1, Lfdj;

    invoke-direct {p1, p0}, Lfdj;-><init>(Lfdm;)V

    new-instance p2, Lhiw;

    new-array p4, p3, [Lhis;

    invoke-direct {p2, p1, p4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p2, p0, Lfdm;->e:Lhiw;

    new-instance p1, Lfdk;

    invoke-direct {p1, p0}, Lfdk;-><init>(Lfdm;)V

    new-instance p4, Lhiw;

    new-array p5, p3, [Lhis;

    invoke-direct {p4, p1, p5}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p4, p0, Lfdm;->f:Lhiw;

    new-instance p1, Lfdl;

    invoke-direct {p1, p0}, Lfdl;-><init>(Lfdm;)V

    new-instance p4, Lhiw;

    new-array p5, p3, [Lhis;

    invoke-direct {p4, p1, p5}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p4, p0, Lfdm;->g:Lhiw;

    new-instance p1, Lhiu;

    invoke-direct {p1, p2, p3}, Lhiu;-><init>(Lhiw;Z)V

    iput-object p1, p0, Lfdm;->a:Lhiu;

    invoke-virtual {p1}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lfdm;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfdm;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lfdn;

    invoke-virtual {v0}, Lfdn;->a()V

    return-void
.end method

.method public final bV()V
    .locals 1

    iget-object v0, p0, Lfdm;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfdm;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lfdn;

    invoke-virtual {v0}, Lfdn;->bV()V

    return-void
.end method

.method public final bW()V
    .locals 1

    iget-object v0, p0, Lfdm;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfdm;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lfdn;

    invoke-virtual {v0}, Lfdn;->bW()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lfdm;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfdm;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lfdn;

    invoke-virtual {v0}, Lfdn;->c()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lfdm;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfdm;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lfdn;

    invoke-virtual {v0}, Lfdn;->d()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lfdm;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Lfdm;->b:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lfdm;->c:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lfdm;->d:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lfdm;->e:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lfdm;->f:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lfdm;->g:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lfdm;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lfdm;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->d()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Ljcb;->l(Lhiv;)V

    return-void
.end method

.method public final i()V
    .locals 1

    iget-object v0, p0, Lfdm;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfdm;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lfdn;

    invoke-virtual {v0}, Lfdn;->i()V

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lfdm;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfdm;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lfdn;

    invoke-virtual {v0}, Lfdn;->j()V

    return-void
.end method
