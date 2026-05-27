.class public final Lkxi;
.super Ljava/lang/Object;

# interfaces
.implements Lkpf;


# instance fields
.field public final a:Lamv;

.field private final b:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final c:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/io/FileOutputStream;Loxq;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p4, 0x0

    invoke-direct {p3, p4}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p3, p0, Lkxi;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    iput-object p3, p0, Lkxi;->c:Ljava/util/List;

    :try_start_0
    invoke-static {p1, p2}, Lacw;->c(Ljava/io/FileOutputStream;Loxq;)Lamv;

    move-result-object p2

    iput-object p2, p0, Lkxi;->a:Lamv;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p2

    const-string p3, "GcaMediaMuxer"

    const-string p4, "Error creating the GCA muxer"

    invoke-static {p3, p4, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_1
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception p1

    const-string p4, "... and close also threw"

    invoke-static {p3, p4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    new-instance p1, Lkxj;

    invoke-direct {p1, p2}, Lkxj;-><init>(Ljava/lang/Throwable;)V

    throw p1
.end method


# virtual methods
.method public final a(Landroid/media/MediaFormat;)I
    .locals 3

    iget-object v0, p0, Lkxi;->c:Ljava/util/List;

    iget-object v1, p0, Lkxi;->a:Lamv;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2, p1}, Lamv;->f(ILandroid/media/MediaFormat;)Lamy;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {p1}, Lacm;->b(Landroid/media/MediaFormat;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lkxi;->a:Lamv;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Lamv;->b(F)V

    :cond_0
    iget-object p1, p0, Lkxi;->c:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    return p1
.end method

.method public final b(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lkxi;->a:Lamv;

    invoke-virtual {v0, p1, p2}, Lamv;->a(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public final c()V
    .locals 0

    invoke-virtual {p0}, Lkxi;->j()V

    return-void
.end method

.method public final d(FF)V
    .locals 1

    iget-object v0, p0, Lkxi;->a:Lamv;

    invoke-virtual {v0, p1, p2}, Lamv;->c(FF)V

    return-void
.end method

.method public final e(I)V
    .locals 1

    iget-object v0, p0, Lkxi;->a:Lamv;

    invoke-virtual {v0, p1}, Lamv;->e(I)V

    return-void
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    invoke-virtual {p0}, Lkxi;->j()V

    return-void
.end method

.method public final h(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 7

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance p2, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p2}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    iget v2, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v3, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v4, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v6, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move-object v1, p2

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaCodec$BufferInfo;->set(IIJI)V

    :try_start_0
    iget-object p3, p0, Lkxi;->a:Lamv;

    iget-object v1, p0, Lkxi;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lamy;

    invoke-virtual {p3, p1, v0, p2}, Lamv;->g(Lamy;Ljava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    new-instance p2, Lkxj;

    invoke-direct {p2, p1}, Lkxj;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method

.method public final i()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j()V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lkxi;->b:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lkxi;->a:Lamv;

    invoke-virtual {v0}, Lamv;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :cond_0
    return-void

    :catch_0
    move-exception v0

    new-instance v1, Lkxj;

    invoke-direct {v1, v0}, Lkxj;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method
