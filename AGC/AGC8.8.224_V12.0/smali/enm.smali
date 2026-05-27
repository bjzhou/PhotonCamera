.class public final Lenm;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:J

.field public final c:Logd;

.field public final d:Ljava/util/concurrent/Executor;

.field public final e:Lkbc;

.field public final f:Limq;

.field public final g:Ldhi;

.field public final h:Ljvs;

.field public final i:Ljava/util/Map;

.field public final j:Lfuz;

.field public final k:Lgxb;

.field public final l:Lgkr;

.field public final m:Lcvr;

.field private final n:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/kepler/AstrolapseController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lenm;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ldhi;Logd;Lcvr;Lfuz;Ljava/util/concurrent/Executor;Lgkr;Lkbc;Lgxb;Limq;Ljvs;[B[B[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p11, Ljava/util/HashMap;

    invoke-direct {p11}, Ljava/util/HashMap;-><init>()V

    iput-object p11, p0, Lenm;->i:Ljava/util/Map;

    sget-object p11, Ldhq;->q:Ldhk;

    invoke-interface {p1, p11}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p11

    invoke-virtual {p11}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p11

    check-cast p11, Ljava/lang/Integer;

    invoke-virtual {p11}, Ljava/lang/Integer;->intValue()I

    move-result p11

    iput p11, p0, Lenm;->n:I

    sget-object p11, Ldhq;->s:Ldhk;

    invoke-interface {p1, p11}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object p11

    const/16 p12, 0x64

    invoke-static {p12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p12

    invoke-virtual {p11, p12}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p11

    check-cast p11, Ljava/lang/Integer;

    invoke-virtual {p11}, Ljava/lang/Integer;->intValue()I

    move-result p11

    int-to-long p11, p11

    iput-wide p11, p0, Lenm;->b:J

    iput-object p2, p0, Lenm;->c:Logd;

    iput-object p3, p0, Lenm;->m:Lcvr;

    iput-object p4, p0, Lenm;->j:Lfuz;

    iput-object p5, p0, Lenm;->d:Ljava/util/concurrent/Executor;

    iput-object p6, p0, Lenm;->l:Lgkr;

    iput-object p7, p0, Lenm;->e:Lkbc;

    iput-object p8, p0, Lenm;->k:Lgxb;

    iput-object p9, p0, Lenm;->f:Limq;

    iput-object p1, p0, Lenm;->g:Ldhi;

    iput-object p10, p0, Lenm;->h:Ljvs;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Leea;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnbk;->a:Lnbc;

    invoke-virtual {p1}, Leea;->a()I

    iget-object v0, p0, Lenm;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lenl;

    if-nez v0, :cond_0

    sget-object v0, Lenm;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    sget-object v1, Lnbk;->a:Lnbc;

    const-string v2, "KeplerController"

    invoke-interface {v0, v1, v2}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x668

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-virtual {p1}, Leea;->a()I

    move-result p1

    const-string v1, "Missing InflightSession for shot id %s"

    invoke-interface {v0, v1, p1}, Lnah;->p(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0, v0}, Lenm;->b(Lenl;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized b(Lenl;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lenl;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lgmp;

    invoke-virtual {v1}, Lgmp;->g()V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lenl;->g:Lnph;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnph;->cancel(Z)Z

    iget-object v0, p1, Lenl;->h:Lnph;

    invoke-virtual {v0, v1}, Lnph;->cancel(Z)Z

    iget-object v0, p1, Lenl;->b:Lgmp;

    invoke-virtual {v0}, Lgmp;->g()V

    iget-object v0, p1, Lenl;->n:Lenn;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lenn;->c()V

    :cond_1
    iget-object v0, p0, Lenm;->i:Ljava/util/Map;

    iget-object p1, p1, Lenl;->a:Leea;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final declared-synchronized c(Leea;Lgmp;ILkph;Lnph;)V
    .locals 8

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnbk;->a:Lnbc;

    invoke-virtual {p1}, Leea;->a()I

    iget-object v0, p0, Lenm;->i:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lmoz;->p(Z)V

    iget-object v0, p0, Lenm;->i:Ljava/util/Map;

    new-instance v7, Lenl;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lenl;-><init>(Leea;Lgmp;ILkph;Lnph;)V

    invoke-interface {v0, p1, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized d(Leea;)V
    .locals 25

    move-object/from16 v7, p0

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnbk;->a:Lnbc;

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    iget-object v0, v7, Lenm;->i:Ljava/util/Map;

    move-object/from16 v5, p1

    invoke-interface {v0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lenl;

    const/4 v0, 0x0

    if-nez v4, :cond_0

    sget-object v1, Lenm;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    sget-object v2, Lnbk;->a:Lnbc;

    const-string v3, "KeplerController"

    invoke-interface {v1, v2, v3}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    const/16 v2, 0x664

    invoke-interface {v1, v2}, Lnah;->G(I)Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    invoke-virtual/range {p1 .. p1}, Leea;->a()I

    move-result v2

    const-string v3, "Missing InflightSession for shot id %s"

    invoke-interface {v1, v3, v2}, Lnah;->p(Ljava/lang/String;I)V

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, v4, Lenl;->b:Lgmp;

    iget-object v2, v1, Lgmp;->t:Lgkr;

    new-instance v3, Lgkr;

    iget-object v6, v2, Lgkr;->d:Ljava/lang/Object;

    iget-object v2, v2, Lgkr;->c:Ljava/lang/Object;

    new-instance v8, Lfzx;

    invoke-direct {v8}, Lfzx;-><init>()V

    new-instance v9, Lgak;

    invoke-direct {v9}, Lgak;-><init>()V

    check-cast v6, Lfte;

    invoke-direct {v3, v6, v2, v8, v9}, Lgkr;-><init>(Lfte;Lgxl;Lfzz;Lgaa;)V

    invoke-virtual {v1}, Lgmp;->f()Ljava/util/List;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Lmyu;

    iget v6, v6, Lmyu;->c:I

    iget v8, v7, Lenm;->n:I

    if-ge v6, v8, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v3, v0

    goto/16 :goto_4

    :cond_1
    iget-object v6, v1, Lgmp;->o:Lcom/google/googlex/gcam/BurstSpec;

    if-eqz v6, :cond_7

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iget-object v8, v4, Lenl;->f:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    move v14, v8

    :goto_0
    move-object v8, v2

    check-cast v8, Lmyu;

    iget v8, v8, Lmyu;->c:I

    if-ge v14, v8, :cond_6

    iget v8, v7, Lenm;->n:I

    const/4 v13, 0x1

    if-ge v14, v8, :cond_2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, v7, Lenm;->n:I

    add-int/lit8 v9, v9, -0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lmym;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmym;

    move-result-object v8

    move-object/from16 v16, v8

    move v12, v14

    goto :goto_1

    :cond_2
    sub-int v8, v14, v8

    add-int/2addr v8, v13

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v8, v9}, Lmym;->e(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lmym;

    move-result-object v8

    iget v9, v7, Lenm;->n:I

    add-int/lit8 v9, v9, -0x1

    move-object/from16 v16, v8

    move v12, v9

    :goto_1
    new-instance v8, Lcom/google/googlex/gcam/FrameRequestVector;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_FrameRequestVector__SWIG_0()J

    move-result-wide v9

    invoke-direct {v8, v9, v10, v13}, Lcom/google/googlex/gcam/FrameRequestVector;-><init>(JZ)V

    invoke-virtual/range {v16 .. v16}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    :goto_2
    invoke-virtual/range {v16 .. v16}, Lmym;->j()Ljava/lang/Comparable;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-gt v9, v10, :cond_3

    invoke-virtual {v6}, Lcom/google/googlex/gcam/BurstSpec;->b()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v10

    invoke-virtual {v10, v9}, Lcom/google/googlex/gcam/FrameRequestVector;->b(I)Lcom/google/googlex/gcam/FrameRequest;

    move-result-object v10

    move/from16 v23, v14

    iget-wide v13, v8, Lcom/google/googlex/gcam/FrameRequestVector;->a:J

    move-object/from16 v24, v1

    iget-wide v0, v10, Lcom/google/googlex/gcam/FrameRequest;->a:J

    move-wide/from16 v17, v13

    move-object/from16 v19, v8

    move-wide/from16 v20, v0

    move-object/from16 v22, v10

    invoke-static/range {v17 .. v22}, Lcom/google/googlex/gcam/GcamModuleJNI;->FrameRequestVector_add(JLcom/google/googlex/gcam/FrameRequestVector;JLcom/google/googlex/gcam/FrameRequest;)V

    add-int/lit8 v9, v9, 0x1

    move/from16 v14, v23

    move-object/from16 v1, v24

    const/4 v0, 0x0

    const/4 v13, 0x1

    goto :goto_2

    :cond_3
    move-object/from16 v24, v1

    move/from16 v23, v14

    new-instance v11, Lcom/google/googlex/gcam/BurstSpec;

    invoke-direct {v11}, Lcom/google/googlex/gcam/BurstSpec;-><init>()V

    iget-wide v0, v11, Lcom/google/googlex/gcam/BurstSpec;->a:J

    iget-wide v9, v8, Lcom/google/googlex/gcam/FrameRequestVector;->a:J

    move-wide/from16 v17, v0

    move-object/from16 v19, v11

    move-wide/from16 v20, v9

    move-object/from16 v22, v8

    invoke-static/range {v17 .. v22}, Lcom/google/googlex/gcam/GcamModuleJNI;->BurstSpec_frame_requests_set(JLcom/google/googlex/gcam/BurstSpec;JLcom/google/googlex/gcam/FrameRequestVector;)V

    new-instance v0, Lgmp;

    move-object/from16 v1, v24

    iget-object v10, v1, Lgmp;->s:Lebb;

    iget-object v13, v1, Lgmp;->n:Lkou;

    const/4 v14, 0x0

    const/16 v17, 0x0

    move-object v8, v0

    move-object v9, v3

    move-object/from16 v24, v1

    move v1, v12

    move-object v12, v13

    const/16 v18, 0x1

    move-object v13, v14

    move/from16 v19, v23

    move-object/from16 v14, v17

    invoke-direct/range {v8 .. v14}, Lgmp;-><init>(Lgkr;Lebb;Lcom/google/googlex/gcam/BurstSpec;Lkou;[B[B)V

    invoke-virtual {v0, v1}, Lgmp;->h(I)V

    invoke-virtual/range {v16 .. v16}, Lmym;->i()Ljava/lang/Comparable;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual/range {v16 .. v16}, Lmym;->j()Ljava/lang/Comparable;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    add-int/lit8 v8, v8, 0x1

    move-object v9, v2

    check-cast v9, Lmvv;

    invoke-virtual {v9, v1, v8}, Lmvv;->b(II)Lmvv;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_4
    :goto_3
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lkeb;

    invoke-interface {v9}, Lkeb;->a()Lkeb;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v0, v9}, Lgmp;->c(Lkeb;)V

    goto :goto_3

    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v14, v19, 0x1

    move-object/from16 v1, v24

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_6
    move-object v3, v15

    :goto_4
    iget-object v0, v4, Lenl;->f:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object v6

    iget-object v0, v7, Lenm;->d:Ljava/util/concurrent/Executor;

    new-instance v8, Lenj;

    move-object v1, v8

    move-object/from16 v2, p0

    move-object/from16 v5, p1

    invoke-direct/range {v1 .. v6}, Lenj;-><init>(Lenm;Ljava/util/List;Lenl;Leea;Lnph;)V

    invoke-interface {v0, v8}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_7
    :try_start_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PayloadBurstSpec not provided"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
