.class public final Leqn;
.super Leqt;

# interfaces
.implements Lhiv;


# instance fields
.field public final a:Lhiu;

.field public final b:Lhiw;

.field public final c:Lhiw;

.field public final d:Lhiw;

.field private final q:Lhiw;


# direct methods
.method public constructor <init>(Liff;Liec;Lgeh;Libj;Lcom/google/android/apps/camera/bottombar/BottomBarController;Litm;Ljvs;Lhxt;Lmqp;Lmqp;Lell;Lmqp;)V
    .locals 0

    invoke-direct/range {p0 .. p12}, Leqt;-><init>(Liff;Liec;Lgeh;Libj;Lcom/google/android/apps/camera/bottombar/BottomBarController;Litm;Ljvs;Lhxt;Lmqp;Lmqp;Lell;Lmqp;)V

    new-instance p1, Leqj;

    invoke-direct {p1, p0}, Leqj;-><init>(Leqn;)V

    new-instance p2, Lhiw;

    const/4 p3, 0x0

    new-array p4, p3, [Lhis;

    invoke-direct {p2, p1, p4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p2, p0, Leqn;->b:Lhiw;

    new-instance p1, Leqk;

    invoke-direct {p1, p0}, Leqk;-><init>(Leqn;)V

    new-instance p2, Lhiw;

    new-array p4, p3, [Lhis;

    invoke-direct {p2, p1, p4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p2, p0, Leqn;->c:Lhiw;

    new-instance p1, Leql;

    invoke-direct {p1, p0}, Leql;-><init>(Leqn;)V

    new-instance p2, Lhiw;

    new-array p4, p3, [Lhis;

    invoke-direct {p2, p1, p4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p2, p0, Leqn;->d:Lhiw;

    new-instance p1, Leqm;

    invoke-direct {p1, p0}, Leqm;-><init>(Leqn;)V

    new-instance p2, Lhiw;

    new-array p4, p3, [Lhis;

    invoke-direct {p2, p1, p4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object p2, p0, Leqn;->q:Lhiw;

    new-instance p1, Lhiu;

    invoke-direct {p1, p2, p3}, Lhiu;-><init>(Lhiw;Z)V

    iput-object p1, p0, Leqn;->a:Lhiu;

    invoke-virtual {p1}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Leqn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Leqn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Leqo;

    invoke-virtual {v0}, Leqo;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Leqn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Leqn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Leqo;

    invoke-virtual {v0}, Leqo;->b()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Leqn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Leqn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Leqo;

    invoke-virtual {v0}, Leqo;->c()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Leqn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Leqn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Leqo;

    invoke-virtual {v0}, Leqo;->d()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Leqn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Leqn;->b:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Leqn;->c:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Leqn;->d:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Leqn;->q:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Leqn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Leqn;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->d()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Ljcb;->l(Lhiv;)V

    return-void
.end method
