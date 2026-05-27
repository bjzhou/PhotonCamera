.class public final Lfro;
.super Ljava/lang/Object;

# interfaces
.implements Lfri;


# instance fields
.field public final a:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final b:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final c:Lkli;

.field public final d:Landroid/media/MediaFormat;

.field public final e:Lgqd;

.field public final f:Lkaq;

.field public final g:Z

.field public final h:Z

.field public final i:I

.field public final j:Llbd;

.field public final k:Lgvb;

.field private final l:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/media/MediaFormat;Landroid/os/Handler;Lgqd;Lkli;Llbd;Ldhi;Lkaq;Lgvb;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lfro;->a:Ljava/util/concurrent/atomic/AtomicInteger;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lfro;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p1, p0, Lfro;->d:Landroid/media/MediaFormat;

    iput-object p2, p0, Lfro;->l:Landroid/os/Handler;

    iput-object p3, p0, Lfro;->e:Lgqd;

    sget-object p2, Ldhw;->z:Ldhj;

    invoke-interface {p6, p2}, Ldhi;->l(Ldhj;)Z

    move-result p2

    iput-boolean p2, p0, Lfro;->g:Z

    sget-object p2, Ldhw;->A:Ldhj;

    invoke-interface {p6, p2}, Ldhi;->l(Ldhj;)Z

    move-result p2

    iput-boolean p2, p0, Lfro;->h:Z

    const-string p2, "width"

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p3

    const-string p6, "height"

    invoke-virtual {p1, p6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, "x"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "MomentsTrackEncoder"

    invoke-interface {p7, v0}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p7

    invoke-static {p3, p7}, Lkau;->k(Ljava/lang/String;Lkaq;)Lkau;

    move-result-object p3

    iput-object p3, p0, Lfro;->f:Lkaq;

    const-string p3, "color-format"

    invoke-virtual {p1, p3}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p3

    const/16 p7, 0x15

    const/4 v0, 0x1

    if-eq p3, p7, :cond_1

    const p7, 0x7fa30c00

    if-ne p3, p7, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lmoz;->e(Z)V

    sget-object p3, Ldxs;->a:Lkaf;

    invoke-virtual {p1, p2}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p6}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result p1

    mul-int p2, p2, p1

    mul-int/lit8 p2, p2, 0x3

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lfro;->i:I

    iput-object p5, p0, Lfro;->j:Llbd;

    iput-object p4, p0, Lfro;->c:Lkli;

    iput-object p8, p0, Lfro;->k:Lgvb;

    return-void
.end method

.method public static c(Llep;Landroid/media/MediaCodec$BufferInfo;Ljava/nio/ByteBuffer;)V
    .locals 7

    new-instance v6, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {v6}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    const/4 v1, 0x0

    iget v2, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v3, p1, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v5, p1, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v0, v6

    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget v0, p1, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-interface {p0, p1, v6}, Llep;->b(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method


# virtual methods
.method public final a(Lkxy;Lkab;)Lfpz;
    .locals 6

    iget-object v0, p0, Lfro;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    iget-object p2, p0, Lfro;->f:Lkaq;

    const-string v0, "Reached maximum number of active codecs running. Dropping moments track..."

    invoke-interface {p2, v0}, Lkaq;->i(Ljava/lang/String;)V

    invoke-interface {p1}, Lkxy;->close()V

    new-instance p1, Lfrv;

    invoke-direct {p1, v1}, Lfrv;-><init>(I)V

    return-object p1

    :cond_0
    :try_start_0
    const-string v0, "video/avc"

    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v0

    iget-object v2, p0, Lfro;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    iget-object v2, p0, Lfro;->f:Lkaq;

    iget-object v3, p0, Lfro;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Created codec successfully; current count: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkaq;->b(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    new-instance v2, Lfrn;

    iget-object v3, p0, Lfro;->l:Landroid/os/Handler;

    invoke-direct {v2, p0, v0, v3, p2}, Lfrn;-><init>(Lfro;Landroid/media/MediaCodec;Landroid/os/Handler;Lkab;)V

    :try_start_1
    invoke-virtual {v2, p1}, Lfrn;->a(Lkxy;)Lfpz;

    move-result-object p1
    :try_end_1
    .catch Landroid/media/MediaCodec$CodecException; {:try_start_1 .. :try_end_1} :catch_0

    return-object p1

    :catch_0
    move-exception p2

    iget-object v2, p0, Lfro;->f:Lkaq;

    const-string v3, "Exception trying to launch encoder..."

    invoke-interface {v2, v3, p2}, Lkaq;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-virtual {v0}, Landroid/media/MediaCodec;->release()V

    invoke-interface {p1}, Lkxy;->close()V

    iget-object p1, p0, Lfro;->b:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    new-instance p1, Lfrv;

    invoke-direct {p1, v1}, Lfrv;-><init>(I)V

    return-object p1

    :catch_1
    move-exception p2

    invoke-interface {p1}, Lkxy;->close()V

    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lfro;->j:Llbd;

    invoke-interface {v0}, Llbd;->close()V

    return-void
.end method
