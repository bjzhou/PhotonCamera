.class public final Ljyy;
.super Ljava/lang/Object;

# interfaces
.implements Ljyc;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljxx;

.field public final c:Ljym;

.field public final d:Ljyb;

.field public final e:Ljyf;

.field public final f:Ljava/util/Map;

.field public g:Ljxy;

.field public final h:Lnou;

.field public final i:Ljava/util/concurrent/ExecutorService;

.field public j:Lkmw;

.field public k:Ljye;

.field public l:I

.field private final m:Lnow;

.field private final n:I

.field private final o:Z

.field private final p:Z


# direct methods
.method public constructor <init>(Ljyz;)V
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v1, Ljyy;->f:Ljava/util/Map;

    const/4 v3, 0x0

    iput-object v3, v1, Ljyy;->g:Ljxy;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, v1, Ljyy;->a:Ljava/lang/Object;

    iget-object v0, v2, Ljyz;->a:Lnow;

    iput-object v0, v1, Ljyy;->m:Lnow;

    invoke-virtual/range {p1 .. p1}, Ljyz;->t()Lnou;

    iget v0, v2, Ljyz;->m:I

    iput v0, v1, Ljyy;->n:I

    iget-object v0, v2, Ljyz;->t:Lnou;

    iput-object v0, v1, Ljyy;->h:Lnou;

    invoke-static {}, Lnsy;->q()Lnow;

    move-result-object v4

    iput-object v4, v1, Ljyy;->i:Ljava/util/concurrent/ExecutorService;

    iget-object v4, v2, Ljyz;->d:Ljxa;

    invoke-virtual {v4}, Ljxa;->c()I

    iget-boolean v4, v2, Ljyz;->s:Z

    iput-boolean v4, v1, Ljyy;->p:Z

    iget-object v4, v2, Ljyz;->w:Landroid/media/MediaCodec$Callback;

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-nez v4, :cond_1

    iget-boolean v4, v2, Ljyz;->q:Z

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v5, v1, Ljyy;->o:Z

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v6, v1, Ljyy;->o:Z

    :goto_1
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    iget-boolean v7, v1, Ljyy;->o:Z

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    iget-object v7, v2, Ljyz;->c:Ljwx;

    if-eqz v7, :cond_3

    sget-object v7, Ljya;->a:Ljya;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_3
    iget-object v7, v2, Ljyz;->d:Ljxa;

    if-eqz v7, :cond_4

    sget-object v7, Ljya;->b:Ljya;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-boolean v7, v2, Ljyz;->p:Z

    if-eqz v7, :cond_5

    sget-object v7, Ljya;->c:Ljya;

    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    :goto_2
    new-instance v7, Ljym;

    iget-object v8, v2, Ljyz;->i:Landroid/os/Handler;

    invoke-direct {v7, v4, v8}, Ljym;-><init>(Ljava/util/Set;Landroid/os/Handler;)V

    iput-object v7, v1, Ljyy;->c:Ljym;

    iget-object v4, v2, Ljyz;->d:Ljxa;

    if-eqz v4, :cond_6

    iget-object v4, v4, Ljxa;->a:Ljwt;

    iget v4, v4, Ljwt;->e:I

    goto :goto_3

    :cond_6
    const/4 v4, 0x0

    :goto_3
    new-instance v14, Ljxs;

    const/4 v15, 0x2

    new-array v8, v15, [Lnou;

    aput-object v0, v8, v5

    invoke-virtual/range {p1 .. p1}, Ljyz;->t()Lnou;

    move-result-object v0

    aput-object v0, v8, v6

    invoke-static {v8}, Lnsy;->y([Lnou;)Lnou;

    move-result-object v0

    new-instance v8, Lgxp;

    invoke-direct {v8, v1, v2, v4, v15}, Lgxp;-><init>(Ljyy;Ljyz;II)V

    sget-object v4, Lnnv;->a:Lnnv;

    invoke-static {v0, v8, v4}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    invoke-direct {v14, v0}, Ljxs;-><init>(Lnou;)V

    iput-object v14, v1, Ljyy;->b:Ljxx;

    new-instance v4, Ljvk;

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v4, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    new-instance v13, Ljvk;

    const-wide v8, 0x7fffffffffffffffL

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {v13, v0}, Ljvk;-><init>(Ljava/lang/Object;)V

    new-instance v25, Ljyj;

    invoke-direct/range {v25 .. v25}, Ljyj;-><init>()V

    iget-object v9, v2, Ljyz;->d:Ljxa;

    if-eqz v9, :cond_7

    new-instance v0, Ljyv;

    iget-object v10, v2, Ljyz;->e:Ljxr;

    iget v11, v2, Ljyz;->f:I

    iget v12, v2, Ljyz;->g:I

    iget v8, v2, Ljyz;->h:I

    iget-object v15, v2, Ljyz;->u:Landroid/view/Surface;

    invoke-static {v15}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v15

    iget-object v5, v2, Ljyz;->w:Landroid/media/MediaCodec$Callback;

    invoke-static {v5}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v5

    iget-boolean v6, v2, Ljyz;->q:Z

    iget-object v3, v2, Ljyz;->b:Lkbc;

    iget-boolean v1, v2, Ljyz;->r:Z

    move/from16 v17, v8

    move-object v8, v0

    move-object/from16 v27, v13

    move/from16 v13, v17

    move-object/from16 v16, v5

    move/from16 v17, v6

    move-object/from16 v18, v7

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    move-object/from16 v21, v27

    move/from16 v22, v1

    move-object/from16 v23, v25

    invoke-direct/range {v8 .. v23}, Ljyv;-><init>(Ljxa;Ljxr;IIILjxx;Lmqp;Lmqp;ZLjym;Lkbc;Ljwb;Ljwb;ZLjyj;)V

    move-object/from16 v1, p0

    iput-object v0, v1, Ljyy;->d:Ljyb;

    goto :goto_4

    :cond_7
    move-object/from16 v27, v13

    const/4 v3, 0x0

    iput-object v3, v1, Ljyy;->d:Ljyb;

    :goto_4
    iget-object v3, v2, Ljyz;->c:Ljwx;

    if-eqz v3, :cond_c

    iget v0, v2, Ljyz;->y:I

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget v5, v3, Ljwx;->e:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_8

    const/16 v5, 0xc

    const/16 v10, 0xc

    goto :goto_5

    :cond_8
    const/16 v5, 0x10

    const/16 v10, 0x10

    :goto_5
    iget v5, v3, Ljwx;->d:I

    invoke-static {v5, v10, v6}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v5

    mul-int/lit8 v12, v5, 0xa

    :try_start_0
    new-instance v5, Landroid/media/AudioRecord;

    add-int/lit8 v8, v0, -0x1

    iget v9, v3, Ljwx;->d:I

    const/4 v11, 0x2

    move-object v7, v5

    invoke-direct/range {v7 .. v12}, Landroid/media/AudioRecord;-><init>(IIIII)V

    invoke-virtual {v5}, Landroid/media/AudioRecord;->getState()I

    move-result v0

    const/4 v6, 0x1

    if-ne v0, v6, :cond_9

    const/4 v6, 0x1

    goto :goto_6

    :cond_9
    const/4 v6, 0x0

    :goto_6
    invoke-static {v6}, Lmoz;->p(Z)V

    invoke-static {v5}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    const-string v5, "AudioRecordFactory"

    const-string v6, "Could not create AudioRecord"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    sget-object v0, Lmpx;->a:Lmpx;

    :goto_7
    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_b

    new-instance v5, Ljyt;

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioRecord;

    new-instance v6, Lldq;

    const/4 v7, 0x0

    invoke-direct {v6, v0, v7}, Lldq;-><init>(Landroid/media/AudioRecord;I)V

    invoke-direct {v5, v6}, Ljyt;-><init>(Lldp;)V

    iput-object v5, v1, Ljyy;->j:Lkmw;

    iget-object v0, v2, Ljyz;->x:Lkmx;

    if-eqz v0, :cond_a

    iget-object v5, v1, Ljyy;->j:Lkmw;

    invoke-interface {v0, v5}, Lkmx;->a(Lkmw;)Lkmw;

    move-result-object v0

    iput-object v0, v1, Ljyy;->j:Lkmw;

    :cond_a
    iget-object v0, v2, Ljyz;->c:Ljwx;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    new-instance v0, Ljyi;

    iget-object v5, v1, Ljyy;->j:Lkmw;

    iget-object v6, v1, Ljyy;->b:Ljxx;

    iget-object v7, v1, Ljyy;->c:Ljym;

    iget-object v8, v2, Ljyz;->b:Lkbc;

    iget-boolean v9, v2, Ljyz;->r:Z

    iget-boolean v10, v1, Ljyy;->p:Z

    move-object/from16 v16, v0

    move-object/from16 v17, v3

    move-object/from16 v18, v5

    move-object/from16 v19, v6

    move-object/from16 v20, v7

    move-object/from16 v21, v8

    move-object/from16 v22, v4

    move-object/from16 v23, v27

    move/from16 v24, v9

    move/from16 v26, v10

    invoke-direct/range {v16 .. v26}, Ljyi;-><init>(Ljwx;Lkmw;Ljxx;Ljym;Lkbc;Ljwb;Ljwb;ZLjyj;Z)V

    iput-object v0, v1, Ljyy;->e:Ljyf;

    goto :goto_9

    :cond_b
    iget-object v0, v1, Ljyy;->c:Ljym;

    sget-object v3, Ljyk;->f:Ljyk;

    invoke-virtual {v0, v3}, Ljym;->a(Ljyk;)V

    iget-object v0, v1, Ljyy;->b:Ljxx;

    invoke-interface {v0}, Ljxx;->f()V

    const/4 v3, 0x0

    goto :goto_8

    :cond_c
    const/4 v3, 0x0

    :goto_8
    iput-object v3, v1, Ljyy;->e:Ljyf;

    :goto_9
    iget-object v0, v2, Ljyz;->v:Ljye;

    if-eqz v0, :cond_d

    iput-object v0, v1, Ljyy;->k:Ljye;

    :cond_d
    iget-boolean v0, v2, Ljyz;->p:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljyq;

    iget-object v3, v1, Ljyy;->b:Ljxx;

    iget-object v4, v1, Ljyy;->c:Ljym;

    iget-object v5, v2, Ljyz;->d:Ljxa;

    move-object/from16 v6, v27

    invoke-direct {v0, v3, v4, v6, v5}, Ljyq;-><init>(Ljxx;Ljym;Ljwb;Ljxa;)V

    iget-object v3, v1, Ljyy;->f:Ljava/util/Map;

    const-string v4, "application/meta"

    invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_a

    :cond_e
    move-object/from16 v6, v27

    :goto_a
    iget-object v0, v2, Ljyz;->o:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ldne;

    iget-object v3, v1, Ljyy;->b:Ljxx;

    new-instance v4, Lcvb;

    iget-object v5, v2, Ldne;->a:Ljava/lang/Object;

    iget-object v2, v2, Ldne;->b:Ljava/lang/Object;

    check-cast v5, Lczg;

    invoke-direct {v4, v3, v6, v5, v2}, Lcvb;-><init>(Ljxx;Ljwb;Lczg;Lcqv;)V

    iget-object v2, v1, Ljyy;->f:Ljava/util/Map;

    iget-object v3, v4, Lcvb;->a:Ljava/lang/String;

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_b

    :cond_f
    const/4 v2, 0x1

    iput v2, v1, Ljyy;->l:I

    return-void
.end method

.method private final r(Z)Lnou;
    .locals 12

    iget-object v0, p0, Ljyy;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    mul-long v1, v1, v3

    iget-object v3, p0, Ljyy;->c:Ljym;

    invoke-virtual {v3}, Ljym;->close()V

    iget-object v3, p0, Ljyy;->m:Lnow;

    new-instance v4, Ljyw;

    const/4 v10, 0x1

    move-object v5, v4

    move-object v6, p0

    move v7, p1

    move-wide v8, v1

    invoke-direct/range {v5 .. v10}, Ljyw;-><init>(Ljyy;ZJI)V

    invoke-interface {v3, v4}, Lnow;->b(Ljava/util/concurrent/Callable;)Lnou;

    move-result-object v3

    iget-object v4, p0, Ljyy;->m:Lnow;

    new-instance v11, Ljyw;

    const/4 v10, 0x0

    move-object v5, v11

    move-object v6, p0

    move v7, p1

    move-wide v8, v1

    invoke-direct/range {v5 .. v10}, Ljyw;-><init>(Ljyy;ZJI)V

    invoke-interface {v4, v11}, Lnow;->b(Ljava/util/concurrent/Callable;)Lnou;

    move-result-object p1

    iget-object v1, p0, Ljyy;->m:Lnow;

    new-instance v2, Lbdj;

    const/16 v4, 0x13

    invoke-direct {v2, p0, v4}, Lbdj;-><init>(Ljyy;I)V

    invoke-interface {v1, v2}, Lnow;->b(Ljava/util/concurrent/Callable;)Lnou;

    move-result-object v1

    const/4 v2, 0x3

    new-array v2, v2, [Lnou;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 p1, 0x2

    aput-object v1, v2, p1

    invoke-static {v2}, Lnsy;->v([Lnou;)Lnom;

    move-result-object p1

    new-instance v1, Lcna;

    const/4 v2, 0x7

    invoke-direct {v1, p0, v2}, Lcna;-><init>(Ljyy;I)V

    iget-object v2, p0, Ljyy;->m:Lnow;

    invoke-virtual {p1, v1, v2}, Lnom;->b(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    invoke-static {p1}, Lnsy;->C(Lnou;)Lnou;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Ljyy;->n:I

    return v0
.end method

.method public final b()Landroid/media/MediaCodec;
    .locals 1

    iget-object v0, p0, Ljyy;->d:Ljyb;

    if-eqz v0, :cond_0

    check-cast v0, Ljyv;

    iget-object v0, v0, Ljyv;->c:Landroid/media/MediaCodec;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c()Lmqp;
    .locals 3

    iget-object v0, p0, Ljyy;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ljyy;->l:I

    const/4 v2, 0x4

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lmoz;->p(Z)V

    iget-object v1, p0, Ljyy;->d:Ljyb;

    if-eqz v1, :cond_1

    check-cast v1, Ljyv;

    iget-object v1, v1, Ljyv;->d:Landroid/view/Surface;

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_2

    sget-object v1, Lmpx;->a:Lmpx;

    monitor-exit v0

    return-object v1

    :cond_2
    invoke-static {v1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final close()V
    .locals 2

    :try_start_0
    invoke-virtual {p0}, Ljyy;->k()Lnou;

    move-result-object v0

    invoke-interface {v0}, Lnou;->get()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v0, "VideoRecorderImpl"

    const-string v1, "Failed to stop the video recorder at close"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final d()Lmqp;
    .locals 2

    :try_start_0
    iget-object v0, p0, Ljyy;->h:Lnou;

    invoke-interface {v0}, Lnou;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmqp;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    const-string v0, "VideoRecorderImpl"

    const-string v1, "Failed to retrieve the location. Ignoring"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0
.end method

.method public final e()Lmqp;
    .locals 2

    iget-object v0, p0, Ljyy;->d:Ljyb;

    if-eqz v0, :cond_0

    check-cast v0, Ljyv;

    iget-object v0, v0, Ljyv;->o:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "VideoRecorderImpl"

    const-string v1, "Cannot get frame count."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0
.end method

.method public final f()Lmqp;
    .locals 6

    iget-object v0, p0, Ljyy;->d:Ljyb;

    if-eqz v0, :cond_1

    check-cast v0, Ljyv;

    iget-object v1, v0, Ljyv;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v1

    iget-object v3, v0, Ljyv;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v3

    cmp-long v5, v1, v3

    if-lez v5, :cond_0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, v0, Ljyv;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    iget-object v4, v0, Ljyv;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljyv;->b(J)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v2, v0, Ljyv;->q:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v0, v0, Ljyv;->p:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    const-string v0, "Invalid recording time, start: %d, end: %d"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoEncoder"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lmpx;->a:Lmpx;

    :goto_0
    return-object v0

    :cond_1
    const-string v0, "VideoRecorderImpl"

    const-string v1, "Cannot get recording time."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0
.end method

.method public final g()Lnou;
    .locals 13

    iget-object v0, p0, Ljyy;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ljyy;->l:I

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    const-string v3, "VideoRecorderImpl"

    const-string v4, "STARTED"

    invoke-static {v1}, Ljyx;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is expected but we got "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long v4, v4, v6

    iget-object v1, p0, Ljyy;->c:Ljym;

    iget-boolean v6, v1, Ljym;->e:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    iput-wide v4, v1, Ljym;->g:J

    iget-object v6, v1, Ljym;->c:Ljava/lang/Object;

    monitor-enter v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    iget-object v8, v1, Ljym;->j:Ljava/util/concurrent/Future;

    if-eqz v8, :cond_2

    invoke-interface {v8, v7}, Ljava/util/concurrent/Future;->cancel(Z)Z

    iput-object v2, v1, Ljym;->j:Ljava/util/concurrent/Future;

    :cond_2
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :goto_0
    :try_start_2
    iget-object v1, p0, Ljyy;->d:Ljyb;

    const/4 v6, 0x5

    if-eqz v1, :cond_5

    move-object v8, v1

    check-cast v8, Ljyv;

    iget-object v8, v8, Ljyv;->a:Ljava/lang/Object;

    monitor-enter v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    move-object v9, v1

    check-cast v9, Ljyv;

    iget v9, v9, Ljyv;->x:I

    if-eq v9, v3, :cond_3

    const-string v1, "VideoEncoder"

    const-string v7, "VideoEncoder is not recording now"

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v8

    goto :goto_1

    :cond_3
    move-object v9, v1

    check-cast v9, Ljyv;

    iget-object v9, v9, Ljyv;->d:Landroid/view/Surface;

    if-eqz v9, :cond_4

    move-object v9, v1

    check-cast v9, Ljyv;

    iget-boolean v9, v9, Ljyv;->k:Z

    if-nez v9, :cond_4

    new-instance v9, Landroid/os/Bundle;

    invoke-direct {v9}, Landroid/os/Bundle;-><init>()V

    const-string v10, "drop-input-frames"

    invoke-virtual {v9, v10, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "drop-start-time-us"

    invoke-virtual {v9, v10, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object v10, v1

    check-cast v10, Ljyv;

    iget-object v10, v10, Ljyv;->c:Landroid/media/MediaCodec;

    invoke-virtual {v10, v9}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    :cond_4
    move-object v9, v1

    check-cast v9, Ljyv;

    iput-wide v4, v9, Ljyv;->n:J

    const-string v9, "Paused recording at %d (or excluding pause time: %d)"

    new-array v10, v3, [Ljava/lang/Object;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v10, v12

    move-object v11, v1

    check-cast v11, Ljyv;

    iget-wide v11, v11, Ljyv;->m:J

    sub-long v11, v4, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v7

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    check-cast v1, Ljyv;

    iput v6, v1, Ljyv;->x:I

    monitor-exit v8

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1

    :cond_5
    :goto_1
    iget-object v1, p0, Ljyy;->e:Ljyf;

    if-eqz v1, :cond_7

    move-object v7, v1

    check-cast v7, Ljyi;

    iget-object v7, v7, Ljyi;->e:Ljava/lang/Object;

    monitor-enter v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    move-object v8, v1

    check-cast v8, Ljyi;

    iget v8, v8, Ljyi;->P:I

    if-eq v8, v3, :cond_6

    const-string v1, "AudioEncoder"

    const-string v3, "It is not recording now"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    goto :goto_2

    :cond_6
    move-object v3, v1

    check-cast v3, Ljyi;

    iput v6, v3, Ljyi;->P:I

    move-object v3, v1

    check-cast v3, Ljyi;

    invoke-virtual {v3, v4, v5}, Ljyi;->d(J)J

    move-result-wide v8

    check-cast v1, Ljyi;

    iget-object v1, v1, Ljyi;->r:Ljava/util/Deque;

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v3}, Lmym;->c(Ljava/lang/Comparable;)Lmym;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z

    monitor-exit v7

    goto :goto_2

    :catchall_1
    move-exception v1

    monitor-exit v7
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v1

    :cond_7
    :goto_2
    iget-object v1, p0, Ljyy;->f:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljxw;

    invoke-interface {v3, v4, v5}, Ljxw;->b(J)V

    goto :goto_3

    :cond_8
    const/4 v1, 0x3

    iput v1, p0, Ljyy;->l:I

    invoke-static {v2}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    return-object v1

    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_5

    :goto_4
    throw v1

    :goto_5
    goto :goto_4
.end method

.method public final h()Lnou;
    .locals 13

    iget-object v0, p0, Ljyy;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ljyy;->l:I

    const/4 v2, 0x3

    const/4 v3, 0x0

    if-eq v1, v2, :cond_0

    const-string v2, "VideoRecorderImpl"

    const-string v4, "PAUSED"

    invoke-static {v1}, Ljyx;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is expected but we got "

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v3}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v4, 0x3e8

    mul-long v1, v1, v4

    iget-object v4, p0, Ljyy;->d:Ljyb;

    const/4 v5, 0x5

    const/4 v6, 0x2

    if-eqz v4, :cond_3

    move-object v7, v4

    check-cast v7, Ljyv;

    iget-object v7, v7, Ljyv;->a:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    :try_start_1
    move-object v8, v4

    check-cast v8, Ljyv;

    iget v8, v8, Ljyv;->x:I

    if-eq v8, v5, :cond_1

    const-string v4, "VideoEncoder"

    const-string v8, "It is not recording now"

    invoke-static {v4, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    goto :goto_0

    :cond_1
    move-object v8, v4

    check-cast v8, Ljyv;

    invoke-virtual {v8, v1, v2}, Ljyv;->e(J)V

    move-object v8, v4

    check-cast v8, Ljyv;

    iget-object v8, v8, Ljyv;->d:Landroid/view/Surface;

    const/4 v9, 0x0

    if-eqz v8, :cond_2

    move-object v8, v4

    check-cast v8, Ljyv;

    iget-boolean v8, v8, Ljyv;->k:Z

    if-nez v8, :cond_2

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    const-string v10, "drop-input-frames"

    invoke-virtual {v8, v10, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v10, "drop-start-time-us"

    invoke-virtual {v8, v10, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    const-string v10, "time-offset-us"

    move-object v11, v4

    check-cast v11, Ljyv;

    iget-wide v11, v11, Ljyv;->m:J

    neg-long v11, v11

    invoke-virtual {v8, v10, v11, v12}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    move-object v10, v4

    check-cast v10, Ljyv;

    iget-object v10, v10, Ljyv;->c:Landroid/media/MediaCodec;

    invoke-virtual {v10, v8}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    :cond_2
    const-string v8, "Resumed recording at %d (or excluding pause time: %d)"

    new-array v10, v6, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v10, v9

    move-object v9, v4

    check-cast v9, Ljyv;

    iget-wide v11, v9, Ljyv;->m:J

    sub-long v11, v1, v11

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v11, 0x1

    aput-object v9, v10, v11

    invoke-static {v8, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    check-cast v4, Ljyv;

    iput v6, v4, Ljyv;->x:I

    monitor-exit v7

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :cond_3
    :goto_0
    iget-object v4, p0, Ljyy;->e:Ljyf;

    if-eqz v4, :cond_5

    move-object v7, v4

    check-cast v7, Ljyi;

    iget-object v7, v7, Ljyi;->e:Ljava/lang/Object;

    monitor-enter v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    :try_start_3
    move-object v8, v4

    check-cast v8, Ljyi;

    iget v8, v8, Ljyi;->P:I

    if-eq v8, v5, :cond_4

    const-string v4, "AudioEncoder"

    const-string v5, "It is not recording now"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v7

    goto :goto_1

    :cond_4
    move-object v5, v4

    check-cast v5, Ljyi;

    iput v6, v5, Ljyi;->P:I

    move-object v5, v4

    check-cast v5, Ljyi;

    invoke-virtual {v5, v1, v2}, Ljyi;->d(J)J

    move-result-wide v8

    check-cast v4, Ljyi;

    invoke-virtual {v4, v8, v9}, Ljyi;->i(J)V

    monitor-exit v7

    goto :goto_1

    :catchall_1
    move-exception v1

    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v1

    :cond_5
    :goto_1
    iget-object v4, p0, Ljyy;->f:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljxw;

    invoke-interface {v5, v1, v2}, Ljxw;->d(J)V

    goto :goto_2

    :cond_6
    iget-object v4, p0, Ljyy;->c:Ljym;

    iget-boolean v5, v4, Ljym;->e:Z

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_7
    iget-object v5, v4, Ljym;->c:Ljava/lang/Object;

    monitor-enter v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :try_start_5
    iget-wide v7, v4, Ljym;->g:J

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-nez v11, :cond_8

    const-string v1, "EncWatcher"

    const-string v2, "Resume without pause"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    goto :goto_4

    :cond_8
    iget-wide v7, v4, Ljym;->g:J

    sub-long/2addr v1, v7

    cmp-long v7, v1, v9

    if-ltz v7, :cond_9

    iget-wide v7, v4, Ljym;->h:J

    add-long/2addr v7, v1

    iput-wide v7, v4, Ljym;->h:J

    goto :goto_3

    :cond_9
    const-string v1, "EncWatcher"

    iget-wide v7, v4, Ljym;->h:J

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Pause duration is negative: "

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    iput-wide v9, v4, Ljym;->g:J

    invoke-virtual {v4}, Ljym;->c()V

    monitor-exit v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :goto_4
    :try_start_6
    iput v6, p0, Ljyy;->l:I

    invoke-static {v3}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    return-object v1

    :catchall_2
    move-exception v1

    :try_start_7
    monitor-exit v5
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw v1

    :catchall_3
    move-exception v1

    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    goto :goto_6

    :goto_5
    throw v1

    :goto_6
    goto :goto_5
.end method

.method public final i()Lnou;
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ljyy;->r(Z)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final j(Ljxy;)Lnou;
    .locals 6

    iget-object v0, p0, Ljyy;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ljyy;->l:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-static {v1}, Ljyx;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to start with state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :cond_0
    iput-object p1, p0, Ljyy;->g:Ljxy;

    iget-object v1, p0, Ljyy;->b:Ljxx;

    invoke-interface {v1, p1}, Ljxx;->c(Ljxy;)V

    iget-object p1, p0, Ljyy;->c:Ljym;

    iget-object v1, p0, Ljyy;->g:Ljxy;

    invoke-static {v1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v1

    iput-object v1, p1, Ljym;->d:Lmqp;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    iget-object p1, p0, Ljyy;->m:Lnow;

    new-instance v1, Lbdj;

    const/16 v3, 0x10

    invoke-direct {v1, p0, v3}, Lbdj;-><init>(Ljyy;I)V

    invoke-interface {p1, v1}, Lnow;->b(Ljava/util/concurrent/Callable;)Lnou;

    move-result-object p1

    iget-object v1, p0, Ljyy;->m:Lnow;

    new-instance v3, Lbdj;

    const/16 v4, 0x11

    invoke-direct {v3, p0, v4}, Lbdj;-><init>(Ljyy;I)V

    invoke-interface {v1, v3}, Lnow;->b(Ljava/util/concurrent/Callable;)Lnou;

    move-result-object v1

    iget-object v3, p0, Ljyy;->m:Lnow;

    new-instance v4, Lbdj;

    const/16 v5, 0x12

    invoke-direct {v4, p0, v5}, Lbdj;-><init>(Ljyy;I)V

    invoke-interface {v3, v4}, Lnow;->b(Ljava/util/concurrent/Callable;)Lnou;

    move-result-object v3

    const/4 v4, 0x3

    new-array v4, v4, [Lnou;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    aput-object v1, v4, v2

    const/4 p1, 0x2

    aput-object v3, v4, p1

    invoke-static {v4}, Lnsy;->v([Lnou;)Lnom;

    move-result-object p1

    new-instance v1, Lcna;

    const/4 v2, 0x6

    invoke-direct {v1, p0, v2}, Lcna;-><init>(Ljyy;I)V

    iget-object v2, p0, Ljyy;->m:Lnow;

    invoke-virtual {p1, v1, v2}, Lnom;->b(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final k()Lnou;
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljyy;->r(Z)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final l(Landroid/media/MediaFormat;)V
    .locals 3

    iget-boolean v0, p0, Ljyy;->o:Z

    const-string v1, "Should handle encoder internally."

    const-string v2, "VideoRecorderImpl"

    if-nez v0, :cond_0

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Ljyy;->d:Ljyb;

    if-eqz v0, :cond_2

    check-cast v0, Ljyv;

    iget-boolean v2, v0, Ljyv;->k:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1}, Ljyv;->c(Landroid/media/MediaFormat;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p1, "Failed to notify output media format changed event."

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final m(Ljava/io/FileDescriptor;)V
    .locals 4

    iget-object v0, p0, Ljyy;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ljyy;->l:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const-string p1, "VideoRecorderImpl"

    const-string v2, "STARTED"

    invoke-static {v1}, Ljyx;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is expected but we got "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Ljyy;->b:Ljxx;

    invoke-interface {v1, p1}, Ljxx;->h(Ljava/io/FileDescriptor;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final n(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 3

    iget-boolean v0, p0, Ljyy;->o:Z

    const-string v1, "Should handle encoder internally."

    const-string v2, "VideoRecorderImpl"

    if-nez v0, :cond_0

    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Ljyy;->d:Ljyb;

    if-eqz v0, :cond_2

    check-cast v0, Ljyv;

    iget-boolean v2, v0, Ljyv;->k:Z

    if-eqz v2, :cond_1

    invoke-virtual {v0, p1, p2}, Ljyv;->f(ILandroid/media/MediaCodec$BufferInfo;)V

    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    const-string p1, "Failed to write video date due to not video encoder."

    invoke-static {v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final o(Ljava/lang/Object;)V
    .locals 4

    iget-object v0, p0, Ljyy;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ljyy;->l:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_0

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const-string p1, "VideoRecorderImpl"

    invoke-static {v1}, Ljyx;->a(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Trying to add metadata but state is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Ljyy;->b:Ljxx;

    invoke-interface {v1, p1}, Ljxx;->p(Ljava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final p()Lmqp;
    .locals 2

    iget-object v0, p0, Ljyy;->f:Ljava/util/Map;

    const-string v1, "application/meta"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxw;

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0
.end method

.method public final q(F)V
    .locals 6

    iget-object v0, p0, Ljyy;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ljyy;->l:I

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Ljyy;->d:Ljyb;

    if-eqz v1, :cond_2

    move-object v2, v1

    check-cast v2, Ljyv;

    iget-object v2, v2, Ljyv;->a:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    move-object v3, v1

    check-cast v3, Ljyv;

    iget v3, v3, Ljyv;->x:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    const-string p1, "VideoEncoder"

    invoke-static {v3}, Ljyx;->b(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "illegal state as "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v2

    goto :goto_0

    :cond_1
    move-object v3, v1

    check-cast v3, Ljyv;

    iget v3, v3, Ljyv;->f:I

    int-to-float v3, v3

    mul-float v3, v3, p1

    move-object v4, v1

    check-cast v4, Ljyv;

    iget-object v4, v4, Ljyv;->g:Landroid/util/Range;

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/util/Range;->clamp(Ljava/lang/Comparable;)Ljava/lang/Comparable;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move-object v4, v1

    check-cast v4, Ljyv;

    iget v4, v4, Ljyv;->f:I

    int-to-float v4, v4

    mul-float p1, p1, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Request bit rate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p1, " but get "

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string v4, "video-bitrate"

    invoke-virtual {p1, v4, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    check-cast v1, Ljyv;

    iget-object v1, v1, Ljyv;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1, p1}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :cond_2
    const-string p1, "VideoRecorderImpl"

    const-string v1, "video encoder is not enabled here, so ignored."

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1
.end method
