.class public Lcom/agc/glide/request/RequestOptions;
.super Lcom/agc/glide/request/BaseRequestOptions;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/agc/glide/request/BaseRequestOptions<",
        "Lcom/agc/glide/request/RequestOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static centerCropOptions:Lcom/agc/glide/request/RequestOptions;

.field private static centerInsideOptions:Lcom/agc/glide/request/RequestOptions;

.field private static circleCropOptions:Lcom/agc/glide/request/RequestOptions;

.field private static fitCenterOptions:Lcom/agc/glide/request/RequestOptions;

.field private static noAnimationOptions:Lcom/agc/glide/request/RequestOptions;

.field private static noTransformOptions:Lcom/agc/glide/request/RequestOptions;

.field private static skipMemoryCacheFalseOptions:Lcom/agc/glide/request/RequestOptions;

.field private static skipMemoryCacheTrueOptions:Lcom/agc/glide/request/RequestOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/agc/glide/request/BaseRequestOptions;-><init>()V

    return-void
.end method

.method public static bitmapTransform(Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/RequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;)",
            "Lcom/agc/glide/request/RequestOptions;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/agc/glide/request/BaseRequestOptions;->transform(Lcom/agc/glide/load/Transformation;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestOptions;

    return-object p0
.end method

.method public static centerCropTransform()Lcom/agc/glide/request/RequestOptions;
    .locals 1

    sget-object v0, Lcom/agc/glide/request/RequestOptions;->centerCropOptions:Lcom/agc/glide/request/RequestOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->centerCrop()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->autoClone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/RequestOptions;

    sput-object v0, Lcom/agc/glide/request/RequestOptions;->centerCropOptions:Lcom/agc/glide/request/RequestOptions;

    :cond_0
    sget-object v0, Lcom/agc/glide/request/RequestOptions;->centerCropOptions:Lcom/agc/glide/request/RequestOptions;

    return-object v0
.end method

.method public static centerInsideTransform()Lcom/agc/glide/request/RequestOptions;
    .locals 1

    sget-object v0, Lcom/agc/glide/request/RequestOptions;->centerInsideOptions:Lcom/agc/glide/request/RequestOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->centerInside()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->autoClone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/RequestOptions;

    sput-object v0, Lcom/agc/glide/request/RequestOptions;->centerInsideOptions:Lcom/agc/glide/request/RequestOptions;

    :cond_0
    sget-object v0, Lcom/agc/glide/request/RequestOptions;->centerInsideOptions:Lcom/agc/glide/request/RequestOptions;

    return-object v0
.end method

.method public static circleCropTransform()Lcom/agc/glide/request/RequestOptions;
    .locals 1

    sget-object v0, Lcom/agc/glide/request/RequestOptions;->circleCropOptions:Lcom/agc/glide/request/RequestOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->circleCrop()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->autoClone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/RequestOptions;

    sput-object v0, Lcom/agc/glide/request/RequestOptions;->circleCropOptions:Lcom/agc/glide/request/RequestOptions;

    :cond_0
    sget-object v0, Lcom/agc/glide/request/RequestOptions;->circleCropOptions:Lcom/agc/glide/request/RequestOptions;

    return-object v0
.end method

