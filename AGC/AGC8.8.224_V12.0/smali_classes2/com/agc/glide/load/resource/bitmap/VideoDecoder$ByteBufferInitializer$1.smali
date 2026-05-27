.class Lcom/agc/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;
.super Landroid/media/MediaDataSource;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;->getMediaDataSource(Ljava/nio/ByteBuffer;)Landroid/media/MediaDataSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/agc/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;

.field final synthetic val$data:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;Ljava/nio/ByteBuffer;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;->this$0:Lcom/agc/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer;

    iput-object p2, p0, Lcom/agc/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;->val$data:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Landroid/media/MediaDataSource;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public getSize()J
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;->val$data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public readAt(J[BII)I
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;->val$data:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;->val$data:Ljava/nio/ByteBuffer;

    long-to-int p1, p1

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    iget-object p1, p0, Lcom/agc/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;->val$data:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/Buffer;->remaining()I

    move-result p1

    invoke-static {p5, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    iget-object p2, p0, Lcom/agc/glide/load/resource/bitmap/VideoDecoder$ByteBufferInitializer$1;->val$data:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, p3, p4, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    return p1
.end method
