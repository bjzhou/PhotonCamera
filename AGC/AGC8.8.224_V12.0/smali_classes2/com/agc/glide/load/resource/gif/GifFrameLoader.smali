.class Lcom/agc/glide/load/resource/gif/GifFrameLoader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;,
        Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;,
        Lcom/agc/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;,
        Lcom/agc/glide/load/resource/gif/GifFrameLoader$FrameCallback;
    }
.end annotation


# instance fields
.field private final bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

.field private final callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/glide/load/resource/gif/GifFrameLoader$FrameCallback;",
            ">;"
        }
    .end annotation
.end field

.field private current:Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

.field private firstFrame:Landroid/graphics/Bitmap;

.field private firstFrameSize:I

.field private final gifDecoder:Lcom/agc/glide/gifdecoder/GifDecoder;

.field private final handler:Landroid/os/Handler;

.field private height:I

.field private isCleared:Z

.field private isLoadPending:Z

.field private isRunning:Z

.field private next:Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

.field private onEveryFrameListener:Lcom/agc/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;

.field private pendingTarget:Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

.field private requestBuilder:Lcom/agc/glide/RequestBuilder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/RequestBuilder<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field final requestManager:Lcom/agc/glide/RequestManager;

.field private startFromFirstFrame:Z

.field private transformation:Lcom/agc/glide/load/Transformation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private width:I


