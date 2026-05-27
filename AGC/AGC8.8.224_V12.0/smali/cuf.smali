.class public final Lcuf;
.super Ljava/lang/Object;

# interfaces
.implements Lhmz;


# instance fields
.field public final a:Lhnb;

.field public final b:Ldhi;

.field public final c:Lcuh;

.field public final d:Lcuh;

.field public final e:Lcuh;

.field public final f:Lcuh;

.field public final g:Lcuh;

.field public final h:Lico;

.field public i:Lcuc;

.field public j:Lcyq;

.field public k:Lmvv;

.field public l:Lkad;

.field public m:Ljava/lang/Runnable;

.field public final n:Lcvm;

.field private final o:Lgzn;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Lico;Lcvm;Lgeh;Lcsm;Lhnb;Lhnc;Lhnc;Lhna;Ljuh;Lgzm;Lgzn;Ldhi;[B)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p2

    move-object/from16 v9, p5

    move-object/from16 v10, p7

    move-object/from16 v0, p8

    move-object/from16 v11, p10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v8, v7, Lcuf;->h:Lico;

    move-object/from16 v1, p3

    iput-object v1, v7, Lcuf;->n:Lcvm;

    move-object/from16 v1, p6

    iput-object v1, v7, Lcuf;->a:Lhnb;

    move-object/from16 v1, p12

    iput-object v1, v7, Lcuf;->o:Lgzn;

    move-object/from16 v1, p13

    iput-object v1, v7, Lcuf;->b:Ldhi;

    invoke-static {}, Lcuh;->a()Lefw;

    move-result-object v1

    invoke-virtual {v1, v11}, Lefw;->f(Ljava/util/concurrent/Executor;)V

    const-string v2, "VideoRecording"

    iput-object v2, v1, Lefw;->a:Ljava/lang/Object;

    iget-object v2, v0, Lhnc;->b:Lhna;

    invoke-virtual {v1, v2}, Lefw;->i(Lhna;)V

    new-instance v2, Lcud;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v0, v3}, Lcud;-><init>(Lcuf;Lhnc;I)V

    iput-object v2, v1, Lefw;->d:Ljava/lang/Object;

    new-instance v0, Lcue;

    const/4 v12, 0x1

    invoke-direct {v0, p0, v8, v12}, Lcue;-><init>(Lcuf;Lico;I)V

    invoke-virtual {v1, v0}, Lefw;->g(Ljava/lang/Runnable;)V

    new-instance v0, Lcue;

    invoke-direct {v0, p0, v8, v3}, Lcue;-><init>(Lcuf;Lico;I)V

    invoke-virtual {v1, v0}, Lefw;->h(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Lefw;->e()Lcuh;

    move-result-object v0

    iput-object v0, v7, Lcuf;->c:Lcuh;

    invoke-static {}, Lcuh;->a()Lefw;

    move-result-object v0

    invoke-virtual {v0, v11}, Lefw;->f(Ljava/util/concurrent/Executor;)V

    const-string v1, "PoorVideoQualityWarning"

    iput-object v1, v0, Lefw;->a:Ljava/lang/Object;

    sget-object v1, Lhna;->f:Lhna;

    invoke-virtual {v0, v1}, Lefw;->i(Lhna;)V

    new-instance v1, Lctw;

    const/4 v2, 0x6

    invoke-direct {v1, v8, v2}, Lctw;-><init>(Lico;I)V

    invoke-virtual {v0, v1}, Lefw;->g(Ljava/lang/Runnable;)V

    new-instance v1, Lctw;

    const/4 v2, 0x7

    invoke-direct {v1, v8, v2}, Lctw;-><init>(Lico;I)V

    invoke-virtual {v0, v1}, Lefw;->h(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lefw;->e()Lcuh;

    move-result-object v0

    iput-object v0, v7, Lcuf;->d:Lcuh;

    invoke-static {}, Lcuh;->a()Lefw;

    move-result-object v13

    invoke-virtual {v13, v11}, Lefw;->f(Ljava/util/concurrent/Executor;)V

    const-string v0, "VideoTorch"

    iput-object v0, v13, Lefw;->a:Ljava/lang/Object;

    move-object/from16 v0, p9

    invoke-virtual {v13, v0}, Lefw;->i(Lhna;)V

    new-instance v14, Lcfu;

    const/4 v6, 0x3

    move-object v0, v14

    move-object v1, p0

    move-object/from16 v2, p11

    move-object/from16 v3, p1

    move-object/from16 v4, p4

    move-object/from16 v5, p2

    invoke-direct/range {v0 .. v6}, Lcfu;-><init>(Lcuf;Lgzm;Landroid/content/res/Resources;Lgeh;Lico;I)V

    invoke-virtual {v13, v14}, Lefw;->g(Ljava/lang/Runnable;)V

    new-instance v0, Lcfz;

    const/16 v1, 0x13

    invoke-direct {v0, p0, v8, v1}, Lcfz;-><init>(Lcuf;Lico;I)V

    invoke-virtual {v13, v0}, Lefw;->h(Ljava/lang/Runnable;)V

    invoke-virtual {v13}, Lefw;->e()Lcuh;

    move-result-object v0

    iput-object v0, v7, Lcuf;->e:Lcuh;

    invoke-static {}, Lcuh;->a()Lefw;

    move-result-object v0

    invoke-virtual {v0, v11}, Lefw;->f(Ljava/util/concurrent/Executor;)V

    const-string v1, "VideoRecordingEarlyStoppedWarning"

    iput-object v1, v0, Lefw;->a:Ljava/lang/Object;

    sget-object v1, Lhna;->e:Lhna;

    invoke-virtual {v0, v1}, Lefw;->i(Lhna;)V

    new-instance v1, Lcfz;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v8, v2}, Lcfz;-><init>(Lcuf;Lico;I)V

    invoke-virtual {v0, v1}, Lefw;->g(Ljava/lang/Runnable;)V

    new-instance v1, Lctw;

    const/4 v2, 0x3

    invoke-direct {v1, v8, v2}, Lctw;-><init>(Lico;I)V

    invoke-virtual {v0, v1}, Lefw;->h(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lefw;->e()Lcuh;

    move-result-object v0

    iput-object v0, v7, Lcuf;->f:Lcuh;

    invoke-static {}, Lcuh;->a()Lefw;

    move-result-object v0

    invoke-virtual {v0, v11}, Lefw;->f(Ljava/util/concurrent/Executor;)V

    const-string v1, "VideoDisplay"

    iput-object v1, v0, Lefw;->a:Ljava/lang/Object;

    iget-object v1, v10, Lhnc;->b:Lhna;

    invoke-virtual {v0, v1}, Lefw;->i(Lhna;)V

    new-instance v1, Lcud;

    invoke-direct {v1, p0, v10, v12}, Lcud;-><init>(Lcuf;Lhnc;I)V

    iput-object v1, v0, Lefw;->d:Ljava/lang/Object;

    new-instance v1, Lctw;

    const/4 v2, 0x4

    invoke-direct {v1, v9, v2}, Lctw;-><init>(Lcsm;I)V

    invoke-virtual {v0, v1}, Lefw;->g(Ljava/lang/Runnable;)V

    new-instance v1, Lctw;

    const/4 v2, 0x5

    invoke-direct {v1, v9, v2}, Lctw;-><init>(Lcsm;I)V

    invoke-virtual {v0, v1}, Lefw;->h(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Lefw;->e()Lcuh;

    move-result-object v0

    iput-object v0, v7, Lcuf;->g:Lcuh;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()Lhna;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcuf;->a:Lhnb;

    invoke-interface {v0}, Lhnb;->e()Lhna;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final b(Z)V
    .locals 2

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iget-object v0, p0, Lcuf;->o:Lgzn;

    sget-object v1, Lgzd;->y:Lgzr;

    invoke-interface {v0, v1, p1}, Lgzn;->e(Lgzb;Ljava/lang/Object;)V

    return-void
.end method

.method public final declared-synchronized bG(Lhna;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcuf;->k:Lmvv;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhmz;

    invoke-interface {v3, p1}, Lhmz;->bG(Lhna;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/lit8 v2, v2, 0x1

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

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcuf;->l:Lkad;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkad;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcuf;->l:Lkad;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final e()Z
    .locals 1

    iget-object v0, p0, Lcuf;->j:Lcyq;

    invoke-interface {v0}, Lcyq;->l()Z

    move-result v0

    return v0
.end method

.method public final f(Lcsc;)Z
    .locals 2

    iget-object v0, p0, Lcuf;->b:Ldhi;

    sget-object v1, Ldgu;->I:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcsc;->d:Ljwu;

    invoke-virtual {v0}, Ljwu;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcsc;->c:Ljws;

    sget-object v1, Ljws;->d:Ljws;

    if-eq v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcuf;->b:Ldhi;

    sget-object v1, Ldgu;->ah:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcsc;->d:Ljwu;

    invoke-virtual {v0}, Ljwu;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcsc;->c:Ljws;

    sget-object v1, Ljws;->d:Ljws;

    if-eq v0, v1, :cond_2

    :cond_1
    iget-boolean p1, p1, Lcsc;->D:Z

    if-eqz p1, :cond_3

    :cond_2
    const/4 p1, 0x1

    return p1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method public final g(Lcsc;)Z
    .locals 2

    iget-object v0, p0, Lcuf;->b:Ldhi;

    sget-object v1, Ldgu;->an:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcsc;->d:Ljwu;

    invoke-virtual {v0}, Ljwu;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcsc;->c:Ljws;

    sget-object v0, Ljws;->d:Ljws;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
