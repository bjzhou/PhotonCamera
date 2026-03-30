.class Lkgc;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lkge;


# static fields
.field private static final b:Lsdb;


# instance fields
.field public final a:Lqjs;

.field private final c:Landroid/media/MediaCodec;

.field private final d:Lqht;

.field private final e:Lqjw;

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "kgc"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    sput-object v0, Lkgc;->b:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/media/MediaCodec;Landroid/media/MediaFormat;Lqht;Lqjw;)V
    .locals 3

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Lkgc;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_3
    :try_start_0
    new-instance v0, Landroid/media/MediaFormat;

    nop

    nop

    invoke-direct {v0, p2}, Landroid/media/MediaFormat;-><init>(Landroid/media/MediaFormat;)V

    const-string v1, "latency"

    nop

    nop

    const/4 v2, 0x1

    nop

    nop

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const/4 v1, 0x0

    nop

    nop

    nop

    invoke-virtual {p1, v0, v1, v1, v2}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    invoke-virtual {p1}, Landroid/media/MediaCodec;->createInputSurface()Landroid/view/Surface;

    move-result-object v0

    nop

    nop

    nop

    nop

    new-instance v1, Lqke;

    nop

    nop

    nop

    invoke-direct {v1, v0}, Lqke;-><init>(Landroid/view/Surface;)V

    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    sget-object v0, Lcom/google/android/apps/camera/whitebalance/YD/hwKuVzZ;->DlCFP:Ljava/lang/String;

    nop

    nop

    nop

    invoke-virtual {p2, v0}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    nop

    nop

    nop

    const-string v2, "height"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    nop

    new-instance v2, Lqfd;

    nop

    nop

    nop

    invoke-direct {v2, v0, p2}, Lqfd;-><init>(II)V

    invoke-static {p3, v1, v2}, Lqjs;->k(Lqht;Lqlt;Lqfd;)Lqjs;

    move-result-object p2

    nop

    nop

    invoke-virtual {p1}, Landroid/media/MediaCodec;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lkgc;->a:Lqjs;

    nop

    nop

    nop

    nop

    :catchall_0
    goto/32 :goto_15

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    const-string v1, "Using GL-based image encoder on emulator can cause individual frames to fail to encode. Consider using a retryingEncoder wrapper."

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean v0, v0, Lprb;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v1, 0xb81

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_c
    sget-object v0, Lkgc;->b:Lsdb;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_e
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_f
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-object p4, p0, Lkgc;->e:Lqjw;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {}, Lprb;->b()Lprb;

    move-result-object v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_14
    iput-object p1, p0, Lkgc;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p3, p0, Lkgc;->d:Lqht;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_17
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_5

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Lprw;Lgvg;)Lkgd;
    .locals 7

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    sget-object p1, Lkgc;->b:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lscs;->c()Lsdo;

    move-result-object p1

    nop

    nop

    nop

    const/16 p2, 0xb84

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->M(I)Lsdo;

    move-result-object p1

    nop

    nop

    nop

    nop

    check-cast p1, Lscz;

    nop

    nop

    nop

    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    sget-object p2, Landroidx/wear/widget/xrA/fuyPMnCeXU;->ULO:Ljava/lang/String;

    nop

    nop

    invoke-interface {p1, p2}, Lscz;->s(Ljava/lang/String;)V

    goto :goto_3

    nop

    :goto_2
    new-instance p2, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    nop

    invoke-direct {p2, v0}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    :try_start_1
    iget-object v1, p0, Lkgc;->d:Lqht;

    nop

    invoke-static {v1, p2}, Lqiu;->b(Lqht;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Lqiu;

    move-result-object v1

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_6

    :try_start_2
    iget-object v5, p0, Lkgc;->d:Lqht;

    nop

    nop

    nop

    new-instance v6, Lkgb;

    nop

    nop

    nop

    nop

    invoke-direct {v6, p0, v3, v4}, Lkgb;-><init>(Lkgc;J)V

    invoke-interface {v5, v6}, Lqht;->execute(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lkgc;->e:Lqjw;

    nop

    nop

    nop

    iget-object v4, p0, Lkgc;->a:Lqjs;

    nop

    check-cast p1, [F

    nop

    invoke-virtual {v3, v1, v4, p1}, Lqjw;->c(Lqiu;Lqjs;[F)V

    iget-object p1, p0, Lkgc;->d:Lqht;

    nop

    invoke-static {p1}, Lqoe;->B(Lqht;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    invoke-virtual {v1}, Lqia;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    :try_start_4
    invoke-virtual {p2}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :try_start_5
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    :goto_3
    const/4 p1, 0x1

    nop

    nop

    iput-boolean p1, p0, Lkgc;->f:Z

    nop

    new-instance p2, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :cond_1
    :goto_4
    iget-object v0, p0, Lkgc;->c:Landroid/media/MediaCodec;

    nop

    nop

    const-wide/32 v3, 0x4c4b40

    nop

    nop

    invoke-virtual {v0, p2, v3, v4}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    nop

    nop

    if-ltz v0, :cond_4

    nop

    nop

    nop

    nop

    iget v1, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    and-int/lit8 v1, v1, 0x2

    nop

    nop

    nop

    if-eqz v1, :cond_2

    nop

    nop

    nop

    iget-object v1, p0, Lkgc;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    goto :goto_4

    nop

    nop

    nop

    :cond_2
    iget-object v1, p0, Lkgc;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    new-instance v2, Lkgi;

    nop

    nop

    nop

    invoke-direct {v2, p2, v1, v0}, Lkgi;-><init>(Landroid/media/MediaCodec$BufferInfo;Landroid/media/MediaCodec;I)V

    iget-object p2, v2, Lkgi;->a:Landroid/media/MediaCodec$BufferInfo;

    nop

    iget p2, p2, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    and-int/2addr p1, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_7

    nop

    nop

    :catchall_0
    move-exception p2

    nop

    nop

    :try_start_6
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw p1

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_17

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_3
    goto/32 :goto_f

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    return-object v2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    :try_start_7
    invoke-interface {v2}, Lkgd;->close()V

    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    const-string p2, "Requested key-frame from codec, but codec did not provide it!"

    nop

    nop

    nop

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    nop

    nop

    :cond_4
    const/4 v1, -0x1

    nop

    if-eq v0, v1, :cond_7

    nop

    nop

    const/4 v1, -0x2

    nop

    nop

    nop

    nop

    nop

    if-ne v0, v1, :cond_1

    nop

    nop

    iget-object v0, p0, Lkgc;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    const-string v1, "latency"

    nop

    const/16 v3, -0x2a

    nop

    nop

    invoke-virtual {v0, v1, v3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;I)I

    move-result v0

    nop

    nop

    nop

    if-lez v0, :cond_6

    nop

    nop

    if-ne v0, p1, :cond_5

    nop

    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :cond_5
    const-string p1, "Media codec does not support low latency mode, and hence cannot be used for frame-by-frame encoding. Codec returned a latency of "

    nop

    nop

    nop

    nop

    nop

    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    sget-object p2, Lcom/google/android/apps/camera/legacy/lightcycle/panorama/RpD/WBNWZfrn;->vgaFSpFQjO:Ljava/lang/String;

    nop

    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    invoke-static {v0, p1, p2}, La;->br(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    invoke-direct {v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    nop

    nop

    :cond_6
    if-ne v0, v3, :cond_1

    nop

    nop

    nop

    nop

    sget-object v0, Lkgc;->b:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    const/16 v1, 0xb82

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Media codec does not specify latency, and may ignore latency key. This could cause ad-hoc encoding to fail."

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/16 :goto_4

    nop

    nop

    nop

    nop

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    const-string p2, "Timed out waiting for encoder output!"

    nop

    nop

    nop

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    nop

    nop

    nop

    nop

    nop
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_2
    move-exception p1

    nop

    nop

    :try_start_8
    invoke-virtual {v1}, Lqia;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez p1, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_8
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_9
    :try_start_9
    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_14

    nop

    nop

    nop

    :catchall_3
    move-exception p2

    nop

    nop

    nop

    nop

    nop

    :try_start_a
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_14
    throw p1

    nop

    nop

    nop

    nop

    nop
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    :catchall_4
    move-exception p1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    monitor-enter p0

    nop

    :try_start_b
    new-instance v0, Landroid/os/Bundle;

    nop

    nop

    nop

    nop

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "request-sync"

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lkgc;->c:Landroid/media/MediaCodec;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Landroid/media/MediaCodec;->setParameters(Landroid/os/Bundle;)V

    invoke-interface {p1}, Lprw;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v0

    nop

    nop

    nop

    check-cast p1, Lkgl;

    nop

    nop

    nop

    iget-wide v3, p1, Lkgl;->a:J

    nop

    nop

    iget-object p1, p2, Lgvg;->a:Ljava/lang/Object;

    nop
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_17
    throw p1

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto :goto_1a

    nop

    :catchall_5
    move-exception v1

    nop

    nop

    nop

    :try_start_c
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1a
    throw p1

    nop

    nop

    nop
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    :catchall_6
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_d
    invoke-virtual {p2}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized close()V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_5
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-boolean v0, p0, Lkgc;->f:Z

    nop

    if-eqz v0, :cond_3

    nop

    iget-object v0, p0, Lkgc;->c:Landroid/media/MediaCodec;

    nop

    nop

    invoke-virtual {v0}, Landroid/media/MediaCodec;->signalEndOfInputStream()V

    new-instance v0, Landroid/media/MediaCodec$BufferInfo;

    nop

    invoke-direct {v0}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    :cond_1
    iget-object v1, p0, Lkgc;->c:Landroid/media/MediaCodec;

    nop

    nop

    const-wide/32 v2, 0x4c4b40

    nop

    nop

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v1

    nop

    nop

    nop

    iget v2, v0, Landroid/media/MediaCodec$BufferInfo;->flags:I

    nop

    nop

    and-int/lit8 v2, v2, 0x4

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_2

    nop

    nop

    goto :goto_9

    nop

    :cond_2
    const/4 v2, -0x1

    nop

    nop

    nop

    if-ne v1, v2, :cond_1

    nop

    sget-object v0, Lkgc;->b:Lsdb;

    nop

    nop

    invoke-virtual {v0}, Lscs;->b()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    const/16 v1, 0xb83

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    const-string v1, "Timed out waiting for encoder to close!"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    iput-boolean v0, p0, Lkgc;->f:Z

    nop

    nop

    nop

    nop

    nop

    :cond_3
    iget-object v0, p0, Lkgc;->a:Lqjs;

    nop

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_4

    nop

    nop

    nop

    invoke-virtual {v0}, Lqia;->close()V

    :cond_4
    iget-object v0, p0, Lkgc;->e:Lqjw;

    nop

    nop

    nop

    if-eqz v0, :cond_5

    nop

    invoke-virtual {v0}, Lqjw;->close()V

    :cond_5
    iget-object v0, p0, Lkgc;->c:Landroid/media/MediaCodec;

    nop

    if-eqz v0, :cond_6

    nop

    nop

    nop

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    goto/32 :goto_3

    nop

    nop

    :goto_a
    throw v0

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop
.end method
