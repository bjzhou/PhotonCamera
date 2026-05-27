.class public final Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder$StreamAnimatedImageDecoder;,
        Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder$ByteBufferAnimatedImageDecoder;,
        Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder$AnimatedImageDrawableResource;
    }
.end annotation


# instance fields
.field private final arrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

.field private final imageHeaderParsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/agc/glide/load/ImageHeaderParser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder;->imageHeaderParsers:Ljava/util/List;

    iput-object p2, p0, Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder;->arrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    return-void
.end method

.method public static byteBufferDecoder(Ljava/util/List;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/agc/glide/load/ResourceDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")",
            "Lcom/agc/glide/load/ResourceDecoder<",
            "Ljava/nio/ByteBuffer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder$ByteBufferAnimatedImageDecoder;

    new-instance v1, Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder;

    invoke-direct {v1, p0, p1}, Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder;-><init>(Ljava/util/List;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)V

    invoke-direct {v0, v1}, Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder$ByteBufferAnimatedImageDecoder;-><init>(Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder;)V

    return-object v0
.end method

.method private isHandled(Lcom/agc/glide/load/ImageHeaderParser$ImageType;)Z
    .locals 2

    sget-object v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->ANIMATED_WEBP:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    if-eq p1, v0, :cond_1

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1f

    if-lt v0, v1, :cond_0

    sget-object v0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->ANIMATED_AVIF:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public static streamDecoder(Ljava/util/List;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/agc/glide/load/ResourceDecoder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")",
            "Lcom/agc/glide/load/ResourceDecoder<",
            "Ljava/io/InputStream;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder$StreamAnimatedImageDecoder;

    new-instance v1, Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder;

    invoke-direct {v1, p0, p1}, Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder;-><init>(Ljava/util/List;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)V

    invoke-direct {v0, v1}, Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder$StreamAnimatedImageDecoder;-><init>(Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder;)V

    return-object v0
.end method


# virtual methods
.method public decode(Landroid/graphics/ImageDecoder$Source;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/engine/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/ImageDecoder$Source;",
            "II",
            "Lcom/agc/glide/load/Options;",
            ")",
            "Lcom/agc/glide/load/engine/Resource<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;

    invoke-direct {v0, p2, p3, p4}, Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;-><init>(IILcom/agc/glide/load/Options;)V

    invoke-static {p1, v0}, Landroid/graphics/ImageDecoder;->decodeDrawable(Landroid/graphics/ImageDecoder$Source;Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    instance-of p2, p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    if-eqz p2, :cond_0

    new-instance p2, Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder$AnimatedImageDrawableResource;

    check-cast p1, Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-direct {p2, p1}, Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder$AnimatedImageDrawableResource;-><init>(Landroid/graphics/drawable/AnimatedImageDrawable;)V

    return-object p2

    :cond_0
    new-instance p2, Ljava/io/IOException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Received unexpected drawable type for animated image, failing: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public handles(Ljava/io/InputStream;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder;->imageHeaderParsers:Ljava/util/List;

    iget-object v1, p0, Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder;->arrayPool:Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;

    invoke-static {v0, p1, v1}, Lcom/agc/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Ljava/io/InputStream;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder;->isHandled(Lcom/agc/glide/load/ImageHeaderParser$ImageType;)Z

    move-result p1

    return p1
.end method

.method public handles(Ljava/nio/ByteBuffer;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder;->imageHeaderParsers:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/agc/glide/load/ImageHeaderParserUtils;->getType(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/agc/glide/load/resource/drawable/AnimatedImageDecoder;->isHandled(Lcom/agc/glide/load/ImageHeaderParser$ImageType;)Z

    move-result p1

    return p1
.end method
