.class public final Leba;
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

.field private final q:Loiw;


# direct methods
.method public constructor <init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Leba;->a:Loiw;

    move-object v1, p2

    iput-object v1, v0, Leba;->b:Loiw;

    move-object v1, p3

    iput-object v1, v0, Leba;->c:Loiw;

    move-object v1, p4

    iput-object v1, v0, Leba;->d:Loiw;

    move-object v1, p5

    iput-object v1, v0, Leba;->e:Loiw;

    move-object v1, p6

    iput-object v1, v0, Leba;->f:Loiw;

    move-object v1, p7

    iput-object v1, v0, Leba;->g:Loiw;

    move-object v1, p8

    iput-object v1, v0, Leba;->h:Loiw;

    move-object v1, p9

    iput-object v1, v0, Leba;->i:Loiw;

    move-object v1, p10

    iput-object v1, v0, Leba;->j:Loiw;

    move-object v1, p11

    iput-object v1, v0, Leba;->k:Loiw;

    move-object v1, p12

    iput-object v1, v0, Leba;->l:Loiw;

    move-object v1, p13

    iput-object v1, v0, Leba;->m:Loiw;

    move-object/from16 v1, p14

    iput-object v1, v0, Leba;->n:Loiw;

    move-object/from16 v1, p15

    iput-object v1, v0, Leba;->o:Loiw;

    move-object/from16 v1, p16

    iput-object v1, v0, Leba;->p:Loiw;

    move-object/from16 v1, p17

    iput-object v1, v0, Leba;->q:Loiw;

    return-void
.end method

.method public static a(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Leba;
    .locals 19

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

    move-object/from16 v17, p16

    new-instance v18, Leba;

    move-object/from16 v0, v18

    invoke-direct/range {v0 .. v17}, Leba;-><init>(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)V

    return-object v18
.end method


# virtual methods
.method public final b()Lewa;
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Leba;->a:Loiw;

    check-cast v1, Lfwo;

    invoke-virtual {v1}, Lfwo;->a()Lfuz;

    move-result-object v3

    iget-object v1, v0, Leba;->b:Loiw;

    invoke-static {v1}, Logj;->a(Loiw;)Logd;

    move-result-object v4

    iget-object v1, v0, Leba;->c:Loiw;

    invoke-static {v1}, Logj;->a(Loiw;)Logd;

    move-result-object v5

    iget-object v1, v0, Leba;->d:Loiw;

    invoke-static {v1}, Logj;->a(Loiw;)Logd;

    move-result-object v6

    iget-object v1, v0, Leba;->e:Loiw;

    invoke-static {v1}, Logj;->a(Loiw;)Logd;

    move-result-object v7

    iget-object v1, v0, Leba;->f:Loiw;

    invoke-static {v1}, Logj;->a(Loiw;)Logd;

    move-result-object v8

    iget-object v1, v0, Leba;->g:Loiw;

    invoke-static {v1}, Logj;->a(Loiw;)Logd;

    move-result-object v9

    iget-object v1, v0, Leba;->h:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lbkb;

    iget-object v1, v0, Leba;->i:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lgvb;

    iget-object v1, v0, Leba;->j:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, Ldhi;

    iget-object v1, v0, Leba;->k:Loiw;

    check-cast v1, Lkao;

    invoke-virtual {v1}, Lkao;->a()Lkaq;

    move-result-object v13

    iget-object v1, v0, Leba;->l:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v14, v1

    check-cast v14, Lkbc;

    iget-object v1, v0, Leba;->m:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcvr;

    iget-object v1, v0, Leba;->n:Loiw;

    check-cast v1, Ledr;

    invoke-virtual {v1}, Ledr;->a()Ledq;

    iget-object v1, v0, Leba;->o:Loiw;

    check-cast v1, Lebz;

    invoke-virtual {v1}, Lebz;->a()Leby;

    move-result-object v16

    iget-object v1, v0, Leba;->p:Loiw;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v17, v1

    check-cast v17, Lbkc;

    iget-object v1, v0, Leba;->q:Loiw;

    check-cast v1, Lean;

    invoke-virtual {v1}, Lean;->b()Lbkc;

    move-result-object v18

    new-instance v1, Lewa;

    move-object v2, v1

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    invoke-direct/range {v2 .. v24}, Lewa;-><init>(Lfuz;Logd;Logd;Logd;Logd;Logd;Logd;Lbkb;Lgvb;Ldhi;Lkaq;Lkbc;Lcvr;Lebx;Lbkc;Lbkc;[B[B[B[B[B[B)V

    return-object v1
.end method

.method public final bridge synthetic get()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Leba;->b()Lewa;

    move-result-object v0

    return-object v0
.end method
