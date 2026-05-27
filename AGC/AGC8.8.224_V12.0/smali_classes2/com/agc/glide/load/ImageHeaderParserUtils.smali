.class public final Lcom/agc/glide/load/ImageHeaderParserUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/ImageHeaderParserUtils$TypeReader;,
        Lcom/agc/glide/load/ImageHeaderParserUtils$OrientationReader;
    }
.end annotation


# static fields
.field private static final MARK_READ_LIMIT:I = 0x500000


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOrientation(Ljava/util/List;Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;",
            "Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/load/ImageHeaderParserUtils$6;

    invoke-direct {v0, p1, p2}, Lcom/agc/glide/load/ImageHeaderParserUtils$6;-><init>(Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)V

    invoke-static {p0, v0}, Lcom/agc/glide/load/ImageHeaderParserUtils;->getOrientationInternal(Ljava/util/List;Lcom/agc/glide/load/ImageHeaderParserUtils$OrientationReader;)I

    move-result p0

    return p0
.end method

.method public static getOrientation(Ljava/util/List;Ljava/io/InputStream;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/ImageHeaderParser;",
            ">;",
            "Ljava/io/InputStream;",
            "Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/agc/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-direct {v0, p1, p2}, Lcom/agc/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)V

    move-object p1, v0

    :cond_1
    const/high16 v0, 0x500000

    invoke-virtual {p1, v0}, Ljava/io/InputStream;->mark(I)V

    new-instance v0, Lcom/agc/glide/load/ImageHeaderParserUtils$5;

    invoke-direct {v0, p1, p2}, Lcom/agc/glide/load/ImageHeaderParserUtils$5;-><init>(Ljava/io/InputStream;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)V

    invoke-static {p0, v0}, Lcom/agc/glide/load/ImageHeaderParserUtils;->getOrientationInternal(Ljava/util/List;Lcom/agc/glide/load/ImageHeaderParserUtils$OrientationReader;)I

    move-result p0

    return p0
.end method

.method public static getOrientation(Ljava/util/List;Ljava/nio/ByteBuffer;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/ImageHeaderParser;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            "Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    new-instance v0, Lcom/agc/glide/load/ImageHeaderParserUtils$4;

    invoke-direct {v0, p1, p2}, Lcom/agc/glide/load/ImageHeaderParserUtils$4;-><init>(Ljava/nio/ByteBuffer;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)V

    invoke-static {p0, v0}, Lcom/agc/glide/load/ImageHeaderParserUtils;->getOrientationInternal(Ljava/util/List;Lcom/agc/glide/load/ImageHeaderParserUtils$OrientationReader;)I

    move-result p0

    return p0
.end method

.method private static getOrientationInternal(Ljava/util/List;Lcom/agc/glide/load/ImageHeaderParserUtils$OrientationReader;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/agc/glide/load/ImageHeaderParserUtils$OrientationReader;",
            ")I"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, -0x1

    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/agc/glide/load/ImageHeaderParser;

    invoke-interface {p1, v3}, Lcom/agc/glide/load/ImageHeaderParserUtils$OrientationReader;->getOrientationAndRewind(Lcom/agc/glide/load/ImageHeaderParser;)I

    move-result v3

    if-eq v3, v2, :cond_0

    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public static getType(Ljava/util/List;Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/agc/glide/load/ImageHeaderParser$ImageType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;",
            "Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")",
            "Lcom/agc/glide/load/ImageHeaderParser$ImageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/load/ImageHeaderParserUtils$3;

    invoke-direct {v0, p1, p2}, Lcom/agc/glide/load/ImageHeaderParserUtils$3;-><init>(Lcom/agc/glide/load/data/ParcelFileDescriptorRewinder;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)V

    invoke-static {p0, v0}, Lcom/agc/glide/load/ImageHeaderParserUtils;->getTypeInternal(Ljava/util/List;Lcom/agc/glide/load/ImageHeaderParserUtils$TypeReader;)Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/util/List;Ljava/io/InputStream;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)Lcom/agc/glide/load/ImageHeaderParser$ImageType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/ImageHeaderParser;",
            ">;",
            "Ljava/io/InputStream;",
            "Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;",
            ")",
            "Lcom/agc/glide/load/ImageHeaderParser$ImageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->markSupported()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Lcom/agc/glide/load/resource/bitmap/RecyclableBufferedInputStream;

    invoke-direct {v0, p1, p2}, Lcom/agc/glide/load/resource/bitmap/RecyclableBufferedInputStream;-><init>(Ljava/io/InputStream;Lcom/agc/glide/load/engine/bitmap_recycle/ArrayPool;)V

    move-object p1, v0

    :cond_1
    const/high16 p2, 0x500000

    invoke-virtual {p1, p2}, Ljava/io/InputStream;->mark(I)V

    new-instance p2, Lcom/agc/glide/load/ImageHeaderParserUtils$1;

    invoke-direct {p2, p1}, Lcom/agc/glide/load/ImageHeaderParserUtils$1;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, p2}, Lcom/agc/glide/load/ImageHeaderParserUtils;->getTypeInternal(Ljava/util/List;Lcom/agc/glide/load/ImageHeaderParserUtils$TypeReader;)Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    return-object p0
.end method

.method public static getType(Ljava/util/List;Ljava/nio/ByteBuffer;)Lcom/agc/glide/load/ImageHeaderParser$ImageType;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/ImageHeaderParser;",
            ">;",
            "Ljava/nio/ByteBuffer;",
            ")",
            "Lcom/agc/glide/load/ImageHeaderParser$ImageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    sget-object p0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_0
    new-instance v0, Lcom/agc/glide/load/ImageHeaderParserUtils$2;

    invoke-direct {v0, p1}, Lcom/agc/glide/load/ImageHeaderParserUtils$2;-><init>(Ljava/nio/ByteBuffer;)V

    invoke-static {p0, v0}, Lcom/agc/glide/load/ImageHeaderParserUtils;->getTypeInternal(Ljava/util/List;Lcom/agc/glide/load/ImageHeaderParserUtils$TypeReader;)Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    return-object p0
.end method

.method private static getTypeInternal(Ljava/util/List;Lcom/agc/glide/load/ImageHeaderParserUtils$TypeReader;)Lcom/agc/glide/load/ImageHeaderParser$ImageType;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/agc/glide/load/ImageHeaderParser;",
            ">;",
            "Lcom/agc/glide/load/ImageHeaderParserUtils$TypeReader;",
            ")",
            "Lcom/agc/glide/load/ImageHeaderParser$ImageType;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/agc/glide/load/ImageHeaderParser;

    invoke-interface {p1, v2}, Lcom/agc/glide/load/ImageHeaderParserUtils$TypeReader;->getTypeAndRewind(Lcom/agc/glide/load/ImageHeaderParser;)Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    move-result-object v2

    sget-object v3, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    if-eq v2, v3, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/agc/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/agc/glide/load/ImageHeaderParser$ImageType;

    return-object p0
.end method
