.class public final Legw;
.super Ljava/lang/Object;

# interfaces
.implements Lhmz;
.implements Lfaz;
.implements Lfat;
.implements Lfav;


# instance fields
.field private final a:Ldhi;

.field private final b:Lgzn;

.field private final c:Ljava/util/List;

.field private final d:Lhnb;

.field private final e:Lhna;

.field private final f:Licj;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ldhi;Ljwb;Lhna;Lhna;Lgzn;Licj;Ldbf;Lcdi;Ljwb;Ljuh;Lezx;Lgeh;Lhnb;)V
    .locals 17

    move-object/from16 v8, p0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    move-object/from16 v7, p10

    move-object/from16 v11, p11

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, v8, Legw;->a:Ldhi;

    move-object/from16 v12, p6

    iput-object v12, v8, Legw;->b:Lgzn;

    move-object/from16 v3, p14

    iput-object v3, v8, Legw;->d:Lhnb;

    iput-object v9, v8, Legw;->e:Lhna;

    iput-object v10, v8, Legw;->f:Licj;

    sget-object v3, Ldhq;->Y:Ldhj;

    invoke-interface {v1, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-nez v3, :cond_0

    sget-object v2, Lhmv;->a:Lhmw;

    move-object v13, v2

    goto :goto_0

    :cond_0
    invoke-static {}, Lhne;->a()Lhnd;

    move-result-object v3

    invoke-virtual {v3, v0}, Lhnd;->c(Ljava/util/concurrent/Executor;)V

    const-string v4, "HdrNet"

    invoke-virtual {v3, v4}, Lhnd;->d(Ljava/lang/String;)V

    new-instance v4, Leer;

    const/16 v5, 0x8

    invoke-direct {v4, v2, v5}, Leer;-><init>(Ljwb;I)V

    invoke-virtual {v3, v4}, Lhnd;->e(Ljava/lang/Runnable;)V

    new-instance v4, Leer;

    const/16 v5, 0x9

    invoke-direct {v4, v2, v5}, Leer;-><init>(Ljwb;I)V

    invoke-virtual {v3, v4}, Lhnd;->f(Ljava/lang/Runnable;)V

    move-object/from16 v2, p4

    invoke-virtual {v3, v2}, Lhnd;->g(Lhna;)V

    invoke-virtual {v3}, Lhnd;->a()Lhne;

    move-result-object v2

    move-object v13, v2

    :goto_0
    invoke-static {}, Lgxb;->e()Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Ldhq;->aq:Ldhj;

    invoke-interface {v1, v2}, Ldhi;->l(Ldhj;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual/range {p9 .. p9}, Lcdi;->i()Ljuf;

    move-result-object v1

    new-instance v2, Lecf;

    const/4 v3, 0x5

    invoke-direct {v2, v7, v10, v3}, Lecf;-><init>(Ljwb;Licj;I)V

    invoke-interface {v7, v2, v11}, Ljwb;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljuf;->d(Lkad;)V

    invoke-virtual/range {p9 .. p9}, Lcdi;->i()Ljuf;

    move-result-object v14

    new-instance v15, Lgko;

    const/4 v6, 0x1

    move-object v1, v15

    move-object/from16 v2, p7

    move-object/from16 v3, p6

    move-object/from16 v4, p10

    move-object/from16 v5, p13

    invoke-direct/range {v1 .. v6}, Lgko;-><init>(Licj;Lgzn;Ljwb;Lgeh;I)V

    move-object/from16 v2, p8

    invoke-virtual {v2, v15, v0}, Ldbf;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v14, v1}, Ljuf;->d(Lkad;)V

    invoke-static {}, Lhne;->a()Lhnd;

    move-result-object v14

    invoke-virtual {v14, v0}, Lhnd;->c(Ljava/util/concurrent/Executor;)V

    const-string v0, "HdrPlusTorch"

    invoke-virtual {v14, v0}, Lhnd;->d(Ljava/lang/String;)V

    new-instance v15, Leeq;

    const/16 v16, 0x2

    move-object v0, v15

    move-object/from16 v1, p0

    move-object/from16 v6, p7

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Leeq;-><init>(Legw;Ldbf;Lgzn;Ljwb;Lgeh;Licj;I)V

    invoke-virtual {v14, v15}, Lhnd;->e(Ljava/lang/Runnable;)V

    new-instance v0, Ldgd;

    const/16 v1, 0x11

    invoke-direct {v0, v8, v10, v1}, Ldgd;-><init>(Legw;Licj;I)V

    invoke-virtual {v14, v0}, Lhnd;->f(Ljava/lang/Runnable;)V

    invoke-virtual {v14, v9}, Lhnd;->g(Lhna;)V

    invoke-virtual {v14}, Lhnd;->a()Lhne;

    move-result-object v0

    goto :goto_1

    :cond_1
    sget-object v0, Lhmv;->a:Lhmw;

    :goto_1
    invoke-static {v13, v0}, Lmvv;->m(Ljava/lang/Object;Ljava/lang/Object;)Lmvv;

    move-result-object v0

    iput-object v0, v8, Legw;->c:Ljava/util/List;

    new-instance v0, Ldgd;

    const/16 v1, 0x12

    move-object/from16 v2, p12

    invoke-direct {v0, v8, v2, v1}, Ldgd;-><init>(Legw;Lezx;I)V

    invoke-virtual {v11, v0}, Ljuh;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static final d(Lika;)Z
    .locals 1

    sget-object v0, Lika;->b:Lika;

    invoke-virtual {p0, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lika;->g:Lika;

    invoke-virtual {p0, v0}, Lika;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    iget-object v0, p0, Legw;->a:Ldhi;

    sget-object v1, Ldhq;->aq:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Legw;->b:Lgzn;

    xor-int/lit8 p1, p1, 0x1

    sget-object v1, Lgzd;->z:Lgzr;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized bG(Lhna;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Legw;->c:Ljava/util/List;

    check-cast v0, Lmvv;

    invoke-virtual {v0}, Lmvv;->s()Lnad;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lhmz;

    invoke-interface {v1, p1}, Lhmz;->bG(Lhna;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_0
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

.method public final bM()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Legw;->a(Z)V

    iget-object v0, p0, Legw;->f:Licj;

    invoke-virtual {v0}, Licj;->b()V

    return-void
.end method

.method public final bN()V
    .locals 2

    iget-object v0, p0, Legw;->d:Lhnb;

    invoke-interface {v0}, Lhnb;->e()Lhna;

    move-result-object v0

    iget-object v1, p0, Legw;->e:Lhna;

    invoke-virtual {v0, v1}, Lhna;->a(Lhna;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Legw;->a(Z)V

    :cond_0
    return-void
.end method
