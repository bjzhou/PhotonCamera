.class public final Lgjz;
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

    iput-object v1, v0, Lgjz;->a:Loiw;

    move-object v1, p2

    iput-object v1, v0, Lgjz;->b:Loiw;

    move-object v1, p3

    iput-object v1, v0, Lgjz;->c:Loiw;

    move-object v1, p4

    iput-object v1, v0, Lgjz;->d:Loiw;

    move-object v1, p5

    iput-object v1, v0, Lgjz;->e:Loiw;

    move-object v1, p6

    iput-object v1, v0, Lgjz;->f:Loiw;

    move-object v1, p7

    iput-object v1, v0, Lgjz;->g:Loiw;

    move-object v1, p8

    iput-object v1, v0, Lgjz;->h:Loiw;

    move-object v1, p9

    iput-object v1, v0, Lgjz;->i:Loiw;

    move-object v1, p10

    iput-object v1, v0, Lgjz;->j:Loiw;

    move-object v1, p11

    iput-object v1, v0, Lgjz;->k:Loiw;

    move-object v1, p12

    iput-object v1, v0, Lgjz;->l:Loiw;

    move-object v1, p13

    iput-object v1, v0, Lgjz;->m:Loiw;

    move-object/from16 v1, p14

    iput-object v1, v0, Lgjz;->n:Loiw;

    move-object/from16 v1, p15

    iput-object v1, v0, Lgjz;->o:Loiw;

    move-object/from16 v1, p16

    iput-object v1, v0, Lgjz;->p:Loiw;

    return-void
.end method

.method public static b(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lgjz;
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move-object/from16 v13, p12

    move-object/from16 v14, p13

    move-object/from16 v15, p14

    move-object/from16 v16, p15

    new-instance v17, Lgjz;

    move-object/from16 v0, v17

    invoke-direct/range {v0 .. v16}, Lgjz;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v17
.end method


# virtual methods
.method public final a()Lgjy;
    .locals 22

    move-object/from16 v0, p0

    iget-object v1, v0, Lgjz;->a:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lecd;

    iget-object v1, v0, Lgjz;->b:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lkli;

    iget-object v1, v0, Lgjz;->c:Loiw;

    check-cast v1, Lgdf;

    invoke-virtual {v1}, Lgdf;->a()Lgdd;

    move-result-object v5

    iget-object v1, v0, Lgjz;->d:Loiw;

    check-cast v1, Leba;

    invoke-virtual {v1}, Leba;->b()Lewa;

    move-result-object v6

    iget-object v1, v0, Lgjz;->e:Loiw;

    check-cast v1, Lebc;

    invoke-virtual {v1}, Lebc;->b()Lgkf;

    move-result-object v7

    iget-object v1, v0, Lgjz;->f:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lebv;

    iget-object v1, v0, Lgjz;->g:Loiw;

    check-cast v1, Ledj;

    invoke-virtual {v1}, Ledj;->b()Lbkc;

    move-result-object v9

    iget-object v1, v0, Lgjz;->h:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lkbc;

    iget-object v1, v0, Lgjz;->i:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lgue;

    iget-object v1, v0, Lgjz;->j:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Lebw;

    iget-object v1, v0, Lgjz;->k:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lebl;

    iget-object v1, v0, Lgjz;->l:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Legc;

    iget-object v1, v0, Lgjz;->m:Loiw;

    check-cast v1, Lgnp;

    invoke-virtual {v1}, Lgnp;->a()Lgno;

    move-result-object v15

    iget-object v1, v0, Lgjz;->n:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Limq;

    iget-object v1, v0, Lgjz;->o:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Ldhi;

    iget-object v1, v0, Lgjz;->p:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v18, v1

    check-cast v18, Ljvs;

    new-instance v1, Lgjy;

    move-object v2, v1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    invoke-direct/range {v2 .. v21}, Lgjy;-><init>(Lecd;Lkli;Lgdd;Lewa;Lgkf;Lebv;Lbkc;Lkbc;Lgue;Lebw;Lebl;Legc;Lgno;Limq;Ldhi;Ljvs;[B[B[B)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgjz;->a()Lgjy;

    move-result-object v0

    return-object v0
.end method
