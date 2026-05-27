.class public final Lkgm;
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

.field private final n:Loiw;

.field private final o:Loiw;

.field private final p:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lkgm;->a:Loiw;

    move-object v1, p2

    iput-object v1, v0, Lkgm;->b:Loiw;

    move-object v1, p3

    iput-object v1, v0, Lkgm;->c:Loiw;

    move-object v1, p4

    iput-object v1, v0, Lkgm;->d:Loiw;

    move-object v1, p5

    iput-object v1, v0, Lkgm;->e:Loiw;

    move-object v1, p6

    iput-object v1, v0, Lkgm;->f:Loiw;

    move-object v1, p7

    iput-object v1, v0, Lkgm;->g:Loiw;

    move-object v1, p8

    iput-object v1, v0, Lkgm;->h:Loiw;

    move-object v1, p9

    iput-object v1, v0, Lkgm;->i:Loiw;

    move-object v1, p10

    iput-object v1, v0, Lkgm;->j:Loiw;

    move-object v1, p11

    iput-object v1, v0, Lkgm;->k:Loiw;

    move-object v1, p12

    iput-object v1, v0, Lkgm;->l:Loiw;

    move-object v1, p13

    iput-object v1, v0, Lkgm;->m:Loiw;

    move-object/from16 v1, p14

    iput-object v1, v0, Lkgm;->n:Loiw;

    move-object/from16 v1, p15

    iput-object v1, v0, Lkgm;->o:Loiw;

    move-object/from16 v1, p16

    iput-object v1, v0, Lkgm;->p:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lkgl;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lkgm;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lkgi;

    iget-object v1, v0, Lkgm;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lkns;

    iget-object v1, v0, Lkgm;->c:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkga;

    iget-object v1, v0, Lkgm;->d:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Lkgm;->e:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    iget-object v2, v0, Lkgm;->f:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroidx/wear/ambient/AmbientDelegate;

    iget-object v2, v0, Lkgm;->g:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lkgz;

    iget-object v2, v0, Lkgm;->h:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lkhh;

    iget-object v2, v0, Lkgm;->i:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Ljuf;

    iget-object v2, v0, Lkgm;->j:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Lkcs;

    iget-object v2, v0, Lkgm;->k:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Lkhf;

    iget-object v2, v0, Lkgm;->l:Loiw;

    check-cast v2, Lkgp;

    invoke-virtual {v2}, Lkgp;->a()Ligo;

    move-result-object v14

    iget-object v2, v0, Lkgm;->m:Loiw;

    check-cast v2, Lkid;

    invoke-virtual {v2}, Lkid;->a()Lloi;

    move-result-object v15

    iget-object v2, v0, Lkgm;->n:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Lkgd;

    iget-object v2, v0, Lkgm;->o:Loiw;

    check-cast v2, Lkao;

    invoke-virtual {v2}, Lkao;->a()Lkaq;

    move-result-object v17

    iget-object v2, v0, Lkgm;->p:Loiw;

    invoke-interface {v2}, Loiw;->get()Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Lkgh;

    new-instance v24, Lkgl;

    move-object/from16 v2, v24

    move-object v6, v1

    check-cast v6, Lkpo;

    check-cast v7, Lkfv;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    invoke-direct/range {v2 .. v23}, Lkgl;-><init>(Lkgi;Lkns;Lkga;Lkpo;Lkfv;Landroidx/wear/ambient/AmbientDelegate;Lkgz;Lkhh;Ljuf;Lkcs;Lkhf;Ligo;Lloi;Lkgd;Lkaq;Lkgh;[B[B[B[B[B)V

    return-object v24
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lkgm;->a()Lkgl;

    move-result-object v0

    return-object v0
.end method
