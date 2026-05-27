.class Lcom/agc/glide/load/resource/gif/ByteBufferGifDecoder$GifDecoderFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/agc/glide/load/resource/gif/ByteBufferGifDecoder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GifDecoderFactory"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build(Lcom/agc/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/agc/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)Lcom/agc/glide/gifdecoder/GifDecoder;
    .locals 1

    new-instance v0, Lcom/agc/glide/gifdecoder/StandardGifDecoder;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/agc/glide/gifdecoder/StandardGifDecoder;-><init>(Lcom/agc/glide/gifdecoder/GifDecoder$BitmapProvider;Lcom/agc/glide/gifdecoder/GifHeader;Ljava/nio/ByteBuffer;I)V

    return-object v0
.end method
