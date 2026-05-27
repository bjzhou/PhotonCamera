.class public final Lhve;
.super Lhud;

# interfaces
.implements Lhiv;


# instance fields
.field public final l:Lhiu;

.field public final m:Lhiw;

.field public final n:Lhiw;


# direct methods
.method public constructor <init>(Ljwb;Lcom/google/android/apps/camera/bottombar/BottomBarController;Liff;Lhwu;Libj;Lgeh;Lbkb;Ljwb;Litm;Lhrq;[B[B[B[B)V
    .locals 16

    move-object/from16 v15, p0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

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

    invoke-direct/range {v0 .. v14}, Lhud;-><init>(Ljwb;Lcom/google/android/apps/camera/bottombar/BottomBarController;Liff;Lhwu;Libj;Lgeh;Lbkb;Ljwb;Litm;Lhrq;[B[B[B[B)V

    new-instance v0, Lhvc;

    invoke-direct {v0, v15}, Lhvc;-><init>(Lhve;)V

    new-instance v1, Lhiw;

    const/4 v2, 0x0

    new-array v3, v2, [Lhis;

    invoke-direct {v1, v0, v3}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v1, v15, Lhve;->m:Lhiw;

    new-instance v0, Lhvd;

    invoke-direct {v0, v15}, Lhvd;-><init>(Lhve;)V

    new-instance v1, Lhiw;

    new-array v3, v2, [Lhis;

    invoke-direct {v1, v0, v3}, Lhiw;-><init>(Lhis;[Lhis;)V

    iput-object v1, v15, Lhve;->n:Lhiw;

    new-instance v0, Lhiu;

    invoke-direct {v0, v1, v2}, Lhiu;-><init>(Lhiw;Z)V

    iput-object v0, v15, Lhve;->l:Lhiu;

    invoke-virtual {v0}, Lhiu;->f()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    iget-object v0, p0, Lhve;->l:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhve;->l:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhua;

    invoke-virtual {v0}, Lhua;->a()V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Lhve;->l:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lhve;->l:Lhiu;

    invoke-virtual {v0}, Lhiu;->a()Lhiw;

    move-result-object v0

    iget-object v0, v0, Lhiw;->a:Lhis;

    check-cast v0, Lhua;

    invoke-virtual {v0}, Lhua;->b()V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lhve;->l:Lhiu;

    invoke-virtual {v0}, Lhiu;->b()V

    iget-object v0, p0, Lhve;->m:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    iget-object v0, p0, Lhve;->n:Lhiw;

    invoke-virtual {v0}, Lhiw;->e()V

    return-void
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lhve;->l:Lhiu;

    invoke-virtual {v0}, Lhiu;->c()V

    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lhve;->l:Lhiu;

    invoke-virtual {v0}, Lhiu;->d()V

    return-void
.end method

.method public final h()V
    .locals 0

    invoke-static {p0}, Ljcb;->l(Lhiv;)V

    return-void
.end method
