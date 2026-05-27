.class public final Lgta;
.super Ljava/lang/Object;

# interfaces
.implements Ldyd;
.implements Lkad;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Lnou;

.field private final c:Z

.field private final d:Lmqp;

.field private final e:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private f:Lmqp;

.field private g:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/qualityscore/SmartCaptureFrameQualityScorer"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgta;->a:Lnak;

    return-void
.end method

.method private constructor <init>(Lnou;ZZLmqp;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lgta;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Lgta;->f:Lmqp;

    iput-boolean v1, p0, Lgta;->g:Z

    iput-object p1, p0, Lgta;->b:Lnou;

    iput-boolean p2, p0, Lgta;->c:Z

    if-eqz p3, :cond_0

    invoke-static {}, Lgsv;->b()Lgsv;

    move-result-object p1

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Lgta;->d:Lmqp;

    goto :goto_0

    :cond_0
    iput-object v0, p0, Lgta;->d:Lmqp;

    :goto_0
    iput-object p4, p0, Lgta;->f:Lmqp;

    return-void
.end method

.method public static a(Landroid/content/Context;Ldhi;Lkli;Ljava/util/concurrent/Executor;Lkbc;ZLmqp;Lmqp;)Lgta;
    .locals 19

    move-object/from16 v0, p1

    sget-object v1, Ldhf;->d:Ldhj;

    invoke-interface {v0, v1}, Ldhi;->l(Ldhj;)Z

    move-result v5

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p5, :cond_0

    invoke-interface/range {p1 .. p1}, Ldhi;->e()V

    const/4 v9, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual/range {p6 .. p6}, Lmqp;->g()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v9, 0x1

    goto :goto_0

    :cond_1
    const/4 v9, 0x0

    :goto_0
    invoke-interface/range {p1 .. p1}, Ldhi;->e()V

    invoke-interface/range {p2 .. p2}, Lkli;->k()Lklv;

    move-result-object v3

    sget-object v4, Lklv;->a:Lklv;

    if-ne v3, v4, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    if-eqz v3, :cond_4

    sget-object v4, Ldhw;->b:Ldhj;

    invoke-interface {v0, v4}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-eqz v4, :cond_3

    goto :goto_2

    :cond_3
    const/4 v15, 0x0

    goto :goto_3

    :cond_4
    sget-object v4, Ldhw;->c:Ldhj;

    invoke-interface {v0, v4}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v15, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    invoke-interface/range {p1 .. p1}, Ldhi;->e()V

    const/4 v15, 0x1

    :goto_3
    sget-object v4, Ldhw;->d:Ldhj;

    invoke-interface {v0, v4}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface/range {p1 .. p1}, Ldhi;->e()V

    const/4 v12, 0x1

    goto :goto_4

    :cond_6
    const/4 v12, 0x0

    :goto_4
    sget-object v4, Ldhw;->R:Ldhj;

    invoke-interface {v0, v4}, Ldhi;->l(Ldhj;)Z

    move-result v14

    if-eqz v3, :cond_7

    sget-object v4, Ldhw;->e:Ldhj;

    invoke-interface {v0, v4}, Ldhi;->l(Ldhj;)Z

    move-result v4

    move v13, v4

    goto :goto_5

    :cond_7
    sget-object v4, Ldhw;->f:Ldhj;

    invoke-interface {v0, v4}, Ldhi;->l(Ldhj;)Z

    move-result v4

    move v13, v4

    :goto_5
    if-eqz v3, :cond_8

    sget-object v3, Ldhw;->g:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    move/from16 v16, v3

    goto :goto_6

    :cond_8
    sget-object v3, Ldhw;->h:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    move/from16 v16, v3

    :goto_6
    sget-object v3, Ldhw;->j:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface/range {p1 .. p1}, Ldhi;->e()V

    const/4 v8, 0x1

    goto :goto_7

    :cond_9
    const/4 v8, 0x0

    :goto_7
    invoke-interface/range {p1 .. p1}, Ldhi;->e()V

    sget-object v3, Ldhw;->l:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_a

    const/4 v3, 0x3

    const/4 v11, 0x3

    goto :goto_8

    :cond_a
    sget-object v3, Ldhw;->k:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_b

    const/4 v11, 0x2

    goto :goto_8

    :cond_b
    const/4 v11, 0x1

    :goto_8
    sget-object v3, Ldhw;->m:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eq v1, v3, :cond_c

    const/4 v1, 0x2

    goto :goto_9

    :cond_c
    const/4 v1, 0x5

    :goto_9
    sget-object v3, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0xb4

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    sget-object v6, Ldhf;->a:Ldhk;

    invoke-interface {v0, v6}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    new-instance v6, Lgsy;

    invoke-direct {v6, v3, v4, v2}, Lgsy;-><init>(JI)V

    invoke-virtual {v0, v6}, Lj$/util/Optional;->map(Ljava/util/function/Function;)Lj$/util/Optional;

    move-result-object v0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v2}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    new-instance v0, Lgsz;

    move-object v2, v0

    move-object/from16 v3, p0

    move-object/from16 v4, p4

    move v10, v15

    move/from16 v17, v14

    move/from16 v14, v16

    move/from16 v18, v15

    move v15, v1

    invoke-direct/range {v2 .. v15}, Lgsz;-><init>(Landroid/content/Context;Lkbc;ZJZZZIZZZI)V

    move-object/from16 v1, p3

    invoke-static {v0, v1}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    new-instance v1, Lgta;

    move-object/from16 v2, p6

    move/from16 v3, v17

    move/from16 v4, v18

    invoke-direct {v1, v0, v4, v3, v2}, Lgta;-><init>(Lnou;ZZLmqp;)V

    return-object v1
