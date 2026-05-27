.class public final Leby;
.super Ljava/lang/Object;

# interfaces
.implements Lebx;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Ledd;

.field private final c:Lecy;

.field private final d:Ldhi;

.field private final e:Ldne;

.field private final f:Ledq;

.field private final g:Legm;

.field private final h:Lkbc;

.field private final i:Lfuz;

.field private final j:Ldne;

.field private final k:Lcvr;

.field private final l:Lcvr;

.field private final m:Lcvr;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/hdrplus/HdrPlusPostProcessingPipelineImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Leby;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Ledd;Lecy;Lfuz;Logd;Logd;Logd;Ldhi;Ldne;Ldne;Ledq;Legm;Lkbc;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Leby;->b:Ledd;

    iput-object p2, p0, Leby;->c:Lecy;

    invoke-static {p4}, Lcvr;->M(Logd;)Lcvr;

    move-result-object p1

    iput-object p1, p0, Leby;->k:Lcvr;

    iput-object p3, p0, Leby;->i:Lfuz;

    invoke-static {p5}, Lcvr;->M(Logd;)Lcvr;

    move-result-object p1

    iput-object p1, p0, Leby;->l:Lcvr;

    invoke-static {p6}, Lcvr;->M(Logd;)Lcvr;

    move-result-object p1

    iput-object p1, p0, Leby;->m:Lcvr;

    iput-object p7, p0, Leby;->d:Ldhi;

    iput-object p8, p0, Leby;->j:Ldne;

    iput-object p9, p0, Leby;->e:Ldne;

    iput-object p10, p0, Leby;->f:Ledq;

    iput-object p11, p0, Leby;->g:Legm;

    iput-object p12, p0, Leby;->h:Lkbc;

    return-void
.end method

.method private static d(Ledo;)Lebh;
    .locals 1

    iget-object v0, p0, Ledo;->b:Leej;

    if-nez v0, :cond_2

    iget-object v0, p0, Ledo;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    if-nez v0, :cond_1

    iget-object p0, p0, Ledo;->c:Landroid/hardware/HardwareBuffer;

    if-eqz p0, :cond_0

    sget-object p0, Lebh;->d:Lebh;

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Unknown image format in PostprocessingImage."

    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    sget-object p0, Lebh;->c:Lebh;

    return-object p0

    :cond_2
    sget-object p0, Lebh;->b:Lebh;

    return-object p0
.end method

.method private final e(Ledo;)V
    .locals 2

    iget-object v0, p0, Leby;->f:Ledq;

    sget-object v1, Ldyy;->j:Ldyy;

    invoke-virtual {v0, p1, v1}, Ledq;->f(Ledo;Ldyy;)V

    iget-object p1, p1, Ledo;->n:Lgkr;

    iget-object p1, p1, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {p1}, Lgxl;->k()Lhjc;

    move-result-object p1

    invoke-interface {p1}, Lhjc;->b()V

    return-void
.end method

.method private static f(Ledo;)Z
    .locals 5

    iget-object p0, p0, Ledo;->d:Lcom/google/googlex/gcam/ShotMetadata;

    invoke-virtual {p0}, Lcom/google/googlex/gcam/ShotMetadata;->d()Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/google/googlex/gcam/FrameMetadata;->g()Lcom/google/googlex/gcam/FaceInfoVector;

    move-result-object p0

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/google/googlex/gcam/FaceInfoVector;->a()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long p0, v1, v3

    if-lez p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public final a(Lebb;Lmqp;Lefz;)Lmqp;
    .locals 8

    :try_start_0
    iget-object v0, p0, Leby;->h:Lkbc;

    const-string v1, "processPrimary"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    const/4 v6, 0x1

    const-string v7, "primary"

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v2 .. v7}, Leby;->c(Lebb;Lmqp;Lefz;ZLjava/lang/String;)Lmqp;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p2, p0, Leby;->h:Lkbc;

    invoke-interface {p2}, Lkbc;->f()V

    return-object p1

    :catchall_0
    move-exception p1

    iget-object p2, p0, Leby;->h:Lkbc;

    invoke-interface {p2}, Lkbc;->f()V

    throw p1
.end method

.method public final b(Lebb;Ledo;)V
    .locals 3

    iget-object v0, p0, Leby;->h:Lkbc;

    new-instance v1, Lapv;

    const/16 v2, 0x8

    invoke-direct {v1, p0, p1, p2, v2}, Lapv;-><init>(Leby;Lebb;Ledo;I)V

    const-string p1, "processSecondary"

    invoke-interface {v0, p1, v1}, Lkbc;->d(Ljava/lang/String;Ljava/lang/Runnable;)V

    return-void
.end method

