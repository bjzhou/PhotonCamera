.class public final Lgqb;
.super Ljava/lang/Object;

# interfaces
.implements Lgqd;


# instance fields
.field private final a:Lnsb;

.field private final b:Lldf;

.field private c:Lgqe;

.field private d:Lgqc;


# direct methods
.method public constructor <init>(Lnsb;Lldf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgqb;->a:Lnsb;

    iput-object p2, p0, Lgqb;->b:Lldf;

    return-void
.end method

.method private final declared-synchronized b()Lgqc;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgqb;->d:Lgqc;

    if-nez v0, :cond_0

    new-instance v0, Lgqc;

    iget-object v1, p0, Lgqb;->b:Lldf;

    invoke-direct {v0, v1}, Lgqc;-><init>(Lldf;)V

    iput-object v0, p0, Lgqb;->d:Lgqc;

    :cond_0
    iget-object v0, p0, Lgqb;->d:Lgqc;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final declared-synchronized c()Lgqd;
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgqb;->c:Lgqe;

    if-nez v0, :cond_0

    new-instance v0, Lgqe;

    iget-object v1, p0, Lgqb;->a:Lnsb;

    invoke-direct {v0, v1}, Lgqe;-><init>(Lnsb;)V

    iput-object v0, p0, Lgqb;->c:Lgqe;

    :cond_0
    iget-object v0, p0, Lgqb;->c:Lgqe;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public final a(Lkpb;Lkpb;)V
    .locals 23

    move-object/from16 v0, p2

    invoke-interface/range {p1 .. p1}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    :try_start_0
    invoke-interface/range {p2 .. p2}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_a

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    :try_start_1
    invoke-direct/range {p0 .. p0}, Lgqb;->b()Lgqc;

    move-result-object v0

    iget-object v3, v0, Lgqc;->a:Lldf;

    iget-object v3, v3, Lldf;->b:Llbd;

    new-instance v4, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    invoke-direct {v4, v1}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_8

    :try_start_2
    new-instance v5, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    invoke-direct {v5, v2}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_6

    :try_start_3
    invoke-static {v3, v4}, Llcd;->b(Llbd;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Llcd;

    move-result-object v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    :try_start_4
    invoke-static {v3, v5}, Lldc;->j(Llbd;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Lldc;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    iget-object v0, v0, Lgqc;->a:Lldf;

    invoke-virtual {v0, v6, v7}, Lldf;->e(Llcd;Lldc;)V

    invoke-static {v3}, Lktf;->u(Llbd;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    invoke-virtual {v7}, Llbk;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    invoke-virtual {v6}, Llbk;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    :try_start_8
    invoke-virtual {v5}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    :try_start_9
    invoke-virtual {v4}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_8

    :try_start_a
    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_a

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V

    return-void

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_b
    invoke-virtual {v7}, Llbk;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    move-object v7, v0

    :try_start_c
    invoke-static {v3, v7}, Lgsd;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_0
    throw v3
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_d
    invoke-virtual {v6}, Llbk;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    move-object v6, v0

    :try_start_e
    invoke-static {v3, v6}, Lgsd;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :catchall_4
    move-exception v0

    move-object v3, v0

    :try_start_f
    invoke-virtual {v5}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    goto :goto_2

    :catchall_5
    move-exception v0

    move-object v5, v0

    :try_start_10
    invoke-static {v3, v5}, Lgsd;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_2
    throw v3
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    :catchall_6
    move-exception v0

    move-object v3, v0

    :try_start_11
    invoke-virtual {v4}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    goto :goto_3

    :catchall_7
    move-exception v0

    move-object v4, v0

    :try_start_12
    invoke-static {v3, v4}, Lgsd;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_3
    throw v3

    :cond_0
    invoke-interface/range {p1 .. p1}, Lkpb;->a()I

    move-result v3

    move-object v4, v0

    check-cast v4, Lkkw;

    iget v4, v4, Lkkw;->a:I

    if-ne v3, v4, :cond_e

    invoke-interface/range {p1 .. p1}, Lkpb;->a()I

    move-result v3

    const/16 v4, 0x23

    if-ne v3, v4, :cond_e

    invoke-direct/range {p0 .. p0}, Lgqb;->c()Lgqd;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface/range {p1 .. p1}, Lkpb;->a()I

    move-result v5

    move-object v6, v0

    check-cast v6, Lkkw;

    iget v6, v6, Lkkw;->a:I

    const/4 v7, 0x0

    const/4 v8, 0x1

    if-ne v5, v6, :cond_1

    const/4 v5, 0x1

    goto :goto_4

    :cond_1
    const/4 v5, 0x0

    :goto_4
    invoke-static {v5}, Lmoz;->e(Z)V

    invoke-interface/range {p1 .. p1}, Lkpb;->a()I

    move-result v5

    if-ne v5, v4, :cond_2

    const/4 v5, 0x1

    goto :goto_5

    :cond_2
    const/4 v5, 0x0

    :goto_5
    invoke-static {v5}, Lmoz;->e(Z)V

    invoke-interface/range {p1 .. p1}, Lkpb;->c()I

    move-result v5

    move-object v6, v0

    check-cast v6, Lkkw;

    iget v6, v6, Lkkw;->b:I

    if-ne v5, v6, :cond_8

    invoke-interface/range {p1 .. p1}, Lkpb;->b()I

    move-result v5

    move-object v6, v0

    check-cast v6, Lkkw;

    iget v6, v6, Lkkw;->c:I

    if-ne v5, v6, :cond_8

    check-cast v3, Lgqe;

    iget-object v3, v3, Lgqe;->b:Lgsa;

    invoke-interface/range {p1 .. p1}, Lkpb;->a()I

    move-result v3

    move-object v5, v0

    check-cast v5, Lkkw;

    iget v5, v5, Lkkw;->a:I

    if-ne v3, v5, :cond_3

    const/4 v3, 0x1

    goto :goto_6

    :cond_3
    const/4 v3, 0x0

    :goto_6
    invoke-static {v3}, Lmoz;->e(Z)V

    invoke-interface/range {p1 .. p1}, Lkpb;->a()I

    move-result v3

    const/16 v5, 0x22

    if-eq v3, v5, :cond_4

    const/4 v3, 0x1

    goto :goto_7

    :cond_4
    const/4 v3, 0x0

    :goto_7
    invoke-static {v3}, Lmoz;->e(Z)V

    move-object v3, v0

    check-cast v3, Lkkw;

    iget v3, v3, Lkkw;->a:I

    if-eq v3, v5, :cond_5

    const/4 v3, 0x1

    goto :goto_8

    :cond_5
    const/4 v3, 0x0

    :goto_8
    invoke-static {v3}, Lmoz;->e(Z)V

    new-instance v3, Lkaf;

    invoke-interface/range {p1 .. p1}, Lkpb;->c()I

    move-result v5

    invoke-interface/range {p1 .. p1}, Lkpb;->b()I

    move-result v6

    invoke-direct {v3, v5, v6}, Lkaf;-><init>(II)V

    new-instance v5, Lkaf;

    move-object v6, v0

    check-cast v6, Lkkw;

    iget v6, v6, Lkkw;->b:I

    move-object v9, v0

    check-cast v9, Lkkw;

    iget v9, v9, Lkkw;->c:I

    invoke-direct {v5, v6, v9}, Lkaf;-><init>(II)V

    invoke-virtual {v3, v5}, Lkaf;->equals(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "source image size "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is different with destination image size "

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Lmoz;->f(ZLjava/lang/Object;)V

    invoke-interface/range {p1 .. p1}, Lkpb;->a()I

    move-result v3

    if-ne v3, v4, :cond_7

    invoke-interface/range {p1 .. p1}, Lkpb;->g()Ljava/util/List;

    move-result-object v3

    move-object v4, v0

    check-cast v4, Lkkw;

    invoke-virtual {v4}, Lkkw;->k()Lmvv;

    move-result-object v4

    invoke-interface/range {p1 .. p1}, Lkpb;->c()I

    move-result v9

    invoke-interface/range {p1 .. p1}, Lkpb;->b()I

    move-result v10

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkpa;

    invoke-interface {v5}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v11

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkpa;

    invoke-interface {v5}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v12

    const/4 v5, 0x2

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkpa;

    invoke-interface {v6}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v13

    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkpa;

    invoke-interface {v6}, Lkpa;->getRowStride()I

    move-result v14

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkpa;

    invoke-interface {v6}, Lkpa;->getRowStride()I

    move-result v15

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpa;

    invoke-interface {v3}, Lkpa;->getPixelStride()I

    move-result v16

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpa;

    invoke-interface {v3}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v17

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpa;

    invoke-interface {v3}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v18

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpa;

    invoke-interface {v3}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v19

    invoke-interface {v4, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpa;

    invoke-interface {v3}, Lkpa;->getRowStride()I

    move-result v20

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpa;

    invoke-interface {v3}, Lkpa;->getRowStride()I

    move-result v21

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpa;

    invoke-interface {v3}, Lkpa;->getPixelStride()I

    move-result v22

    invoke-static/range {v9 .. v22}, Lcom/google/android/libraries/camera/jni/yuv/YuvUtilNative;->copyYUV_420_888Native(IILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;IIILjava/nio/ByteBuffer;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;III)Z

    move-result v3

    if-eqz v3, :cond_6

    check-cast v0, Lkkw;

    invoke-virtual {v0}, Lkkw;->k()Lmvv;

    move-result-object v0

    invoke-virtual {v0}, Lmvv;->s()Lnad;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpa;

    invoke-interface {v3}, Lkpa;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    goto :goto_9

    :cond_6
    const-string v0, "Copy failed."

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_7
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-interface/range {p1 .. p1}, Lkpb;->a()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unsupported image format: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_8
    move-object v4, v3

    check-cast v4, Lgqe;

    iget-object v4, v4, Lgqe;->a:Lnsb;

    move-object/from16 v5, p1

    invoke-virtual {v4, v5}, Lnsb;->c(Lkpb;)Lcom/google/googlex/gcam/YuvWriteView;

    move-result-object v4

    check-cast v3, Lgqe;

    iget-object v3, v3, Lgqe;->a:Lnsb;

    invoke-virtual {v3, v0}, Lnsb;->c(Lkpb;)Lcom/google/googlex/gcam/YuvWriteView;

    move-result-object v0

    invoke-static {v4}, Lnsy;->f(Lcom/google/googlex/gcam/YuvWriteView;)Lcom/google/googlex/gcam/YuvReadView;

    move-result-object v3

    iget-wide v3, v3, Lcom/google/googlex/gcam/YuvReadView;->a:J

    invoke-static {v0}, Lcom/google/googlex/gcam/YuvWriteView;->c(Lcom/google/googlex/gcam/YuvWriteView;)J

    move-result-wide v5

    const-wide/16 v9, 0x0

    cmp-long v0, v3, v9

    if-eqz v0, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    const-string v11, "src is null"

    invoke-static {v0, v11}, Lmoz;->f(ZLjava/lang/Object;)V

    cmp-long v0, v5, v9

    if-eqz v0, :cond_a

    const/4 v7, 0x1

    goto :goto_b

    :cond_a
    :goto_b
    const-string v0, "dst is null"

    invoke-static {v7, v0}, Lmoz;->f(ZLjava/lang/Object;)V

    const/4 v0, 0x0

    invoke-static {v3, v4, v0, v5, v6}, Lcom/google/googlex/gcam/imageproc/Resample;->resampleLanczosYuvImpl(JFJ)Z
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_8

    :cond_b
    if-eqz v2, :cond_c

    :try_start_13
    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    :cond_c
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_d
    return-void

    :cond_e
    :try_start_14
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v3, "No transformer available to transform image!"

    invoke-direct {v0, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_8

    :catchall_8
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_f

    :try_start_15
    invoke-virtual {v2}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_9

    goto :goto_c

    :catchall_9
    move-exception v0

    move-object v2, v0

    :try_start_16
    invoke-static {v3, v2}, Lgsa;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_f
    :goto_c
    throw v3
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_a

    :catchall_a
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_10

    :try_start_17
    invoke-virtual {v1}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_b

    goto :goto_d

    :catchall_b
    move-exception v0

    move-object v1, v0

    invoke-static {v2, v1}, Lgsa;->c(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_10
    :goto_d
    goto :goto_f

    :goto_e
    throw v2

    :goto_f
    goto :goto_e
.end method