.end method


# virtual methods
.method public final declared-synchronized b(Lkpb;Lgrw;Z)Lmqp;
    .locals 21

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    monitor-enter p0

    :try_start_0
    iget-boolean v2, v1, Lgta;->g:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    move-object v2, v3

    goto :goto_0

    :cond_0
    iget-object v2, v1, Lgta;->b:Lnou;

    invoke-static {v2}, Ljvd;->r(Lnou;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;

    :goto_0
    if-eqz v2, :cond_14

    if-eqz p1, :cond_14

    iget-object v4, v0, Lgrw;->o:Landroid/graphics/Rect;

    if-eqz v4, :cond_13

    iget-object v4, v0, Lgrw;->q:[Lgrz;

    if-eqz v4, :cond_12

    array-length v4, v4

    if-nez v4, :cond_2

    iget-boolean v4, v1, Lgta;->c:Z

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    sget-object v0, Lmpx;->a:Lmpx;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_2
    :goto_1
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lkpb;->c()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, v0, Lgrw;->t:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    invoke-interface/range {p1 .. p1}, Lkpb;->b()I

    move-result v6

    int-to-float v6, v6

    iget-object v7, v0, Lgrw;->t:Landroid/graphics/Rect;

    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    int-to-float v7, v7

    iget-boolean v8, v0, Lgrw;->r:Z

    const/4 v15, 0x0

    if-nez v8, :cond_3

    iget-object v8, v1, Lgta;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v8, v15}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v8

    goto :goto_2

    :cond_3
    const/4 v8, 0x0

    :goto_2
    sget-object v9, Locr;->c:Locr;

    invoke-virtual {v9}, Lnws;->O()Lnwn;

    move-result-object v9

    iget-object v10, v9, Lnwn;->b:Lnws;

    invoke-virtual {v10}, Lnws;->ac()Z

    move-result v10

    if-nez v10, :cond_4

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_4
    iget-object v10, v9, Lnwn;->b:Lnws;

    check-cast v10, Locr;

    iget v11, v10, Locr;->a:I

    const/4 v12, 0x1

    or-int/2addr v11, v12

    iput v11, v10, Locr;->a:I

    iput-boolean v8, v10, Locr;->b:Z

    invoke-virtual {v9}, Lnwn;->i()Lnws;

    move-result-object v8

    check-cast v8, Locr;

    sget-object v9, Locd;->k:Locd;

    invoke-virtual {v9}, Lnws;->O()Lnwn;

    move-result-object v9

    iget v10, v0, Lgrw;->s:I

    rsub-int v10, v10, 0x168

    iget-object v11, v9, Lnwn;->b:Lnws;

    invoke-virtual {v11}, Lnws;->ac()Z

    move-result v11

    if-nez v11, :cond_5

    invoke-virtual {v9}, Lnwn;->p()V

    :cond_5
    div-float/2addr v4, v5

    div-float/2addr v6, v7

    rem-int/lit16 v10, v10, 0x168

    iget-object v5, v9, Lnwn;->b:Lnws;

    check-cast v5, Locd;

    iget v7, v5, Locd;->a:I

    or-int/lit8 v7, v7, 0x4

    iput v7, v5, Locd;->a:I

    iput v10, v5, Locd;->c:I

    invoke-virtual {v9}, Lnwn;->i()Lnws;

    move-result-object v5

    check-cast v5, Locd;

    iget-object v7, v1, Lgta;->f:Lmqp;

    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, v1, Lgta;->f:Lmqp;

    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ldxz;

    iget-wide v9, v0, Lgrw;->c:J

    invoke-interface {v7, v9, v10}, Ldxz;->a(J)Ljyp;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-static {v0, v7, v4, v6}, Ldsj;->c(Lgrw;Ljyp;FF)Lobf;

    move-result-object v3

    goto :goto_3

    :cond_6
    :goto_3
    if-nez v3, :cond_7

    invoke-static {v0, v4, v6}, Ldsj;->a(Lgrw;FF)Lobf;

    move-result-object v3

    :cond_7
    sget-object v4, Locj;->m:Locj;

    invoke-virtual {v4}, Lnws;->O()Lnwn;

    move-result-object v4

    iget-wide v6, v0, Lgrw;->c:J

    iget-object v9, v4, Lnwn;->b:Lnws;

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v9

    if-nez v9, :cond_8

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_8
    iget-object v9, v4, Lnwn;->b:Lnws;

    move-object v10, v9

    check-cast v10, Locj;

    iget v11, v10, Locj;->a:I

    const/4 v13, 0x2

    or-int/2addr v11, v13

    iput v11, v10, Locj;->a:I

    iput-wide v6, v10, Locj;->c:J

    invoke-virtual {v9}, Lnws;->ac()Z

    move-result v6

    if-nez v6, :cond_9

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_9
    iget-object v6, v4, Lnwn;->b:Lnws;

    move-object v7, v6

    check-cast v7, Locj;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v7, Locj;->e:Lobf;

    iget v3, v7, Locj;->a:I

    or-int/lit8 v3, v3, 0x40

    iput v3, v7, Locj;->a:I

    invoke-virtual {v6}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_a

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_a
    iget-object v3, v4, Lnwn;->b:Lnws;

    move-object v6, v3

    check-cast v6, Locj;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v5, v6, Locj;->d:Locd;

    iget v5, v6, Locj;->a:I

    or-int/lit8 v5, v5, 0x20

    iput v5, v6, Locj;->a:I

    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_b

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_b
    iget-object v3, v4, Lnwn;->b:Lnws;

    move-object v5, v3

    check-cast v5, Locj;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v8, v5, Locj;->k:Locr;

    iget v6, v5, Locj;->a:I

    const/high16 v7, 0x200000

    or-int/2addr v6, v7

    iput v6, v5, Locj;->a:I

    if-eqz p3, :cond_e

    iget-boolean v3, v0, Lgrw;->r:Z

    if-nez v3, :cond_c

    iget-object v5, v1, Lgta;->d:Lmqp;

    invoke-virtual {v5}, Lmqp;->g()Z

    move-result v6

    if-eqz v6, :cond_c

    invoke-virtual {v5}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lgsv;

    iget-wide v5, v0, Lgrw;->c:J

    invoke-virtual {v3, v5, v6}, Lgsv;->a(J)Z

    move-result v0

    xor-int/lit8 v3, v0, 0x1

    goto :goto_4

    :cond_c
    :goto_4
    iget-object v0, v4, Lnwn;->b:Lnws;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_d
    iget-object v0, v4, Lnwn;->b:Lnws;

    check-cast v0, Locj;

    iget v5, v0, Locj;->a:I

    or-int/lit16 v5, v5, 0x200

    iput v5, v0, Locj;->a:I

    iput-boolean v3, v0, Locj;->f:Z

    if-eqz v3, :cond_10

    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Locj;

    iget-boolean v0, v2, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;->c:Z

    xor-int/2addr v0, v12

    const-string v4, "BurstCurator closed"

    invoke-static {v0, v4}, Lmoz;->q(ZLjava/lang/Object;)V

    const-string v0, "BurstCurator.toByteArray"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v3}, Lnve;->J()[B

    move-result-object v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v4, "BurstCurator.processYUVFrame"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-wide v4, v2, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;->b:J

    invoke-virtual {v2, v4, v5, v0}, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;->nativeProcessMetadata(J[B)[B

    move-result-object v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v4, "BurstCurator.parseFrom"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, v2, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;->a:Lnwh;

    sget-object v4, Locj;->m:Locj;

    array-length v5, v0

    invoke-static {v4, v0, v15, v5, v2}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object v0

    invoke-static {v0}, Lnws;->ae(Lnws;)V

    check-cast v0, Locj;
    :try_end_2
    .catch Lnxd; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v3, v0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_3
    const-string v0, "BURST_CURATOR"

    const-string v2, "Proto serialization error."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v0, Lgsx;

    invoke-direct {v0, v3}, Lgsx;-><init>(Locj;)V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_e
    :try_start_4
    invoke-virtual {v3}, Lnws;->ac()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-virtual {v4}, Lnwn;->p()V

    :cond_f
    iget-object v0, v4, Lnwn;->b:Lnws;

    check-cast v0, Locj;

    iget v3, v0, Locj;->a:I

    or-int/lit16 v3, v3, 0x200

    iput v3, v0, Locj;->a:I

    iput-boolean v15, v0, Locj;->f:Z

    :cond_10
    invoke-virtual {v4}, Lnwn;->i()Lnws;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Locj;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    invoke-interface/range {p1 .. p1}, Lkpb;->g()Ljava/util/List;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkpa;

    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkpa;

    invoke-interface {v0, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpa;

    invoke-interface {v4}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-interface {v4}, Lkpa;->getPixelStride()I

    move-result v8

    invoke-interface {v4}, Lkpa;->getRowStride()I

    move-result v9

    invoke-interface {v5}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v10

    invoke-interface {v5}, Lkpa;->getPixelStride()I

    move-result v11

    invoke-interface {v5}, Lkpa;->getRowStride()I

    move-result v13

    invoke-interface {v0}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v14

    invoke-interface {v0}, Lkpa;->getPixelStride()I

    move-result v16

    invoke-interface {v0}, Lkpa;->getRowStride()I

    move-result v0

    invoke-interface/range {p1 .. p1}, Lkpb;->c()I

    move-result v17

    invoke-interface/range {p1 .. p1}, Lkpb;->b()I

    move-result v18

    invoke-interface/range {p1 .. p1}, Lkpb;->a()I

    move-result v19

    iget-boolean v4, v2, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;->c:Z

    xor-int/2addr v4, v12

    const-string v5, "BurstCurator closed"

    invoke-static {v4, v5}, Lmoz;->q(ZLjava/lang/Object;)V

    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_11

    invoke-virtual {v14}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v4

    if-eqz v4, :cond_11

    const-string v4, "BurstCurator.toByteArray"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    invoke-virtual {v3}, Lnve;->J()[B

    move-result-object v20

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v4, "BurstCurator.processYUVFrame"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    iget-wide v5, v2, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;->b:J

    move-object v4, v2

    move v12, v13

    move-object v13, v14

    move/from16 v14, v16

    move-object/from16 p2, v3

    const/4 v3, 0x0

    move v15, v0

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v20

    invoke-virtual/range {v4 .. v19}, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;->nativeProcessYUV(JLjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IIII[BI)[B

    move-result-object v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    const-string v4, "BurstCurator.parseFrom"

    invoke-static {v4}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    iget-object v2, v2, Lcom/google/android/libraries/vision/smartcapture/BurstCurator;->a:Lnwh;

    sget-object v4, Locj;->m:Locj;

    array-length v5, v0

    invoke-static {v4, v0, v3, v5, v2}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object v0

    invoke-static {v0}, Lnws;->ae(Lnws;)V

    check-cast v0, Locj;
    :try_end_7
    .catch Lnxd; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-object v3, v0

    goto :goto_6

    :catch_1
    move-exception v0

    :try_start_8
    const-string v0, "BURST_CURATOR"

    const-string v2, "Proto serialization error."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p2

    :goto_6
    invoke-static {}, Landroid/os/Trace;->endSection()V

    new-instance v0, Lgsx;

    invoke-direct {v0, v3}, Lgsx;-><init>(Locj;)V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_11
    :try_start_9
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "Only direct buffers are currently supported"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_2
    move-exception v0

    move-object v2, v0

    sget-object v0, Lgta;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v3, "Couldn\'t get planes for analysis."

    const/16 v4, 0xca1

    invoke-static {v0, v3, v4, v2}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    sget-object v0, Lmpx;->a:Lmpx;
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_12
    :try_start_a
    sget-object v0, Lgta;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v2, "Faces array cannot be null."

    const/16 v3, 0xca2

    invoke-static {v0, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    sget-object v0, Lmpx;->a:Lmpx;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_13
    :try_start_b
    sget-object v0, Lgta;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v2, "Sensor region cannot be null."

    const/16 v3, 0xca3

    invoke-static {v0, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    sget-object v0, Lmpx;->a:Lmpx;
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_14
    :try_start_c
    sget-object v0, Lgta;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v2, "Input frame and metadata cannot be null."

    const/16 v3, 0xc9e

    invoke-static {v0, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    sget-object v0, Lmpx;->a:Lmpx;
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized close()V
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lgta;->g:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lgta;->g:Z

    iget-object v0, p0, Lgta;->b:Lnou;

    new-instance v1, Lgij;

    const/4 v2, 0x2

    invoke-direct {v1, p0, v2}, Lgij;-><init>(Lgta;I)V

    invoke-static {v0, v1}, Ljvd;->s(Lnou;Ljzs;)V
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

.method public final e()V
    .locals 2

    iget-object v0, p0, Lgta;->e:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    return-void
.end method
