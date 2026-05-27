.class public final Lcfj;
.super Ljava/lang/Object;

# interfaces
.implements Lcet;


# instance fields
.field public final a:Lcfl;

.field public final b:Ljava/util/Map;

.field public c:Z

.field public final d:Ljwb;

.field public e:Ljava/util/concurrent/atomic/AtomicInteger;

.field public f:Lcew;

.field public g:I

.field public final h:Landroidx/wear/ambient/AmbientDelegate;

.field public final i:Lbkc;

.field private final j:Landroid/content/res/Resources;

.field private final k:Ljvs;

.field private final l:Landroid/os/Handler;

.field private final m:Ljava/lang/Runnable;

.field private final n:Lfbz;

.field private final o:Ldhi;

.field private final p:J

.field private q:Lmqp;

.field private final r:Lchl;

.field private s:Lcey;

.field private final t:Lbze;


# direct methods
.method public constructor <init>(Lbkc;Lcfl;Landroidx/wear/ambient/AmbientDelegate;Lbze;Landroid/content/res/Resources;Lfbz;Ldhi;Lchl;Lklj;Lgzm;[B[B[B)V
    .locals 10

    move-object v0, p0

    move-object v3, p2

    move-object/from16 v1, p8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, v0, Lcfj;->b:Ljava/util/Map;

    new-instance v2, Lcfi;

    invoke-direct {v2, p0}, Lcfi;-><init>(Lcfj;)V

    iput-object v2, v0, Lcfj;->t:Lbze;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v2, v0, Lcfj;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    sget-object v2, Lmpx;->a:Lmpx;

    iput-object v2, v0, Lcfj;->q:Lmqp;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p1

    iput-object v2, v0, Lcfj;->i:Lbkc;

    move-object v4, p3

    iput-object v4, v0, Lcfj;->h:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v3, v0, Lcfj;->a:Lcfl;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v2, p5

    iput-object v2, v0, Lcfj;->j:Landroid/content/res/Resources;

    sget-object v2, Lgzd;->c:Lgzr;

    move-object/from16 v5, p10

    invoke-interface {v5, v2}, Lgzm;->a(Lgzb;)Ljvs;

    move-result-object v7

    iput-object v7, v0, Lcfj;->k:Ljvs;

    move-object/from16 v2, p6

    iput-object v2, v0, Lcfj;->n:Lfbz;

    move-object/from16 v2, p7

    iput-object v2, v0, Lcfj;->o:Ldhi;

    iput-object v1, v0, Lcfj;->r:Lchl;

    sget-object v5, Ldgs;->a:Ldhk;

    invoke-interface/range {p7 .. p7}, Ldhi;->e()V

    const-wide/16 v5, 0x1388

    iput-wide v5, v0, Lcfj;->p:J

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {v2}, Ljvd;->o(Landroid/os/Looper;)Landroid/os/Handler;

    move-result-object v2

    iput-object v2, v0, Lcfj;->l:Landroid/os/Handler;

    new-instance v2, Lbem;

    const/16 v5, 0x14

    invoke-direct {v2, p0, p2, v5}, Lbem;-><init>(Lcfj;Lcfl;I)V

    iput-object v2, v0, Lcfj;->m:Ljava/lang/Runnable;

    const/4 v2, 0x2

    iput v2, v0, Lcfj;->g:I

    iget-object v2, v3, Lcfl;->b:Ljwb;

    iput-object v2, v0, Lcfj;->d:Ljwb;

    iget-object v8, v1, Lchl;->b:Ljuf;

    new-instance v9, Lkjs;

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v1, v9

    move-object/from16 v2, p9

    invoke-direct/range {v1 .. v6}, Lkjs;-><init>(Lklj;Lcfl;Landroidx/wear/ambient/AmbientDelegate;I[B)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-interface {v7, v9, v1}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljuf;->d(Lkad;)V

    return-void
.end method

.method private final i()Z
    .locals 4

    iget-object v0, p0, Lcfj;->f:Lcew;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcew;->c()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    invoke-interface {v0}, Lcew;->c()I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    goto :goto_0

    :cond_0
    return v3

    :cond_1
    const/4 v1, 0x1

    :cond_2
    :goto_0
    return v1
.end method


# virtual methods
.method public final a(Lgqr;)V
    .locals 26

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    iget-object v2, v1, Lcfj;->k:Ljvs;

    check-cast v2, Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v0, v0, Lgqr;->a:Lkpb;

    invoke-interface {v0}, Lkpb;->close()V

    return-void

    :cond_0
    iget-object v2, v0, Lgqr;->a:Lkpb;

    const/4 v3, 0x0

    const/4 v4, 0x1

    :try_start_0
    invoke-interface {v2}, Lkpb;->a()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v5, 0x23

    if-eq v0, v5, :cond_2

    if-eqz v2, :cond_1

    :goto_0
    invoke-interface {v2}, Lkpb;->close()V

    :cond_1
    return-void

    :cond_2
    :try_start_1
    invoke-interface {v2}, Lkpb;->c()I

    move-result v0

    invoke-interface {v2}, Lkpb;->b()I

    move-result v6

    div-int/lit16 v7, v0, 0x280

    div-int/lit16 v8, v6, 0x1e0

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    if-lez v7, :cond_3

    :goto_1
    if-le v7, v4, :cond_4

    invoke-static {v0, v6, v7}, Lbze;->g(III)Z

    move-result v8

    if-nez v8, :cond_4

    add-int/lit8 v7, v7, -0x1

    goto :goto_1

    :cond_3
    const/4 v7, -0x1

    :cond_4
    if-gtz v7, :cond_5

    mul-int v8, v0, v6

    const v9, 0x4b000

    if-lt v8, v9, :cond_5

    const/4 v7, 0x1

    :cond_5
    if-gtz v7, :cond_7

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    return-void

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v2}, Lkpb;->a()I

    move-result v8

    const/4 v9, 0x0

    const/4 v15, 0x2

    if-ne v8, v5, :cond_8

    invoke-interface {v2}, Lkpb;->c()I

    move-result v10

    invoke-interface {v2}, Lkpb;->b()I

    move-result v11

    invoke-static {v10, v11, v7}, Lbze;->g(III)Z

    move-result v5

    if-eqz v5, :cond_8

    div-int v5, v10, v7

    const/16 v8, 0x280

    if-lt v5, v8, :cond_8

    div-int v5, v11, v7

    const/16 v8, 0x1e0

    if-lt v5, v8, :cond_8

    invoke-interface {v2}, Lkpb;->g()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkpa;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lkpa;

    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkpa;

    mul-int v13, v10, v11

    mul-int v14, v7, v7

    div-int/2addr v13, v14

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v24

    div-int/2addr v13, v15

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v25

    invoke-interface {v8}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-interface {v8}, Lkpa;->getPixelStride()I

    move-result v14

    invoke-interface {v8}, Lkpa;->getRowStride()I

    move-result v8

    invoke-interface {v12}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-interface {v12}, Lkpa;->getPixelStride()I

    move-result v17

    invoke-interface {v12}, Lkpa;->getRowStride()I

    move-result v18

    invoke-interface {v5}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v19

    invoke-interface {v5}, Lkpa;->getPixelStride()I

    move-result v20

    invoke-interface {v5}, Lkpa;->getRowStride()I

    move-result v5

    move-object v12, v13

    move v13, v14

    move v14, v8

    const/4 v8, 0x2

    move-object/from16 v15, v16

    move/from16 v16, v17

    move/from16 v17, v18

    move-object/from16 v18, v19

    move/from16 v19, v20

    move/from16 v20, v5

    move-object/from16 v21, v24

    move-object/from16 v22, v25

    move/from16 v23, v7

    invoke-static/range {v10 .. v23}, Lcom/google/android/libraries/camera/jni/yuv/YuvUtilNative;->downsampleYUV_420_888toNV21Native(IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;I)Z

    move-result v5

    if-eqz v5, :cond_9

    new-array v9, v8, [Ljava/nio/ByteBuffer;

    aput-object v24, v9, v3

    aput-object v25, v9, v4

    goto :goto_2

    :cond_8
    const/4 v8, 0x2

    :cond_9
    :goto_2
    if-eqz v9, :cond_14

    div-int v17, v0, v7

    div-int v11, v6, v7

    aget-object v0, v9, v3

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget-object v5, v9, v4

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/googlex/gcam/BufferUtils;->a(Ljava/nio/Buffer;)J

    move-result-wide v6

    invoke-static {v5}, Lcom/google/googlex/gcam/BufferUtils;->a(Ljava/nio/Buffer;)J

    move-result-wide v9

    new-instance v0, Lnrf;

    invoke-direct {v0, v6, v7}, Lnrf;-><init>(J)V

    new-instance v5, Lnrf;

    invoke-direct {v5, v9, v10}, Lnrf;-><init>(J)V

    new-instance v6, Lcom/google/googlex/gcam/YuvReadView;

    div-int/lit8 v15, v17, 0x2

    div-int/lit8 v16, v11, 0x2

    sget-object v7, Lnrj;->c:Lnrj;

    invoke-static {v0}, Lnrf;->a(Lnrf;)J

    move-result-wide v13

    invoke-static {v5}, Lnrf;->a(Lnrf;)J

    move-result-wide v18

    iget v0, v7, Lnrj;->d:I

    move/from16 v10, v17

    move/from16 v12, v17

    move/from16 v20, v0

    invoke-static/range {v10 .. v20}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_YuvReadView__SWIG_2(IIIJIIIJI)J

    move-result-wide v9

    invoke-direct {v6, v9, v10}, Lcom/google/googlex/gcam/YuvReadView;-><init>(J)V

    new-instance v0, Lcom/google/googlex/gcam/dirtylens/DirtyLens;

    invoke-direct {v0}, Lcom/google/googlex/gcam/dirtylens/DirtyLens;-><init>()V

    iget-wide v5, v6, Lcom/google/googlex/gcam/YuvReadView;->a:J

    const-wide/16 v9, 0x0

    cmp-long v0, v5, v9

    if-nez v0, :cond_a

    sget-object v0, Lmpx;->a:Lmpx;

    goto :goto_3

    :cond_a
    new-array v0, v4, [F

    invoke-static {v5, v6, v0}, Lcom/google/googlex/gcam/dirtylens/DirtyLens;->getDirtyLensRawScore(J[F)Z

    move-result v5

    if-eqz v5, :cond_b

    aget v0, v0, v3

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    goto :goto_3

    :cond_b
    sget-object v0, Lmpx;->a:Lmpx;

    :goto_3
    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, v1, Lcfj;->q:Lmqp;

    invoke-virtual {v5}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_c

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    neg-float v5, v5

    float-to-double v5, v5

    invoke-static {v5, v6}, Ljava/lang/Math;->exp(D)D

    move-result-wide v5

    double-to-float v5, v5

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v5, v6

    div-float/2addr v6, v5

    iget-object v5, v1, Lcfj;->n:Lfbz;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    iget-object v7, v1, Lcfj;->q:Lmqp;

    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkli;

    invoke-interface {v7}, Lkli;->k()Lklv;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Lfbz;->aB(Ljava/lang/Float;Lklv;)V

    :cond_c
    iget-object v5, v1, Lcfj;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    iget-object v6, v1, Lcfj;->h:Landroidx/wear/ambient/AmbientDelegate;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v7, v6, Landroidx/wear/ambient/AmbientDelegate;->a:Ljava/lang/Object;

    if-nez v7, :cond_d

    const/4 v15, 0x2

    goto :goto_4

    :cond_d
    iget-object v9, v6, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v9, Lbkc;

    iget-object v9, v9, Lbkc;->a:Ljava/lang/Object;

    move-object v10, v9

    check-cast v10, Lcom/google/googlex/gcam/DirtyLensHistory;

    iget-wide v10, v10, Lcom/google/googlex/gcam/DirtyLensHistory;->a:J

    check-cast v9, Lcom/google/googlex/gcam/DirtyLensHistory;

    invoke-static {v10, v11, v9, v0}, Lcom/google/googlex/gcam/GcamModuleJNI;->DirtyLensHistory_AddRawScore(JLcom/google/googlex/gcam/DirtyLensHistory;F)Z

    move-result v0

    iget-object v9, v6, Landroidx/wear/ambient/AmbientDelegate;->b:Ljava/lang/Object;

    check-cast v9, Lbkc;

    invoke-virtual {v9}, Lbkc;->d()Lcfo;

    move-result-object v9

    check-cast v7, Ljwi;

    invoke-virtual {v7, v9}, Ljwi;->bn(Ljava/lang/Object;)V

    iget-object v6, v6, Landroidx/wear/ambient/AmbientDelegate;->c:Ljava/lang/Object;

    sget-object v7, Ldgs;->a:Ldhk;

    invoke-interface {v6}, Ldhi;->f()V

    if-eqz v0, :cond_e

    const/4 v15, 0x1

    goto :goto_4

    :cond_e
    const/4 v15, 0x2

    :goto_4
    iget-boolean v0, v1, Lcfj;->c:Z

    if-eqz v0, :cond_11

    iget v0, v1, Lcfj;->g:I

    if-eq v15, v0, :cond_11

    add-int/lit8 v0, v15, -0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    iget-object v0, v1, Lcfj;->k:Ljvs;

    check-cast v0, Ljvk;

    iget-object v0, v0, Ljvk;->d:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_5

    :cond_f
    invoke-direct/range {p0 .. p0}, Lcfj;->i()Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, v1, Lcfj;->s:Lcey;

    if-eqz v0, :cond_10

    iget-object v6, v1, Lcfj;->j:Landroid/content/res/Resources;

    const v7, 0x7f140068

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v1, Lcfj;->j:Landroid/content/res/Resources;

    const v8, 0x7f140069

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v1, Lcfj;->t:Lbze;

    const/16 v9, 0x1b58

    invoke-static {v6, v7, v8, v3, v9}, Lced;->a(Ljava/lang/String;Ljava/lang/String;Lbze;ZI)Ljgt;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcey;->a(Ljgt;)Lcew;

    move-result-object v0

    iput-object v0, v1, Lcfj;->f:Lcew;

    iget-object v0, v1, Lcfj;->n:Lfbz;

    invoke-interface {v0}, Lfbz;->o()V

    iget-object v0, v1, Lcfj;->r:Lchl;

    iget-object v6, v0, Lchl;->a:Ljava/lang/Object;

    monitor-enter v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, v0, Lchl;->c:Ljuf;

    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    new-instance v6, Lcfh;

    invoke-direct {v6, v1, v3}, Lcfh;-><init>(Lcfj;I)V

    invoke-virtual {v0, v6}, Ljuf;->d(Lkad;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catchall_0
    move-exception v0

    :try_start_4
    monitor-exit v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v0

    :cond_10
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcfj;->g()V

    :goto_6
    iput v15, v1, Lcfj;->g:I

    :cond_11
    iget-object v0, v1, Lcfj;->o:Ldhi;

    sget-object v6, Ldgs;->a:Ldhk;

    invoke-interface {v0}, Ldhi;->f()V

    if-lez v5, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcfj;->g()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_12
    if-eqz v2, :cond_13

    goto/16 :goto_0

    :cond_13
    return-void

    :cond_14
    if-eqz v2, :cond_15

    goto/16 :goto_0

    :cond_15
    return-void

    :catchall_1
    move-exception v0

    move-object v5, v0

    if-eqz v2, :cond_16

    :try_start_6
    invoke-interface {v2}, Lkpb;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v0

    :try_start_7
    const-class v0, Ljava/lang/Throwable;

    const-string v6, "addSuppressed"

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Ljava/lang/Throwable;

    aput-object v8, v7, v3

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v3

    invoke-virtual {v0, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    :cond_16
    :goto_7
    goto :goto_9

    :goto_8
    throw v5

    :goto_9
    goto :goto_8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final b()Lceq;
    .locals 1

    iget-object v0, p0, Lcfj;->a:Lcfl;

    return-object v0
.end method

.method public final c()V
    .locals 1

    invoke-direct {p0}, Lcfj;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcfj;->g()V

    iget-object v0, p0, Lcfj;->f:Lcew;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcew;->a()V

    :cond_0
    return-void
.end method

.method public final d(Lkll;)V
    .locals 2

    iget-object v0, p0, Lcfj;->h:Landroidx/wear/ambient/AmbientDelegate;

    iget-object v1, p0, Lcfj;->a:Lcfl;

    invoke-virtual {v1, p1}, Lcfl;->d(Lkll;)Lcfk;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/wear/ambient/AmbientDelegate;->l(Lcfk;)V

    const/4 p1, 0x2

    iput p1, p0, Lcfj;->g:I

    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object p1, p0, Lcfj;->e:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-object p1, p0, Lcfj;->d:Ljwb;

    const/16 v0, 0xf

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcfj;->h()V

    return-void
.end method

.method public final e(Lkli;)V
    .locals 0

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Lcfj;->q:Lmqp;

    return-void
.end method

.method public final f(Lcey;)V
    .locals 0

    iput-object p1, p0, Lcfj;->s:Lcey;

    return-void
.end method

.method public final g()V
    .locals 4

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcfj;->c:Z

    iget-object v1, p0, Lcfj;->l:Landroid/os/Handler;

    iget-object v2, p0, Lcfj;->m:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcfj;->a:Lcfl;

    iget-object v2, v1, Lcfl;->c:Ljwb;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-interface {v2, v3}, Ljwb;->bn(Ljava/lang/Object;)V

    iget-object v1, v1, Lcfl;->b:Ljwb;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v1, v0}, Ljwb;->bn(Ljava/lang/Object;)V

    return-void
.end method

.method public final h()V
    .locals 4

    iget-object v0, p0, Lcfj;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcfj;->m:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcfj;->l:Landroid/os/Handler;

    iget-object v1, p0, Lcfj;->m:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcfj;->p:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
