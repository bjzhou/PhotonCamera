.class public final Ljzi;
.super Ljava/lang/Object;

# interfaces
.implements Ljyc;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljzd;

.field public c:Ljye;

.field public d:I

.field private final e:Landroid/location/Location;

.field private final f:Ljava/io/FileDescriptor;

.field private final g:Lnow;

.field private final h:I

.field private final i:I


# direct methods
.method public constructor <init>(Ljzh;)V
    .locals 16

    move-object/from16 v1, p0

    move-object/from16 v0, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v1, Ljzi;->a:Ljava/lang/Object;

    iget-object v2, v0, Ljzh;->a:Lnow;

    iput-object v2, v1, Ljzi;->g:Lnow;

    iget-object v2, v0, Ljzh;->i:Lnou;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-static {v2}, Lnsy;->K(Ljava/util/concurrent/Future;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/FileDescriptor;

    goto :goto_0

    :cond_0
    move-object v2, v3

    :goto_0
    iput-object v2, v1, Ljzi;->f:Ljava/io/FileDescriptor;

    iget v4, v0, Ljzh;->h:I

    iput v4, v1, Ljzi;->h:I

    iget-object v4, v0, Ljzh;->j:Landroid/location/Location;

    iput-object v4, v1, Ljzi;->e:Landroid/location/Location;

    iget-object v4, v0, Ljzh;->b:Ljzd;

    iput-object v4, v1, Ljzi;->b:Ljzd;

    iget v5, v0, Ljzh;->m:I

    iput v5, v1, Ljzi;->i:I

    invoke-interface {v4}, Ljzd;->f()V

    iget-object v6, v0, Ljzh;->k:Landroid/view/Surface;

    invoke-static {v6}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v6

    iget-object v7, v0, Ljzh;->e:Ljxa;

    iget-object v8, v0, Ljzh;->d:Ljwx;

    invoke-static {v2}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v2

    invoke-static {v3}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v9

    iget-object v10, v0, Ljzh;->j:Landroid/location/Location;

    invoke-static {v10}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v10

    iget v11, v0, Ljzh;->h:I

    iget v12, v0, Ljzh;->f:I

    iget-wide v13, v0, Ljzh;->g:J

    invoke-interface {v4}, Ljzd;->f()V

    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v15

    const-string v3, "MedRecPrep"

    if-eqz v15, :cond_1

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/FileDescriptor;

    invoke-interface {v4, v2}, Ljzd;->v(Ljava/io/FileDescriptor;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v9}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_c

    invoke-virtual {v9}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v4, v2}, Ljzd;->w(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v6}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v6}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/Surface;

    invoke-interface {v4, v2}, Ljzd;->n(Landroid/view/Surface;)V

    :cond_2
    const/4 v2, 0x1

    if-eqz v8, :cond_5

    if-eqz v5, :cond_4

    const/4 v6, 0x2

    if-eq v5, v6, :cond_3

    const/4 v5, 0x5

    goto :goto_2

    :cond_3
    const/4 v5, 0x1

    :goto_2
    invoke-interface {v4, v5}, Ljzd;->l(I)V

    goto :goto_3

    :cond_4
    const/4 v0, 0x0

    throw v0

    :cond_5
    :goto_3
    invoke-interface {v4}, Ljzd;->E()V

    iget-object v5, v7, Ljxa;->a:Ljwt;

    iget v5, v5, Ljwt;->d:I

    invoke-interface {v4, v5}, Ljzd;->x(I)V

    iget v5, v7, Ljxa;->d:I

    invoke-interface {v4, v5}, Ljzd;->y(I)V

    iget v5, v7, Ljxa;->e:I

    const/4 v6, -0x1

    if-eq v5, v6, :cond_6

    iget v9, v7, Ljxa;->f:I

    if-eq v9, v6, :cond_6

    invoke-interface {v4}, Ljzd;->a()Landroid/media/MediaRecorder;

    move-result-object v6

    sget-object v15, Livc;->a:[I

    invoke-virtual {v6, v5, v9}, Landroid/media/MediaRecorder;->setVideoEncodingProfileLevel(II)V

    :cond_6
    iget-object v5, v7, Ljxa;->b:Ljwu;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v5, v7, Ljxa;->b:Ljwu;

    invoke-virtual {v5}, Ljwu;->b()Lkaf;

    move-result-object v5

    iget v5, v5, Lkaf;->a:I

    iget-object v6, v7, Ljxa;->b:Ljwu;

    invoke-virtual {v6}, Ljwu;->b()Lkaf;

    move-result-object v6

    iget v6, v6, Lkaf;->b:I

    invoke-interface {v4, v5, v6}, Ljzd;->B(II)V

    invoke-virtual {v7}, Ljxa;->b()I

    invoke-virtual {v7}, Ljxa;->b()I

    move-result v5

    invoke-interface {v4, v5}, Ljzd;->z(I)V

    invoke-virtual {v7}, Ljxa;->c()I

    invoke-virtual {v7}, Ljxa;->c()I

    move-result v5

    invoke-interface {v4, v5}, Ljzd;->A(I)V

    invoke-virtual {v7}, Ljxa;->a()I

    invoke-virtual {v7}, Ljxa;->a()I

    move-result v5

    int-to-double v5, v5

    invoke-interface {v4, v5, v6}, Ljzd;->m(D)V

    if-eqz v8, :cond_7

    iget v5, v8, Ljwx;->b:I

    invoke-interface {v4, v5}, Ljzd;->j(I)V

    iget v5, v8, Ljwx;->e:I

    invoke-interface {v4, v5}, Ljzd;->h(I)V

    iget v5, v8, Ljwx;->c:I

    invoke-interface {v4, v5}, Ljzd;->k(I)V

    iget-object v5, v8, Ljwx;->a:Ljwp;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    iget-object v5, v8, Ljwx;->a:Ljwp;

    iget v5, v5, Ljwp;->g:I

    invoke-interface {v4, v5}, Ljzd;->i(I)V

    :cond_7
    invoke-virtual {v10}, Lmqp;->g()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-virtual {v10}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/location/Location;

    invoke-virtual {v5}, Landroid/location/Location;->getLatitude()D

    move-result-wide v5

    double-to-float v5, v5

    invoke-virtual {v10}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/location/Location;

    invoke-virtual {v6}, Landroid/location/Location;->getLongitude()D

    move-result-wide v6

    double-to-float v6, v6

    invoke-interface {v4, v5, v6}, Ljzd;->o(FF)V

    :cond_8
    invoke-interface {v4, v11}, Ljzd;->u(I)V

    if-lez v12, :cond_9

    invoke-interface {v4, v12}, Ljzd;->p(I)V

    :cond_9
    const-wide/16 v5, 0x0

    cmp-long v7, v13, v5

    if-lez v7, :cond_a

    invoke-interface {v4, v13, v14}, Ljzd;->q(J)V

    :cond_a
    :try_start_0
    invoke-interface {v4}, Ljzd;->d()V
    :try_end_0
    .catch Ljzb; {:try_start_0 .. :try_end_0} :catch_0

    new-instance v3, Ljzg;

    invoke-direct {v3, v0}, Ljzg;-><init>(Ljzh;)V

    invoke-interface {v4, v3}, Ljzd;->s(Landroid/media/MediaRecorder$OnErrorListener;)V

    iget-object v0, v0, Ljzh;->l:Ljye;

    if-eqz v0, :cond_b

    iput-object v0, v1, Ljzi;->c:Ljye;

    :cond_b
    iput v2, v1, Ljzi;->d:I

    return-void

    :catch_0
    move-exception v0

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "immediateFailedFuture: MediaRecorder.prepare() exception: "

    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    throw v2

    :cond_c
    const-string v0, "Either output file path or descriptor should present"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Ljzi;->h:I

    return v0
.end method

.method public final b()Landroid/media/MediaCodec;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation, please use VideoRecorderMediaCodec instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final c()Lmqp;
    .locals 3

    iget-object v0, p0, Ljzi;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ljzi;->d:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Lmoz;->p(Z)V

    iget-object v1, p0, Ljzi;->b:Ljzd;

    invoke-interface {v1}, Ljzd;->b()Landroid/view/Surface;

    move-result-object v1

    invoke-static {v1}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

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
    .locals 4

    iget-object v0, p0, Ljzi;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ljzi;->d:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const-string v1, "VidRecMedRec"

    const-string v2, "Already stopped"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :cond_0
    :try_start_1
    iget-object v1, p0, Ljzi;->b:Ljzd;

    invoke-interface {v1}, Ljzd;->D()V

    iget-object v1, p0, Ljzi;->c:Ljye;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljye;->c()V
    :try_end_1
    .catch Ljzb; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    const-string v1, "VidRecMedRec"

    const-string v3, "Fails to stop mediarecorder. Perhaps the recording is too short"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    iput v2, p0, Ljzi;->d:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final d()Lmqp;
    .locals 1

    iget-object v0, p0, Ljzi;->e:Landroid/location/Location;

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lmqp;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation, please use VideoRecorderMediaCodec instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f()Lmqp;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Unsupported operation, please use VideoRecorderMediaCodec instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final g()Lnou;
    .locals 3

    iget-object v0, p0, Ljzi;->g:Lnow;

    new-instance v1, Lbdj;

    const/16 v2, 0x14

    invoke-direct {v1, p0, v2}, Lbdj;-><init>(Ljzi;I)V

    invoke-interface {v0, v1}, Lnow;->b(Ljava/util/concurrent/Callable;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final h()Lnou;
    .locals 3

    iget-object v0, p0, Ljzi;->g:Lnow;

    new-instance v1, Lkhk;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2}, Lkhk;-><init>(Ljzi;I)V

    invoke-interface {v0, v1}, Lnow;->b(Ljava/util/concurrent/Callable;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final i()Lnou;
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "fast shutdown is not supported, please use VideoRecorderMediaCodec"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final j(Ljxy;)Lnou;
    .locals 3

    iget-object v0, p0, Ljzi;->g:Lnow;

    new-instance v1, Ljzf;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Ljzf;-><init>(Ljzi;Ljxy;I)V

    invoke-interface {v0, v1}, Lnow;->b(Ljava/util/concurrent/Callable;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final k()Lnou;
    .locals 3

    iget-object v0, p0, Ljzi;->g:Lnow;

    new-instance v1, Lbpf;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lbpf;-><init>(Ljzi;I)V

    invoke-interface {v0, v1}, Lnow;->b(Ljava/util/concurrent/Callable;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final l(Landroid/media/MediaFormat;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported operation, please use VideoRecorderMediaCodec instead"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m(Ljava/io/FileDescriptor;)V
    .locals 4

    iget-object v0, p0, Ljzi;->a:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Ljzi;->d:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    :goto_0
    invoke-static {v3}, Lmoz;->p(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Ljzi;->b:Ljzd;

    invoke-interface {v1, p1}, Ljzd;->r(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljzb; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-void

    :catch_0
    move-exception p1

    const-string v1, "VidRecMedRec"

    const-string v2, "Fail to set next file descriptor."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fail to set next file descriptor."

    invoke-direct {v1, v2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final n(ILandroid/media/MediaCodec$BufferInfo;)V
    .locals 0

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Not supported operation, please use VideoRecorderMediaCodec instead"

    invoke-direct {p1, p2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(Ljava/lang/Object;)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not supported operation, please use VideoRecorderMediaCodec instead"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final p()Lmqp;
    .locals 1

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0
.end method

.method public final q(F)V
    .locals 1

    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "changeBitrate is not supported, please use VideoRecorderMediaCodec"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
