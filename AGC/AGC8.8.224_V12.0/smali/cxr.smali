.class public final Lcxr;
.super Lcyl;

# interfaces
.implements Lhiv;


# instance fields
.field public final a:Lhiu;

.field public final b:Lhiw;

.field public final c:Lhiw;

.field public final d:Lhiw;


# direct methods
.method public constructor <init>(Lcom/google/android/apps/camera/bottombar/BottomBarController;Liff;Litm;Landroid/view/Window;Lhwu;Lcvr;Libj;Ldfa;[B[B[B[B)V
    .locals 14

    move-object v13, p0

    const/4 v9, 0x0

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

    invoke-direct/range {v0 .. v12}, Lcyl;-><init>(Lcom/google/android/apps/camera/bottombar/BottomBarController;Liff;Litm;Landroid/view/Window;Lhwu;Lcvr;Libj;Ldfa;[B[B[B[B)V

    new-instance v0, Lcxo;

    invoke-direct {v0, p0}, Lcxo;-><init>(Lcxr;)V

    new-instance v1, Lhiw;

    const/4 v2, 0x0

    new-array v3, v2, [Lhis;

    invoke-direct {v1, v0, v3}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v1, v13, Lcxr;->b:Lhiw;

    new-instance v0, Lcxp;

    invoke-direct {v0, p0}, Lcxp;-><init>(Lcxr;)V

    new-instance v3, Lhiw;

    new-array v4, v2, [Lhis;

    invoke-direct {v3, v0, v4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v3, v13, Lcxr;->c:Lhiw;

    new-instance v0, Lcxq;

    invoke-direct {v0, p0}, Lcxq;-><init>(Lcxr;)V

    new-instance v3, Lhiw;

    new-array v4, v2, [Lhis;

    invoke-direct {v3, v0, v4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v3, v13, Lcxr;->d:Lhiw;

    new-instance v0, Lhiu;

    invoke-direct {v0, v1, v2}, Lhiu;-><init>(Lhiw;Z)V

    iput-object v0, v13, Lcxr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lcxr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcxr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lcys;

    invoke-virtual {v0}, Lcys;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lcxr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcxr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lcys;

    invoke-virtual {v0}, Lcys;->b()V

    return-void
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lcxr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcxr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lcys;

    invoke-virtual {v0}, Lcys;->c()V

    return-void
.end method

.method public final d()V
    .locals 1

    iget-object v0, p0, Lcxr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcxr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lcys;

    invoke-virtual {v0}, Lcys;->d()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lcxr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Lcxr;->b:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lcxr;->c:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lcxr;->d:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    invoke-super {p0}, Lcyl;->f()V

    iget-object v0, p0, Lcxr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    invoke-super {p0}, Lcyl;->g()V

    iget-object v0, p0, Lcxr;->a:Lhiu;

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

    iget-object v0, p0, Lcxr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcxr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lcys;

    invoke-virtual {v0}, Lcys;->i()V

    return-void
.end method

.method public final j(Lcsc;)V
    .locals 1

    iget-object v0, p0, Lcxr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcxr;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lcys;

    invoke-virtual {v0, p1}, Lcys;->j(Lcsc;)V

    return-void
.end method