# direct methods
.method public constructor <init>(Lcom/agc/glide/Glide;Lcom/agc/glide/gifdecoder/GifDecoder;IILcom/agc/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/Glide;",
            "Lcom/agc/glide/gifdecoder/GifDecoder;",
            "II",
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/agc/glide/Glide;->getBitmapPool()Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    move-result-object v1

    invoke-virtual {p1}, Lcom/agc/glide/Glide;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/glide/Glide;->with(Landroid/content/Context;)Lcom/agc/glide/RequestManager;

    move-result-object v2

    invoke-virtual {p1}, Lcom/agc/glide/Glide;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/agc/glide/Glide;->with(Landroid/content/Context;)Lcom/agc/glide/RequestManager;

    move-result-object p1

    invoke-static {p1, p3, p4}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->getRequestBuilder(Lcom/agc/glide/RequestManager;II)Lcom/agc/glide/RequestBuilder;

    move-result-object v5

    const/4 v4, 0x0

    move-object v0, p0

    move-object v3, p2

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;-><init>(Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/agc/glide/RequestManager;Lcom/agc/glide/gifdecoder/GifDecoder;Landroid/os/Handler;Lcom/agc/glide/RequestBuilder;Lcom/agc/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/agc/glide/RequestManager;Lcom/agc/glide/gifdecoder/GifDecoder;Landroid/os/Handler;Lcom/agc/glide/RequestBuilder;Lcom/agc/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/agc/glide/RequestManager;",
            "Lcom/agc/glide/gifdecoder/GifDecoder;",
            "Landroid/os/Handler;",
            "Lcom/agc/glide/RequestBuilder<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    iput-object p2, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->requestManager:Lcom/agc/glide/RequestManager;

    if-nez p4, :cond_0

    new-instance p4, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    new-instance v0, Lcom/agc/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;

    invoke-direct {v0, p0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader$FrameLoaderCallback;-><init>(Lcom/agc/glide/load/resource/gif/GifFrameLoader;)V

    invoke-direct {p4, p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    :cond_0
    iput-object p1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    iput-object p4, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    iput-object p5, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lcom/agc/glide/RequestBuilder;

    iput-object p3, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/agc/glide/gifdecoder/GifDecoder;

    invoke-virtual {p0, p6, p7}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->setFrameTransformation(Lcom/agc/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private static getFrameSignature()Lcom/agc/glide/load/Key;
    .locals 3

    new-instance v0, Lcom/agc/glide/signature/ObjectKey;

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/agc/glide/signature/ObjectKey;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method private static getRequestBuilder(Lcom/agc/glide/RequestManager;II)Lcom/agc/glide/RequestBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/RequestManager;",
            "II)",
            "Lcom/agc/glide/RequestBuilder<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/agc/glide/RequestManager;->asBitmap()Lcom/agc/glide/RequestBuilder;

    move-result-object p0

    sget-object v0, Lcom/agc/glide/load/engine/DiskCacheStrategy;->NONE:Lcom/agc/glide/load/engine/DiskCacheStrategy;

    invoke-static {v0}, Lcom/agc/glide/request/RequestOptions;->diskCacheStrategyOf(Lcom/agc/glide/load/engine/DiskCacheStrategy;)Lcom/agc/glide/request/RequestOptions;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->useAnimationPool(Z)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/RequestOptions;

    invoke-virtual {v0, v1}, Lcom/agc/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/RequestOptions;

    invoke-virtual {v0, p1, p2}, Lcom/agc/glide/request/BaseRequestOptions;->override(II)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/agc/glide/RequestBuilder;->apply(Lcom/agc/glide/request/BaseRequestOptions;)Lcom/agc/glide/RequestBuilder;

    move-result-object p0

    return-object p0
.end method

.method private loadNextFrame()V
    .locals 5

    iget-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->isLoadPending:Z

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->startFromFirstFrame:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    const/4 v2, 0x0

    if-nez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    :goto_0
    const-string v3, "Pending target must be null when starting from the first frame"

    invoke-static {v0, v3}, Lcom/agc/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/agc/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/agc/glide/gifdecoder/GifDecoder;->resetFrameIndex()V

    iput-boolean v2, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->startFromFirstFrame:Z

    :cond_2
    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    invoke-virtual {p0, v0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->onFrameReady(Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;)V

    return-void

    :cond_3
    iput-boolean v1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->isLoadPending:Z

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/agc/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/agc/glide/gifdecoder/GifDecoder;->getNextDelay()I

    move-result v0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    int-to-long v3, v0

    add-long/2addr v1, v3

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/agc/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/agc/glide/gifdecoder/GifDecoder;->advance()V

    new-instance v0, Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    iget-object v3, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/agc/glide/gifdecoder/GifDecoder;

    invoke-interface {v4}, Lcom/agc/glide/gifdecoder/GifDecoder;->getCurrentFrameIndex()I

    move-result v4

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;-><init>(Landroid/os/Handler;IJ)V

    iput-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->next:Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lcom/agc/glide/RequestBuilder;

    invoke-static {}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->getFrameSignature()Lcom/agc/glide/load/Key;

    move-result-object v1

    invoke-static {v1}, Lcom/agc/glide/request/RequestOptions;->signatureOf(Lcom/agc/glide/load/Key;)Lcom/agc/glide/request/RequestOptions;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/agc/glide/RequestBuilder;->apply(Lcom/agc/glide/request/BaseRequestOptions;)Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/agc/glide/gifdecoder/GifDecoder;

    invoke-virtual {v0, v1}, Lcom/agc/glide/RequestBuilder;->load(Ljava/lang/Object;)Lcom/agc/glide/RequestBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->next:Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    invoke-virtual {v0, v1}, Lcom/agc/glide/RequestBuilder;->into(Lcom/agc/glide/request/target/Target;)Lcom/agc/glide/request/target/Target;

    :cond_4
    :goto_1
    return-void
.end method

.method private recycleFirstFrame()V
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->bitmapPool:Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;

    invoke-interface {v1, v0}, Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;->put(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    :cond_0
    return-void
.end method

.method private start()V
    .locals 1

    iget-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->isCleared:Z

    invoke-direct {p0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->loadNextFrame()V

    return-void
.end method

.method private stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->recycleFirstFrame()V

    invoke-direct {p0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->stop()V

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->current:Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->requestManager:Lcom/agc/glide/RequestManager;

    invoke-virtual {v2, v0}, Lcom/agc/glide/RequestManager;->clear(Lcom/agc/glide/request/target/Target;)V

    iput-object v1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->current:Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->next:Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->requestManager:Lcom/agc/glide/RequestManager;

    invoke-virtual {v2, v0}, Lcom/agc/glide/RequestManager;->clear(Lcom/agc/glide/request/target/Target;)V

    iput-object v1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->next:Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    :cond_1
    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->requestManager:Lcom/agc/glide/RequestManager;

    invoke-virtual {v2, v0}, Lcom/agc/glide/RequestManager;->clear(Lcom/agc/glide/request/target/Target;)V

    iput-object v1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    :cond_2
    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/agc/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/agc/glide/gifdecoder/GifDecoder;->clear()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->isCleared:Z

    return-void
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/agc/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/agc/glide/gifdecoder/GifDecoder;->getData()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentFrame()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->current:Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;->getResource()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    :goto_0
    return-object v0
.end method

.method public getCurrentIndex()I
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->current:Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_0

    iget v0, v0, Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;->index:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public getFirstFrame()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/agc/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/agc/glide/gifdecoder/GifDecoder;->getFrameCount()I

    move-result v0

    return v0
.end method

.method public getFrameTransformation()Lcom/agc/glide/load/Transformation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->transformation:Lcom/agc/glide/load/Transformation;

    return-object v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->height:I

    return v0
.end method

.method public getLoopCount()I
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/agc/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/agc/glide/gifdecoder/GifDecoder;->getTotalIterationCount()I

    move-result v0

    return v0
.end method

.method public getSize()I
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->gifDecoder:Lcom/agc/glide/gifdecoder/GifDecoder;

    invoke-interface {v0}, Lcom/agc/glide/gifdecoder/GifDecoder;->getByteSize()I

    move-result v0

    iget v1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->firstFrameSize:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->width:I

    return v0
.end method

.method public onFrameReady(Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;)V
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->onEveryFrameListener:Lcom/agc/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;->onFrameReady()V

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->isLoadPending:Z

    iget-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->isCleared:Z

    const/4 v1, 0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->startFromFirstFrame:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    iput-object p1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    :goto_0
    return-void

    :cond_3
    invoke-virtual {p1}, Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;->getResource()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->recycleFirstFrame()V

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->current:Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    iput-object p1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->current:Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    iget-object p1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_1
    if-ltz p1, :cond_4

    iget-object v2, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/glide/load/resource/gif/GifFrameLoader$FrameCallback;

    invoke-interface {v2}, Lcom/agc/glide/load/resource/gif/GifFrameLoader$FrameCallback;->onFrameReady()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_1

    :cond_4
    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->handler:Landroid/os/Handler;

    invoke-virtual {p1, v1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_5
    invoke-direct {p0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->loadNextFrame()V

    return-void
.end method

.method public setFrameTransformation(Lcom/agc/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/load/Transformation;

    iput-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->transformation:Lcom/agc/glide/load/Transformation;

    invoke-static {p2}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->firstFrame:Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lcom/agc/glide/RequestBuilder;

    new-instance v1, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v1}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v1, p1}, Lcom/agc/glide/request/BaseRequestOptions;->transform(Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/agc/glide/RequestBuilder;->apply(Lcom/agc/glide/request/BaseRequestOptions;)Lcom/agc/glide/RequestBuilder;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->requestBuilder:Lcom/agc/glide/RequestBuilder;

    invoke-static {p2}, Lcom/agc/glide/util/Util;->getBitmapByteSize(Landroid/graphics/Bitmap;)I

    move-result p1

    iput p1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->firstFrameSize:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->width:I

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->height:I

    return-void
.end method

.method public setNextStartFromFirstFrame()V
    .locals 3

    iget-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->isRunning:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "Can\'t restart a running animation"

    invoke-static {v0, v2}, Lcom/agc/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    iput-boolean v1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->startFromFirstFrame:Z

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->requestManager:Lcom/agc/glide/RequestManager;

    invoke-virtual {v1, v0}, Lcom/agc/glide/RequestManager;->clear(Lcom/agc/glide/request/target/Target;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->pendingTarget:Lcom/agc/glide/load/resource/gif/GifFrameLoader$DelayTarget;

    :cond_0
    return-void
.end method

.method public setOnEveryFrameReadyListener(Lcom/agc/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;)V
    .locals 0

    iput-object p1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->onEveryFrameListener:Lcom/agc/glide/load/resource/gif/GifFrameLoader$OnEveryFrameListener;

    return-void
.end method

.method public subscribe(Lcom/agc/glide/load/resource/gif/GifFrameLoader$FrameCallback;)V
    .locals 2

    iget-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->isCleared:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->start()V

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe twice in a row"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot subscribe to a cleared frame loader"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public unsubscribe(Lcom/agc/glide/load/resource/gif/GifFrameLoader$FrameCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object p1, p0, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->callbacks:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->stop()V

    :cond_0
    return-void
.end method
