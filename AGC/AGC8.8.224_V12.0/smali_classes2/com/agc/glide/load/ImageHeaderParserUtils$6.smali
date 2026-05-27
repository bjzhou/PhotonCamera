.class Lcom/agc/glide/load/ImageHeaderParserUtils$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/ImageHeaderParserUtils$OrientationReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/agc/glide/load/ImageHeaderParserUtils;->getOrientation(Ljava/util/List;Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$byteArrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

.field final synthetic val$parcelFileDescriptorRewinder:Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/agc/glide/load/ImageHeaderParserUtils$6;->val$parcelFileDescriptorRewinder:Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;

    iput-object p2, p0, Lcom/agc/glide/load/ImageHeaderParserUtils$6;->val$byteArrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrientationAndRewind(Lcom/agc/glide/load/ImageHeaderParser;)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    :try_start_0
    new-instance v0, Lcom/agc/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/agc/glide/load/ImageHeaderParserUtils$6;->val$parcelFileDescriptorRewinder:Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;

    invoke-virtual {v2}, Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;->rewindAndGet()Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    iget-object v2, p0, Lcom/agc/glide/load/ImageHeaderParserUtils$6;->val$byteArrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-direct {v0, v1, v2}, Lcom/agc/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v1, p0, Lcom/agc/glide/load/ImageHeaderParserUtils$6;->val$byteArrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-interface {p1, v0, v1}, Lcom/agc/glide/load/ImageHeaderParser;->getOrientation(Ljava/io/InputStream;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)I

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-virtual {v0}, Lcom/agc/glide/load/resource/bitmap/RecyclableBufferedInputStream;->release()V

    iget-object v0, p0, Lcom/agc/glide/load/ImageHeaderParserUtils$6;->val$parcelFileDescriptorRewinder:Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;

    invoke-virtual {v0}, Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;->rewindAndGet()Landroid/os/ParcelFileDescriptor;

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catchall_1
    move-exception p1

    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/agc/glide/load/resource/bitmap/RecyclableBufferedInputStream;->release()V

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/load/ImageHeaderParserUtils$6;->val$parcelFileDescriptorRewinder:Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;

    invoke-virtual {v0}, Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;->rewindAndGet()Landroid/os/ParcelFileDescriptor;

    throw p1
.end method
