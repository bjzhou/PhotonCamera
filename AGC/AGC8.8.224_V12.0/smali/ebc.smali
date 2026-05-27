.class public final Lebc;
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


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lebc;->a:Loiw;

    iput-object p2, p0, Lebc;->b:Loiw;

    iput-object p3, p0, Lebc;->c:Loiw;

    iput-object p4, p0, Lebc;->d:Loiw;

    iput-object p5, p0, Lebc;->e:Loiw;

    iput-object p6, p0, Lebc;->f:Loiw;

    iput-object p7, p0, Lebc;->g:Loiw;

    iput-object p8, p0, Lebc;->h:Loiw;

    iput-object p9, p0, Lebc;->i:Loiw;

    iput-object p10, p0, Lebc;->j:Loiw;

    iput-object p11, p0, Lebc;->k:Loiw;

    iput-object p12, p0, Lebc;->l:Loiw;

    iput-object p13, p0, Lebc;->m:Loiw;

    iput-object p14, p0, Lebc;->n:Loiw;

    iput-object p15, p0, Lebc;->o:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lebc;
    .locals 17

    new-instance v16, Lebc;

    move-object/from16 v0, v16

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

    invoke-direct/range {v0 .. v15}, Lebc;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v16
.end method


# virtual methods
.method public final b()Lgkf;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lebc;->a:Loiw;

    check-cast v1, Lefa;

    invoke-virtual {v1}, Lefa;->b()Ljvs;

    move-result-object v3

    iget-object v1, v0, Lebc;->b:Loiw;

    check-cast v1, Ldqn;

    invoke-virtual {v1}, Ldqn;->a()Ljvs;

    move-result-object v4

    iget-object v1, v0, Lebc;->c:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Ljwb;

    iget-object v1, v0, Lebc;->d:Loiw;

    check-cast v1, Lelt;

    invoke-virtual {v1}, Lelt;->a()Ljvs;

    move-result-object v6

    iget-object v1, v0, Lebc;->e:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Ljwb;

    iget-object v1, v0, Lebc;->f:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Ljvs;

    iget-object v1, v0, Lebc;->g:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljvs;

    iget-object v1, v0, Lebc;->h:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lhmb;

    iget-object v1, v0, Lebc;->i:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lecy;

    iget-object v1, v0, Lebc;->j:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ldhi;

    iget-object v1, v0, Lebc;->k:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Lgcb;

    iget-object v1, v0, Lebc;->l:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Ljvs;

    iget-object v1, v0, Lebc;->m:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lebi;

    iget-object v1, v0, Lebc;->n:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Lebl;

    iget-object v1, v0, Lebc;->o:Loiw;

    check-cast v1, Lijz;

    invoke-virtual {v1}, Lijz;->a()Lika;

    move-result-object v17

    new-instance v1, Lgkf;

    move-object v2, v1

    invoke-direct/range {v2 .. v17}, Lgkf;-><init>(Ljvs;Ljvs;Ljwb;Ljvs;Ljwb;Ljvs;Ljvs;Lhmb;Lecy;Ldhi;Lgcb;Ljvs;Lebi;Lebl;Lika;)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lebc;->b()Lgkf;

    move-result-object v0

    return-object v0
.end method
