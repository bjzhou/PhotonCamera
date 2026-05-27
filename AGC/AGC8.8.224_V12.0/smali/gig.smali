.class public final Lgig;
.super Ljava/lang/Object;

# interfaces
.implements Lgnk;


# instance fields
.field private final a:Lgkq;

.field private final b:Lgnk;


# direct methods
.method public constructor <init>(Lkpo;Lhdk;Ljuf;JILmrl;[B[B[B[B)V
    .locals 7

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    move v2, p6

    invoke-virtual {p1, p6}, Lkpo;->j(I)Lgkq;

    move-result-object v4

    move-object v1, p3

    invoke-virtual {p3, v4}, Ljuf;->d(Lkad;)V

    iput-object v4, v0, Lgig;->a:Lgkq;

    const/4 v6, 0x2

    move-object v1, p2

    move-wide v2, p4

    move-object v5, p7

    invoke-virtual/range {v1 .. v6}, Lhdk;->a(JLkef;Lmrl;I)Lgil;

    move-result-object v1

    iput-object v1, v0, Lgig;->b:Lgnk;

    return-void
.end method


# virtual methods
.method public final a()Lgnj;
    .locals 2

    iget-object v0, p0, Lgig;->a:Lgkq;

    invoke-virtual {v0}, Lgkq;->r()Lkad;

    move-result-object v0

    new-instance v1, Lgif;

    invoke-direct {v1, v0}, Lgif;-><init>(Lkad;)V

    return-object v1
.end method

.method public final b(J)Lkeb;
    .locals 1

    iget-object v0, p0, Lgig;->b:Lgnk;

    invoke-interface {v0, p1, p2}, Lgnk;->b(J)Lkeb;

    move-result-object p1

    return-object p1
.end method

.method public final c()Lkeb;
    .locals 1

    iget-object v0, p0, Lgig;->b:Lgnk;

    invoke-interface {v0}, Lgnk;->c()Lkeb;

    move-result-object v0

    return-object v0
.end method

.method public final d()Lkeb;
    .locals 1

    iget-object v0, p0, Lgig;->b:Lgnk;

    invoke-interface {v0}, Lgnk;->d()Lkeb;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lkeb;
    .locals 1

    iget-object v0, p0, Lgig;->b:Lgnk;

    invoke-interface {v0}, Lgnk;->e()Lkeb;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lkef;
    .locals 1

    iget-object v0, p0, Lgig;->b:Lgnk;

    check-cast v0, Lgil;

    iget-object v0, v0, Lgil;->c:Lkef;

    return-object v0
.end method

.method public final g(Ljava/util/List;)Lmvv;
    .locals 1

    iget-object v0, p0, Lgig;->b:Lgnk;

    invoke-interface {v0, p1}, Lgnk;->g(Ljava/util/List;)Lmvv;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ljava/util/List;)Lmvv;
    .locals 1

    iget-object v0, p0, Lgig;->b:Lgnk;

    invoke-interface {v0, p1}, Lgnk;->h(Ljava/util/List;)Lmvv;

    move-result-object p1

    return-object p1
.end method

.method public final i()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lgig;->b:Lgnk;

    invoke-interface {v0}, Lgnk;->i()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final j()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lgig;->b:Lgnk;

    check-cast v0, Lgil;

    invoke-virtual {v0}, Lgil;->o()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final k()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lgig;->b:Lgnk;

    invoke-interface {v0}, Lgnk;->k()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final l(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lgig;->b:Lgnk;

    invoke-interface {v0, p1}, Lgnk;->l(Ljava/lang/String;)V

    return-void
.end method

.method public final m(I)V
    .locals 1

    iget-object v0, p0, Lgig;->b:Lgnk;

    invoke-interface {v0, p1}, Lgnk;->m(I)V

    return-void
.end method

.method public final n()Lkgq;
    .locals 1

    iget-object v0, p0, Lgig;->b:Lgnk;

    invoke-interface {v0}, Lgnk;->n()Lkgq;

    move-result-object v0

    return-object v0
.end method
