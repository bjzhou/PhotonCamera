.class public final Lhun;
.super Lhtl;

# interfaces
.implements Lhiv;


# instance fields
.field public final o:Lhiu;

.field public final p:Lhiw;

.field public final q:Lhiw;

.field public final r:Lhiw;


# direct methods
.method public constructor <init>(Lcvr;Leoa;Lcom/google/android/apps/camera/bottombar/BottomBarController;Lgeh;Litm;Lhwu;Loiw;Liff;Lebj;Licb;Ldbf;Lgzn;Ljwb;Lell;Lhtb;Lhtz;Lhud;[B[B[B[B)V
    .locals 19

    move-object/from16 v15, p0

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

    move-object/from16 v13, p13

    move-object/from16 v14, p14

    const/16 v16, 0x0

    move-object/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v0 .. v18}, Lhtl;-><init>(Lcvr;Leoa;Lcom/google/android/apps/camera/bottombar/BottomBarController;Lgeh;Litm;Lhwu;Loiw;Liff;Lebj;Licb;Ldbf;Lgzn;Ljwb;Lell;[B[B[B[B)V

    new-instance v0, Lhuk;

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lhuk;-><init>(Lhun;)V

    new-instance v2, Lhiw;

    const/4 v3, 0x3

    new-array v3, v3, [Lhis;

    const/4 v4, 0x0

    aput-object p15, v3, v4

    const/4 v5, 0x1

    aput-object p16, v3, v5

    const/4 v5, 0x2

    aput-object p17, v3, v5

    invoke-direct {v2, v0, v3}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v2, v1, Lhun;->p:Lhiw;

    new-instance v0, Lhul;

    invoke-direct {v0, v1}, Lhul;-><init>(Lhun;)V

    new-instance v3, Lhiw;

    new-array v5, v4, [Lhis;

    invoke-direct {v3, v0, v5}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v3, v1, Lhun;->q:Lhiw;

    new-instance v0, Lhum;

    invoke-direct {v0, v1}, Lhum;-><init>(Lhun;)V

    new-instance v3, Lhiw;

    new-array v5, v4, [Lhis;

    invoke-direct {v3, v0, v5}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v3, v1, Lhun;->r:Lhiw;

    new-instance v0, Lhiu;

    invoke-direct {v0, v2, v4}, Lhiu;-><init>(Lhiw;Z)V

    iput-object v0, v1, Lhun;->o:Lhiu;

    invoke-virtual {v0}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final b()V
    .locals 1

    iget-object v0, p0, Lhun;->o:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhun;->o:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhir;

    invoke-virtual {v0}, Lhir;->b()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lhun;->o:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhun;->o:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhir;

    invoke-virtual {v0}, Lhir;->c()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lhun;->o:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhun;->o:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhir;

    invoke-virtual {v0}, Lhir;->d()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lhun;->o:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Lhun;->p:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lhun;->q:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lhun;->r:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    invoke-super {p0}, Lhtl;->f()V

    iget-object v0, p0, Lhun;->o:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    invoke-super {p0}, Lhtl;->g()V

    iget-object v0, p0, Lhun;->o:Lhiu;

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

    iget-object v0, p0, Lhun;->o:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhun;->o:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhir;

    invoke-virtual {v0}, Lhir;->i()V

    return-void
.end method
