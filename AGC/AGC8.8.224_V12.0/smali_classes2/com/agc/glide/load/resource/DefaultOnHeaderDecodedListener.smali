.class public final Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/graphics/ImageDecoder$OnHeaderDecodedListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "ImageDecoder"


# instance fields
.field private final decodeFormat:Lcom/agc/glide/load/DecodeFormat;

.field private final hardwareConfigState:Lcom/agc/glide/load/resource/bitmap/HardwareConfigState;

.field private final isHardwareConfigAllowed:Z

.field private final preferredColorSpace:Lcom/agc/glide/load/PreferredColorSpace;

.field private final requestedHeight:I

.field private final requestedWidth:I

.field private final strategy:Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;


# direct methods
.method public constructor <init>(IILcom/agc/glide/load/Options;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/agc/glide/load/resource/bitmap/HardwareConfigState;->getInstance()Lcom/agc/glide/load/resource/bitmap/HardwareConfigState;

    move-result-object v0

    iput-object v0, p0, Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;->hardwareConfigState:Lcom/agc/glide/load/resource/bitmap/HardwareConfigState;

    iput p1, p0, Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;->requestedWidth:I

    iput p2, p0, Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;->requestedHeight:I

    sget-object p1, Lcom/agc/glide/load/resource/bitmap/Downsampler;->DECODE_FORMAT:Lcom/agc/glide/load/Option;

    invoke-virtual {p3, p1}, Lcom/agc/glide/load/Options;->get(Lcom/agc/glide/load/Option;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/DecodeFormat;

    iput-object p1, p0, Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;->decodeFormat:Lcom/agc/glide/load/DecodeFormat;

    sget-object p1, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;->OPTION:Lcom/agc/glide/load/Option;

    invoke-virtual {p3, p1}, Lcom/agc/glide/load/Options;->get(Lcom/agc/glide/load/Option;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;

    iput-object p1, p0, Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;->strategy:Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;

    sget-object p1, Lcom/agc/glide/load/resource/bitmap/Downsampler;->ALLOW_HARDWARE_CONFIG:Lcom/agc/glide/load/Option;

    invoke-virtual {p3, p1}, Lcom/agc/glide/load/Options;->get(Lcom/agc/glide/load/Option;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p3, p1}, Lcom/agc/glide/load/Options;->get(Lcom/agc/glide/load/Option;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;->isHardwareConfigAllowed:Z

    sget-object p1, Lcom/agc/glide/load/resource/bitmap/Downsampler;->PREFERRED_COLOR_SPACE:Lcom/agc/glide/load/Option;

    invoke-virtual {p3, p1}, Lcom/agc/glide/load/Options;->get(Lcom/agc/glide/load/Option;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/PreferredColorSpace;

    iput-object p1, p0, Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;->preferredColorSpace:Lcom/agc/glide/load/PreferredColorSpace;

    return-void
.end method


# virtual methods
.method public onHeaderDecoded(Landroid/graphics/ImageDecoder;Landroid/graphics/ImageDecoder$ImageInfo;Landroid/graphics/ImageDecoder$Source;)V
    .locals 8

    iget-object p3, p0, Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;->hardwareConfigState:Lcom/agc/glide/load/resource/bitmap/HardwareConfigState;

    iget v0, p0, Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;->requestedWidth:I

    iget v1, p0, Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;->requestedHeight:I

    iget-boolean v2, p0, Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;->isHardwareConfigAllowed:Z

    const/4 v3, 0x0

    invoke-virtual {p3, v0, v1, v2, v3}, Lcom/agc/glide/load/resource/bitmap/HardwareConfigState;->isHardwareConfigAllowed(IIZZ)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    const/4 p3, 0x3

    invoke-virtual {p1, p3}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/ImageDecoder;->setAllocator(I)V

    :goto_0
    iget-object p3, p0, Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;->decodeFormat:Lcom/agc/glide/load/DecodeFormat;

    sget-object v1, Lcom/agc/glide/load/DecodeFormat;->PREFER_RGB_565:Lcom/agc/glide/load/DecodeFormat;

    if-ne p3, v1, :cond_1

    invoke-virtual {p1, v3}, Landroid/graphics/ImageDecoder;->setMemorySizePolicy(I)V

    :cond_1
    new-instance p3, Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener$1;

    invoke-direct {p3, p0}, Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener$1;-><init>(Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;)V

    invoke-virtual {p1, p3}, Landroid/graphics/ImageDecoder;->setOnPartialImageListener(Landroid/graphics/ImageDecoder$OnPartialImageListener;)V

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getSize()Landroid/util/Size;

    move-result-object p3

    iget v1, p0, Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;->requestedWidth:I

    const/high16 v2, -0x80000000

    if-ne v1, v2, :cond_2

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v1

    :cond_2
    iget v4, p0, Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;->requestedHeight:I

    if-ne v4, v2, :cond_3

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v4

    :cond_3
    iget-object v2, p0, Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;->strategy:Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v5

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v6

    invoke-virtual {v2, v5, v6, v1, v4}, Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;->getScaleFactor(IIII)F

    move-result v1

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v2

    int-to-float v2, v2

    mul-float/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    const/4 v5, 0x2

    const-string v6, "ImageDecoder"

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Resizing from ["

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Landroid/util/Size;->getWidth()I

    move-result v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "x"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Landroid/util/Size;->getHeight()I

    move-result p3

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v5, "] to ["

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v5, "] scaleFactor: "

    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v6, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p1, v2, v4}, Landroid/graphics/ImageDecoder;->setTargetSize(II)V

    iget-object p3, p0, Lcom/agc/glide/load/resource/DefaultOnHeaderDecodedListener;->preferredColorSpace:Lcom/agc/glide/load/PreferredColorSpace;

    if-eqz p3, :cond_8

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_6

    sget-object v1, Lcom/agc/glide/load/PreferredColorSpace;->DISPLAY_P3:Lcom/agc/glide/load/PreferredColorSpace;

    if-ne p3, v1, :cond_5

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p3

    if-eqz p3, :cond_5

    invoke-virtual {p2}, Landroid/graphics/ImageDecoder$ImageInfo;->getColorSpace()Landroid/graphics/ColorSpace;

    move-result-object p2

    invoke-virtual {p2}, Landroid/graphics/ColorSpace;->isWideGamut()Z

    move-result p2

    if-eqz p2, :cond_5

    move v3, v0

    :cond_5
    if-eqz v3, :cond_7

    sget-object p2, Landroid/graphics/ColorSpace$Named;->DISPLAY_P3:Landroid/graphics/ColorSpace$Named;

    goto :goto_1

    :cond_6
    const/16 p2, 0x1a

    if-lt v1, p2, :cond_8

    :cond_7
    sget-object p2, Landroid/graphics/ColorSpace$Named;->SRGB:Landroid/graphics/ColorSpace$Named;

    :goto_1
    invoke-static {p2}, Landroid/graphics/ColorSpace;->get(Landroid/graphics/ColorSpace$Named;)Landroid/graphics/ColorSpace;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/ImageDecoder;->setTargetColorSpace(Landroid/graphics/ColorSpace;)V

    :cond_8
    return-void
.end method
