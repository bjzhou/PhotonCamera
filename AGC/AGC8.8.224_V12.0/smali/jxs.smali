.class public final Ljxs;
.super Ljava/lang/Object;

# interfaces
.implements Ljxx;


# instance fields
.field private final a:Lnou;


# direct methods
.method public constructor <init>(Lnou;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljxs;->a:Lnou;

    return-void
.end method

.method private final q()Ljxx;
    .locals 3

    :try_start_0
    iget-object v0, p0, Ljxs;->a:Lnou;

    invoke-interface {v0}, Lnou;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljxx;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "MuxerProcessor isn\'t available"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public final a(Landroid/media/MediaFormat;)Lmqp;
    .locals 1

    invoke-direct {p0}, Ljxs;->q()Ljxx;

    move-result-object v0

    invoke-interface {v0, p1}, Ljxx;->a(Landroid/media/MediaFormat;)Lmqp;

    move-result-object p1

    return-object p1
.end method

.method public final b(Landroid/media/MediaFormat;)V
    .locals 1

    invoke-direct {p0}, Ljxs;->q()Ljxx;

    move-result-object v0

    invoke-interface {v0, p1}, Ljxx;->b(Landroid/media/MediaFormat;)V

    return-void
.end method

.method public final c(Ljxy;)V
    .locals 1

    invoke-direct {p0}, Ljxs;->q()Ljxx;

    move-result-object v0

    invoke-interface {v0, p1}, Ljxx;->c(Ljxy;)V

    return-void
.end method

.method public final close()V
    .locals 1

    invoke-direct {p0}, Ljxs;->q()Ljxx;

    move-result-object v0

    invoke-interface {v0}, Ljxx;->close()V

    return-void
.end method

.method public final d(J)V
    .locals 1

    invoke-direct {p0}, Ljxs;->q()Ljxx;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljxx;->d(J)V

    return-void
.end method

.method public final e(Landroid/media/MediaFormat;)V
    .locals 1

    invoke-direct {p0}, Ljxs;->q()Ljxx;

    move-result-object v0

    invoke-interface {v0, p1}, Ljxx;->e(Landroid/media/MediaFormat;)V

    return-void
.end method

.method public final f()V
    .locals 1

    invoke-direct {p0}, Ljxs;->q()Ljxx;

    move-result-object v0

    invoke-interface {v0}, Ljxx;->f()V

    return-void
.end method

.method public final g(Ljxy;)V
    .locals 1

    invoke-direct {p0}, Ljxs;->q()Ljxx;

    move-result-object v0

    invoke-interface {v0, p1}, Ljxx;->g(Ljxy;)V

    return-void
.end method

.method public final h(Ljava/io/FileDescriptor;)V
    .locals 1

    invoke-direct {p0}, Ljxs;->q()Ljxx;

    move-result-object v0

    invoke-interface {v0, p1}, Ljxx;->h(Ljava/io/FileDescriptor;)V

    return-void
.end method

.method public final i()V
    .locals 1

    invoke-direct {p0}, Ljxs;->q()Ljxx;

    move-result-object v0

    invoke-interface {v0}, Ljxx;->i()V

    return-void
.end method

.method public final j(J)V
    .locals 1

    invoke-direct {p0}, Ljxs;->q()Ljxx;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljxx;->j(J)V

    return-void
.end method

.method public final k()V
    .locals 1

    invoke-direct {p0}, Ljxs;->q()Ljxx;

    move-result-object v0

    invoke-interface {v0}, Ljxx;->k()V

    return-void
.end method

.method public final l(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    invoke-direct {p0}, Ljxs;->q()Ljxx;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljxx;->l(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public final m(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;I)V
    .locals 1

    invoke-direct {p0}, Ljxs;->q()Ljxx;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ljxx;->m(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;I)V

    return-void
.end method

.method public final n(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 1

    invoke-direct {p0}, Ljxs;->q()Ljxx;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljxx;->n(Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    return-void
.end method

.method public final o()Z
    .locals 1

    iget-object v0, p0, Ljxs;->a:Lnou;

    invoke-interface {v0}, Lnou;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-direct {p0}, Ljxs;->q()Ljxx;

    move-result-object v0

    invoke-interface {v0}, Ljxx;->o()Z

    move-result v0

    return v0
.end method

.method public final p(Ljava/lang/Object;)V
    .locals 1

    invoke-direct {p0}, Ljxs;->q()Ljxx;

    move-result-object v0

    invoke-interface {v0, p1}, Ljxx;->p(Ljava/lang/Object;)V

    return-void
.end method
