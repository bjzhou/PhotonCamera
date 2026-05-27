.class public final Lhnu;
.super Lhpg;

# interfaces
.implements Lhiv;


# instance fields
.field public final a:Lhiu;

.field public final b:Lhiw;

.field public final c:Lhiw;

.field public final d:Lhiw;

.field public final e:Lhiw;

.field public final f:Lhiw;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/bottombar/BottomBarController;Lhwu;Libj;Lgeh;Liff;Lhpq;Lhoz;Leoa;Litm;Lmqp;Ldhi;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lhpg;-><init>(Lcom/google/android/apps/camera/bottombar/BottomBarController;Lhwu;Libj;Lgeh;Liff;Lhpq;Lhoz;Leoa;Litm;Lmqp;Ldhi;)V

    new-instance p1, Lhnp;

    invoke-direct {p1, p0}, Lhnp;-><init>(Lhnu;)V

    new-instance p2, Lhiw;

    const/4 p3, 0x0

    new-array p4, p3, [Lhis;

    invoke-direct {p2, p1, p4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p2, p0, Lhnu;->b:Lhiw;

    new-instance p1, Lhnq;

    invoke-direct {p1, p0}, Lhnq;-><init>(Lhnu;)V

    new-instance p2, Lhiw;

    new-array p4, p3, [Lhis;

    invoke-direct {p2, p1, p4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p2, p0, Lhnu;->c:Lhiw;

    new-instance p1, Lhnr;

    invoke-direct {p1, p0}, Lhnr;-><init>(Lhnu;)V

    new-instance p2, Lhiw;

    new-array p4, p3, [Lhis;

    invoke-direct {p2, p1, p4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p2, p0, Lhnu;->d:Lhiw;

    new-instance p1, Lhns;

    invoke-direct {p1, p0}, Lhns;-><init>(Lhnu;)V

    new-instance p2, Lhiw;

    new-array p4, p3, [Lhis;

    invoke-direct {p2, p1, p4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p2, p0, Lhnu;->e:Lhiw;

    new-instance p1, Lhnt;

    invoke-direct {p1, p0}, Lhnt;-><init>(Lhnu;)V

    new-instance p4, Lhiw;

    new-array p5, p3, [Lhis;

    invoke-direct {p4, p1, p5}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p4, p0, Lhnu;->f:Lhiw;

    new-instance p1, Lhiu;

    invoke-direct {p1, p2, p3}, Lhiu;-><init>(Lhiw;Z)V

    iput-object p1, p0, Lhnu;->a:Lhiu;

    invoke-virtual {p1}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lhnu;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhnu;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhou;

    invoke-interface {v0}, Lhou;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lhnu;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhnu;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhou;

    invoke-interface {v0}, Lhou;->b()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lhnu;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhnu;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhou;

    invoke-interface {v0}, Lhou;->c()V

    return-void
.end method

.method public final ck()V
    .locals 1

    iget-object v0, p0, Lhnu;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhnu;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhou;

    invoke-interface {v0}, Lhou;->ck()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lhnu;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhnu;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhou;

    invoke-interface {v0}, Lhou;->d()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lhnu;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Lhnu;->b:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lhnu;->c:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lhnu;->d:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lhnu;->e:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lhnu;->f:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lhpg;->l:Lhpq;

    iget-object v1, v0, Lhpq;->b:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    iget-object v0, v0, Lhpq;->a:Ljwb;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {v0, v2}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v0, p0, Lhpg;->l:Lhpq;

    iget-object v0, v0, Lhpq;->m:Lczq;

    invoke-interface {v0, v1}, Lczq;->h(Z)V

    iget-object v0, p0, Lhpg;->g:Lcom/google/android/apps/camera/bottombar/BottomBarController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/apps/camera/bottombar/BottomBarController;->setClickable(Z)V

    iget-object v0, p0, Lhpg;->i:Libj;

    invoke-interface {v0, v1}, Libj;->l(Z)V

    iget-object v0, p0, Lhpg;->n:Leoa;

    invoke-virtual {v0, v1}, Leoa;->g(I)V

    invoke-static {}, Lipj;->d()V

    iget-object v0, p0, Lhnu;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lhnu;->a:Lhiu;

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

    iget-object v0, p0, Lhnu;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhnu;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhou;

    invoke-interface {v0}, Lhou;->i()V

    return-void
.end method
