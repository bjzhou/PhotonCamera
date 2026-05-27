.class public final Lhes;
.super Lhfq;

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
.method public constructor <init>(Landroid/content/Context;Lhfs;Lhet;Lchj;Lhfb;Landroid/os/Handler;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Lhfv;Lhff;Ligo;Lhgn;[B[B[B)V
    .locals 17

    move-object/from16 v15, p0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v16, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v15, v16

    invoke-direct/range {v0 .. v15}, Lhfq;-><init>(Landroid/content/Context;Lhfs;Lhet;Lchj;Lhfb;Landroid/os/Handler;Landroid/content/pm/PackageManager;Landroid/content/res/Resources;Lhfv;Lhff;Ligo;Lhgn;[B[B[B)V

    new-instance v0, Lhem;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lhem;-><init>(Lhes;)V

    new-instance v2, Lhiw;

    const/4 v3, 0x0

    new-array v4, v3, [Lhis;

    invoke-direct {v2, v0, v4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v2, v1, Lhes;->b:Lhiw;

    new-instance v0, Lhen;

    invoke-direct {v0, v1}, Lhen;-><init>(Lhes;)V

    new-instance v4, Lhiw;

    new-array v5, v3, [Lhis;

    invoke-direct {v4, v0, v5}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v4, v1, Lhes;->c:Lhiw;

    new-instance v0, Lheo;

    invoke-direct {v0, v1}, Lheo;-><init>(Lhes;)V

    new-instance v4, Lhiw;

    new-array v5, v3, [Lhis;

    invoke-direct {v4, v0, v5}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v4, v1, Lhes;->d:Lhiw;

    new-instance v0, Lhep;

    invoke-direct {v0, v1}, Lhep;-><init>(Lhes;)V

    new-instance v4, Lhiw;

    new-array v5, v3, [Lhis;

    invoke-direct {v4, v0, v5}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v4, v1, Lhes;->e:Lhiw;

    new-instance v0, Lheq;

    invoke-direct {v0, v1}, Lheq;-><init>(Lhes;)V

    new-instance v4, Lhiw;

    new-array v5, v3, [Lhis;

    invoke-direct {v4, v0, v5}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v4, v1, Lhes;->f:Lhiw;

    new-instance v0, Lher;

    invoke-direct {v0, v1}, Lher;-><init>(Lhes;)V

    new-instance v4, Lhiw;

    new-array v5, v3, [Lhis;

    invoke-direct {v4, v0, v5}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v4, v1, Lhes;->g:Lhiw;

    new-instance v0, Lhiu;

    invoke-direct {v0, v2, v3}, Lhiu;-><init>(Lhiw;Z)V

    iput-object v0, v1, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhfh;

    invoke-interface {v0}, Lhfh;->a()V

    return-void
.end method

.method public final b(Lchd;Z)V
    .locals 1

    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhfh;

    invoke-interface {v0, p1, p2}, Lhfh;->b(Lchd;Z)V

    return-void
.end method

.method public final bN()V
    .locals 1

    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhfh;

    invoke-interface {v0}, Lhfh;->bN()V

    return-void
.end method

.method public final bP()Z
    .locals 1

    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhfh;

    invoke-interface {v0}, Lhfh;->bP()Z

    move-result v0

    return v0
.end method

.method public final cj()V
    .locals 1

    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhfh;

    invoke-interface {v0}, Lhfh;->cj()V

    return-void
.end method

.method public final d(Lchd;Z)V
    .locals 1

    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhfh;

    invoke-interface {v0, p1, p2}, Lhfh;->d(Lchd;Z)V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Lhes;->b:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lhes;->c:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lhes;->d:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lhes;->e:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lhes;->f:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lhes;->g:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lhes;->a:Lhiu;

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

    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhfh;

    invoke-interface {v0}, Lhfh;->i()V

    return-void
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhfh;

    invoke-interface {v0}, Lhfh;->j()V

    return-void
.end method

.method public final k()V
    .locals 1

    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhfh;

    invoke-interface {v0}, Lhfh;->k()V

    return-void
.end method

.method public final l(Landroid/content/pm/ResolveInfo;)V
    .locals 1

    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhfh;

    invoke-interface {v0, p1}, Lhfh;->l(Landroid/content/pm/ResolveInfo;)V

    return-void
.end method

.method public final m()V
    .locals 1

    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhfh;

    invoke-interface {v0}, Lhfh;->m()V

    return-void
.end method

.method public final n()V
    .locals 1

    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhfh;

    invoke-interface {v0}, Lhfh;->n()V

    return-void
.end method

.method public final o()V
    .locals 1

    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhfh;

    invoke-interface {v0}, Lhfh;->o()V

    return-void
.end method

.method public final p(J)V
    .locals 1

    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhes;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhfh;

    invoke-interface {v0, p1, p2}, Lhfh;->p(J)V

    return-void
.end method
