.class final Lcom/agc/glide/load/resource/drawable/AnimatedWebpDecoder$StreamAnimatedWebpDecoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/ResourceDecoder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/resource/drawable/AnimatedWebpDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "StreamAnimatedWebpDecoder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/ResourceDecoder<",
        "Ljava/io/InputStream;",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field private final delegate:Lcom/agc/glide/load/resource/drawable/AnimatedWebpDecoder;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/resource/drawable/AnimatedWebpDecoder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/load/resource/drawable/AnimatedWebpDecoder$StreamAnimatedWebpDecoder;->delegate:Lcom/agc/glide/load/resource/drawable/AnimatedWebpDecoder;

    return-void
.end method


# virtual methods
.method public decode(Ljava/io/InputStream;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/engine/Resource;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStream;",
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

    invoke-static {p1}, Lcom/agc/glide/util/ByteBufferUtil;->fromStream(Ljava/io/InputStream;)Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1}, Landroid/graphics/ImageDecoder;->createSource(Ljava/nio/ByteBuffer;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p1

    iget-object v0, p0, Lcom/agc/glide/load/resource/drawable/AnimatedWebpDecoder$StreamAnimatedWebpDecoder;->delegate:Lcom/agc/glide/load/resource/drawable/AnimatedWebpDecoder;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/agc/glide/load/resource/drawable/AnimatedWebpDecoder;->decode(Landroid/graphics/ImageDecoder$Source;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic decode(Ljava/lang/Object;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/engine/Resource;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/agc/glide/load/resource/drawable/AnimatedWebpDecoder$StreamAnimatedWebpDecoder;->decode(Ljava/io/InputStream;IILcom/agc/glide/load/Options;)Lcom/agc/glide/load/engine/Resource;

    move-result-object p1

    return-object p1
.end method

.method public handles(Ljava/io/InputStream;Lcom/agc/glide/load/Options;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object p2, p0, Lcom/agc/glide/load/resource/drawable/AnimatedWebpDecoder$StreamAnimatedWebpDecoder;->delegate:Lcom/agc/glide/load/resource/drawable/AnimatedWebpDecoder;

    invoke-virtual {p2, p1}, Lcom/agc/glide/load/resource/drawable/AnimatedWebpDecoder;->handles(Ljava/io/InputStream;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic handles(Ljava/lang/Object;Lcom/agc/glide/load/Options;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    check-cast p1, Ljava/io/InputStream;

    invoke-virtual {p0, p1, p2}, Lcom/agc/glide/load/resource/drawable/AnimatedWebpDecoder$StreamAnimatedWebpDecoder;->handles(Ljava/io/InputStream;Lcom/agc/glide/load/Options;)Z

    move-result p1

    return p1
.end method
