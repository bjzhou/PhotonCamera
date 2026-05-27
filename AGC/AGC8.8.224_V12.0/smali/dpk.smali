.class public final Ldpk;
.super Ldpc;

# interfaces
.implements Lhiv;


# instance fields
.field public final n:Lhiu;

.field public final o:Lhiw;

.field public final p:Lhiw;

.field public final q:Lhiw;


# direct methods
.method public constructor <init>(Loiw;Lcom/google/android/apps/camera/evcomp/EvCompView;Ljwb;Ljwb;Ljwb;Ljwb;Ldja;Ljwb;Lmqp;[B[B[B)V
    .locals 14

    move-object v13, p0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v12}, Ldpc;-><init>(Loiw;Lcom/google/android/apps/camera/evcomp/EvCompView;Ljwb;Ljwb;Ljwb;Ljwb;Ldja;Ljwb;Lmqp;[B[B[B)V

    new-instance v0, Ldph;

    invoke-direct {v0, p0}, Ldph;-><init>(Ldpk;)V

    new-instance v1, Lhiw;

    const/4 v2, 0x0

    new-array v3, v2, [Lhis;

    invoke-direct {v1, v0, v3}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v1, v13, Ldpk;->o:Lhiw;

    new-instance v0, Ldpi;

    invoke-direct {v0, p0}, Ldpi;-><init>(Ldpk;)V

    new-instance v3, Lhiw;

    new-array v4, v2, [Lhis;

    invoke-direct {v3, v0, v4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v3, v13, Ldpk;->p:Lhiw;

    new-instance v0, Ldpj;

    invoke-direct {v0, p0}, Ldpj;-><init>(Ldpk;)V

    new-instance v3, Lhiw;

    new-array v4, v2, [Lhis;

    invoke-direct {v3, v0, v4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v3, v13, Ldpk;->q:Lhiw;

    new-instance v0, Lhiu;

    invoke-direct {v0, v1, v2}, Lhiu;-><init>(Lhiw;Z)V

    iput-object v0, v13, Ldpk;->n:Lhiu;

    invoke-virtual {v0}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Ldpk;->n:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldpk;->n:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Ldoy;

    invoke-virtual {v0}, Ldoy;->a()V

    return-void
.end method

.method public final b(Ldok;)V
    .locals 1

    iget-object v0, p0, Ldpk;->n:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldpk;->n:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Ldoy;

    invoke-virtual {v0, p1}, Ldoy;->b(Ldok;)V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Ldpk;->n:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldpk;->n:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Ldoy;

    invoke-virtual {v0}, Ldoy;->c()V

    return-void
.end method

.method public final d(FLdok;)V
    .locals 1

    iget-object v0, p0, Ldpk;->n:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Ldpk;->n:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Ldoy;

    invoke-virtual {v0, p1, p2}, Ldoy;->d(FLdok;)V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Ldpk;->n:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Ldpk;->o:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Ldpk;->p:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Ldpk;->q:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Ldpk;->n:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Ldpk;->n:Lhiu;

    invoke-virtual {v0}, Lhiu;->d()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Ljcb;->l(Lhiv;)V

    return-void
.end method
