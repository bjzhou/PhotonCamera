.class public final Lcos;
.super Ljava/lang/Object;

# interfaces
.implements Logk;


# instance fields
.field private final a:Loiw;

.field private final b:Loiw;

.field private final c:Loiw;

.field private final d:Loiw;

.field private final e:Loiw;

.field private final f:Loiw;

.field private final g:Loiw;

.field private final h:Loiw;

.field private final i:Loiw;

.field private final j:Loiw;

.field private final k:Loiw;

.field private final l:Loiw;

.field private final m:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcos;->a:Loiw;

    iput-object p2, p0, Lcos;->b:Loiw;

    iput-object p3, p0, Lcos;->c:Loiw;

    iput-object p4, p0, Lcos;->d:Loiw;

    iput-object p5, p0, Lcos;->e:Loiw;

    iput-object p6, p0, Lcos;->f:Loiw;

    iput-object p7, p0, Lcos;->g:Loiw;

    iput-object p8, p0, Lcos;->h:Loiw;

    iput-object p9, p0, Lcos;->i:Loiw;

    iput-object p10, p0, Lcos;->j:Loiw;

    iput-object p11, p0, Lcos;->k:Loiw;

    iput-object p12, p0, Lcos;->l:Loiw;

    iput-object p13, p0, Lcos;->m:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lcor;
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Lcos;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lnow;

    iget-object v1, v0, Lcos;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljuh;

    iget-object v1, v0, Lcos;->c:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkbc;

    iget-object v1, v0, Lcos;->d:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcqa;

    iget-object v1, v0, Lcos;->e:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcvr;

    iget-object v1, v0, Lcos;->f:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcpx;

    iget-object v1, v0, Lcos;->g:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ldne;

    iget-object v1, v0, Lcos;->h:Loiw;

    check-cast v1, Lcpm;

    invoke-virtual {v1}, Lcpm;->a()Lcpl;

    move-result-object v10

    iget-object v1, v0, Lcos;->i:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lfvx;

    iget-object v1, v0, Lcos;->j:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lcyy;

    iget-object v1, v0, Lcos;->k:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lkai;

    iget-object v1, v0, Lcos;->l:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lcpe;

    iget-object v1, v0, Lcos;->m:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Ldhi;

    new-instance v1, Lcor;

    move-object v2, v1

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    invoke-direct/range {v2 .. v18}, Lcor;-><init>(Lnow;Ljuh;Lkbc;Lcqa;Lcvr;Lcpx;Ldne;Lcpi;Lfvx;Lcyy;Lkai;Lcpe;Ldhi;[B[B[B)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcos;->a()Lcor;

    move-result-object v0

    return-object v0
.end method
