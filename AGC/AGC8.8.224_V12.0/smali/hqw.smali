.class public final Lhqw;
.super Ljava/lang/Object;

# interfaces
.implements Lhrf;


# static fields
.field private static final a:Lnak;


# instance fields
.field private b:Z

.field private final c:J

.field private d:Landroid/content/res/AssetFileDescriptor;

.field private e:Landroid/content/res/AssetFileDescriptor;

.field private volatile f:J

.field private volatile g:I

.field private final h:Lmqp;

.field private final i:Lmqp;

.field private final j:Ljvs;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/tracking/RoiTrackerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lhqw;->a:Lnak;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(Lmqp;Lmqp;ZLjava/lang/String;Ljava/lang/String;ZLandroid/content/Context;Ljvs;)V
    .locals 19

    move-object/from16 v1, p0

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    move-object/from16 v0, p1

    iput-object v0, v1, Lhqw;->h:Lmqp;

    move-object/from16 v0, p2

    iput-object v0, v1, Lhqw;->i:Lmqp;

    move-object/from16 v2, p8

    iput-object v2, v1, Lhqw;->j:Ljvs;

    invoke-virtual/range {p2 .. p2}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrg;

    goto :goto_0

    :cond_0
    sget-object v0, Lhrg;->b:Lhrg;

    :goto_0
    move-object v2, v0

    if-eqz p7, :cond_1

    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto :goto_1

    :cond_1
    const-string v0, ""

    move-object v3, v0

    :goto_1
    const/4 v14, 0x0

    if-eqz p6, :cond_2

    invoke-static {}, Lcom/google/android/apps/camera/jni/gxp/GxpUtils;->a()Z

    move-result v0

    move/from16 v16, v0

    goto :goto_2

    :cond_2
    const/16 v16, 0x0

    :goto_2
    if-eqz p3, :cond_5

    invoke-static/range {p4 .. p4}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-static/range {p5 .. p5}, Lmqr;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    if-nez p7, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v17, 0x0

    goto/16 :goto_8

    :cond_3
    :try_start_0
    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    move-object/from16 v4, p4

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, v1, Lhqw;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual/range {p7 .. p7}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    move-object/from16 v4, p5

    invoke-virtual {v0, v4}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    iput-object v0, v1, Lhqw;->e:Landroid/content/res/AssetFileDescriptor;

    iget-object v0, v1, Lhqw;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    iget-object v0, v1, Lhqw;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    iget-object v0, v1, Lhqw;->d:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v7
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3

    :try_start_3
    iget-object v0, v1, Lhqw;->e:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getParcelFileDescriptor()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFd()I

    move-result v9
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :try_start_4
    iget-object v0, v1, Lhqw;->e:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v10
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    :try_start_5
    iget-object v0, v1, Lhqw;->e:Landroid/content/res/AssetFileDescriptor;

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v17
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    move-wide v12, v10

    move v11, v9

    move-wide v9, v7

    move-wide v7, v5

    move/from16 v5, p3

    move v6, v4

    goto :goto_8

    :catch_0
    move-exception v0

    goto :goto_6

    :catch_1
    move-exception v0

    goto :goto_5

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    const-wide/16 v5, 0x0

    :goto_3
    const-wide/16 v7, 0x0

    :goto_4
    const/4 v9, 0x0

    :goto_5
    const-wide/16 v10, 0x0

    goto :goto_6

    :catch_5
    move-exception v0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    :goto_6
    sget-object v15, Lhqw;->a:Lnak;

    invoke-virtual {v15}, Lnaf;->b()Lnaz;

    move-result-object v15

    const-string v12, "Unable to load model from path."

    const/16 v13, 0xf46

    invoke-static {v15, v12, v13, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    move-wide v12, v10

    const-wide/16 v17, 0x0

    move v11, v9

    move-wide v9, v7

    move-wide v7, v5

    const/4 v5, 0x0

    move v6, v4

    goto :goto_8

    :cond_4
    const/4 v5, 0x0

    goto :goto_7

    :cond_5
    move/from16 v5, p3

    :goto_7
    const/4 v6, 0x0

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const-wide/16 v12, 0x0

    const-wide/16 v17, 0x0

    :goto_8
    invoke-virtual {v2}, Lhrg;->ordinal()I

    move-result v4

    move-object/from16 v2, p7

    move-wide/from16 v14, v17

    invoke-static/range {v2 .. v16}, Lcom/google/android/apps/camera/jni/tracking/RoiTrackerNative;->createHandle(Landroid/content/Context;Ljava/lang/String;IZIJJIJJZ)J

    move-result-wide v2

    iput-wide v2, v1, Lhqw;->c:J

    const-wide/16 v2, 0x0

    iput-wide v2, v1, Lhqw;->f:J

    const/4 v2, 0x0

    iput v2, v1, Lhqw;->g:I

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lhqw;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-wide v0, p0, Lhqw;->c:J

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/jni/tracking/RoiTrackerNative;->stopTracking(J)V

    iget-object v0, p0, Lhqw;->h:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrk;

    invoke-virtual {v0}, Lhrk;->a()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b(Lkpb;Landroid/graphics/PointF;)Lhrm;
    .locals 32

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    monitor-enter p0

    :try_start_0
    iget-boolean v2, v1, Lhqw;->b:Z

    if-eqz v2, :cond_0

    sget-object v0, Lhqw;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v2, "Cannot start tracking: tracker is closed"

    const/16 v3, 0xf44

    invoke-static {v0, v2, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    invoke-static {}, Lhrm;->b()Lhrm;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lkpb;->d()J

    move-result-wide v2

    iput-wide v2, v1, Lhqw;->f:J

    const/4 v2, 0x0

    iput v2, v1, Lhqw;->g:I

    iget-object v3, v1, Lhqw;->i:Lmqp;

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lhrg;

    goto :goto_0

    :cond_1
    sget-object v3, Lhrg;->b:Lhrg;

    :goto_0
    iget-object v4, v1, Lhqw;->h:Lmqp;

    invoke-virtual {v4}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhrk;

    new-instance v5, Lkaf;

    invoke-interface/range {p1 .. p1}, Lkpb;->c()I

    move-result v6

    invoke-interface/range {p1 .. p1}, Lkpb;->b()I

    move-result v7

    invoke-direct {v5, v6, v7}, Lkaf;-><init>(II)V

    invoke-interface/range {p1 .. p1}, Lkpb;->d()J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lhrk;->b(Lkaf;J)Z

    move-result v4

    if-nez v4, :cond_2

    sget-object v4, Lhqw;->a:Lnak;

    invoke-virtual {v4}, Lnaf;->c()Lnaz;

    move-result-object v4

    const-string v5, "Cannot start motion estimator for tracking"

    const/16 v6, 0xf43

    invoke-static {v4, v5, v6}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_2
    iget-object v4, v1, Lhqw;->h:Lmqp;

    invoke-virtual {v4}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lhrk;

    iget-object v4, v4, Lhrk;->a:Ldxl;

    invoke-virtual {v4}, Ldxl;->b()Lgrw;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-wide v5, v4, Lgrw;->d:J

    const-wide/32 v7, 0x2faf080

    cmp-long v9, v5, v7

    if-lez v9, :cond_3

    iget v4, v4, Lgrw;->f:I

    int-to-long v4, v4

    const-wide/16 v6, 0x15e

    cmp-long v8, v4, v6

    if-lez v8, :cond_3

    sget-object v3, Lhrg;->c:Lhrg;

    :cond_3
    invoke-interface/range {p1 .. p1}, Lkpb;->g()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkpa;

    invoke-interface/range {p1 .. p1}, Lkpb;->g()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x1

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkpa;

    invoke-interface/range {p1 .. p1}, Lkpb;->g()Ljava/util/List;

    move-result-object v7

    const/4 v8, 0x2

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lkpa;

    invoke-interface/range {p1 .. p1}, Lkpb;->c()I

    move-result v15

    invoke-interface/range {p1 .. p1}, Lkpb;->b()I

    move-result v12

    const/4 v9, 0x4

    new-array v9, v9, [F

    iget v10, v0, Landroid/graphics/PointF;->x:F

    int-to-float v14, v15

    mul-float v10, v10, v14

    const/high16 v11, -0x3f600000    # -5.0f

    add-float/2addr v10, v11

    aput v10, v9, v2

    iget v0, v0, Landroid/graphics/PointF;->y:F

    int-to-float v10, v12

    mul-float v0, v0, v10

    add-float/2addr v0, v11

    aput v0, v9, v6

    const/high16 v0, 0x41300000    # 11.0f

    aput v0, v9, v8

    const/16 v30, 0x3

    aput v0, v9, v30

    invoke-interface/range {p1 .. p1}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v31
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v16, v9

    :try_start_2
    iget-wide v8, v1, Lhqw;->c:J

    invoke-virtual {v3}, Lhrg;->ordinal()I

    move-result v3

    invoke-interface {v4}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-interface {v4}, Lkpa;->getPixelStride()I

    move-result v18

    invoke-interface {v4}, Lkpa;->getRowStride()I

    move-result v19

    invoke-interface {v5}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v20

    invoke-interface {v5}, Lkpa;->getPixelStride()I

    move-result v21

    invoke-interface {v5}, Lkpa;->getRowStride()I

    move-result v22

    invoke-interface {v7}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v23

    invoke-interface {v7}, Lkpa;->getPixelStride()I

    move-result v24

    invoke-interface {v7}, Lkpa;->getRowStride()I

    move-result v25

    iget-object v4, v1, Lhqw;->j:Ljvs;

    invoke-interface {v4}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v28

    invoke-interface/range {p1 .. p1}, Lkpb;->a()I

    move-result v29

    const/4 v11, 0x1

    const/4 v13, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    move v5, v14

    move v14, v4

    move v7, v10

    move-object/from16 v4, v16

    move-wide v9, v8

    move v8, v12

    move v12, v3

    move/from16 v16, v8

    move-object/from16 v26, v31

    move-object/from16 v27, v4

    invoke-static/range {v9 .. v29}, Lcom/google/android/apps/camera/jni/tracking/RoiTrackerNative;->startTracking(JZIIFIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILandroid/hardware/HardwareBuffer;[FZI)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v31, :cond_4

    :try_start_3
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_4
    aget v2, v4, v2

    div-float v8, v2, v5

    aget v6, v4, v6

    div-float v9, v6, v7

    const/4 v0, 0x2

    aget v0, v4, v0

    add-float/2addr v2, v0

    aget v0, v4, v30

    add-float/2addr v6, v0

    iget v0, v1, Lhqw;->g:I

    iget-wide v10, v1, Lhqw;->c:J

    invoke-static {v10, v11}, Lcom/google/android/apps/camera/jni/tracking/RoiTrackerNative;->getIsRefresherCalled(J)Z

    move-result v4

    add-int/2addr v0, v4

    iput v0, v1, Lhqw;->g:I

    const/high16 v0, -0x40800000    # -1.0f

    add-float/2addr v6, v0

    div-float/2addr v6, v7

    add-float/2addr v2, v0

    div-float/2addr v2, v5

    invoke-static {}, Lhrm;->a()Lhrl;

    move-result-object v0

    new-instance v4, Landroid/graphics/RectF;

    invoke-direct {v4, v8, v9, v2, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v0, v4}, Lhrl;->d(Landroid/graphics/RectF;)V

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Lhrl;->b(F)V

    invoke-static {v3}, Lhrp;->a(I)I

    move-result v2

    iput v2, v0, Lhrl;->a:I

    iget-wide v2, v1, Lhqw;->c:J

    invoke-static {v2, v3}, Lcom/google/android/apps/camera/jni/tracking/RoiTrackerNative;->getCurrentTrackerIndex(J)I

    move-result v2

    invoke-static {v2}, Lhrg;->a(I)Lhrg;

    move-result-object v2

    invoke-virtual {v0, v2}, Lhrl;->f(Lhrg;)V

    iget v2, v1, Lhqw;->g:I

    invoke-virtual {v0, v2}, Lhrl;->c(I)V

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lhrl;->e(J)V

    invoke-virtual {v0}, Lhrl;->a()Lhrm;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v31, :cond_5

    :try_start_4
    invoke-virtual/range {v31 .. v31}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_5
    invoke-static {v2, v3}, Ljpw;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized c(Lkpb;)Lhrm;
    .locals 29

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-boolean v0, v1, Lhqw;->b:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lhrm;->b()Lhrm;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lkpb;->g()Ljava/util/List;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkpa;

    invoke-interface/range {p1 .. p1}, Lkpb;->g()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpa;

    invoke-interface/range {p1 .. p1}, Lkpb;->g()Ljava/util/List;

    move-result-object v5

    const/4 v6, 0x2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkpa;

    invoke-interface/range {p1 .. p1}, Lkpb;->c()I

    move-result v15

    invoke-interface/range {p1 .. p1}, Lkpb;->b()I

    move-result v14

    const/4 v7, 0x5

    new-array v13, v7, [F

    iget-object v7, v1, Lhqw;->h:Lmqp;

    invoke-virtual {v7}, Lmqp;->g()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {v7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lhrk;

    invoke-interface/range {p1 .. p1}, Lkpb;->d()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lhrk;->c(J)[F

    move-result-object v7

    move-object/from16 v22, v7

    goto :goto_0

    :cond_1
    const/16 v7, 0x9

    new-array v7, v7, [F

    fill-array-data v7, :array_0

    move-object/from16 v22, v7

    :goto_0
    invoke-interface/range {p1 .. p1}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v27
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-wide v7, v1, Lhqw;->c:J

    invoke-interface {v0}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v16

    invoke-interface {v0}, Lkpa;->getPixelStride()I

    move-result v17

    invoke-interface {v0}, Lkpa;->getRowStride()I

    move-result v0

    invoke-interface {v3}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-interface {v3}, Lkpa;->getPixelStride()I

    move-result v19

    invoke-interface {v3}, Lkpa;->getRowStride()I

    move-result v3

    invoke-interface {v5}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v20

    invoke-interface {v5}, Lkpa;->getPixelStride()I

    move-result v21

    invoke-interface {v5}, Lkpa;->getRowStride()I

    move-result v5

    iget-object v9, v1, Lhqw;->j:Ljvs;

    invoke-interface {v9}, Ljvs;->bm()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v25

    invoke-interface/range {p1 .. p1}, Lkpb;->a()I

    move-result v26

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    move v11, v15

    move v12, v14

    move-object/from16 v28, v13

    move-object/from16 v13, v16

    move v6, v14

    move/from16 v14, v17

    move v4, v15

    move v15, v0

    move-object/from16 v16, v18

    move/from16 v17, v19

    move/from16 v18, v3

    move-object/from16 v19, v20

    move/from16 v20, v21

    move/from16 v21, v5

    move-object/from16 v23, v27

    move-object/from16 v24, v28

    invoke-static/range {v7 .. v26}, Lcom/google/android/apps/camera/jni/tracking/RoiTrackerNative;->updateRoi(JIFIILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;IILjava/nio/ByteBuffer;II[FLandroid/hardware/HardwareBuffer;[FZI)I

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v27, :cond_2

    :try_start_3
    invoke-virtual/range {v27 .. v27}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_2
    aget v2, v28, v2

    int-to-float v3, v4

    div-float v4, v2, v3

    const/4 v5, 0x1

    aget v5, v28, v5

    int-to-float v6, v6

    div-float v7, v5, v6

    const/4 v8, 0x2

    aget v8, v28, v8

    add-float/2addr v2, v8

    const/4 v8, 0x3

    aget v8, v28, v8

    add-float/2addr v5, v8

    const/4 v8, 0x4

    aget v8, v28, v8

    iget v9, v1, Lhqw;->g:I

    iget-wide v10, v1, Lhqw;->c:J

    invoke-static {v10, v11}, Lcom/google/android/apps/camera/jni/tracking/RoiTrackerNative;->getIsRefresherCalled(J)Z

    move-result v10

    add-int/2addr v9, v10

    iput v9, v1, Lhqw;->g:I

    invoke-static {}, Lhrm;->a()Lhrl;

    move-result-object v9

    new-instance v10, Landroid/graphics/RectF;

    const/high16 v11, -0x40800000    # -1.0f

    add-float/2addr v2, v11

    div-float/2addr v2, v3

    add-float/2addr v5, v11

    div-float/2addr v5, v6

    invoke-direct {v10, v4, v7, v2, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {v9, v10}, Lhrl;->d(Landroid/graphics/RectF;)V

    invoke-virtual {v9, v8}, Lhrl;->b(F)V

    invoke-static {v0}, Lhrp;->a(I)I

    move-result v0

    iput v0, v9, Lhrl;->a:I

    iget-wide v2, v1, Lhqw;->c:J

    invoke-static {v2, v3}, Lcom/google/android/apps/camera/jni/tracking/RoiTrackerNative;->getCurrentTrackerIndex(J)I

    move-result v0

    invoke-static {v0}, Lhrg;->a(I)Lhrg;

    move-result-object v0

    invoke-virtual {v9, v0}, Lhrl;->f(Lhrg;)V

    iget v0, v1, Lhqw;->g:I

    invoke-virtual {v9, v0}, Lhrl;->c(I)V

    invoke-interface/range {p1 .. p1}, Lkpb;->d()J

    move-result-wide v2

    iget-wide v4, v1, Lhqw;->f:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-virtual {v9, v2, v3}, Lhrl;->e(J)V

    invoke-virtual {v9}, Lhrl;->a()Lhrm;

    move-result-object v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    move-object v2, v0

    if-eqz v27, :cond_3

    :try_start_4
    invoke-virtual/range {v27 .. v27}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v3, v0

    :try_start_5
    invoke-static {v2, v3}, Ljpw;->m(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_3
    :goto_1
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catchall_2
    move-exception v0

    monitor-exit p0

    throw v0

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public final declared-synchronized close()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lhqw;->b:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lhqw;->d:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V

    :cond_1
    iget-object v0, p0, Lhqw;->e:Landroid/content/res/AssetFileDescriptor;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_2
    sget-object v1, Lhqw;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->b()Lnaz;

    move-result-object v1

    const-string v2, "Unable to close asset fd."

    const/16 v3, 0xf47

    invoke-static {v1, v2, v3, v0}, Ld;->h(Lnaz;Ljava/lang/String;CLjava/lang/Throwable;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lhqw;->a()V

    iget-object v0, p0, Lhqw;->h:Lmqp;

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhrk;

    invoke-virtual {v0}, Lhrk;->close()V

    :cond_3
    iget-wide v0, p0, Lhqw;->c:J

    invoke-static {v0, v1}, Lcom/google/android/apps/camera/jni/tracking/RoiTrackerNative;->releaseHandle(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lhqw;->b:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
