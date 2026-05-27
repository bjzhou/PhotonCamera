.class public final Lcom/agc/glide/load/resource/bitmap/ExifInterfaceImageHeaderParser;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/ImageHeaderParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getOrientation(Ljava/io/InputStream;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance p2, Landroid/media/ExifInterface;

    invoke-direct {p2, p1}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    const-string p1, "Orientation"

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, -0x1

    :cond_0
    return p1
.end method

.method public getOrientation(Ljava/nio/ByteBuffer;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)I
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p1}, Lcom/agc/glide/util/ByteBufferUtil;->toStream(Ljava/nio/ByteBuffer;)Ljava/io/InputStream;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/agc/glide/load/resource/bitmap/ExifInterfaceImageHeaderParser;->getOrientation(Ljava/io/InputStream;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)I

    move-result p1

    return p1
.end method

.method public getType(Ljava/io/InputStream;)Lcom/agc/glide/load/ImageHeaderParser$ImageType;
    .locals 0

    sget-object p1, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    return-object p1
.end method

.method public getType(Ljava/nio/ByteBuffer;)Lcom/agc/glide/load/ImageHeaderParser$ImageType;
    .locals 0

    sget-object p1, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    return-object p1
.end method
