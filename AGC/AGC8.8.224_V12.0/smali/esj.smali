.class public final Lesj;
.super Ljava/lang/Object;

# interfaces
.implements Lewb;


# instance fields
.field public final a:Lesh;

.field public final b:Loiw;

.field public final c:Loiw;

.field public final d:Loiw;

.field public final e:Loiw;

.field public final f:Lcvr;

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

.field private final r:Loiw;

.field private final s:Loiw;


# direct methods
.method public constructor <init>(Lesh;Lcvr;[B[B)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v0, Lesj;->a:Lesh;

    iput-object v2, v0, Lesj;->f:Lcvr;

    new-instance v9, Ldwh;

    const/4 v3, 0x6

    const/4 v10, 0x0

    invoke-direct {v9, v2, v3, v10, v10}, Ldwh;-><init>(Lcvr;I[B[B)V

    iput-object v9, v0, Lesj;->g:Loiw;

    iget-object v5, v1, Lesh;->D:Loiw;

    iget-object v6, v1, Lesh;->f:Loiw;

    new-instance v11, Letc;

    const/4 v7, 0x7

    const/4 v8, 0x0

    move-object v3, v11

    move-object v4, v9

    invoke-direct/range {v3 .. v8}, Letc;-><init>(Loiw;Loiw;Loiw;I[C)V

    iput-object v11, v0, Lesj;->b:Loiw;

    new-instance v13, Leqv;

    const/16 v3, 0x8

    invoke-direct {v13, v2, v3, v10, v10}, Leqv;-><init>(Lcvr;I[B[B)V

    iput-object v13, v0, Lesj;->h:Loiw;

    new-instance v14, Leqv;

    const/16 v3, 0x9

    invoke-direct {v14, v2, v3, v10, v10}, Leqv;-><init>(Lcvr;I[B[B)V

    iput-object v14, v0, Lesj;->i:Loiw;

    iget-object v2, v1, Lesh;->l:Loiw;

    invoke-static {v13, v14, v2}, Lhhs;->d(Loiw;Loiw;Loiw;)Lhhs;

    move-result-object v2

    invoke-static {v2}, Logj;->b(Loiw;)Loiw;

    move-result-object v2

    iput-object v2, v0, Lesj;->j:Loiw;

    invoke-static {v2}, Lhqq;->a(Loiw;)Lhqq;

    move-result-object v2

    invoke-static {v2}, Logj;->b(Loiw;)Loiw;

    move-result-object v2

    iput-object v2, v0, Lesj;->k:Loiw;

    iget-object v12, v1, Lesh;->l:Loiw;

    iget-object v15, v1, Lesh;->r:Loiw;

    iget-object v3, v1, Lesh;->f:Loiw;

    move-object/from16 v16, v3

    move-object/from16 v17, v2

    invoke-static/range {v12 .. v17}, Lhif;->a(Loiw;Loiw;Loiw;Loiw;Loiw;Loiw;)Lhif;

    move-result-object v2

    invoke-static {v2}, Logj;->b(Loiw;)Loiw;

    move-result-object v2

    iput-object v2, v0, Lesj;->l:Loiw;

    invoke-static {v2}, Lihq;->a(Loiw;)Lihq;

    move-result-object v3

    invoke-static {v3}, Logj;->b(Loiw;)Loiw;

    move-result-object v3

    iput-object v3, v0, Lesj;->m:Loiw;

    invoke-static {v3}, Lest;->c(Loiw;)Loiw;

    move-result-object v3

    iput-object v3, v0, Lesj;->n:Loiw;

    iget-object v4, v1, Lesh;->f:Loiw;

    invoke-static {v3, v4}, Lird;->a(Loiw;Loiw;)Lird;

    move-result-object v3

    invoke-static {v3}, Logj;->b(Loiw;)Loiw;

    move-result-object v3

    iput-object v3, v0, Lesj;->c:Loiw;

    invoke-static {v9, v2}, Lhjs;->a(Loiw;Loiw;)Lhjs;

    move-result-object v3

    invoke-static {v3}, Logj;->b(Loiw;)Loiw;

    move-result-object v3

    iput-object v3, v0, Lesj;->o:Loiw;

    invoke-static {v3}, Lest;->c(Loiw;)Loiw;

    move-result-object v3

    iput-object v3, v0, Lesj;->p:Loiw;

    iget-object v4, v1, Lesh;->f:Loiw;

    new-instance v5, Lhjs;

    const/16 v6, 0xd

    invoke-direct {v5, v3, v4, v6, v10}, Lhjs;-><init>(Loiw;Loiw;I[I)V

    invoke-static {v5}, Logj;->b(Loiw;)Loiw;

    move-result-object v3

    iput-object v3, v0, Lesj;->d:Loiw;

    iget-object v3, v1, Lesh;->e:Loiw;

    invoke-static {v3}, Lgnh;->c(Loiw;)Lgnh;

    move-result-object v3

    invoke-static {v3}, Logp;->a(Loiw;)Loiw;

    move-result-object v3

    iput-object v3, v0, Lesj;->q:Loiw;

    invoke-static {v2, v3}, Lhst;->b(Loiw;Loiw;)Lhst;

    move-result-object v2

    invoke-static {v2}, Logj;->b(Loiw;)Loiw;

    move-result-object v2

    iput-object v2, v0, Lesj;->r:Loiw;

    invoke-static {v2}, Lest;->c(Loiw;)Loiw;

    move-result-object v2

    iput-object v2, v0, Lesj;->s:Loiw;

    iget-object v1, v1, Lesh;->f:Loiw;

    invoke-static {v2, v1}, Lhst;->a(Loiw;Loiw;)Lhst;

    move-result-object v1

    invoke-static {v1}, Logj;->b(Loiw;)Loiw;

    move-result-object v1

    iput-object v1, v0, Lesj;->e:Loiw;

    return-void
.end method


# virtual methods
.method public final a()Lewa;
    .locals 15

    iget-object v0, p0, Lesj;->a:Lesh;

    iget-object v0, v0, Lesh;->av:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lklx;

    iget-object v0, p0, Lesj;->a:Lesh;

    iget-object v0, v0, Lesh;->f:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ldhi;

    iget-object v0, p0, Lesj;->a:Lesh;

    iget-object v0, v0, Lesh;->gs:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljwb;

    iget-object v0, p0, Lesj;->a:Lesh;

    iget-object v0, v0, Lesh;->cR:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Lgcg;

    iget-object v0, p0, Lesj;->a:Lesh;

    iget-object v0, v0, Lesh;->l:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljuh;

    iget-object v0, p0, Lesj;->a:Lesh;

    iget-object v0, v0, Lesh;->fY:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Lkgd;

    iget-object v0, p0, Lesj;->a:Lesh;

    iget-object v0, v0, Lesh;->D:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Lgzn;

    iget-object v0, p0, Lesj;->a:Lesh;

    invoke-virtual {v0}, Lesh;->l()Landroid/view/accessibility/AccessibilityManager;

    move-result-object v9

    iget-object v0, p0, Lesj;->a:Lesh;

    iget-object v0, v0, Lesh;->fF:Loiw;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Ljwb;

    sget-object v13, Lmza;->a:Lmza;

    new-instance v0, Lewa;

    const/4 v14, 0x0

    move-object v1, v0

    move-object v11, v13

    move-object v12, v13

    invoke-direct/range {v1 .. v14}, Lewa;-><init>(Lklx;Ldhi;Ljwb;Lgcg;Ljuh;Lkgd;Lgzn;Landroid/view/accessibility/AccessibilityManager;Ljwb;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;[B)V

    return-object v0
.end method
