.class public final Lcom/agc/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/resource/bitmap/ImageReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/resource/bitmap/ImageReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ParcelFileDescriptorImageReader"
.end annotation


# instance fields
.field private final byteArrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final dataRewinder:Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;

.field private final parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/os/ParcelFileDescriptor;Ljava/util/List;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/ParcelFileDescriptor;",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p3}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    iput-object p3, p0, Lcom/agc/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;->byteArrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {p2}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/List;

    iput-object p2, p0, Lcom/agc/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;->parsers:Ljava/util/List;

    new-instance p2, Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;

    invoke-direct {p2, p1}, Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;-><init>(Landroid/os/ParcelFileDescriptor;)V

    iput-object p2, p0, Lcom/agc/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;->dataRewinder:Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;

    return-void
.end method


# virtual methods
.method public decodeBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;->dataRewinder:Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;

    invoke-virtual {v0}, Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;->rewindAndGet()Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/agc/glide/load/resource/bitmap/GlideBitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    return-object p1
.end method

.method public getImageOrientation()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;->parsers:Ljava/util/List;

    iget-object v1, p0, Lcom/agc/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;->dataRewinder:Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;

    iget-object v2, p0, Lcom/agc/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;->byteArrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {v0, v1, v2}, Lcom/agc/glide/load/ImageHeaderParserUtils;->getOrientation(Ljava/util/List;Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)I

    move-result v0

    return v0
.end method

.method public getImageType()Lcom/agc/glide/load/ImageHeaderParser$ImageType;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;->parsers:Ljava/util/List;

    iget-object v1, p0, Lcom/agc/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;->dataRewinder:Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;

    iget-object v2, p0, Lcom/agc/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;->byteArrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {v0, v1, v2}, Lcom/agc/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    move-result-object v0

    return-object v0
.end method

.method public stopGrowingBuffers()V
    .locals 0

    return-void
.end method
