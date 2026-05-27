.class public final Leih;
.super Ljava/lang/Object;

# interfaces
.implements Lgpx;


# static fields
.field private static final b:Lnak;


# instance fields
.field public final a:Lgxl;

.field private final c:Z

.field private final d:Lejx;

.field private final e:Lekk;

.field private final f:Lcjf;

.field private final g:Ldhi;

.field private final h:Ljava/util/List;

.field private final i:Lkbc;

.field private final j:Z

.field private final k:Lehx;

.field private final l:Ljew;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/imax/ImaxProcessingTask"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Leih;->b:Lnak;

    return-void
.end method

.method public constructor <init>(Ljew;Lgwf;Ljew;Lkbc;Lfbk;Ljwb;Ldhi;Lkpo;Lehx;Landroid/graphics/Bitmap;Z[B[B[B[B[B)V
    .locals 15

    move-object v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p9

    move/from16 v3, p11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-class v4, Lejx;

    invoke-static {v4}, Lekj;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lejx;

    iput-object v4, v0, Leih;->d:Lejx;

    const-class v4, Lekk;

    invoke-static {v4}, Lekj;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lekk;

    iput-object v4, v0, Leih;->e:Lekk;

    iput-object v2, v0, Leih;->k:Lehx;

    invoke-interface/range {p6 .. p6}, Ljwb;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    iput-boolean v4, v0, Leih;->c:Z

    sget-object v4, Ldhr;->a:Ldhj;

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, v0, Leih;->h:Ljava/util/List;

    iput-object v1, v0, Leih;->i:Lkbc;

    invoke-interface/range {p5 .. p5}, Lfbk;->b()Lcjf;

    move-result-object v4

    iput-object v4, v0, Leih;->f:Lcjf;

    move-object/from16 v5, p3

    iput-object v5, v0, Leih;->l:Ljew;

    iput-boolean v3, v0, Leih;->j:Z

    move-object/from16 v5, p7

    iput-object v5, v0, Leih;->g:Ldhi;

    iget-object v2, v2, Lehx;->a:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sget-object v7, Ldyy;->b:Ldyy;

    const-string v8, "PANO"

    move-object/from16 v9, p8

    invoke-virtual {v9, v5, v6, v7, v8}, Lkpo;->f(JLdyy;Ljava/lang/String;)Lgxr;

    move-result-object v5

    new-instance v6, Lgws;

    move-object/from16 v7, p1

    iget-object v7, v7, Ljew;->a:Ljava/lang/Object;

    invoke-interface {v7}, Loiw;->get()Ljava/lang/Object;

    move-result-object v7

    const-string v8, ".vr"

    invoke-virtual {v2, v8}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v7, v2, v4, v5}, Lgws;-><init>(Lgwc;Ljava/lang/String;Lcjf;Lgxr;)V

    iput-object v6, v0, Leih;->a:Lgxl;

    if-eqz v3, :cond_0

    new-instance v13, Landroid/graphics/Matrix;

    invoke-direct {v13}, Landroid/graphics/Matrix;-><init>()V

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {v13, v2}, Landroid/graphics/Matrix;->postRotate(F)Z

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v11

    invoke-virtual/range {p10 .. p10}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v12

    const/4 v14, 0x1

    move-object/from16 v8, p10

    invoke-static/range {v8 .. v14}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p10

    :goto_0
    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eq v4, v3, :cond_1

    const/4 v3, 0x0

    goto :goto_1

    :cond_1
    const/16 v3, 0x10e

    :goto_1
    const-string v4, "imaxProcessing#startSession"

    invoke-interface {v1, v4}, Lkbc;->g(Ljava/lang/String;)V

    move-object/from16 v4, p2

    invoke-interface {v4, v6}, Lgwf;->e(Lgxl;)V

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-static {v4, v7}, Lkaf;->h(II)Lkaf;

    move-result-object v4

    invoke-interface {v6, v4}, Lgxl;->S(Lkaf;)V

    invoke-interface {v6, v2, v3}, Lgxl;->X(Landroid/graphics/Bitmap;I)V

    const v2, 0x7f14044a

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljpw;->h(I[Ljava/lang/Object;)Ligf;

    move-result-object v2

    invoke-interface {v6, v2}, Lgxl;->Q(Ligf;)V

    invoke-interface/range {p4 .. p4}, Lkbc;->f()V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgpw;
    .locals 1

    iget-object v0, p0, Leih;->a:Lgxl;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Leih;->a:Lgxl;

    invoke-interface {v0}, Lgxl;->h()Lgxy;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImaxProcessingTask-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljzs;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Leih;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Landroid/content/Context;)V
    .locals 25

    move-object/from16 v1, p0

    const-string v2, "mime"

    new-instance v3, Leig;

    invoke-direct {v3, v1}, Leig;-><init>(Leih;)V

    new-instance v4, Lnpy;

    invoke-direct {v4, v3}, Lnpy;-><init>(Lcom/google/geo/lightfield/processing/ProgressCallback;)V

    const/4 v3, 0x0

    :try_start_0
    sget-boolean v5, Lnpy;->a:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez v5, :cond_2

    iget-object v5, v4, Lnpy;->c:Lnpx;

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    iget-object v5, v4, Lnpy;->d:Landroid/os/Looper;

    if-nez v5, :cond_1

    new-instance v5, Landroid/os/HandlerThread;

    const-string v8, "ProgressInterpolatorThread"

    invoke-direct {v5, v8, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v5}, Landroid/os/HandlerThread;->start()V

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    :cond_1
    iput-object v5, v4, Lnpy;->d:Landroid/os/Looper;

    new-instance v5, Lnpx;

    iget-object v8, v4, Lnpy;->b:Lcom/google/geo/lightfield/processing/ProgressCallback;

    iget-object v9, v4, Lnpy;->d:Landroid/os/Looper;

    invoke-direct {v5, v8, v9}, Lnpx;-><init>(Lcom/google/geo/lightfield/processing/ProgressCallback;Landroid/os/Looper;)V

    iput-object v5, v4, Lnpy;->c:Lnpx;

    iget-object v5, v4, Lnpy;->c:Lnpx;

    iput v6, v5, Lnpx;->c:F

    invoke-virtual {v5}, Lnpx;->a()V

    sput-boolean v7, Lnpy;->a:Z

    :cond_2
    :goto_0
    const v5, 0x3eb33333    # 0.35f

    invoke-interface {v4, v6, v5}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setRange(FF)V

    iget-object v8, v1, Leih;->d:Lejx;

    iget-object v9, v1, Leih;->k:Lehx;

    invoke-virtual {v9}, Lehx;->a()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9, v4}, Lejx;->computePose(Ljava/lang/String;Lcom/google/geo/lightfield/processing/ProgressCallback;)Z

    move-result v8

    if-nez v8, :cond_3

    move-object v2, v4

    const/4 v7, 0x0

    goto/16 :goto_25

    :cond_3
    iget-boolean v8, v1, Leih;->c:Z

    const v9, 0x3f75c28f    # 0.96f

    if-eqz v8, :cond_4

    const v8, 0x3f6e147b    # 0.93f

    invoke-interface {v4, v5, v8}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setRange(FF)V

    goto :goto_1

    :cond_4
    invoke-interface {v4, v5, v9}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setRange(FF)V

    :goto_1
    iget-object v5, v1, Leih;->i:Lkbc;

    const-string v8, "imaxProcessing#getStitchedPano"

    invoke-interface {v5, v8}, Lkbc;->e(Ljava/lang/String;)V

    new-instance v5, Lekn;

    iget-object v11, v1, Leih;->k:Lehx;

    iget-object v8, v1, Leih;->g:Ldhi;

    sget-object v10, Ldhr;->b:Ldhj;

    invoke-interface {v8, v10}, Ldhi;->l(Ldhj;)Z

    move-result v12

    iget-object v8, v1, Leih;->g:Ldhi;

    sget-object v10, Ldhr;->c:Ldhj;

    invoke-interface {v8, v10}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v8

    invoke-virtual {v8}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v13, v8

    iget-object v8, v1, Leih;->g:Ldhi;

    sget-object v10, Ldhr;->d:Ldhj;

    invoke-interface {v8, v10}, Ldhi;->h(Ldhj;)Lj$/util/Optional;

    move-result-object v8

    invoke-virtual {v8}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Float;

    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    move-result v8

    float-to-double v7, v8

    move-object v10, v5

    move-wide v15, v7

    invoke-direct/range {v10 .. v16}, Lekn;-><init>(Lehx;ZDD)V

    iget-boolean v7, v1, Leih;->j:Z

    iput-boolean v7, v5, Lekn;->c:Z

    new-instance v7, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v7}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    new-instance v8, Ljava/lang/Thread;

    new-instance v10, Lekm;

    invoke-direct {v10, v5, v7, v4}, Lekm;-><init>(Lekn;Ljava/util/concurrent/atomic/AtomicReference;Lcom/google/geo/lightfield/processing/ProgressCallback;)V

    const-string v5, "OfflineOmnistereoStitchThread"

    invoke-direct {v8, v10, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_19
    .catchall {:try_start_0 .. :try_end_0} :catchall_c

    :try_start_1
    invoke-virtual {v8}, Ljava/lang/Thread;->join()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_19
    .catchall {:try_start_1 .. :try_end_1} :catchall_c

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v5, v0

    :try_start_2
    sget-object v8, Lekn;->a:Lnak;

    invoke-virtual {v8}, Lnaf;->b()Lnaz;

    move-result-object v8

    const-string v10, "%s"

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x610

    invoke-static {v8, v10, v11, v12, v5}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    :goto_2
    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;

    iget-object v7, v1, Leih;->i:Lkbc;

    invoke-interface {v7}, Lkbc;->f()V

    if-nez v5, :cond_5

    move-object v2, v4

    const/4 v7, 0x0

    goto/16 :goto_25

    :cond_5
    const/high16 v7, 0x3f800000    # 1.0f

    invoke-interface {v4, v6, v7}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setRange(FF)V

    iget-boolean v6, v1, Leih;->c:Z

    if-eqz v6, :cond_13

    iget-object v6, v1, Leih;->i:Lkbc;

    const-string v11, "imaxProcessing#addAudio"

    invoke-interface {v6, v11}, Lkbc;->e(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v6

    iget-object v11, v1, Leih;->k:Lehx;

    invoke-virtual {v11}, Lehx;->b()Ljava/lang/String;

    move-result-object v11
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_19
    .catchall {:try_start_2 .. :try_end_2} :catchall_c

    :try_start_3
    const-string v12, "demuxed"

    const-string v13, "mp4"

    invoke-static {v12, v13, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v6
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_19
    .catchall {:try_start_3 .. :try_end_3} :catchall_c

    :try_start_4
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v12

    new-instance v13, Landroid/media/MediaExtractor;

    invoke-direct {v13}, Landroid/media/MediaExtractor;-><init>()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_19
    .catchall {:try_start_4 .. :try_end_4} :catchall_c

    :try_start_5
    invoke-virtual {v13, v11}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_19
    .catchall {:try_start_5 .. :try_end_5} :catchall_c

    :try_start_6
    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v14

    const/4 v15, 0x0

    :goto_3
    if-ge v15, v14, :cond_7

    invoke-virtual {v13, v15}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v8, "audio/"

    invoke-virtual {v10, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_6

    goto :goto_4

    :cond_6
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    :cond_7
    const/4 v15, -0x1

    :goto_4
    if-gez v15, :cond_8

    sget-object v8, Lejz;->a:Lnak;

    invoke-virtual {v8}, Lnaf;->b()Lnaz;

    move-result-object v8

    const-string v10, "No video track found in %s"

    const/16 v14, 0x603

    invoke-static {v8, v10, v11, v14}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    const/4 v8, 0x0

    goto :goto_5

    :cond_8
    invoke-virtual {v13, v15}, Landroid/media/MediaExtractor;->selectTrack(I)V

    invoke-virtual {v13, v15}, Landroid/media/MediaExtractor;->getTrackFormat(I)Landroid/media/MediaFormat;

    move-result-object v8

    goto :goto_5

    :catch_1
    move-exception v0

    sget-object v8, Lejz;->a:Lnak;

    invoke-virtual {v8}, Lnaf;->b()Lnaz;

    move-result-object v8

    const-string v10, "Could not open video file %s"

    const/16 v14, 0x604

    invoke-static {v8, v10, v11, v14}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    const/4 v8, 0x0

    :goto_5
    if-nez v8, :cond_9

    sget-object v8, Lejz;->a:Lnak;

    invoke-virtual {v8}, Lnaf;->b()Lnaz;

    move-result-object v8

    const-string v10, "Could not extract MediaFormat from %s"

    const/16 v12, 0x602

    invoke-static {v8, v10, v11, v12}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    const/4 v8, 0x0

    goto :goto_7

    :cond_9
    new-instance v10, Leku;

    const/4 v11, 0x1

    invoke-direct {v10, v12, v11}, Leku;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v10, v8}, Leku;->a(Landroid/media/MediaFormat;)I

    move-result v12

    new-instance v14, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v14}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/16 v15, 0x800

    invoke-static {v15}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v11

    :goto_6
    invoke-virtual {v13, v11, v3}, Landroid/media/MediaExtractor;->readSampleData(Ljava/nio/ByteBuffer;I)I

    move-result v7

    if-gtz v7, :cond_10

    invoke-virtual {v13}, Landroid/media/MediaExtractor;->release()V

    invoke-virtual {v10}, Leku;->b()V

    :goto_7
    if-nez v8, :cond_a

    const/4 v6, 0x0

    goto/16 :goto_f

    :cond_a
    invoke-virtual {v6}, Ljava/io/File;->length()J

    move-result-wide v10

    long-to-int v7, v10

    new-array v10, v7, [B
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_19
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    :try_start_7
    new-instance v11, Ljava/io/FileInputStream;

    invoke-direct {v11, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    const/4 v12, 0x0

    :goto_8
    if-ge v12, v7, :cond_c

    sub-int v13, v7, v12

    :try_start_8
    invoke-virtual {v11, v10, v12, v13}, Ljava/io/FileInputStream;->read([BII)I

    move-result v13
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    if-gez v13, :cond_b

    goto :goto_9

    :cond_b
    add-int/2addr v12, v13

    goto :goto_8

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v10, v11

    goto :goto_a

    :catch_2
    move-exception v0

    goto :goto_c

    :cond_c
    :goto_9
    :try_start_9
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_19
    .catchall {:try_start_9 .. :try_end_9} :catchall_c

    goto :goto_d

    :catch_3
    move-exception v0

    goto :goto_d

    :catchall_1
    move-exception v0

    move-object v2, v0

    const/4 v10, 0x0

    :goto_a
    if-eqz v10, :cond_d

    :try_start_a
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_4
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_19
    .catchall {:try_start_a .. :try_end_a} :catchall_c

    goto :goto_b

    :catch_4
    move-exception v0

    :cond_d
    :goto_b
    :try_start_b
    throw v2
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_19
    .catchall {:try_start_b .. :try_end_b} :catchall_c

    :catch_5
    move-exception v0

    const/4 v11, 0x0

    :goto_c
    if-eqz v11, :cond_e

    :try_start_c
    invoke-virtual {v11}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_19
    .catchall {:try_start_c .. :try_end_c} :catchall_c

    const/4 v10, 0x0

    goto :goto_d

    :catch_6
    move-exception v0

    :cond_e
    const/4 v10, 0x0

    :goto_d
    :try_start_d
    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    if-nez v10, :cond_f

    const/4 v6, 0x0

    goto :goto_f

    :cond_f
    new-instance v6, Lcom/google/android/apps/camera/imax/cyclops/audio/AudioTrack;

    invoke-virtual {v8, v2}, Landroid/media/MediaFormat;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v2, v10}, Lcom/google/android/apps/camera/imax/cyclops/audio/AudioTrack;-><init>(Ljava/lang/String;[B)V

    goto :goto_f

    :cond_10
    if-ne v7, v15, :cond_11

    sget-object v7, Lejz;->a:Lnak;

    invoke-virtual {v7}, Lnaf;->b()Lnaz;

    move-result-object v7

    const-string v15, "Chunk size is the maximum size, we probably clamped the sample"
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_19
    .catchall {:try_start_d .. :try_end_d} :catchall_c

    const/16 v3, 0x601

    :try_start_e
    invoke-static {v7, v15, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    const/16 v19, 0x800

    goto :goto_e

    :cond_11
    move/from16 v19, v7

    :goto_e
    const/16 v18, 0x0

    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getSampleTime()J

    move-result-wide v20

    invoke-virtual {v13}, Landroid/media/MediaExtractor;->getSampleFlags()I

    move-result v22

    move-object/from16 v17, v14

    invoke-virtual/range {v17 .. v22}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    invoke-virtual {v10, v12, v11, v14}, Leku;->c(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    invoke-virtual {v13}, Landroid/media/MediaExtractor;->advance()Z

    const/4 v3, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    const/16 v15, 0x800

    goto/16 :goto_6

    :catch_7
    move-exception v0

    const/4 v6, 0x0

    :goto_f
    new-instance v2, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;

    iget-object v3, v5, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;->a:[B

    iget-boolean v7, v1, Leih;->j:Z

    if-eqz v7, :cond_12

    move-object v7, v3

    goto :goto_10

    :cond_12
    iget-object v7, v5, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;->b:[B

    :goto_10
    iget-object v5, v5, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;->c:Lcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;

    invoke-direct {v2, v3, v7, v5, v6}, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;-><init>([B[BLcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;Lcom/google/android/apps/camera/imax/cyclops/audio/AudioTrack;)V

    iget-object v3, v1, Leih;->i:Lkbc;

    invoke-interface {v3}, Lkbc;->f()V

    invoke-interface {v4, v9}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setProgress(F)V

    move-object v5, v2

    goto :goto_11

    :cond_13
    :goto_11
    const/high16 v2, 0x3f800000    # 1.0f

    invoke-interface {v4, v9, v2}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setRange(FF)V

    iget-object v2, v1, Leih;->i:Lkbc;

    const-string v3, "imaxProcessing#writePano"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    iget-object v3, v1, Leih;->k:Lehx;

    invoke-virtual {v3}, Lehx;->a()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;

    iget-object v3, v3, Lehx;->a:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ".vr.jpg"

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-boolean v3, v1, Leih;->j:Z
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_18
    .catchall {:try_start_e .. :try_end_e} :catchall_b

    if-eqz v3, :cond_14

    :try_start_f
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_8
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_18
    .catchall {:try_start_f .. :try_end_f} :catchall_b

    :try_start_10
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    invoke-static {v6}, Lj$/nio/channels/DesugarChannels;->convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object v6

    iget-object v7, v5, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;->a:[B

    invoke-static {v7}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_2

    :try_start_11
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_8
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_11} :catch_18
    .catchall {:try_start_11 .. :try_end_11} :catchall_b

    goto :goto_13

    :catchall_2
    move-exception v0

    move-object v6, v0

    :try_start_12
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    goto :goto_12

    :catchall_3
    move-exception v0

    move-object v3, v0

    :try_start_13
    invoke-static {v6, v3}, Lfcr;->i(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_12
    throw v6
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_8
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_18
    .catchall {:try_start_13 .. :try_end_13} :catchall_b

    :catch_8
    move-exception v0

    move-object v3, v0

    :try_start_14
    sget-object v6, Leih;->b:Lnak;

    invoke-virtual {v6}, Lnaf;->b()Lnaz;

    move-result-object v6

    const-string v7, "Failed to write file."

    const/16 v8, 0x5dc

    invoke-static {v6, v7, v8, v3}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    goto :goto_13

    :cond_14
    iget-object v3, v1, Leih;->e:Lekk;

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v3, v5, v6, v4}, Lekk;->a(Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;Ljava/lang/String;Lcom/google/geo/lightfield/processing/ProgressCallback;)V

    :goto_13
    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v3
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_18
    .catchall {:try_start_14 .. :try_end_14} :catchall_b

    :try_start_15
    new-instance v6, Lcom/google/android/libraries/camera/exif/ExifInterface;

    invoke-direct {v6}, Lcom/google/android/libraries/camera/exif/ExifInterface;-><init>()V

    invoke-virtual {v6, v3}, Lcom/google/android/libraries/camera/exif/ExifInterface;->readExif(Ljava/lang/String;)V

    new-instance v7, Lkds;

    invoke-direct {v7, v6}, Lkds;-><init>(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    iget-object v6, v1, Leih;->f:Lcjf;

    invoke-virtual {v6}, Lcjf;->b()Lmqp;

    move-result-object v6

    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v6
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_12
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_11
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    if-eqz v6, :cond_15

    :try_start_16
    iget-object v6, v1, Leih;->f:Lcjf;

    invoke-virtual {v6}, Lcjf;->b()Lmqp;

    move-result-object v6

    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Location;

    invoke-virtual {v7, v6}, Lkds;->d(Landroid/location/Location;)V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_9
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_18
    .catchall {:try_start_16 .. :try_end_16} :catchall_b

    goto :goto_15

    :catch_9
    move-exception v0

    move-object v1, v0

    move-object/from16 p1, v2

    move-object/from16 v18, v4

    move-object/from16 v17, v5

    :goto_14
    const/4 v3, 0x0

    goto/16 :goto_22

    :cond_15
    :goto_15
    :try_start_17
    invoke-virtual {v7}, Lkds;->e()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lkds;->g(J)V

    iget-object v6, v7, Lkds;->a:Lcom/google/android/libraries/camera/exif/ExifInterface;

    iget-object v7, v1, Leih;->l:Ljew;

    invoke-virtual {v7, v6}, Ljew;->n(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    sget v7, Lcom/google/android/libraries/camera/exif/ExifInterface;->h:I

    invoke-virtual {v6, v7}, Lcom/google/android/libraries/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v7

    sget v8, Lcom/google/android/libraries/camera/exif/ExifInterface;->g:I

    invoke-virtual {v6, v8}, Lcom/google/android/libraries/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v8

    sget v9, Lcom/google/android/libraries/camera/exif/ExifInterface;->aT:I

    invoke-virtual {v6, v9}, Lcom/google/android/libraries/camera/exif/ExifInterface;->u(I)[Lkac;

    move-result-object v9

    invoke-static {v9}, Lkac;->b([Lkac;)Ljava/lang/String;

    move-result-object v9

    sget v10, Lcom/google/android/libraries/camera/exif/ExifInterface;->aV:I

    invoke-virtual {v6, v10}, Lcom/google/android/libraries/camera/exif/ExifInterface;->u(I)[Lkac;

    move-result-object v10

    invoke-static {v10}, Lkac;->b([Lkac;)Ljava/lang/String;

    move-result-object v10

    sget v11, Lcom/google/android/libraries/camera/exif/ExifInterface;->aS:I

    invoke-virtual {v6, v11}, Lcom/google/android/libraries/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v11

    sget v12, Lcom/google/android/libraries/camera/exif/ExifInterface;->aU:I

    invoke-virtual {v6, v12}, Lcom/google/android/libraries/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v12

    sget v13, Lcom/google/android/libraries/camera/exif/ExifInterface;->aX:I

    invoke-virtual {v6, v13}, Lcom/google/android/libraries/camera/exif/ExifInterface;->u(I)[Lkac;

    move-result-object v13

    invoke-static {v13}, Lkac;->b([Lkac;)Ljava/lang/String;

    move-result-object v13

    sget v14, Lcom/google/android/libraries/camera/exif/ExifInterface;->aW:I

    invoke-virtual {v6, v14}, Lcom/google/android/libraries/camera/exif/ExifInterface;->k(I)Lkdq;

    move-result-object v14

    sget v15, Lcom/google/android/libraries/camera/exif/ExifInterface;->aY:I

    invoke-virtual {v6, v15}, Lcom/google/android/libraries/camera/exif/ExifInterface;->u(I)[Lkac;

    move-result-object v15
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_12
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_11
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    if-eqz v15, :cond_1b

    move-object/from16 v17, v5

    :try_start_18
    array-length v5, v15
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_11
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    move-object/from16 p1, v2

    const/4 v2, 0x3

    if-eq v5, v2, :cond_16

    move-object/from16 v18, v4

    move-object/from16 v19, v14

    const/4 v1, 0x0

    goto/16 :goto_1a

    :cond_16
    :try_start_19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_b
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_11
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    const/4 v5, 0x0

    :goto_16
    move-object/from16 v18, v4

    :try_start_1a
    array-length v4, v15

    if-ge v5, v4, :cond_1a

    aget-object v1, v15, v5

    move-object/from16 v19, v14

    move-object/from16 v20, v15

    iget-wide v14, v1, Lkac;->a:J

    move-wide/from16 v21, v14

    iget-wide v14, v1, Lkac;->b:J

    const-wide/16 v23, 0x1

    cmp-long v1, v14, v23

    if-eqz v1, :cond_17

    const-wide/16 v14, 0x0

    goto :goto_17

    :cond_17
    move-wide/from16 v14, v21

    :goto_17
    const-wide/16 v21, 0x9

    cmp-long v1, v14, v21

    if-gtz v1, :cond_18

    const-string v1, "0"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_18
    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, -0x1

    if-eq v5, v4, :cond_19

    const-string v1, ":"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_19
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v1, p0

    move-object/from16 v4, v18

    move-object/from16 v14, v19

    move-object/from16 v15, v20

    goto :goto_16

    :cond_1a
    move-object/from16 v19, v14

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1
    :try_end_1a
    .catch Ljava/io/IOException; {:try_start_1a .. :try_end_1a} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_f
    .catchall {:try_start_1a .. :try_end_1a} :catchall_5

    goto :goto_1a

    :catch_a
    move-exception v0

    goto :goto_19

    :catch_b
    move-exception v0

    goto :goto_18

    :catch_c
    move-exception v0

    move-object/from16 p1, v2

    :goto_18
    move-object/from16 v18, v4

    :goto_19
    move-object v1, v0

    goto/16 :goto_14

    :cond_1b
    move-object/from16 p1, v2

    move-object/from16 v18, v4

    move-object/from16 v17, v5

    move-object/from16 v19, v14

    const/4 v1, 0x0

    :goto_1a
    :try_start_1b
    sget v2, Lcom/google/android/libraries/camera/exif/ExifInterface;->bs:I

    invoke-virtual {v6, v2}, Lcom/google/android/libraries/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/google/android/libraries/camera/exif/ExifInterface;->s:I

    invoke-virtual {v6, v4}, Lcom/google/android/libraries/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v4

    sget v5, Lcom/google/android/libraries/camera/exif/ExifInterface;->aM:I

    invoke-virtual {v6, v5}, Lcom/google/android/libraries/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v5

    sget v14, Lcom/google/android/libraries/camera/exif/ExifInterface;->ad:I

    invoke-virtual {v6, v14}, Lcom/google/android/libraries/camera/exif/ExifInterface;->getTagStringValue(I)Ljava/lang/String;

    move-result-object v14

    new-instance v15, Landroid/media/ExifInterface;

    invoke-direct {v15, v3}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1b .. :try_end_1b} :catch_f
    .catchall {:try_start_1b .. :try_end_1b} :catchall_5

    if-eqz v7, :cond_1c

    :try_start_1c
    const-string v3, "Model"

    invoke-virtual {v15, v3, v7}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1c
    if-eqz v8, :cond_1d

    const-string v3, "Make"

    invoke-virtual {v15, v3, v8}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    if-eqz v9, :cond_1e

    const-string v3, "GPSLatitude"

    invoke-virtual {v15, v3, v9}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    if-eqz v10, :cond_1f

    const-string v3, "GPSLongitude"

    invoke-virtual {v15, v3, v10}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    if-eqz v11, :cond_20

    const-string v3, "GPSLatitudeRef"

    invoke-virtual {v15, v3, v11}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_20
    if-eqz v12, :cond_21

    const-string v3, "GPSLongitudeRef"

    invoke-virtual {v15, v3, v12}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_21
    if-eqz v1, :cond_22

    const-string v3, "GPSTimeStamp"

    invoke-virtual {v15, v3, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_22
    if-eqz v2, :cond_23

    const-string v1, "GPSDateStamp"

    invoke-virtual {v15, v1, v2}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_23
    if-eqz v13, :cond_24

    const-string v1, "GPSAltitude"

    invoke-virtual {v15, v1, v13}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_f
    .catchall {:try_start_1c .. :try_end_1c} :catchall_5

    :cond_24
    if-eqz v19, :cond_28

    :try_start_1d
    invoke-virtual/range {v19 .. v19}, Lkdq;->e()Z

    move-result v1

    if-eqz v1, :cond_28

    move-object/from16 v1, v19

    iget-object v2, v1, Lkdq;->f:Ljava/lang/Object;

    instance-of v3, v2, [B
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_1d} :catch_f
    .catchall {:try_start_1d .. :try_end_1d} :catchall_5

    if-eqz v3, :cond_25

    :try_start_1e
    check-cast v2, [B
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_f
    .catchall {:try_start_1e .. :try_end_1e} :catchall_5

    goto :goto_1b

    :cond_25
    const/4 v2, 0x0

    :goto_1b
    if-eqz v2, :cond_27

    :try_start_1f
    array-length v3, v2
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_10
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_5

    if-gtz v3, :cond_26

    const/4 v3, 0x0

    goto :goto_1c

    :cond_26
    const/4 v3, 0x0

    :try_start_20
    aget-byte v2, v2, v3

    const/4 v7, -0x1

    if-eq v2, v7, :cond_29

    invoke-virtual {v1}, Lkdq;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_29

    const-string v2, "GPSAltitudeRef"

    invoke-virtual {v15, v2, v1}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1c

    :cond_27
    const/4 v3, 0x0

    goto :goto_1c

    :cond_28
    const/4 v3, 0x0

    :cond_29
    :goto_1c
    if-eqz v4, :cond_2a

    const-string v1, "DateTime"

    invoke-virtual {v15, v1, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DateTimeOriginal"

    invoke-virtual {v15, v1, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "DateTimeDigitized"

    invoke-virtual {v15, v1, v4}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1d

    :catchall_4
    move-exception v0

    goto :goto_1e

    :catch_d
    move-exception v0

    goto :goto_1f

    :catch_e
    move-exception v0

    goto :goto_21

    :cond_2a
    :goto_1d
    if-eqz v5, :cond_2b

    const-string v1, "OffsetTime"

    invoke-virtual {v15, v1, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "OffsetTimeOriginal"

    invoke-virtual {v15, v1, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "OffsetTimeDigitized"

    invoke-virtual {v15, v1, v5}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    if-eqz v14, :cond_2c

    const-string v1, "SubSecTime"

    invoke-virtual {v15, v1, v14}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SubSecTimeOriginal"

    invoke-virtual {v15, v1, v14}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "SubSecTimeDigitized"

    invoke-virtual {v15, v1, v14}, Landroid/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    invoke-virtual {v15}, Landroid/media/ExifInterface;->saveAttributes()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_e
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_d
    .catchall {:try_start_20 .. :try_end_20} :catchall_4

    move-object v10, v6

    goto :goto_23

    :catchall_5
    move-exception v0

    const/4 v3, 0x0

    :goto_1e
    move-object/from16 v1, p0

    move-object v4, v0

    move-object/from16 v2, v18

    goto/16 :goto_30

    :catch_f
    move-exception v0

    const/4 v3, 0x0

    :goto_1f
    move-object/from16 v1, p0

    move-object v4, v0

    move-object/from16 v2, v18

    goto/16 :goto_2e

    :catch_10
    move-exception v0

    goto :goto_20

    :catchall_6
    move-exception v0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_2a

    :catch_11
    move-exception v0

    const/4 v3, 0x0

    move-object/from16 v1, p0

    goto/16 :goto_2c

    :catch_12
    move-exception v0

    move-object/from16 p1, v2

    move-object/from16 v18, v4

    move-object/from16 v17, v5

    :goto_20
    const/4 v3, 0x0

    :goto_21
    move-object v1, v0

    :goto_22
    :try_start_21
    sget-object v2, Leih;->b:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    const-string v4, "Could not read exif data"

    const/16 v5, 0x5d8

    invoke-static {v2, v4, v5, v1}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_21} :catch_17
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    const/4 v10, 0x0

    :goto_23
    move-object/from16 v1, p0

    :try_start_22
    iget-object v2, v1, Leih;->i:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_16
    .catchall {:try_start_22 .. :try_end_22} :catchall_9

    move-object/from16 v2, v18

    const/high16 v4, 0x3f800000    # 1.0f

    :try_start_23
    invoke-interface {v2, v4}, Lcom/google/geo/lightfield/processing/ProgressCallback;->setProgress(F)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_23} :catch_15
    .catchall {:try_start_23 .. :try_end_23} :catchall_d

    :try_start_24
    new-instance v4, Ljava/io/FileInputStream;

    move-object/from16 v5, p1

    invoke-direct {v4, v5}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_24} :catch_14
    .catch Ljava/io/IOException; {:try_start_24 .. :try_end_24} :catch_13
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_15
    .catchall {:try_start_24 .. :try_end_24} :catchall_d

    :try_start_25
    invoke-static {v4}, Lcom/google/common/io/ByteStreams;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v5

    iget-object v6, v1, Leih;->a:Lgxl;

    new-instance v7, Lhkt;

    new-instance v8, Lkaf;

    move-object/from16 v9, v17

    iget-object v9, v9, Lcom/google/android/apps/camera/imax/cyclops/image/StereoPanorama;->c:Lcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;

    iget v11, v9, Lcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;->croppedAreaImageWidthPixels:I

    iget v9, v9, Lcom/google/android/apps/camera/imax/cyclops/metadata/PanoMeta;->croppedAreaImageHeightPixels:I

    invoke-direct {v8, v11, v9}, Lkaf;-><init>(II)V

    sget-object v8, Lkqi;->c:Lkqi;

    invoke-direct {v7, v8}, Lhkt;-><init>(Lkqi;)V

    invoke-virtual {v7, v10}, Lhkt;->a(Lcom/google/android/libraries/camera/exif/ExifInterface;)V

    sget-object v8, Lkab;->a:Lkab;

    invoke-virtual {v7, v8}, Lhkt;->b(Lkab;)V

    invoke-interface {v6, v5, v7}, Lgxl;->r([BLhkt;)Lnou;
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_7

    :try_start_26
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_26
    .catch Ljava/io/FileNotFoundException; {:try_start_26 .. :try_end_26} :catch_14
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_13
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_15
    .catchall {:try_start_26 .. :try_end_26} :catchall_d

    const/4 v7, 0x1

    goto :goto_25

    :catchall_7
    move-exception v0

    move-object v5, v0

    :try_start_27
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_8

    goto :goto_24

    :catchall_8
    move-exception v0

    move-object v4, v0

    :try_start_28
    invoke-static {v5, v4}, Lfcr;->i(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_24
    throw v5
    :try_end_28
    .catch Ljava/io/FileNotFoundException; {:try_start_28 .. :try_end_28} :catch_14
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_13
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_15
    .catchall {:try_start_28 .. :try_end_28} :catchall_d

    :catch_13
    move-exception v0

    move-object v4, v0

    :try_start_29
    sget-object v5, Leih;->b:Lnak;

    invoke-virtual {v5}, Lnaf;->b()Lnaz;

    move-result-object v5

    const-string v6, "Unable to read file for saving"

    const/16 v7, 0x5db

    invoke-static {v5, v6, v7, v4}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    const/4 v7, 0x1

    goto :goto_25

    :catch_14
    move-exception v0

    move-object v4, v0

    sget-object v5, Leih;->b:Lnak;

    invoke-virtual {v5}, Lnaf;->b()Lnaz;

    move-result-object v5

    const-string v6, "File not found for saving"

    const/16 v7, 0x5da

    invoke-static {v5, v6, v7, v4}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_29 .. :try_end_29} :catch_15
    .catchall {:try_start_29 .. :try_end_29} :catchall_d

    const/4 v7, 0x1

    :goto_25
    invoke-virtual {v2}, Lnpy;->a()V

    iget-object v2, v1, Leih;->h:Ljava/util/List;

    invoke-static {v2}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x0

    :goto_26
    if-ge v5, v4, :cond_2d

    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljzs;

    invoke-interface {v6, v1}, Ljzs;->a(Ljava/lang/Object;)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_26

    :cond_2d
    if-eqz v7, :cond_2f

    iget-object v2, v1, Leih;->k:Lehx;

    new-instance v4, Ljava/io/File;

    invoke-virtual {v2}, Lehx;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v4, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_2f

    :goto_27
    array-length v5, v2

    if-ge v3, v5, :cond_2e

    aget-object v5, v2, v3

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_27

    :cond_2e
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    return-void

    :catch_15
    move-exception v0

    goto :goto_2d

    :catchall_9
    move-exception v0

    goto :goto_28

    :catch_16
    move-exception v0

    goto :goto_29

    :catchall_a
    move-exception v0

    move-object/from16 v1, p0

    :goto_28
    move-object/from16 v2, v18

    goto :goto_2b

    :catch_17
    move-exception v0

    move-object/from16 v1, p0

    :goto_29
    move-object/from16 v2, v18

    goto :goto_2d

    :catchall_b
    move-exception v0

    move-object v2, v4

    const/4 v3, 0x0

    goto :goto_2b

    :catch_18
    move-exception v0

    move-object v2, v4

    const/4 v3, 0x0

    goto :goto_2d

    :catchall_c
    move-exception v0

    :goto_2a
    move-object v2, v4

    :goto_2b
    move-object v4, v0

    goto :goto_30

    :catch_19
    move-exception v0

    :goto_2c
    move-object v2, v4

    :goto_2d
    move-object v4, v0

    :goto_2e
    :try_start_2a
    sget-object v5, Leih;->b:Lnak;

    invoke-virtual {v5}, Lnaf;->b()Lnaz;

    move-result-object v5

    check-cast v5, Lnah;

    invoke-interface {v5, v4}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const/16 v5, 0x5d9

    invoke-interface {v4, v5}, Lnah;->G(I)Lnaz;

    move-result-object v4

    check-cast v4, Lnah;

    const-string v5, "Failed to compute panorama"

    invoke-interface {v4, v5}, Lnah;->o(Ljava/lang/String;)V
    :try_end_2a
    .catchall {:try_start_2a .. :try_end_2a} :catchall_d

    invoke-virtual {v2}, Lnpy;->a()V

    iget-object v2, v1, Leih;->h:Ljava/util/List;

    invoke-static {v2}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    :goto_2f
    if-ge v3, v4, :cond_2f

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljzs;

    invoke-interface {v5, v1}, Ljzs;->a(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_2f

    :cond_2f
    return-void

    :catchall_d
    move-exception v0

    goto :goto_2b

    :goto_30
    invoke-virtual {v2}, Lnpy;->a()V

    iget-object v2, v1, Leih;->h:Ljava/util/List;

    invoke-static {v2}, Lmvv;->j(Ljava/util/Collection;)Lmvv;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    :goto_31
    if-ge v3, v5, :cond_30

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljzs;

    invoke-interface {v6, v1}, Ljzs;->a(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_30
    goto :goto_33

    :goto_32
    throw v4

    :goto_33
    goto :goto_32
.end method

.method public final e(Ljzs;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Leih;->h:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method