.method public final c(Lebb;Lmqp;Lefz;ZLjava/lang/String;)Lmqp;
    .locals 28

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v0, p3

    if-eqz p4, :cond_3

    invoke-virtual/range {p2 .. p2}, Lmqp;->g()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual/range {p2 .. p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ledo;

    iget-object v4, v1, Leby;->k:Lcvr;

    invoke-virtual {v4}, Lcvr;->H()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, v3, Ledo;->n:Lgkr;

    iget-object v4, v4, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v4}, Lgxl;->h()Lgxy;

    move-result-object v4

    iget-object v5, v1, Leby;->k:Lcvr;

    invoke-virtual {v5}, Lcvr;->G()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lfsu;

    iget-wide v6, v3, Ledo;->g:J

    invoke-interface {v5, v4, v6, v7}, Lfsu;->h(Lgxy;J)V

    :cond_0
    iget-object v4, v1, Leby;->d:Ldhi;

    sget-object v5, Ldhg;->d:Ldhj;

    invoke-interface {v4, v5}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v4, v1, Leby;->d:Ldhi;

    sget-object v5, Ldhg;->m:Ldhj;

    invoke-interface {v4, v5}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    iget-object v4, v3, Ledo;->d:Lcom/google/googlex/gcam/ShotMetadata;

    invoke-virtual {v4}, Lcom/google/googlex/gcam/ShotMetadata;->o()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-direct {v1, v3}, Leby;->e(Ledo;)V

    :cond_2
    iget-object v3, v3, Ledo;->d:Lcom/google/googlex/gcam/ShotMetadata;

    iget-object v4, v1, Leby;->g:Legm;

    invoke-virtual {v3}, Lcom/google/googlex/gcam/ShotMetadata;->h()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Legm;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/googlex/gcam/ShotMetadata;->m(Ljava/lang/String;)V

    :cond_3
    iget-object v3, v1, Leby;->c:Lecy;

    sget-object v4, Lecy;->d:Lecy;

    if-ne v3, v4, :cond_5

    invoke-virtual/range {p2 .. p2}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lebh;->h:Lebh;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :cond_4
    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :cond_5
    sget-object v3, Lefz;->b:Lefz;

    if-ne v0, v3, :cond_7

    invoke-virtual/range {p2 .. p2}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lebh;->f:Lebh;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :cond_6
    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :cond_7
    sget-object v3, Lefz;->c:Lefz;

    if-ne v0, v3, :cond_9

    invoke-virtual/range {p2 .. p2}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lebh;->c:Lebh;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :cond_8
    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :cond_9
    invoke-virtual/range {p2 .. p2}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual/range {p2 .. p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledo;

    invoke-static {v0}, Leby;->d(Ledo;)Lebh;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    move-object v3, v0

    goto :goto_0

    :cond_a
    sget-object v0, Lmpx;->a:Lmpx;

    move-object v3, v0

    :goto_0
    iget-object v0, v1, Leby;->d:Ldhi;

    sget-object v4, Ldic;->a:Ldhk;

    invoke-interface {v0, v4}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v5, 0x1

    if-ne v0, v5, :cond_b

    const/4 v0, 0x1

    goto :goto_1

    :cond_b
    const/4 v0, 0x0

    :goto_1
    iget-object v6, v1, Leby;->d:Ldhi;

    sget-object v7, Ldic;->a:Ldhk;

    invoke-interface {v6, v7}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v6

    invoke-virtual {v6}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x2

    if-ne v6, v7, :cond_c

    const/4 v6, 0x1

    goto :goto_2

    :cond_c
    const/4 v6, 0x0

    :goto_2
    iget-object v7, v1, Leby;->i:Lfuz;

    invoke-virtual {v7}, Lklw;->k()Lklv;

    move-result-object v7

    sget-object v8, Lklv;->a:Lklv;

    if-nez v6, :cond_e

    if-eqz v0, :cond_d

    const/4 v9, 0x1

    goto :goto_3

    :cond_d
    const/4 v9, 0x0

    goto :goto_3

    :cond_e
    const/4 v9, 0x1

    :goto_3
    iget-object v10, v1, Leby;->i:Lfuz;

    invoke-virtual {v10}, Lklw;->k()Lklv;

    move-result-object v10

    sget-object v11, Lklv;->a:Lklv;

    if-ne v10, v11, :cond_f

    iget-object v10, v1, Leby;->d:Ldhi;

    sget-object v11, Ldhc;->g:Ldhj;

    invoke-interface {v10, v11}, Ldhi;->l(Ldhj;)Z

    move-result v10

    if-eqz v10, :cond_f

    iget-object v10, v2, Lebb;->a:Lgyq;

    invoke-virtual {v10}, Lgyq;->b()Z

    move-result v10

    if-eqz v10, :cond_f

    const/4 v10, 0x1

    goto :goto_4

    :cond_f
    const/4 v10, 0x0

    :goto_4
    iget-object v11, v1, Leby;->d:Ldhi;

    sget-object v12, Ldhc;->a:Ldhk;

    invoke-interface {v11}, Ldhi;->e()V

    iget-object v11, v1, Leby;->d:Ldhi;

    invoke-interface {v11}, Ldhi;->f()V

    iget-boolean v11, v2, Lebb;->j:Z

    iget-boolean v15, v2, Lebb;->h:Z

    iget-object v12, v1, Leby;->j:Ldne;

    invoke-virtual {v12}, Ldne;->h()Z

    move-result v22

    iget-boolean v14, v2, Lebb;->e:Z

    iget-object v12, v1, Leby;->l:Lcvr;

    invoke-virtual {v12}, Lcvr;->H()Z

    move-result v12

    const-string v13, "yuvToRgb"

    if-eqz v12, :cond_13

    iget-object v12, v1, Leby;->l:Lcvr;

    invoke-virtual {v12}, Lcvr;->G()Ljava/lang/Object;

    move-result-object v12

    instance-of v12, v12, Ledl;

    if-eqz v12, :cond_13

    invoke-virtual/range {p2 .. p2}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_10

    sget-object v0, Lebh;->b:Lebh;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :cond_10
    invoke-virtual/range {p2 .. p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledo;

    iget-object v2, v0, Ledo;->b:Leej;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v1, Leby;->h:Lkbc;

    const-string v3, "FaceRetouchYuv"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v2, v1, Leby;->f:Ledq;

    invoke-virtual {v2, v0}, Ledq;->i(Ledo;)V

    iget-object v2, v1, Leby;->h:Lkbc;

    invoke-interface {v2, v13}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v2, v1, Leby;->f:Ledq;

    invoke-virtual {v2, v0}, Ledq;->e(Ledo;)Ledo;

    move-result-object v0

    iget-object v2, v1, Leby;->h:Lkbc;

    const-string v3, "sendImageForPortraitProcessing"

    invoke-interface {v2, v3}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v2, v1, Leby;->f:Ledq;

    iget-object v3, v2, Ledq;->i:Lmqp;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ledk;

    iget-object v6, v0, Ledo;->n:Lgkr;

    invoke-interface {v3, v6}, Ledk;->c(Lgkr;)Ledm;

    move-result-object v3

    iget-object v8, v0, Ledo;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    if-eqz v8, :cond_12

    sget-object v6, Ledi;->a:Ljava/lang/String;

    invoke-static {}, Lebq;->b()Lnrz;

    move-result-object v6

    iget-object v7, v0, Ledo;->o:Lgxb;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v7, Lgxb;->b:Ljava/lang/Object;

    check-cast v7, Lcom/google/googlex/gcam/Tuning;

    iget-wide v9, v7, Lcom/google/googlex/gcam/Tuning;->a:J

    invoke-virtual {v8}, Lcom/google/googlex/gcam/InterleavedImageU8;->c()I

    move-result v7

    invoke-virtual {v8}, Lcom/google/googlex/gcam/InterleavedImageU8;->b()I

    move-result v11

    iget-object v12, v0, Ledo;->d:Lcom/google/googlex/gcam/ShotMetadata;

    iget-object v13, v0, Ledo;->l:Lcom/google/googlex/gcam/ShotParams;

    invoke-virtual {v13}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v14, v0, Ledo;->e:Lkab;

    iget v14, v14, Lkab;->e:I

    iget-object v15, v2, Ledq;->h:Ldhi;

    sget-object v4, Ldho;->bD:Ldhj;

    invoke-interface {v15, v4}, Ldhi;->l(Ldhj;)Z

    move-result v4

    iget-object v15, v0, Ledo;->o:Lgxb;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v15, Lgxb;->a:Ljava/lang/Object;

    iget-object v2, v2, Ledq;->j:Lgdd;

    iget-object v2, v2, Lgdd;->b:Lkaf;

    iget-object v5, v0, Ledo;->m:Lebb;

    iget-boolean v5, v5, Lebb;->d:Z

    new-instance v1, Lcom/google/googlex/gcam/PortraitRequest;

    invoke-direct {v1}, Lcom/google/googlex/gcam/PortraitRequest;-><init>()V

    rsub-int v14, v14, 0x168

    rem-int/lit16 v14, v14, 0x168

    invoke-static {v14}, Lnsy;->i(I)Lnqp;

    move-result-object v14

    move-object/from16 v22, v8

    move-wide/from16 p1, v9

    iget-wide v8, v1, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    iget v10, v14, Lnqp;->j:I

    invoke-static {v8, v9, v1, v10}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_image_rotation_set(JLcom/google/googlex/gcam/PortraitRequest;I)V

    iget-wide v8, v1, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    invoke-static {v8, v9, v1, v4}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_manually_rotate_xmp_jpg_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    new-instance v4, Lcom/google/googlex/gcam/PixelRectVector;

    invoke-direct {v4}, Lcom/google/googlex/gcam/PixelRectVector;-><init>()V

    check-cast v15, Lift;

    iget-object v8, v15, Lift;->b:Ljava/lang/Object;

    int-to-float v7, v7

    check-cast v8, Landroid/graphics/Rect;

    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    int-to-float v10, v11

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v11

    int-to-float v11, v11

    iget-object v14, v15, Lift;->c:Ljava/lang/Object;

    const/4 v15, 0x0

    :goto_5
    move-object/from16 p4, v3

    move-object v3, v14

    check-cast v3, [Landroid/hardware/camera2/params/Face;

    move-object/from16 v16, v14

    array-length v14, v3

    if-ge v15, v14, :cond_11

    div-float v14, v10, v11

    div-float v17, v7, v9

    aget-object v3, v3, v15

    invoke-virtual {v3}, Landroid/hardware/camera2/params/Face;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    move/from16 v18, v9

    new-instance v9, Lcom/google/googlex/gcam/PixelRect;

    invoke-direct {v9}, Lcom/google/googlex/gcam/PixelRect;-><init>()V

    move/from16 v19, v10

    iget v10, v3, Landroid/graphics/Rect;->left:I

    move/from16 v20, v11

    iget v11, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    mul-float v10, v10, v17

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Lcom/google/googlex/gcam/PixelRect;->f(I)V

    iget v10, v3, Landroid/graphics/Rect;->top:I

    iget v11, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    mul-float v10, v10, v14

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Lcom/google/googlex/gcam/PixelRect;->h(I)V

    iget v10, v3, Landroid/graphics/Rect;->right:I

    iget v11, v8, Landroid/graphics/Rect;->left:I

    sub-int/2addr v10, v11

    int-to-float v10, v10

    mul-float v10, v10, v17

    float-to-int v10, v10

    invoke-virtual {v9, v10}, Lcom/google/googlex/gcam/PixelRect;->g(I)V

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    iget v10, v8, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v10

    int-to-float v3, v3

    mul-float v3, v3, v14

    float-to-int v3, v3

    invoke-virtual {v9, v3}, Lcom/google/googlex/gcam/PixelRect;->i(I)V

    invoke-virtual {v4, v9}, Lcom/google/googlex/gcam/PixelRectVector;->a(Lcom/google/googlex/gcam/PixelRect;)V

    add-int/lit8 v15, v15, 0x1

    move-object/from16 v3, p4

    move-object/from16 v14, v16

    move/from16 v9, v18

    move/from16 v10, v19

    move/from16 v11, v20

    goto :goto_5

    :cond_11
    iget-wide v8, v1, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    iget-wide v10, v4, Lcom/google/googlex/gcam/PixelRectVector;->a:J

    move-wide/from16 v16, v8

    move-object/from16 v18, v1

    move-wide/from16 v19, v10

    move-object/from16 v21, v4

    invoke-static/range {v16 .. v21}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_faces_set(JLcom/google/googlex/gcam/PortraitRequest;JLcom/google/googlex/gcam/PixelRectVector;)V

    iget v3, v2, Lkaf;->a:I

    iget v2, v2, Lkaf;->b:I

    iget-wide v8, v1, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    invoke-static {v3}, Lcom/agc/LensSettings;->getUpscale(I)I

    move-result v3

    invoke-static {v8, v9, v1, v3}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_output_width_set(JLcom/google/googlex/gcam/PortraitRequest;I)V

    iget-wide v8, v1, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    invoke-static {v2}, Lcom/agc/LensSettings;->getUpscale(I)I

    move-result v2

    invoke-static {v8, v9, v1, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_output_height_set(JLcom/google/googlex/gcam/PortraitRequest;I)V

    new-instance v2, Lcom/google/googlex/gcam/StringFrameMetadataMap;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_StringFrameMetadataMap__SWIG_0()J

    move-result-wide v8

    const/4 v4, 0x1

    invoke-direct {v2, v8, v9, v4}, Lcom/google/googlex/gcam/StringFrameMetadataMap;-><init>(JZ)V

    sget-object v4, Ledi;->a:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/google/googlex/gcam/ShotMetadata;->d()Lcom/google/googlex/gcam/FrameMetadata;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Lcom/google/googlex/gcam/StringFrameMetadataMap;->b(Ljava/lang/String;Lcom/google/googlex/gcam/FrameMetadata;)V

    iget-wide v8, v1, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    iget-wide v10, v2, Lcom/google/googlex/gcam/StringFrameMetadataMap;->a:J

    move-wide/from16 v16, v8

    move-wide/from16 v19, v10

    move-object/from16 v21, v2

    invoke-static/range {v16 .. v21}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_frame_metadata_set(JLcom/google/googlex/gcam/PortraitRequest;JLcom/google/googlex/gcam/StringFrameMetadataMap;)V

    new-instance v2, Lcom/google/googlex/gcam/StringStaticMetadataMap;

    invoke-static {}, Lcom/google/googlex/gcam/GcamModuleJNI;->new_StringStaticMetadataMap__SWIG_0()J

    move-result-wide v8

    const/4 v4, 0x1

    invoke-direct {v2, v8, v9, v4}, Lcom/google/googlex/gcam/StringStaticMetadataMap;-><init>(JZ)V

    sget-object v4, Ledi;->a:Ljava/lang/String;

    invoke-virtual {v12}, Lcom/google/googlex/gcam/ShotMetadata;->g()Lcom/google/googlex/gcam/StaticMetadata;

    move-result-object v8

    invoke-virtual {v2, v4, v8}, Lcom/google/googlex/gcam/StringStaticMetadataMap;->b(Ljava/lang/String;Lcom/google/googlex/gcam/StaticMetadata;)V

    iget-wide v8, v1, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    iget-wide v10, v2, Lcom/google/googlex/gcam/StringStaticMetadataMap;->a:J

    move-wide/from16 v16, v8

    move-wide/from16 v19, v10

    move-object/from16 v21, v2

    invoke-static/range {v16 .. v21}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_static_metadata_set(JLcom/google/googlex/gcam/PortraitRequest;JLcom/google/googlex/gcam/StringStaticMetadataMap;)V

    invoke-virtual {v13}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/gcam/AeShotParams;->a()Lcom/google/googlex/gcam/NormalizedRect;

    move-result-object v21

    iget-wide v8, v1, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    invoke-static/range {v21 .. v21}, Lcom/google/googlex/gcam/NormalizedRect;->a(Lcom/google/googlex/gcam/NormalizedRect;)J

    move-result-wide v19

    move-wide/from16 v16, v8

    invoke-static/range {v16 .. v21}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_crop_set(JLcom/google/googlex/gcam/PortraitRequest;JLcom/google/googlex/gcam/NormalizedRect;)V

    invoke-virtual {v13}, Lcom/google/googlex/gcam/ShotParams;->a()Lcom/google/googlex/gcam/AeShotParams;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/googlex/gcam/AeShotParams;->b()Lcom/google/googlex/gcam/NormalizedRect;

    move-result-object v21

    iget-wide v8, v1, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    invoke-static/range {v21 .. v21}, Lcom/google/googlex/gcam/NormalizedRect;->a(Lcom/google/googlex/gcam/NormalizedRect;)J

    move-result-wide v19

    move-wide/from16 v16, v8

    invoke-static/range {v16 .. v21}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_merged_crop_set(JLcom/google/googlex/gcam/PortraitRequest;JLcom/google/googlex/gcam/NormalizedRect;)V

    int-to-float v2, v3

    div-float/2addr v2, v7

    check-cast v6, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;

    move-wide/from16 v3, p1

    invoke-virtual {v6, v3, v4, v2}, Lcom/google/googlex/gcam/hdrplus/NativeHdrPlusInterface;->nativeGetPostZoomSharpenStrength(JF)F

    move-result v2

    iget-wide v3, v1, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    invoke-static {v3, v4, v1, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_post_resample_sharpening_set(JLcom/google/googlex/gcam/PortraitRequest;F)V

    sget-object v2, Lnqz;->d:Lnqz;

    iget-wide v3, v1, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    iget v2, v2, Lnqz;->l:I

    invoke-static {v3, v4, v1, v2}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_output_format_primary_set(JLcom/google/googlex/gcam/PortraitRequest;I)V

    iget-wide v2, v1, Lcom/google/googlex/gcam/PortraitRequest;->a:J

    invoke-static {v2, v3, v1, v5}, Lcom/google/googlex/gcam/GcamModuleJNI;->PortraitRequest_use_internal_rectiface_set(JLcom/google/googlex/gcam/PortraitRequest;Z)V

    iget-object v10, v0, Ledo;->d:Lcom/google/googlex/gcam/ShotMetadata;

    iget-object v11, v0, Ledo;->h:Lnou;

    iget-object v0, v0, Ledo;->n:Lgkr;

    iget-object v0, v0, Lgkr;->d:Ljava/lang/Object;

    check-cast v0, Lfte;

    iget-object v12, v0, Lfte;->f:Ljuf;

    move-object/from16 v7, p4

    move-object/from16 v8, v22

    move-object v9, v1

    invoke-interface/range {v7 .. v12}, Ledm;->c(Lcom/google/googlex/gcam/InterleavedImageU8;Lcom/google/googlex/gcam/PortraitRequest;Lcom/google/googlex/gcam/ShotMetadata;Lnou;Ljuf;)V

    invoke-interface/range {p4 .. p4}, Ledm;->close()V

    move-object/from16 v1, p0

    iget-object v0, v1, Leby;->h:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "RGB for portrait processing unavailable"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    const-string v4, "setWarpfield"

    const-string v5, "Rectiface"

    const-string v12, "applyRgb"

    if-nez v0, :cond_15

    if-eqz v6, :cond_14

    if-ne v7, v8, :cond_14

    goto :goto_6

    :cond_14
    move-object/from16 v23, v3

    move/from16 v27, v10

    move-object v6, v12

    move-object v2, v13

    move/from16 v26, v14

    move/from16 v18, v15

    goto/16 :goto_b

    :cond_15
    :goto_6
    iget-boolean v0, v2, Lebb;->d:Z

    if-eqz v0, :cond_1c

    iget-object v0, v1, Leby;->m:Lcvr;

    invoke-virtual {v0}, Lcvr;->H()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-virtual/range {p2 .. p2}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_16

    sget-object v0, Lebh;->d:Lebh;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :cond_16
    iget-object v0, v1, Leby;->h:Lkbc;

    invoke-interface {v0, v5}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledo;

    iget-object v5, v0, Ledo;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    if-eqz v5, :cond_17

    iget-object v5, v1, Leby;->h:Lkbc;

    invoke-interface {v5, v12}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v5, v1, Leby;->f:Ledq;

    invoke-virtual {v5, v0, v15}, Ledq;->c(Ledo;Z)Ledo;

    move-result-object v0

    move-object/from16 v23, v3

    move/from16 v27, v10

    move-object v6, v12

    move-object v2, v13

    move/from16 v26, v14

    goto/16 :goto_a

    :cond_17
    iget-object v5, v1, Leby;->h:Lkbc;

    const-string v6, "applyRgbHw"

    invoke-interface {v5, v6}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v5, v0, Ledo;->c:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v1, Leby;->f:Ledq;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v7, v6, Ledq;->g:Lecy;

    sget-object v8, Lecy;->c:Lecy;

    iget-object v9, v6, Ledq;->e:Logd;

    invoke-interface {v9}, Logd;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lmqp;

    invoke-virtual {v9}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgtd;

    move-object/from16 v23, v3

    invoke-interface {v9}, Lgtd;->a()Lgtk;

    move-result-object v3

    move-object/from16 v17, v12

    iget-object v12, v6, Ledq;->h:Ldhi;

    move-object/from16 v18, v13

    sget-object v13, Ldhd;->a:Ldhj;

    invoke-interface {v12, v13}, Ldhi;->l(Ldhj;)Z

    move-result v12

    if-eqz v12, :cond_18

    new-instance v12, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->getWidth()I

    move-result v13

    move/from16 v19, v14

    invoke-virtual {v5}, Landroid/hardware/HardwareBuffer;->getHeight()I

    move-result v14

    move/from16 v20, v15

    const/4 v15, 0x1

    invoke-direct {v12, v13, v14, v15}, Lcom/google/googlex/gcam/InterleavedImageU8;-><init>(III)V

    move-object v15, v12

    goto :goto_7

    :cond_18
    move/from16 v19, v14

    move/from16 v20, v15

    const/4 v15, 0x0

    :goto_7
    if-nez v15, :cond_19

    const/16 v21, 0x0

    goto :goto_8

    :cond_19
    invoke-virtual {v15}, Lcom/google/googlex/gcam/InterleavedImageU8;->f()Lcom/google/googlex/gcam/InterleavedWriteViewU8;

    move-result-object v12

    move-object/from16 v21, v12

    :goto_8
    if-ne v7, v8, :cond_1a

    const/4 v7, 0x1

    goto :goto_9

    :cond_1a
    const/4 v7, 0x0

    :goto_9
    new-instance v8, Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v12, 0x0

    invoke-direct {v8, v12}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    new-instance v24, Ledp;

    const/16 v25, 0x0

    move-object/from16 v14, v17

    move-object/from16 v12, v24

    move-object/from16 v2, v18

    move-object v13, v6

    move-object v6, v14

    move/from16 v26, v19

    move-object v14, v0

    move/from16 v27, v10

    move-object v10, v15

    move/from16 v18, v20

    move/from16 v15, v18

    move-object/from16 v16, v8

    move/from16 v17, v25

    invoke-direct/range {v12 .. v17}, Ledp;-><init>(Ledq;Ledo;ZLjava/util/concurrent/atomic/AtomicReference;I)V

    iget-object v14, v0, Ledo;->d:Lcom/google/googlex/gcam/ShotMetadata;

    iget-object v8, v0, Ledo;->n:Lgkr;

    iget-object v8, v8, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v8}, Lgxl;->s()Ljava/lang/String;

    move-result-object v17

    iget-object v8, v0, Ledo;->n:Lgkr;

    iget-object v8, v8, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v8}, Lgxl;->k()Lhjc;

    move-result-object v19

    move-object v12, v9

    move-object v13, v5

    move v15, v7

    move/from16 v16, v18

    move-object/from16 v18, v3

    move-object/from16 v20, v24

    invoke-interface/range {v12 .. v21}, Lgtd;->b(Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;ZZLjava/lang/String;Lgtk;Lhjc;Lcom/google/android/apps/camera/rectiface/Rectiface$RectifaceCallback;Lcom/google/googlex/gcam/InterleavedWriteViewU8;)V

    invoke-virtual {v0}, Ledo;->b()Ledn;

    move-result-object v0

    iput-object v3, v0, Ledn;->g:Lgtk;

    iput-object v10, v0, Ledn;->f:Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v0}, Ledn;->a()Ledo;

    move-result-object v0

    :goto_a
    iget-object v3, v1, Leby;->h:Lkbc;

    invoke-interface {v3, v4}, Lkbc;->g(Ljava/lang/String;)V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iget-object v0, v0, Ledo;->k:Lgtk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Leby;->e:Ldne;

    move-object v5, v3

    check-cast v5, Lmqt;

    iget-object v5, v5, Lmqt;->a:Ljava/lang/Object;

    check-cast v5, Ledo;

    iget-object v5, v5, Ledo;->n:Lgkr;

    iget-object v5, v5, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v5}, Lgxl;->h()Lgxy;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ldne;->d(Lgxy;Lgtk;)V

    iget-object v0, v1, Leby;->h:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, v1, Leby;->h:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    goto/16 :goto_c

    :cond_1b
    move-object/from16 v23, v3

    move/from16 v27, v10

    move-object v6, v12

    move-object v2, v13

    move/from16 v26, v14

    move/from16 v18, v15

    goto :goto_b

    :cond_1c
    move-object/from16 v23, v3

    move/from16 v27, v10

    move-object v6, v12

    move-object v2, v13

    move/from16 v26, v14

    move/from16 v18, v15

    :goto_b
    if-eqz v9, :cond_1e

    invoke-virtual/range {p2 .. p2}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_1d

    sget-object v0, Lebh;->c:Lebh;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :cond_1d
    iget-object v0, v1, Leby;->h:Lkbc;

    invoke-interface {v0, v5}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledo;

    iget-object v0, v0, Ledo;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {p2 .. p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledo;

    iget-object v3, v1, Leby;->h:Lkbc;

    invoke-interface {v3, v6}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v3, v1, Leby;->f:Ledq;

    move/from16 v5, v18

    invoke-virtual {v3, v0, v5}, Ledq;->c(Ledo;Z)Ledo;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iget-object v5, v1, Leby;->h:Lkbc;

    invoke-interface {v5, v4}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v0, v0, Ledo;->k:Lgtk;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v4, v1, Leby;->e:Ldne;

    move-object v5, v3

    check-cast v5, Lmqt;

    iget-object v5, v5, Lmqt;->a:Ljava/lang/Object;

    check-cast v5, Ledo;

    iget-object v5, v5, Ledo;->n:Lgkr;

    iget-object v5, v5, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v5}, Lgxl;->h()Lgxy;

    move-result-object v5

    invoke-virtual {v4, v5, v0}, Ldne;->d(Lgxy;Lgtk;)V

    iget-object v0, v1, Leby;->h:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, v1, Leby;->h:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    goto :goto_c

    :cond_1e
    invoke-virtual/range {p2 .. p2}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, v1, Leby;->e:Ldne;

    invoke-virtual/range {p2 .. p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ledo;

    iget-object v3, v3, Ledo;->n:Lgkr;

    iget-object v3, v3, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v3}, Lgxl;->h()Lgxy;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Ldne;->d(Lgxy;Lgtk;)V

    :cond_1f
    move-object/from16 v3, p2

    :goto_c
    const-string v0, "rgbHwToRgb"

    if-nez v11, :cond_24

    iget-object v4, v1, Leby;->d:Ldhi;

    sget-object v5, Ldhd;->a:Ldhj;

    invoke-interface {v4}, Ldhi;->c()V

    iget-object v4, v1, Leby;->d:Ldhi;

    sget-object v5, Ldhd;->a:Ldhj;

    invoke-interface {v4, v5}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-eqz v4, :cond_24

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v4

    if-nez v4, :cond_20

    sget-object v0, Lebh;->b:Lebh;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :cond_20
    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ledo;

    invoke-static {v4}, Leby;->f(Ledo;)Z

    move-result v4

    if-eqz v4, :cond_24

    iget-object v4, v1, Leby;->h:Lkbc;

    const-string v5, "FaceMetadata"

    invoke-interface {v4, v5}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ledo;

    iget-object v4, v4, Ledo;->c:Landroid/hardware/HardwareBuffer;

    if-eqz v4, :cond_21

    iget-object v4, v1, Leby;->h:Lkbc;

    invoke-interface {v4, v0}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v4, v1, Leby;->f:Ledq;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ledo;

    invoke-virtual {v4, v3}, Ledq;->d(Ledo;)Ledo;

    move-result-object v3

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iget-object v4, v1, Leby;->h:Lkbc;

    invoke-interface {v4}, Lkbc;->f()V

    :cond_21
    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ledo;

    iget-object v4, v4, Ledo;->b:Leej;

    const-string v5, "applyYuv"

    if-eqz v4, :cond_22

    iget-object v4, v1, Leby;->h:Lkbc;

    invoke-interface {v4, v5}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v4, v1, Leby;->f:Ledq;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ledo;

    invoke-virtual {v4, v3}, Ledq;->b(Ledo;)Ledo;

    move-result-object v3

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iget-object v4, v1, Leby;->h:Lkbc;

    invoke-interface {v4}, Lkbc;->f()V

    goto :goto_d

    :cond_22
    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ledo;

    iget-object v4, v4, Ledo;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    if-eqz v4, :cond_23

    iget-object v4, v1, Leby;->h:Lkbc;

    const-string v7, "rgbToYuv"

    invoke-interface {v4, v7}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ledo;

    invoke-static {v3}, Ledq;->j(Ledo;)Ledo;

    move-result-object v3

    iget-object v4, v1, Leby;->h:Lkbc;

    invoke-interface {v4, v5}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v4, v1, Leby;->f:Ledq;

    invoke-virtual {v4, v3}, Ledq;->b(Ledo;)Ledo;

    move-result-object v3

    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iget-object v4, v1, Leby;->h:Lkbc;

    invoke-interface {v4}, Lkbc;->f()V

    goto :goto_d

    :cond_23
    sget-object v4, Leby;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->c()Lnaz;

    move-result-object v4

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ledo;

    invoke-static {v5}, Leby;->d(Ledo;)Lebh;

    move-result-object v5

    const-string v7, "couldn\'t extract face metadata on %s"

    const/16 v8, 0x507

    invoke-static {v4, v7, v5, v8}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :goto_d
    iget-object v4, v1, Leby;->h:Lkbc;

    invoke-interface {v4}, Lkbc;->f()V

    :cond_24
    if-nez v11, :cond_2a

    if-eqz p4, :cond_2a

    iget-object v4, v1, Leby;->d:Ldhi;

    sget-object v5, Ldhd;->a:Ldhj;

    invoke-interface {v4, v5}, Ldhi;->l(Ldhj;)Z

    move-result v4

    if-eqz v4, :cond_2a

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v4

    if-nez v4, :cond_25

    iget-object v0, v1, Leby;->d:Ldhi;

    invoke-interface {v0}, Ldhi;->c()V

    sget-object v0, Lebh;->c:Lebh;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :cond_25
    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ledo;

    invoke-static {v4}, Leby;->f(Ledo;)Z

    move-result v4

    if-eqz v4, :cond_29

    iget-object v4, v1, Leby;->h:Lkbc;

    const-string v5, "DeepR"

    invoke-interface {v4, v5}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ledo;

    iget-object v4, v4, Ledo;->b:Leej;

    if-eqz v4, :cond_26

    iget-object v0, v1, Leby;->d:Ldhi;

    invoke-interface {v0}, Ldhi;->c()V

    iget-object v0, v1, Leby;->h:Lkbc;

    invoke-interface {v0, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, v1, Leby;->f:Ledq;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ledo;

    invoke-virtual {v0, v2}, Ledq;->e(Ledo;)Ledo;

    move-result-object v0

    iget-object v2, v1, Leby;->h:Lkbc;

    invoke-interface {v2, v6}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v2, v1, Leby;->f:Ledq;

    invoke-virtual {v2, v0}, Ledq;->a(Ledo;)Ledo;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iget-object v2, v1, Leby;->f:Ledq;

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Ledo;

    invoke-virtual {v2, v0}, Ledq;->h(Ledo;)V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iget-object v0, v1, Leby;->h:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    goto/16 :goto_e

    :cond_26
    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ledo;

    iget-object v2, v2, Ledo;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    if-eqz v2, :cond_27

    iget-object v0, v1, Leby;->d:Ldhi;

    invoke-interface {v0}, Ldhi;->c()V

    iget-object v0, v1, Leby;->h:Lkbc;

    invoke-interface {v0, v6}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, v1, Leby;->f:Ledq;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ledo;

    invoke-virtual {v0, v2}, Ledq;->a(Ledo;)Ledo;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iget-object v2, v1, Leby;->f:Ledq;

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Ledo;

    invoke-virtual {v2, v0}, Ledq;->h(Ledo;)V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iget-object v0, v1, Leby;->h:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    goto :goto_e

    :cond_27
    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ledo;

    iget-object v2, v2, Ledo;->c:Landroid/hardware/HardwareBuffer;

    if-eqz v2, :cond_28

    iget-object v2, v1, Leby;->h:Lkbc;

    invoke-interface {v2, v0}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, v1, Leby;->f:Ledq;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ledo;

    invoke-virtual {v0, v2}, Ledq;->d(Ledo;)Ledo;

    move-result-object v0

    iget-object v2, v1, Leby;->d:Ldhi;

    invoke-interface {v2}, Ldhi;->c()V

    iget-object v2, v1, Leby;->h:Lkbc;

    invoke-interface {v2, v6}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v2, v1, Leby;->f:Ledq;

    invoke-virtual {v2, v0}, Ledq;->a(Ledo;)Ledo;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    iget-object v2, v1, Leby;->f:Ledq;

    check-cast v0, Lmqt;

    iget-object v0, v0, Lmqt;->a:Ljava/lang/Object;

    check-cast v0, Ledo;

    invoke-virtual {v2, v0}, Ledq;->h(Ledo;)V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iget-object v0, v1, Leby;->h:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, v1, Leby;->h:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    :cond_28
    :goto_e
    iget-object v0, v1, Leby;->h:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    goto :goto_f

    :cond_29
    sget-object v0, Leby;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ledo;

    invoke-static {v2}, Leby;->d(Ledo;)Lebh;

    move-result-object v2

    const-string v4, "couldn\'t apply face deblur on %s"

    const/16 v5, 0x506

    invoke-static {v0, v4, v2, v5}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :goto_f
    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledo;

    iget-object v0, v0, Ledo;->d:Lcom/google/googlex/gcam/ShotMetadata;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/ShotMetadata;->o()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledo;

    invoke-direct {v1, v0}, Leby;->e(Ledo;)V

    :cond_2a
    if-eqz v11, :cond_2e

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_2b

    sget-object v0, Lebh;->d:Lebh;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :cond_2b
    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledo;

    iget-object v0, v0, Ledo;->c:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_2d

    iget-object v0, v1, Leby;->h:Lkbc;

    const-string v2, "FaceO"

    invoke-interface {v0, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v2, v1, Leby;->f:Ledq;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Ledo;

    iget-object v0, v3, Ledo;->c:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :try_start_0
    iget-object v4, v2, Ledq;->d:Logd;

    invoke-interface {v4}, Logd;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ldsa;

    new-instance v5, Ldsc;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Ldsc;-><init>(Landroid/hardware/HardwareBuffer;I)V

    iget-object v0, v3, Ledo;->f:Lkou;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    invoke-interface {v4, v5, v0}, Ldsa;->b(Ldry;Lmqp;)Lnou;

    move-result-object v0

    invoke-interface {v0}, Lnou;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldrz;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object v2, v3, Ledo;->n:Lgkr;

    iget-object v2, v2, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v2}, Lgxl;->k()Lhjc;

    invoke-interface {v0}, Ldrz;->c()V

    invoke-interface {v0}, Ldrz;->b()Z

    move-result v2

    if-eqz v2, :cond_2c

    iget-object v2, v3, Ledo;->d:Lcom/google/googlex/gcam/ShotMetadata;

    invoke-virtual {v2}, Lcom/google/googlex/gcam/ShotMetadata;->i()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "o"

    invoke-virtual {v4, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/googlex/gcam/ShotMetadata;->n(Ljava/lang/String;)V

    invoke-virtual {v3}, Ledo;->b()Ledn;

    move-result-object v2

    invoke-interface {v0}, Ldrz;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/HardwareBuffer;

    iput-object v0, v2, Ledn;->c:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v2}, Ledn;->a()Ledo;

    move-result-object v3

    goto :goto_11

    :catch_0
    move-exception v0

    goto :goto_10

    :catch_1
    move-exception v0

    :goto_10
    iget-object v2, v2, Ledq;->c:Lkaq;

    const-string v4, "Can\'t apply face obfuscation post-processing"

    invoke-interface {v2, v4, v0}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2c
    :goto_11
    invoke-static {v3}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iget-object v0, v1, Leby;->h:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    goto :goto_12

    :cond_2d
    sget-object v0, Leby;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ledo;

    invoke-static {v2}, Leby;->d(Ledo;)Lebh;

    move-result-object v2

    const-string v4, "Couldn\'t apply face obfuscation on %s"

    const/16 v5, 0x505

    invoke-static {v0, v4, v2, v5}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    :cond_2e
    :goto_12
    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledo;

    iget-object v0, v0, Ledo;->c:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_2f

    iget-object v0, v1, Leby;->h:Lkbc;

    const-string v2, "RgbHwToRgb"

    invoke-interface {v0, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, v1, Leby;->f:Ledq;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ledo;

    invoke-virtual {v0, v2}, Ledq;->d(Ledo;)Ledo;

    move-result-object v0

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iget-object v0, v1, Leby;->h:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    :cond_2f
    if-eqz v27, :cond_33

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_30

    sget-object v0, Lebh;->b:Lebh;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :cond_30
    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledo;

    iget-object v2, v0, Ledo;->c:Landroid/hardware/HardwareBuffer;

    if-nez v2, :cond_31

    const/4 v2, 0x1

    goto :goto_13

    :cond_31
    const/4 v2, 0x0

    :goto_13
    invoke-static {v2}, Lmoz;->p(Z)V

    iget-object v2, v0, Ledo;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    if-eqz v2, :cond_32

    iget-object v2, v1, Leby;->h:Lkbc;

    const-string v3, "FaceRetouch#rgbToYuv"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static {v0}, Ledq;->j(Ledo;)Ledo;

    move-result-object v0

    iget-object v2, v1, Leby;->h:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    goto :goto_14

    :cond_32
    :goto_14
    iget-object v2, v1, Leby;->h:Lkbc;

    const-string v3, "FaceRetouch#applyYuv"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v2, v1, Leby;->f:Ledq;

    invoke-virtual {v2, v0}, Ledq;->i(Ledo;)V

    iget-object v2, v1, Leby;->h:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    :cond_33
    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_35

    if-nez v22, :cond_34

    goto :goto_15

    :cond_34
    sget-object v0, Lebh;->b:Lebh;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :cond_35
    :goto_15
    if-eqz p4, :cond_36

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v0

    if-eqz v0, :cond_36

    move-object/from16 v2, p1

    iget-boolean v0, v2, Lebb;->i:Z

    if-eqz v0, :cond_36

    iget-object v0, v1, Leby;->h:Lkbc;

    const-string v2, "applySwiss"

    invoke-interface {v0, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, v1, Leby;->f:Ledq;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ledo;

    iget-object v0, v0, Ledq;->c:Lkaq;

    const-string v3, "Swiss not present. Returning without swiss."

    invoke-interface {v0, v3}, Lkaq;->b(Ljava/lang/String;)V

    invoke-static {v2}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    iget-object v0, v1, Leby;->h:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    :cond_36
    if-eqz v26, :cond_39

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_37

    sget-object v0, Lebh;->b:Lebh;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :cond_37
    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledo;

    iget-object v2, v0, Ledo;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    if-eqz v2, :cond_38

    iget-object v2, v1, Leby;->h:Lkbc;

    const-string v3, "RgbToYuv"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static {v0}, Ledq;->j(Ledo;)Ledo;

    move-result-object v0

    iget-object v2, v1, Leby;->h:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    :cond_38
    iget-object v2, v1, Leby;->h:Lkbc;

    const-string v3, "sendYuvForJpegCompression"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v2, v1, Leby;->b:Ledd;

    invoke-static {}, Ledb;->a()Leam;

    move-result-object v3

    invoke-virtual/range {v23 .. v23}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lebh;

    invoke-static {v4}, Lebi;->a(Lebh;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Leam;->a:Ljava/lang/String;

    invoke-virtual {v3}, Leam;->a()Ledb;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ledd;->a(Ledo;Ledb;)V

    iget-object v0, v1, Leby;->h:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :cond_39
    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v0

    if-nez v0, :cond_3a

    sget-object v0, Lebh;->b:Lebh;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0

    :cond_3a
    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ledo;

    if-eqz p4, :cond_3d

    iget-object v2, v1, Leby;->h:Lkbc;

    const-string v3, "JpegCompression"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v2, v0, Ledo;->b:Leej;

    const/high16 v3, -0x40800000    # -1.0f

    if-nez v2, :cond_3c

    iget-object v2, v0, Ledo;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    if-eqz v2, :cond_3b

    iget-object v2, v1, Leby;->b:Ledd;

    invoke-static {}, Ledb;->a()Leam;

    move-result-object v4

    iget-object v5, v1, Leby;->d:Ldhi;

    sget-object v6, Ldhq;->aA:Ldhj;

    invoke-interface {v5, v6}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v5, v3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Leam;->b(F)V

    iget-object v5, v1, Leby;->d:Ldhi;

    sget-object v6, Ldhq;->aB:Ldhj;

    invoke-interface {v5, v6}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Leam;->d(F)V

    iget-object v5, v1, Leby;->d:Ldhi;

    sget-object v6, Ldhq;->aC:Ldhj;

    invoke-interface {v5, v6}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4, v3}, Leam;->c(F)V

    iget-object v3, v1, Leby;->d:Ldhi;

    sget-object v5, Ldhq;->w:Ldhk;

    invoke-interface {v3, v5}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Leam;->e(I)V

    invoke-virtual {v4}, Leam;->a()Ledb;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ledd;->a(Ledo;Ledb;)V

    iget-object v0, v1, Leby;->h:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :cond_3b
    iget-object v0, v1, Leby;->h:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Requested JPEG and still got uncompressed callback."

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3c
    iget-object v2, v1, Leby;->b:Ledd;

    invoke-static {}, Ledb;->a()Leam;

    move-result-object v4

    invoke-virtual/range {v23 .. v23}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lebh;

    invoke-static {v5}, Lebi;->a(Lebh;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Leam;->a:Ljava/lang/String;

    iget-object v5, v1, Leby;->d:Ldhi;

    sget-object v6, Ldhq;->aA:Ldhj;

    invoke-interface {v5, v6}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    invoke-virtual {v5, v3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Leam;->b(F)V

    iget-object v5, v1, Leby;->d:Ldhi;

    sget-object v6, Ldhq;->aB:Ldhj;

    invoke-interface {v5, v6}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    invoke-virtual {v4, v5}, Leam;->d(F)V

    iget-object v5, v1, Leby;->d:Ldhi;

    sget-object v6, Ldhq;->aC:Ldhj;

    invoke-interface {v5, v6}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v3}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Float;

    invoke-virtual {v3}, Ljava/lang/Float;->floatValue()F

    move-result v3

    invoke-virtual {v4, v3}, Leam;->c(F)V

    iget-object v3, v1, Leby;->d:Ldhi;

    sget-object v5, Ldhq;->w:Ldhk;

    invoke-interface {v3, v5}, Ldhi;->a(Ldhk;)Lj$/util/Optional;

    move-result-object v3

    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lj$/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Leam;->e(I)V

    invoke-virtual {v4}, Leam;->a()Ledb;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ledd;->a(Ledo;Ledb;)V

    iget-object v0, v1, Leby;->h:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :cond_3d
    iget-object v2, v1, Leby;->h:Lkbc;

    const-string v3, "SaveSecondaryImage"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v2, v1, Leby;->b:Ledd;

    invoke-static {}, Ledb;->a()Leam;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Leam;->f(Z)V

    move-object/from16 v4, p5

    iput-object v4, v3, Leam;->b:Ljava/lang/String;

    invoke-virtual {v3}, Leam;->a()Ledb;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ledd;->a(Ledo;Ledb;)V

    iget-object v0, v1, Leby;->h:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0
.end method
