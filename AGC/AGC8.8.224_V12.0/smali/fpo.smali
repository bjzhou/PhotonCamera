.class public final Lfpo;
.super Ljava/lang/Object;

# interfaces
.implements Lfpq;


# static fields
.field private static final b:Lnak;


# instance fields
.field public final a:Lldc;

.field private final c:Landroid/media/MediaCodec;

.field private final d:Llbd;

.field private final e:Lldf;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/moments/GLImageEncoder"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfpo;->b:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Llbd;Lldf;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfpo;->f:Z

    invoke-static {}, Lkog;->a()Lkog;

    move-result-object v0

    iget-boolean v0, v0, Lkog;->a:Z

    if-eqz v0, :cond_0

    sget-object v0, Lfpo;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Using GL-based image encoder on emulator can cause individual frames to fail to encode. Consider using a retryingEncoder wrapper."

    const/16 v2, 0x9aa

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :cond_0
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {v0, p2}, Landroid/media/MediaFormat;-><init>(Landroid/media/MediaFormat;)V

    const-string v1, "latency"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {p1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    new-instance v1, Lldm;

    invoke-direct {v1, v0}, Lldm;-><init>(Landroid/view/Surface;)V

    const-string v0, "width"

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    const-string v2, "height"

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-static {v0, p2}, Lkym;->d(II)Lkym;

    move-result-object p2

    invoke-static {p3, v1, p2}, Lldc;->k(Llbd;Llfg;Lkym;)Lldc;

    move-result-object p2

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V

    iput-object p3, p0, Lfpo;->d:Llbd;

    iput-object p1, p0, Lfpo;->c:Landroid/media/MediaCodec;

    iput-object p2, p0, Lfpo;->a:Lldc;

    iput-object p4, p0, Lfpo;->e:Lldf;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a(Lkpb;Lbkb;)Lfpp;
    .locals 8

    monitor-enter p0

    :try_start_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "request-sync"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lfpo;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    iget-object p2, p2, Lbkb;->a:Ljava/lang/Object;

    move-object v0, p1

    check-cast v0, Lfpx;

    iget-wide v0, v0, Lfpx;->a:J

    invoke-interface {p1}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_6

    if-nez p1, :cond_0

    :try_start_1
    sget-object p2, Lfpo;->b:Lnak;

    invoke-virtual {p2}, Lnaf;->c()Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const/16 v0, 0x9ac

    invoke-interface {p2, v0}, Lnah;->G(I)Lnaz;

    move-result-object p2

    check-cast p2, Lnah;

    const-string v0, "Incoming image missing HardwareBuffer."

    invoke-interface {p2, v0}, Lnah;->o(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    invoke-direct {v3, p1}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    :try_start_2
    iget-object v4, p0, Lfpo;->d:Llbd;

    invoke-static {v4, v3}, Llcd;->b(Llbd;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Llcd;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    iget-object v5, p0, Lfpo;->d:Llbd;

    new-instance v6, Lepm;

    const/4 v7, 0x5

    invoke-direct {v6, p0, v0, v1, v7}, Lepm;-><init>(Lfpo;JI)V

    invoke-interface {v5, v6}, Llbd;->execute(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lfpo;->e:Lldf;

    iget-object v1, p0, Lfpo;->a:Lldc;

    check-cast p2, [F

    invoke-virtual {v0, v4, v1, p2}, Lldf;->f(Llcd;Lldc;[F)V

    iget-object p2, p0, Lfpo;->d:Llbd;

    invoke-static {p2}, Lktf;->u(Llbd;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {v4}, Llbk;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :try_start_5
    invoke-virtual {v3}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    :try_start_6
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V

    :goto_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lfpo;->f:Z

    new-instance p2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :cond_1
    :goto_1
    iget-object v0, p0, Lfpo;->c:Landroid/media/MediaCodec;

    const-wide/32 v3, 0x4c4b40

    invoke-virtual {v0, p2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    if-ltz v0, :cond_4

    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lfpo;->c:Landroid/media/MediaCodec;

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lfpo;->c:Landroid/media/MediaCodec;

    new-instance v2, Lfpu;

    invoke-direct {v2, p2, v1, v0}, Lfpu;-><init>(Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec;I)V

    iget-object p2, v2, Lfpu;->a:Landroid/media/MediaCodec$BufferInfo;

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    and-int/2addr p1, p2

    if-eqz p1, :cond_3

    monitor-exit p0

    return-object v2

    :cond_3
    :try_start_7
    invoke-interface {v2}, Lfpp;->close()V

    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Requested key-frame from codec, but codec did not provide it!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_4
    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lfpo;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    const-string v1, "latency"

    const/16 v3, -0x2a

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v0

    if-lez v0, :cond_6

    if-ne v0, p1, :cond_5

    goto :goto_1

    :cond_5
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Media codec does not support low latency mode, and hence cannot be used for frame-by-frame encoding. Codec returned a latency of "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ". Please choose a different codec!"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_6
    if-ne v0, v3, :cond_1

    sget-object v0, Lfpo;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Media codec does not specify latency, and may ignore latency key. This could cause ad-hoc encoding to fail."

    const/16 v3, 0x9ab

    invoke-static {v0, v1, v3}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    goto :goto_1

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Timed out waiting for encoder output!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    :catchall_0
    move-exception p2

    :try_start_8
    invoke-virtual {v4}, Llbk;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_9
    invoke-static {p2, v0}, Lged;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_2
    throw p2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception p2

    :try_start_a
    invoke-virtual {v3}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    :try_start_b
    invoke-static {p2, v0}, Lged;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_3
    throw p2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :catchall_4
    move-exception p2

    if-eqz p1, :cond_8

    :try_start_c
    invoke-virtual {p1}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_5

    goto :goto_4

    :catchall_5
    move-exception p1

    :try_start_d
    invoke-static {p2, p1}, Lged;->d(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_8
    :goto_4
    throw p2
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_6

    :catchall_6
    move-exception p1

    monitor-exit p0

    goto :goto_6

    :goto_5
    throw p1

    :goto_6
    goto :goto_5
.end method

.method public final declared-synchronized close()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lfpo;->f:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lfpo;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :goto_0
    iget-object v1, p0, Lfpo;->c:Landroid/media/MediaCodec;

    const-wide/32 v2, 0x4c4b40

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lfpo;->f:Z

    goto :goto_1

    :cond_0
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Timed out waiting for encoder to close!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    iget-object v0, p0, Lfpo;->a:Lldc;

    invoke-virtual {v0}, Llbk;->close()V

    iget-object v0, p0, Lfpo;->e:Lldf;

    invoke-virtual {v0}, Lldf;->close()V

    iget-object v0, p0, Lfpo;->c:Landroid/media/MediaCodec;

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method
