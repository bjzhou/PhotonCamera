.class interface abstract Lcom/agc/glide/load/resource/bitmap/ImageReader;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/resource/bitmap/ImageReader$ParcelFileDescriptorImageReader;,
        Lcom/agc/glide/load/resource/bitmap/ImageReader$InputStreamImageReader;,
        Lcom/agc/glide/load/resource/bitmap/ImageReader$ByteBufferReader;,
        Lcom/agc/glide/load/resource/bitmap/ImageReader$FileReader;,
        Lcom/agc/glide/load/resource/bitmap/ImageReader$ByteArrayReader;
    }
.end annotation


# virtual methods
.method public abstract decodeBitmap(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getImageOrientation()I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract getImageType()Lcom/agc/glide/load/ImageHeaderParser$ImageType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract stopGrowingBuffers()V
.end method
