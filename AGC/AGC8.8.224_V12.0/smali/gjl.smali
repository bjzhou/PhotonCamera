.class public final Lgjl;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lken;

.field public final c:Lglt;

.field public final d:Lgnk;

.field public final e:Lgjy;

.field public final f:Lebm;

.field public final g:Lkbc;

.field public final h:Lghx;

.field public final i:Lgnt;

.field public final j:Lgno;

.field public final k:Lnsc;

.field public final l:Ljava/util/concurrent/Executor;

.field public final m:Ljava/util/concurrent/Executor;

.field public final n:Lgue;

.field private final o:Lecd;

.field private final p:Lgiz;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/pixelcamerakit/commands/PckShastaZslController"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgjl;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lecd;Lken;Lglt;Lgiz;Lgue;Lgnk;Lgjy;Lebm;Lkbc;Lghx;Lgnt;Lgno;Lnsc;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;[B)V
    .locals 2

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lgjl;->o:Lecd;

    move-object v1, p2

    iput-object v1, v0, Lgjl;->b:Lken;

    move-object v1, p4

    iput-object v1, v0, Lgjl;->p:Lgiz;

    move-object v1, p3

    iput-object v1, v0, Lgjl;->c:Lglt;

    move-object v1, p6

    iput-object v1, v0, Lgjl;->d:Lgnk;

    move-object v1, p5

    iput-object v1, v0, Lgjl;->n:Lgue;

    move-object v1, p7

    iput-object v1, v0, Lgjl;->e:Lgjy;

    move-object v1, p8

    iput-object v1, v0, Lgjl;->f:Lebm;

    move-object v1, p9

    iput-object v1, v0, Lgjl;->g:Lkbc;

    move-object v1, p10

    iput-object v1, v0, Lgjl;->h:Lghx;

    move-object v1, p11

    iput-object v1, v0, Lgjl;->i:Lgnt;

    move-object v1, p12

    iput-object v1, v0, Lgjl;->j:Lgno;

    move-object v1, p13

    iput-object v1, v0, Lgjl;->k:Lnsc;

    move-object/from16 v1, p14

    iput-object v1, v0, Lgjl;->l:Ljava/util/concurrent/Executor;

    move-object/from16 v1, p15

    iput-object v1, v0, Lgjl;->m:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a(Leea;Lkou;Lkgq;Lker;Lcom/google/googlex/gcam/BurstSpec;)Landroid/util/Pair;
    .locals 14

    move-object v1, p0

    :try_start_0
    iget-object v0, v1, Lgjl;->g:Lkbc;

    const-string v2, "ShastaZslController#getPslFrames"

    invoke-interface {v0, v2}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual/range {p3 .. p3}, Lkgq;->a()Ljvs;

    move-result-object v0

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lgjl;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0xaf1

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "No available capacity for PSL request."

    invoke-interface {v0, v2}, Lnah;->o(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_0
    .catch Lkdf; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v2, v1, Lgjl;->g:Lkbc;

    :goto_0
    invoke-interface {v2}, Lkbc;->f()V

    return-object v0

    :cond_0
    :try_start_1
    invoke-virtual/range {p3 .. p3}, Lkgq;->a()Ljvs;

    move-result-object v0

    invoke-interface {v0}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gtz v0, :cond_1

    sget-object v0, Lgjl;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v2, 0xaf0

    invoke-interface {v0, v2}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v2, "Not enough available capacity for PSL request (%s required, none available). Skipping request."

    invoke-virtual/range {p5 .. p5}, Lcom/google/googlex/gcam/BurstSpec;->b()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/googlex/gcam/FrameRequestVector;->a()J

    move-result-wide v3

    invoke-interface {v0, v2, v3, v4}, Lnah;->q(Ljava/lang/String;J)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_1
    .catch Lkdf; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object v2, v1, Lgjl;->g:Lkbc;

    goto :goto_0

    :cond_1
    :try_start_2
    iget-object v0, v1, Lgjl;->g:Lkbc;

    const-string v2, "buildRequest"

    invoke-interface {v0, v2}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface/range {p4 .. p4}, Lker;->c()Lkem;

    move-result-object v0

    invoke-interface {v0}, Lkem;->c()V

    invoke-virtual/range {p5 .. p5}, Lcom/google/googlex/gcam/BurstSpec;->b()Lcom/google/googlex/gcam/FrameRequestVector;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/googlex/gcam/FrameRequestVector;->a()J

    move-result-wide v2

    long-to-int v3, v2

    invoke-virtual/range {p3 .. p3}, Lkgq;->a()Ljvs;

    move-result-object v2

    invoke-interface {v2}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-le v3, v2, :cond_2

    sget-object v4, Lgjl;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->c()Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const/16 v5, 0xaef

    invoke-interface {v4, v5}, Lnah;->G(I)Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const-string v5, "Not enough available capacity for PSL request (%s required, %s available).  Truncating request."

    invoke-interface {v4, v5, v3, v2}, Lnah;->s(Ljava/lang/String;II)V

    move v13, v2

    goto :goto_1

    :cond_2
    move v13, v3

    :goto_1
    iget-object v2, v1, Lgjl;->g:Lkbc;

    const-string v3, "buildPayload"

    invoke-interface {v2, v3}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v2, v1, Lgjl;->p:Lgiz;

    invoke-virtual {p1}, Leea;->a()I

    move-result v3

    int-to-long v3, v3

    new-instance v9, Lfzw;

    invoke-direct {v9}, Lfzw;-><init>()V

    check-cast v0, Lkfy;

    invoke-static {v0}, Lkfy;->g(Lkfy;)Lkfy;

    move-result-object v5

    const/4 v12, 0x0

    move-object v7, v2

    move-object v8, v5

    move-object/from16 v10, p3

    move v11, v13

    invoke-virtual/range {v7 .. v12}, Lgiz;->c(Lkem;Lfzy;Lkgq;II)V

    move-object/from16 v7, p2

    move v8, v13

    invoke-virtual/range {v2 .. v8}, Lgiz;->b(JLkem;Lcom/google/googlex/gcam/FrameRequestVector;Lkou;I)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lefv;->p:Lefv;

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->map(Ljava/util/function/Function;)Lj$/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lmtf;->a:Lj$/util/stream/Collector;

    invoke-interface {v2, v3}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    iget-object v3, v1, Lgjl;->g:Lkbc;

    const-string v4, "submitRequests"

    invoke-interface {v3, v4}, Lkbc;->g(Ljava/lang/String;)V

    invoke-interface {v2}, Ljava/util/List;->size()I

    invoke-virtual/range {p3 .. p3}, Lkgq;->a()Ljvs;

    move-result-object v3

    invoke-interface {v3}, Ljvs;->bm()Ljava/lang/Object;

    move-object/from16 v3, p4

    check-cast v3, Lkgo;

    iget-object v3, v3, Lkgo;->b:Lkbc;

    const-string v4, "FrameServerSession#trySubmit(burst"

    invoke-interface {v3, v4}, Lkbc;->e(Ljava/lang/String;)V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v2}, Lkgo;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_2
    .catch Lkdf; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v6, 0x0

    :try_start_3
    move-object/from16 v7, p4

    check-cast v7, Lkgo;

    iget-object v7, v7, Lkgo;->b:Lkbc;

    const-string v8, "allocate_and_build_results"

    invoke-interface {v7, v8}, Lkbc;->e(Ljava/lang/String;)V

    const/4 v7, 0x0

    :goto_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_8

    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkfz;

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Set;

    move-object/from16 v9, p4

    check-cast v9, Lkgo;

    iget-object v9, v9, Lkgo;->c:Ldja;

    invoke-virtual {v9, v8}, Ldja;->w(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v10

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v11, 0x0

    if-eq v10, v8, :cond_4

    :try_start_4
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    :goto_3
    if-ge v6, v2, :cond_3

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkgn;

    invoke-virtual {v4}, Lkgn;->close()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    :cond_3
    invoke-static {v5}, Lkgo;->k(Ljava/util/List;)V

    move-object/from16 v2, p4

    check-cast v2, Lkgo;

    iget-object v2, v2, Lkgo;->b:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    move-object/from16 v2, p4

    check-cast v2, Lkgo;

    iget-object v2, v2, Lkgo;->b:Lkbc;

    :goto_4
    invoke-interface {v2}, Lkbc;->f()V
    :try_end_4
    .catch Lkdf; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v3, v11

    goto/16 :goto_8

    :cond_4
    :try_start_5
    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v8

    invoke-static {v8}, Lmwa;->j(I)Lmvw;

    move-result-object v8

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_7

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkgs;

    invoke-static {v12}, Lkhn;->l(Lkgs;)Lkeb;

    move-result-object v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-nez v13, :cond_6

    :try_start_6
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    :goto_6
    if-ge v6, v2, :cond_5

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkgn;

    invoke-virtual {v4}, Lkgn;->close()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_5
    invoke-static {v5}, Lkgo;->k(Ljava/util/List;)V

    move-object/from16 v2, p4

    check-cast v2, Lkgo;

    iget-object v2, v2, Lkgo;->b:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    move-object/from16 v2, p4

    check-cast v2, Lkgo;

    iget-object v2, v2, Lkgo;->b:Lkbc;
    :try_end_6
    .catch Lkdf; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_4

    :cond_6
    :try_start_7
    iget-object v12, v12, Lkgs;->c:Lkgq;

    invoke-virtual {v8, v12, v13}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_5

    :cond_7
    new-instance v10, Lkgn;

    invoke-virtual {v8}, Lmvw;->b()Lmwa;

    move-result-object v8

    invoke-direct {v10, v8}, Lkgn;-><init>(Lmwa;)V

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v5, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_2

    :cond_8
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v7

    if-ne v4, v7, :cond_9

    const/4 v4, 0x1

    goto :goto_7

    :cond_9
    const/4 v4, 0x0

    :goto_7
    invoke-static {v4}, Lmoz;->p(Z)V

    move-object/from16 v4, p4

    check-cast v4, Lkgo;

    iget-object v4, v4, Lkgo;->b:Lkbc;

    const-string v7, "submit"

    invoke-interface {v4, v7}, Lkbc;->g(Ljava/lang/String;)V

    move-object/from16 v4, p4

    check-cast v4, Lkgo;

    iget-object v4, v4, Lkgo;->a:Lkhd;

    invoke-virtual {v4, v2, v5}, Lkhd;->h(Ljava/util/List;Ljava/util/List;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    move-object/from16 v2, p4

    check-cast v2, Lkgo;

    iget-object v2, v2, Lkgo;->b:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    move-object/from16 v2, p4

    check-cast v2, Lkgo;

    iget-object v2, v2, Lkgo;->b:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    :goto_8
    if-eqz v3, :cond_a

    invoke-interface {v3}, Ljava/util/List;->size()I

    goto :goto_9

    :cond_a
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sget-object v2, Lgjl;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->c()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v4, 0xaec

    invoke-interface {v2, v4}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const-string v4, "No PSL frame result received."

    invoke-interface {v2, v4}, Lnah;->o(Ljava/lang/String;)V

    :goto_9
    iget-object v2, v1, Lgjl;->g:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    invoke-static {v0, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0
    :try_end_8
    .catch Lkdf; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    iget-object v2, v1, Lgjl;->g:Lkbc;

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    :try_start_9
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    :goto_a
    if-ge v6, v2, :cond_b

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkgn;

    invoke-virtual {v4}, Lkgn;->close()V

    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    :cond_b
    invoke-static {v5}, Lkgo;->k(Ljava/util/List;)V

    move-object/from16 v2, p4

    check-cast v2, Lkgo;

    iget-object v2, v2, Lkgo;->b:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    move-object/from16 v2, p4

    check-cast v2, Lkgo;

    iget-object v2, v2, Lkgo;->b:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    throw v0
    :try_end_9
    .catch Lkdf; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :catchall_1
    move-exception v0

    iget-object v2, v1, Lgjl;->g:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    throw v0

    :catch_0
    move-exception v0

    iget-object v0, v1, Lgjl;->g:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    invoke-static {v0, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public final b(Leea;Lkou;Lgli;Lebb;)Lcom/google/googlex/gcam/BurstSpec;
    .locals 9

    invoke-virtual {p3}, Lgli;->e()Lkpb;

    move-result-object p3

    const/4 v8, 0x0

    if-nez p3, :cond_0

    return-object v8

    :cond_0
    :try_start_0
    iget-object v0, p0, Lgjl;->g:Lkbc;

    const-string v1, "PckShastaZslController#buildBurstSpec"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lgjl;->o:Lecd;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object v7

    move-object v1, p1

    move-object v2, p3

    move-object v3, p2

    move-object v6, p4

    invoke-interface/range {v0 .. v7}, Lecd;->B(Leea;Lkpb;Lkou;ZLjava/lang/Boolean;Lebb;Lj$/util/Optional;)Lcom/google/googlex/gcam/BurstSpec;

    move-result-object p1
    :try_end_0
    .catch Lkdf; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-interface {p3}, Lkpb;->close()V

    iget-object p2, p0, Lgjl;->g:Lkbc;

    invoke-interface {p2}, Lkbc;->f()V

    return-object p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_1
    sget-object p2, Lgjl;->a:Lnak;

    invoke-virtual {p2}, Lnaf;->b()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 p4, 0xaf8

    invoke-interface {p2, p4}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const-string p4, "Unable to build payloadBurstSpec %s"

    invoke-interface {p2, p4, p1}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-interface {p3}, Lkpb;->close()V

    iget-object p1, p0, Lgjl;->g:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-object v8

    :goto_0
    invoke-interface {p3}, Lkpb;->close()V

    iget-object p2, p0, Lgjl;->g:Lkbc;

    invoke-interface {p2}, Lkbc;->f()V

    throw p1
.end method
