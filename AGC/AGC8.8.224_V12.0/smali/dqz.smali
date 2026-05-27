.class public final Ldqz;
.super Ljava/lang/Object;

# interfaces
.implements Ldqy;


# static fields
.field private static final d:Lnak;


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Lkbc;

.field public c:Lmqp;

.field private final e:Z

.field private final f:Z

.field private g:Ljava/nio/ByteBuffer;

.field private final h:Lfwx;

.field private final i:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/facedeblur/deeprestore/DeepRestoreFaceDeblurControllerImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldqz;->d:Lnak;

    return-void
.end method

.method public constructor <init>(Lfwx;Ljava/util/concurrent/Executor;Ljuf;Ldhi;Lkbc;Landroid/content/Context;)V
    .locals 18

    move-object/from16 v1, p0

    move-object/from16 v0, p4

    move-object/from16 v2, p5

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    sget-object v3, Lmpx;->a:Lmpx;

    iput-object v3, v1, Ldqz;->c:Lmqp;

    const/4 v3, 0x0

    iput-object v3, v1, Ldqz;->g:Ljava/nio/ByteBuffer;

    move-object/from16 v3, p1

    iput-object v3, v1, Ldqz;->h:Lfwx;

    move-object/from16 v3, p2

    iput-object v3, v1, Ldqz;->a:Ljava/util/concurrent/Executor;

    sget-object v3, Ldhd;->b:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    const-string v4, "cpu"

    const-string v5, "darwinn"

    if-eqz v3, :cond_0

    move-object v3, v5

    goto :goto_0

    :cond_0
    sget-object v3, Ldhd;->c:Ldhj;

    invoke-interface {v0, v3}, Ldhi;->l(Ldhj;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "gpu"

    goto :goto_0

    :cond_1
    move-object v3, v4

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const-string v6, "[FaceDB-DR]"

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-eqz v4, :cond_2

    sget-object v0, Ldqz;->d:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v3, "%s accelName = .cpu is not supported!"

    const/16 v4, 0x44c

    invoke-static {v0, v3, v6, v4}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    iput-boolean v8, v1, Ldqz;->e:Z

    iput-boolean v7, v1, Ldqz;->f:Z

    iput-object v2, v1, Ldqz;->b:Lkbc;

    iput v8, v1, Ldqz;->i:I

    return-void

    :cond_2
    :try_start_0
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    sget-object v9, Ldhd;->g:Ldhj;

    invoke-interface {v0, v9}, Ldhi;->j(Ldhj;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual/range {p6 .. p6}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v9
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :try_start_2
    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v10
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :try_start_3
    invoke-virtual {v10}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v11

    invoke-static {v11}, Lj$/nio/channels/DesugarChannels;->convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object v11
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :try_start_4
    sget-object v13, Ljava/nio/channels/FileChannel$MapMode;->READ_ONLY:Ljava/nio/channels/FileChannel$MapMode;

    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v14

    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v16

    move-object v12, v11

    invoke-virtual/range {v12 .. v17}, Ljava/nio/channels/FileChannel;->map(Ljava/nio/channels/FileChannel$MapMode;JJ)Ljava/nio/MappedByteBuffer;

    move-result-object v12
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v11, :cond_3

    :try_start_5
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :cond_3
    if-eqz v10, :cond_4

    :try_start_6
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_4
    if-eqz v9, :cond_5

    :try_start_7
    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    :cond_5
    :try_start_8
    iput-object v12, v1, Ldqz;->g:Ljava/nio/ByteBuffer;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p4 .. p4}, Ldhi;->c()V

    invoke-static {v3, v12, v4, v7, v7}, Lcom/google/android/apps/camera/facedeblur/deeprestore/jni/DeepRestoreNative;->createHandle(Ljava/lang/String;Ljava/nio/ByteBuffer;Ljava/lang/String;ZZ)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v4}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v4

    iput-object v4, v1, Ldqz;->c:Lmqp;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1

    new-instance v4, Ldei;

    const/16 v6, 0xe

    invoke-direct {v4, v1, v6}, Ldei;-><init>(Ldqz;I)V

    move-object/from16 v6, p3

    invoke-virtual {v6, v4}, Ljuf;->d(Lkad;)V

    sget-object v4, Ldhd;->d:Ldhj;

    invoke-interface {v0, v4}, Ldhi;->l(Ldhj;)Z

    move-result v4

    iput-boolean v4, v1, Ldqz;->e:Z

    sget-object v4, Ldhd;->f:Ldhj;

    invoke-interface {v0, v4}, Ldhi;->l(Ldhj;)Z

    move-result v0

    iput-boolean v0, v1, Ldqz;->f:Z

    iput-object v2, v1, Ldqz;->b:Lkbc;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eq v8, v0, :cond_6

    const/4 v0, 0x2

    goto :goto_1

    :cond_6
    const/4 v0, 0x3

    :goto_1
    iput v0, v1, Ldqz;->i:I

    return-void

    :catchall_0
    move-exception v0

    move-object v3, v0

    if-eqz v11, :cond_7

    :try_start_9
    invoke-virtual {v11}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v4, v0

    :try_start_a
    invoke-static {v3, v4}, Ldre;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_7
    :goto_2
    throw v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    if-eqz v10, :cond_8

    :try_start_b
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v4, v0

    :try_start_c
    invoke-static {v3, v4}, Ldre;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_8
    :goto_3
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    :catchall_4
    move-exception v0

    move-object v3, v0

    if-eqz v9, :cond_9

    :try_start_d
    invoke-virtual {v9}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object v4, v0

    :try_start_e
    invoke-static {v3, v4}, Ldre;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_9
    :goto_4
    throw v3
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_0
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_1

    :catch_0
    move-exception v0

    :try_start_f
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Failed to mmap deeprestore asset file"

    invoke-direct {v3, v4, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_1

    :catch_1
    move-exception v0

    sget-object v3, Ldqz;->d:Lnak;

    invoke-virtual {v3}, Lnaf;->b()Lnaz;

    move-result-object v3

    const-string v4, "%s Failed create deeprestore client."

    const/16 v5, 0x44b

    invoke-static {v3, v4, v6, v5, v0}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    iput-boolean v8, v1, Ldqz;->e:Z

    iput-boolean v7, v1, Ldqz;->f:Z

    iput-object v2, v1, Ldqz;->b:Lkbc;

    iput v8, v1, Ldqz;->i:I

    return-void
.end method

.method public static synthetic a$001(Lfwx;Lfwu;)Lnou;
    .locals 1

    invoke-virtual/range {p0 .. p1}, Lfwx;->a(Lfwu;)Lnou;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized a(Ldqx;)Lnou;
    .locals 5

    const v1, 0x0

    return-object v1
.end method

.method public final declared-synchronized b(Ldqx;)Ljava/lang/Boolean;
    .locals 20

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    monitor-enter p0

    :try_start_0
    iget-object v2, v1, Ldqz;->c:Lmqp;

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_0

    sget-object v0, Ldqz;->d:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v2, "%s DeepRestoreFaceDeblur is not ready, return the image."

    const-string v4, "[FaceDB-DR]"

    const/16 v5, 0x444

    invoke-static {v0, v2, v4, v5}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    :try_start_1
    iget-object v2, v0, Ldqx;->b:Ljava/lang/Object;

    iget-object v2, v0, Ldqx;->a:Ljava/lang/Object;

    iget-object v2, v0, Ldqx;->c:Ljava/lang/Object;

    if-nez v2, :cond_1

    sget-object v0, Ldqz;->d:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v2, "%s [RGB path] Input mask is null."

    const-string v4, "[FaceDB-DR]"

    const/16 v5, 0x441

    invoke-static {v0, v2, v4, v5}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-object v2, v0, Ldqx;->e:Ljava/lang/Object;

    iget-object v6, v1, Ldqz;->c:Lmqp;

    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    iget-object v6, v0, Ldqx;->a:Ljava/lang/Object;

    check-cast v6, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v6}, Lcom/google/googlex/gcam/InterleavedImageU8;->f()Lcom/google/googlex/gcam/InterleavedWriteViewU8;

    move-result-object v6

    invoke-static {v6}, Lcom/google/googlex/gcam/InterleavedWriteViewU8;->a(Lcom/google/googlex/gcam/InterleavedWriteViewU8;)J

    move-result-wide v9

    iget-object v6, v0, Ldqx;->c:Ljava/lang/Object;

    check-cast v6, Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v6}, Lcom/google/googlex/gcam/InterleavedImageU8;->f()Lcom/google/googlex/gcam/InterleavedWriteViewU8;

    move-result-object v6

    invoke-static {v6}, Lcom/google/googlex/gcam/InterleavedWriteViewU8;->a(Lcom/google/googlex/gcam/InterleavedWriteViewU8;)J

    move-result-wide v11

    iget-object v6, v0, Ldqx;->b:Ljava/lang/Object;

    move-object v13, v6

    check-cast v13, Ldrb;

    iget v13, v13, Ldrb;->a:F

    move-object v14, v6

    check-cast v14, Ldrb;

    iget-object v14, v14, Ldrb;->b:[J

    check-cast v6, Ldrb;

    iget-object v15, v6, Ldrb;->c:[J

    iget-boolean v6, v1, Ldqz;->e:Z

    iget-boolean v3, v1, Ldqz;->f:Z

    if-eqz v2, :cond_2

    move-object/from16 v16, v2

    check-cast v16, Lcom/google/googlex/gcam/ShotMetadata;

    invoke-static/range {v16 .. v16}, Lcom/google/googlex/gcam/ShotMetadata;->a(Lcom/google/googlex/gcam/ShotMetadata;)J

    move-result-wide v16

    move-wide/from16 v18, v16

    goto :goto_0

    :cond_2
    const-wide/16 v16, 0x0

    move-wide/from16 v18, v16

    :goto_0
    move/from16 v16, v6

    move/from16 v17, v3

    invoke-static/range {v7 .. v19}, Lcom/google/android/apps/camera/facedeblur/deeprestore/jni/DeepRestoreNative;->deepRestoreFaceDeblurRgb(JJJF[J[JZZJ)I

    move-result v3

    const/4 v6, 0x1

    if-lez v3, :cond_3

    const/4 v7, 0x1

    goto :goto_1

    :cond_3
    const/4 v7, 0x0

    :goto_1
    if-eqz v2, :cond_4

    if-eqz v7, :cond_4

    move-object v8, v2

    check-cast v8, Lcom/google/googlex/gcam/ShotMetadata;

    iget-wide v8, v8, Lcom/google/googlex/gcam/ShotMetadata;->a:J

    check-cast v2, Lcom/google/googlex/gcam/ShotMetadata;

    invoke-static {v8, v9, v2, v6}, Lcom/google/googlex/gcam/GcamModuleJNI;->ShotMetadata_should_apply_deblur_badge_set(JLcom/google/googlex/gcam/ShotMetadata;Z)V

    :cond_4
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long/2addr v8, v4

    sget-object v2, Lnho;->g:Lnho;

    invoke-virtual {v2}, Lnws;->O()Lnwn;

    move-result-object v2

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_5
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnho;

    iget v5, v4, Lnho;->a:I

    const/4 v10, 0x4

    or-int/2addr v5, v10

    iput v5, v4, Lnho;->a:I

    iput-wide v8, v4, Lnho;->d:J

    iget-object v4, v0, Ldqx;->b:Ljava/lang/Object;

    check-cast v4, Ldrb;

    iget-object v4, v4, Ldrb;->b:[J

    array-length v5, v4

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    if-ge v11, v5, :cond_7

    aget-wide v13, v4, v11

    invoke-static {v13, v14}, Lcom/google/android/apps/camera/facemetadata/jni/FaceMetadataNative;->getThumbnailSize(J)I

    move-result v13

    if-ge v12, v13, :cond_6

    move v12, v13

    :cond_6
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_7
    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_8

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_8
    iget-object v4, v2, Lnwn;->b:Lnws;

    move-object v5, v4

    check-cast v5, Lnho;

    iget v11, v5, Lnho;->a:I

    const/4 v13, 0x2

    or-int/2addr v11, v13

    iput v11, v5, Lnho;->a:I

    iput v12, v5, Lnho;->c:I

    const/4 v5, 0x3

    if-eq v6, v7, :cond_9

    const/4 v10, 0x3

    goto :goto_3

    :cond_9
    :goto_3
    if-gez v3, :cond_a

    const/4 v10, 0x5

    :cond_a
    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_b
    iget-object v4, v2, Lnwn;->b:Lnws;

    move-object v11, v4

    check-cast v11, Lnho;

    add-int/lit8 v10, v10, -0x1

    iput v10, v11, Lnho;->b:I

    iget v10, v11, Lnho;->a:I

    or-int/2addr v10, v6

    iput v10, v11, Lnho;->a:I

    if-ne v3, v6, :cond_d

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_c

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_c
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lnho;

    iput v6, v3, Lnho;->e:I

    iget v4, v3, Lnho;->a:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Lnho;->a:I

    goto :goto_4

    :cond_d
    if-ne v3, v13, :cond_f

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v3

    if-nez v3, :cond_e

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_e
    iget-object v3, v2, Lnwn;->b:Lnws;

    check-cast v3, Lnho;

    iput v13, v3, Lnho;->e:I

    iget v4, v3, Lnho;->a:I

    or-int/lit8 v4, v4, 0x8

    iput v4, v3, Lnho;->a:I

    :cond_f
    :goto_4
    iget v3, v1, Ldqz;->i:I

    iget-object v4, v2, Lnwn;->b:Lnws;

    invoke-virtual {v4}, Lnws;->ac()Z

    move-result v4

    if-nez v4, :cond_10

    invoke-virtual {v2}, Lnwn;->p()V

    :cond_10
    iget-object v4, v2, Lnwn;->b:Lnws;

    check-cast v4, Lnho;

    add-int/lit8 v10, v3, -0x1

    if-eqz v3, :cond_12

    iput v10, v4, Lnho;->f:I

    iget v3, v4, Lnho;->a:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v4, Lnho;->a:I

    iget-object v0, v0, Ldqx;->d:Ljava/lang/Object;

    if-eqz v0, :cond_11

    invoke-virtual {v2}, Lnwn;->i()Lnws;

    move-result-object v2

    check-cast v2, Lnho;

    check-cast v0, Lhjd;

    iput-object v2, v0, Lhjd;->r:Lnho;

    :cond_11
    const-string v0, "RGB"

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v3, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v13

    const-string v4, "\n === Deeprestore Summary === \nEnabled: true\nImage format: %s\nApplied: %b\nProcessing Time: %d ms \n"

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_12
    const/4 v0, 0x0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw v0

    :goto_6
    goto :goto_5
.end method
