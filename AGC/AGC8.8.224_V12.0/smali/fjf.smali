.class public final synthetic Lfjf;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Ljwb;

.field public final synthetic b:Z

.field public final synthetic c:Ldhi;

.field public final synthetic d:Lfkz;

.field public final synthetic e:Ljvs;

.field public final synthetic f:Ljvs;

.field public final synthetic g:Ljwb;

.field public final synthetic h:Ljvs;

.field public final synthetic i:Ljvs;

.field public final synthetic j:Ljvs;

.field public final synthetic k:Ljvs;

.field public final synthetic l:Lgcg;

.field public final synthetic m:Ljava/util/function/Predicate;

.field public final synthetic n:Ljew;


# direct methods
.method public synthetic constructor <init>(Ljwb;Ljew;ZLdhi;Lfkz;Ljvs;Ljvs;Ljwb;Ljvs;Ljvs;Ljvs;Ljvs;Lgcg;Ljava/util/function/Predicate;[B[B[B[B)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lfjf;->a:Ljwb;

    move-object v1, p2

    iput-object v1, v0, Lfjf;->n:Ljew;

    move v1, p3

    iput-boolean v1, v0, Lfjf;->b:Z

    move-object v1, p4

    iput-object v1, v0, Lfjf;->c:Ldhi;

    move-object v1, p5

    iput-object v1, v0, Lfjf;->d:Lfkz;

    move-object v1, p6

    iput-object v1, v0, Lfjf;->e:Ljvs;

    move-object v1, p7

    iput-object v1, v0, Lfjf;->f:Ljvs;

    move-object v1, p8

    iput-object v1, v0, Lfjf;->g:Ljwb;

    move-object v1, p9

    iput-object v1, v0, Lfjf;->h:Ljvs;

    move-object v1, p10

    iput-object v1, v0, Lfjf;->i:Ljvs;

    move-object v1, p11

    iput-object v1, v0, Lfjf;->j:Ljvs;

    move-object v1, p12

    iput-object v1, v0, Lfjf;->k:Ljvs;

    move-object v1, p13

    iput-object v1, v0, Lfjf;->l:Lgcg;

    move-object/from16 v1, p14

    iput-object v1, v0, Lfjf;->m:Ljava/util/function/Predicate;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 25

    move-object/from16 v0, p0

    iget-object v1, v0, Lfjf;->a:Ljwb;

    iget-object v5, v0, Lfjf;->n:Ljew;

    iget-boolean v6, v0, Lfjf;->b:Z

    iget-object v7, v0, Lfjf;->c:Ldhi;

    iget-object v8, v0, Lfjf;->d:Lfkz;

    iget-object v13, v0, Lfjf;->e:Ljvs;

    iget-object v14, v0, Lfjf;->f:Ljvs;

    iget-object v15, v0, Lfjf;->g:Ljwb;

    iget-object v12, v0, Lfjf;->h:Ljvs;

    iget-object v11, v0, Lfjf;->i:Ljvs;

    iget-object v10, v0, Lfjf;->j:Ljvs;

    iget-object v9, v0, Lfjf;->k:Ljvs;

    iget-object v4, v0, Lfjf;->l:Lgcg;

    iget-object v3, v0, Lfjf;->m:Ljava/util/function/Predicate;

    move-object/from16 v2, p1

    check-cast v2, Lgeh;

    move-object/from16 v16, v12

    invoke-interface {v2}, Lgeh;->I()Ljuf;

    move-result-object v12

    invoke-interface {v1}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Lgej;

    move-object/from16 p1, v12

    new-instance v12, Lfjc;

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v22, v2

    move-object v2, v12

    move-object/from16 v23, v3

    move-object/from16 v3, v17

    move-object/from16 v17, v4

    move-object/from16 v4, v22

    move-object/from16 v24, v9

    move-object/from16 v9, v18

    move-object/from16 v18, v10

    move-object/from16 v10, v19

    move-object/from16 v19, v11

    move-object/from16 v11, v20

    move-object/from16 v0, p1

    move-object/from16 v20, v15

    move-object v15, v12

    move-object/from16 v12, v21

    invoke-direct/range {v2 .. v12}, Lfjc;-><init>(Lgej;Lgeh;Ljew;ZLdhi;Lfkz;[B[B[B[B)V

    sget-object v2, Lnnv;->a:Lnnv;

    invoke-interface {v1, v15, v2}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    const/16 v1, 0x8

    new-array v2, v1, [Ljvs;

    const/4 v3, 0x0

    aput-object v13, v2, v3

    const/4 v3, 0x1

    aput-object v14, v2, v3

    const/4 v3, 0x2

    aput-object v20, v2, v3

    const/4 v3, 0x3

    aput-object v16, v2, v3

    const/4 v3, 0x4

    aput-object v19, v2, v3

    const/4 v3, 0x5

    aput-object v18, v2, v3

    const/4 v3, 0x6

    aput-object v24, v2, v3

    const/4 v3, 0x7

    aput-object v17, v2, v3

    invoke-static {v2}, Ljvw;->b([Ljvs;)Ljvs;

    move-result-object v2

    new-instance v3, Lecf;

    move-object/from16 v5, v22

    move-object/from16 v4, v23

    invoke-direct {v3, v4, v5, v1}, Lecf;-><init>(Ljava/util/function/Predicate;Lgeh;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-interface {v2, v3, v1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method
