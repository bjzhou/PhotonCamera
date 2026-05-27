.class public Lcom/agc/glide/load/resource/gif/GifDrawableEncoder;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/ResourceEncoder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/agc/glide/load/ResourceEncoder<",
        "Lcom/agc/glide/load/resource/gif/GifDrawable;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "GifEncoder"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public encode(Lcom/agc/glide/load/engine/Resource;Ljava/io/File;Lcom/agc/glide/load/Options;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/engine/Resource<",
            "Lcom/agc/glide/load/resource/gif/GifDrawable;",
            ">;",
            "Ljava/io/File;",
            "Lcom/agc/glide/load/Options;",
            ")Z"
        }
    .end annotation

    invoke-interface {p1}, Lcom/agc/glide/load/engine/Resource;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/resource/gif/GifDrawable;

    :try_start_0
    invoke-virtual {p1}, Lcom/agc/glide/load/resource/gif/GifDrawable;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object p1

    invoke-static {p1, p2}, Lcom/agc/glide/util/ByteBufferUtil;->toFile(Ljava/nio/ByteBuffer;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, 0x5

    const-string p3, "GifEncoder"

    invoke-static {p3, p2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    const-string p2, "Failed to encode GIF drawable data"

    invoke-static {p3, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public bridge synthetic encode(Ljava/lang/Object;Ljava/io/File;Lcom/agc/glide/load/Options;)Z
    .locals 0

    check-cast p1, Lcom/agc/glide/load/engine/Resource;

    invoke-virtual {p0, p1, p2, p3}, Lcom/agc/glide/load/resource/gif/GifDrawableEncoder;->encode(Lcom/agc/glide/load/engine/Resource;Ljava/io/File;Lcom/agc/glide/load/Options;)Z

    move-result p1

    return p1
.end method

.method public getEncodeStrategy(Lcom/agc/glide/load/Options;)Lcom/agc/glide/load/EncodeStrategy;
    .locals 0

    sget-object p1, Lcom/agc/glide/load/EncodeStrategy;->SOURCE:Lcom/agc/glide/load/EncodeStrategy;

    return-object p1
.end method
