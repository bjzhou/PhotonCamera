.class public final Lhvi;
.super Lhvt;

# interfaces
.implements Lhiv;


# instance fields
.field public final a:Lhiu;

.field public final b:Lhiw;

.field public final c:Lhiw;


# direct methods
.method public constructor <init>(Ljwb;Lcom/google/android/apps/camera/bottombar/BottomBarController;Liff;Litm;Landroid/view/Window;Lhwu;Lcvr;Lgeh;Libj;Lhud;[B[B[B[B)V
    .locals 15

    move-object v14, p0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-direct/range {v0 .. v13}, Lhvt;-><init>(Ljwb;Lcom/google/android/apps/camera/bottombar/BottomBarController;Liff;Litm;Landroid/view/Window;Lhwu;Lcvr;Lgeh;Libj;[B[B[B[B)V

    new-instance v0, Lhvg;

    invoke-direct {v0, p0}, Lhvg;-><init>(Lhvi;)V

    new-instance v1, Lhiw;

    const/4 v2, 0x1

    new-array v2, v2, [Lhis;

    const/4 v3, 0x0

    aput-object p10, v2, v3

    invoke-direct {v1, v0, v2}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v1, v14, Lhvi;->b:Lhiw;

    new-instance v0, Lhvh;

    invoke-direct {v0, p0}, Lhvh;-><init>(Lhvi;)V

    new-instance v2, Lhiw;

    new-array v4, v3, [Lhis;

    invoke-direct {v2, v0, v4}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v2, v14, Lhvi;->c:Lhiw;

    new-instance v0, Lhiu;

    invoke-direct {v0, v1, v3}, Lhiu;-><init>(Lhiw;Z)V

    iput-object v0, v14, Lhvi;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lhvi;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhvi;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhvq;

    invoke-virtual {v0}, Lhvq;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lhvi;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhvi;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhvq;

    invoke-virtual {v0}, Lhvq;->b()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lhvi;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Lhvi;->b:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lhvi;->c:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    invoke-super {p0}, Lhvt;->f()V

    iget-object v0, p0, Lhvi;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    invoke-super {p0}, Lhvt;->g()V

    iget-object v0, p0, Lhvi;->a:Lhiu;

    invoke-virtual {v0}, Lhiu;->d()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Ljcb;->l(Lhiv;)V

    return-void
.end method