.method public static decodeTypeOf(Ljava/lang/Class;)Lcom/agc/glide/request/RequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/agc/glide/request/RequestOptions;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/agc/glide/request/BaseRequestOptions;->decode(Ljava/lang/Class;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestOptions;

    return-object p0
.end method

.method public static diskCacheStrategyOf(Lcom/agc/glide/load/engine/DiskCacheStrategy;)Lcom/agc/glide/request/RequestOptions;
    .locals 1

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/agc/glide/request/BaseRequestOptions;->diskCacheStrategy(Lcom/agc/glide/load/engine/DiskCacheStrategy;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestOptions;

    return-object p0
.end method

.method public static downsampleOf(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/agc/glide/request/RequestOptions;
    .locals 1

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/agc/glide/request/BaseRequestOptions;->downsample(Lcom/agc/glide/load/resource/bitmap/DownsampleStrategy;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestOptions;

    return-object p0
.end method

.method public static encodeFormatOf(Landroid/graphics/Bitmap$CompressFormat;)Lcom/agc/glide/request/RequestOptions;
    .locals 1

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/agc/glide/request/BaseRequestOptions;->encodeFormat(Landroid/graphics/Bitmap$CompressFormat;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestOptions;

    return-object p0
.end method

.method public static encodeQualityOf(I)Lcom/agc/glide/request/RequestOptions;
    .locals 1

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/agc/glide/request/BaseRequestOptions;->encodeQuality(I)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestOptions;

    return-object p0
.end method

.method public static errorOf(I)Lcom/agc/glide/request/RequestOptions;
    .locals 1

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/agc/glide/request/BaseRequestOptions;->error(I)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestOptions;

    return-object p0
.end method

.method public static errorOf(Landroid/graphics/drawable/Drawable;)Lcom/agc/glide/request/RequestOptions;
    .locals 1

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/agc/glide/request/BaseRequestOptions;->error(Landroid/graphics/drawable/Drawable;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestOptions;

    return-object p0
.end method

.method public static fitCenterTransform()Lcom/agc/glide/request/RequestOptions;
    .locals 1

    sget-object v0, Lcom/agc/glide/request/RequestOptions;->fitCenterOptions:Lcom/agc/glide/request/RequestOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->fitCenter()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->autoClone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/RequestOptions;

    sput-object v0, Lcom/agc/glide/request/RequestOptions;->fitCenterOptions:Lcom/agc/glide/request/RequestOptions;

    :cond_0
    sget-object v0, Lcom/agc/glide/request/RequestOptions;->fitCenterOptions:Lcom/agc/glide/request/RequestOptions;

    return-object v0
.end method

.method public static formatOf(Lcom/agc/glide/load/DecodeFormat;)Lcom/agc/glide/request/RequestOptions;
    .locals 1

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/agc/glide/request/BaseRequestOptions;->format(Lcom/agc/glide/load/DecodeFormat;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestOptions;

    return-object p0
.end method

.method public static frameOf(J)Lcom/agc/glide/request/RequestOptions;
    .locals 1

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->frame(J)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestOptions;

    return-object p0
.end method

.method public static noAnimation()Lcom/agc/glide/request/RequestOptions;
    .locals 1

    sget-object v0, Lcom/agc/glide/request/RequestOptions;->noAnimationOptions:Lcom/agc/glide/request/RequestOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->dontAnimate()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->autoClone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/RequestOptions;

    sput-object v0, Lcom/agc/glide/request/RequestOptions;->noAnimationOptions:Lcom/agc/glide/request/RequestOptions;

    :cond_0
    sget-object v0, Lcom/agc/glide/request/RequestOptions;->noAnimationOptions:Lcom/agc/glide/request/RequestOptions;

    return-object v0
.end method

.method public static noTransformation()Lcom/agc/glide/request/RequestOptions;
    .locals 1

    sget-object v0, Lcom/agc/glide/request/RequestOptions;->noTransformOptions:Lcom/agc/glide/request/RequestOptions;

    if-nez v0, :cond_0

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->dontTransform()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/RequestOptions;

    invoke-virtual {v0}, Lcom/agc/glide/request/BaseRequestOptions;->autoClone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object v0

    check-cast v0, Lcom/agc/glide/request/RequestOptions;

    sput-object v0, Lcom/agc/glide/request/RequestOptions;->noTransformOptions:Lcom/agc/glide/request/RequestOptions;

    :cond_0
    sget-object v0, Lcom/agc/glide/request/RequestOptions;->noTransformOptions:Lcom/agc/glide/request/RequestOptions;

    return-object v0
.end method

.method public static option(Lcom/agc/glide/load/Option;Ljava/lang/Object;)Lcom/agc/glide/request/RequestOptions;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/agc/glide/load/Option<",
            "TT;>;TT;)",
            "Lcom/agc/glide/request/RequestOptions;"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->set(Lcom/agc/glide/load/Option;Ljava/lang/Object;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestOptions;

    return-object p0
.end method

.method public static overrideOf(I)Lcom/agc/glide/request/RequestOptions;
    .locals 0

    invoke-static {p0, p0}, Lcom/agc/glide/request/RequestOptions;->overrideOf(II)Lcom/agc/glide/request/RequestOptions;

    move-result-object p0

    return-object p0
.end method

.method public static overrideOf(II)Lcom/agc/glide/request/RequestOptions;
    .locals 1

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->override(II)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestOptions;

    return-object p0
.end method

.method public static placeholderOf(I)Lcom/agc/glide/request/RequestOptions;
    .locals 1

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/agc/glide/request/BaseRequestOptions;->placeholder(I)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestOptions;

    return-object p0
.end method

.method public static placeholderOf(Landroid/graphics/drawable/Drawable;)Lcom/agc/glide/request/RequestOptions;
    .locals 1

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/agc/glide/request/BaseRequestOptions;->placeholder(Landroid/graphics/drawable/Drawable;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestOptions;

    return-object p0
.end method

.method public static priorityOf(Lcom/agc/glide/Priority;)Lcom/agc/glide/request/RequestOptions;
    .locals 1

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/agc/glide/request/BaseRequestOptions;->priority(Lcom/agc/glide/Priority;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestOptions;

    return-object p0
.end method

.method public static signatureOf(Lcom/agc/glide/load/Key;)Lcom/agc/glide/request/RequestOptions;
    .locals 1

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/agc/glide/request/BaseRequestOptions;->signature(Lcom/agc/glide/load/Key;)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestOptions;

    return-object p0
.end method

.method public static sizeMultiplierOf(F)Lcom/agc/glide/request/RequestOptions;
    .locals 1

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/agc/glide/request/BaseRequestOptions;->sizeMultiplier(F)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestOptions;

    return-object p0
.end method

.method public static skipMemoryCacheOf(Z)Lcom/agc/glide/request/RequestOptions;
    .locals 1

    if-eqz p0, :cond_1

    sget-object p0, Lcom/agc/glide/request/RequestOptions;->skipMemoryCacheTrueOptions:Lcom/agc/glide/request/RequestOptions;

    if-nez p0, :cond_0

    new-instance p0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {p0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/agc/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestOptions;

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->autoClone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestOptions;

    sput-object p0, Lcom/agc/glide/request/RequestOptions;->skipMemoryCacheTrueOptions:Lcom/agc/glide/request/RequestOptions;

    :cond_0
    sget-object p0, Lcom/agc/glide/request/RequestOptions;->skipMemoryCacheTrueOptions:Lcom/agc/glide/request/RequestOptions;

    return-object p0

    :cond_1
    sget-object p0, Lcom/agc/glide/request/RequestOptions;->skipMemoryCacheFalseOptions:Lcom/agc/glide/request/RequestOptions;

    if-nez p0, :cond_2

    new-instance p0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {p0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/agc/glide/request/BaseRequestOptions;->skipMemoryCache(Z)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestOptions;

    invoke-virtual {p0}, Lcom/agc/glide/request/BaseRequestOptions;->autoClone()Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestOptions;

    sput-object p0, Lcom/agc/glide/request/RequestOptions;->skipMemoryCacheFalseOptions:Lcom/agc/glide/request/RequestOptions;

    :cond_2
    sget-object p0, Lcom/agc/glide/request/RequestOptions;->skipMemoryCacheFalseOptions:Lcom/agc/glide/request/RequestOptions;

    return-object p0
.end method

.method public static timeoutOf(I)Lcom/agc/glide/request/RequestOptions;
    .locals 1

    new-instance v0, Lcom/agc/glide/request/RequestOptions;

    invoke-direct {v0}, Lcom/agc/glide/request/RequestOptions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/agc/glide/request/BaseRequestOptions;->timeout(I)Lcom/agc/glide/request/BaseRequestOptions;

    move-result-object p0

    check-cast p0, Lcom/agc/glide/request/RequestOptions;

    return-object p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    instance-of v0, p1, Lcom/agc/glide/request/RequestOptions;

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/agc/glide/request/BaseRequestOptions;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    invoke-super {p0}, Lcom/agc/glide/request/BaseRequestOptions;->hashCode()I

    move-result v0

    return v0
.end method
