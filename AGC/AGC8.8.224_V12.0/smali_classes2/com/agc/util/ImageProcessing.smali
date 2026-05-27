.class public Lcom/agc/util/ImageProcessing;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private brightness:F

.field private contrast:F

.field private exposure:F

.field private gamma:F

.field private highlights:F

.field private hue:F

.field private imgBitmap:Landroid/graphics/Bitmap;

.field private imgFile:Ljava/lang/String;

.field private luminanceThreshold:F

.field private lutBitmap:Landroid/graphics/Bitmap;

.field private lutFile:Ljava/lang/String;

.field private lutIntensity:F

.field private quality:I

.field private rgbBlue:F

.field private rgbGreen:F

.field private rgbRed:F

.field private saturation:F

.field private shadows:F

.field private sharpness:F

.field private unsharpIntensity:F

.field private vibrance:F

.field private vignetteEnd:F

.field private vignetteStart:F

.field private wbTemperature:F

.field private wbTint:F


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/agc/util/ImageProcessing;->lutIntensity:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/agc/util/ImageProcessing;->quality:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/agc/util/ImageProcessing;->sharpness:F

    iput v1, p0, Lcom/agc/util/ImageProcessing;->unsharpIntensity:F

    iput v1, p0, Lcom/agc/util/ImageProcessing;->brightness:F

    const/high16 v2, 0x3f000000    # 0.5f

    iput v2, p0, Lcom/agc/util/ImageProcessing;->luminanceThreshold:F

    iput v1, p0, Lcom/agc/util/ImageProcessing;->exposure:F

    iput v0, p0, Lcom/agc/util/ImageProcessing;->contrast:F

    iput v0, p0, Lcom/agc/util/ImageProcessing;->gamma:F

    const v2, 0x459c4000    # 5000.0f

    iput v2, p0, Lcom/agc/util/ImageProcessing;->wbTemperature:F

    iput v1, p0, Lcom/agc/util/ImageProcessing;->wbTint:F

    const/high16 v2, 0x42b40000    # 90.0f

    iput v2, p0, Lcom/agc/util/ImageProcessing;->hue:F

    iput v0, p0, Lcom/agc/util/ImageProcessing;->saturation:F

    iput v1, p0, Lcom/agc/util/ImageProcessing;->vibrance:F

    iput v1, p0, Lcom/agc/util/ImageProcessing;->rgbRed:F

    iput v1, p0, Lcom/agc/util/ImageProcessing;->rgbGreen:F

    iput v1, p0, Lcom/agc/util/ImageProcessing;->rgbBlue:F

    iput v0, p0, Lcom/agc/util/ImageProcessing;->highlights:F

    iput v1, p0, Lcom/agc/util/ImageProcessing;->shadows:F

    iput v1, p0, Lcom/agc/util/ImageProcessing;->vignetteStart:F

    iput v1, p0, Lcom/agc/util/ImageProcessing;->vignetteEnd:F

    if-eqz p1, :cond_1

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/agc/util/ImageProcessing;->imgFile:Ljava/lang/String;

    iput p2, p0, Lcom/agc/util/ImageProcessing;->quality:I

    invoke-static {p1}, Lcom/agc/util/ImageUtil;->getBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    return-void

    :cond_1
    :goto_0
    const-string p1, "imgFile not exists."

    invoke-static {p1}, Lcom/agc/Log;->e(Ljava/lang/Object;)I

    return-void
.end method

.method private oneByOne()Landroid/graphics/Bitmap;
    .locals 4

    iget-object v0, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v3, v0, v2, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v3, v2, v1, v0, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private round()Landroid/graphics/Bitmap;
    .locals 7

    iget-object v0, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    if-le v0, v1, :cond_0

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-static {v3, v0, v2, v1, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    :cond_0
    sub-int/2addr v1, v0

    div-int/lit8 v1, v1, 0x2

    invoke-static {v3, v2, v1, v0, v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_0
    new-instance v1, Landroid/graphics/Canvas;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-direct {v4, v2, v2, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    const v2, -0xbdbdbe

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    int-to-float v6, v6

    invoke-virtual {v1, v2, v5, v6, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    new-instance v2, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v2, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v2}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    invoke-virtual {v1, v0, v4, v4, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-object v0
.end method

.method private runBlur(I)Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/Globals;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-static {v1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object v4

    int-to-float p1, p1

    invoke-virtual {v4, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    invoke-virtual {v4, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v4, v3}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v3, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v4}, Landroid/renderscript/ScriptIntrinsicBlur;->destroy()V

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V

    return-object v0
.end method

.method private runHist()Landroid/graphics/Bitmap;
    .locals 7

    iget-object v0, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {}, Lcom/Globals;->getAppContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v5

    new-instance v6, Lcom/postProcessing/ScriptC_histEq;

    invoke-direct {v6, v3}, Lcom/postProcessing/ScriptC_histEq;-><init>(Landroid/renderscript/RenderScript;)V

    mul-int/2addr v0, v1

    invoke-virtual {v6, v0}, Lcom/postProcessing/ScriptC_histEq;->set_size(I)V

    invoke-virtual {v6, v4, v5}, Lcom/postProcessing/ScriptC_histEq;->forEach_root(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    invoke-virtual {v6}, Lcom/postProcessing/ScriptC_histEq;->invoke_createRemapArray()V

    invoke-virtual {v6, v5, v4}, Lcom/postProcessing/ScriptC_histEq;->forEach_remaptoRGB(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    invoke-virtual {v4, v2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v5}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v6}, Landroid/renderscript/ScriptC;->destroy()V

    invoke-virtual {v3}, Landroid/renderscript/RenderScript;->destroy()V

    return-object v2
.end method

.method private runInvert()Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/Globals;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v3

    new-instance v4, Lcom/postProcessing/ScriptC_invert;

    invoke-direct {v4, v1}, Lcom/postProcessing/ScriptC_invert;-><init>(Landroid/renderscript/RenderScript;)V

    invoke-virtual {v4, v2, v3}, Lcom/postProcessing/ScriptC_invert;->forEach_invert(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    invoke-virtual {v3, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v4}, Landroid/renderscript/ScriptC;->destroy()V

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V

    return-object v0
.end method

.method private runSharpen(I)Landroid/graphics/Bitmap;
    .locals 5

    int-to-float p1, p1

    const v0, -0x43333333    # -0.025f

    mul-float/2addr p1, v0

    const v0, 0x3e4ccccd    # 0.2f

    mul-float/2addr v0, p1

    const/16 v1, 0x9

    new-array v1, v1, [F

    const/4 v2, 0x0

    aput p1, v1, v2

    const/4 v2, 0x1

    aput v0, v1, v2

    const/4 v2, 0x2

    aput p1, v1, v2

    const/4 v2, 0x3

    aput v0, v1, v2

    const/high16 v2, 0x40800000    # 4.0f

    mul-float v3, p1, v2

    mul-float/2addr v2, v0

    add-float/2addr v3, v2

    neg-float v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v2, v3

    const/4 v3, 0x4

    aput v2, v1, v3

    const/4 v2, 0x5

    aput v0, v1, v2

    const/4 v2, 0x6

    aput p1, v1, v2

    const/4 v2, 0x7

    aput v0, v1, v2

    const/16 v0, 0x8

    aput p1, v1, v0

    iget-object p1, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iget-object v0, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-static {}, Lcom/Globals;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v0

    invoke-static {v0}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicConvolve3x3;

    move-result-object v2

    iget-object v3, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v3}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v3

    invoke-static {v0, p1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v4

    invoke-virtual {v2, v3}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setInput(Landroid/renderscript/Allocation;)V

    invoke-virtual {v2, v1}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->setCoefficients([F)V

    invoke-virtual {v2, v4}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->forEach(Landroid/renderscript/Allocation;)V

    invoke-virtual {v4, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v4}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v2}, Landroid/renderscript/ScriptIntrinsicConvolve3x3;->destroy()V

    invoke-virtual {v0}, Landroid/renderscript/RenderScript;->destroy()V

    return-object p1
.end method

.method private runSmoothen(I)Landroid/graphics/Bitmap;
    .locals 7

    iget-object v0, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {}, Lcom/Globals;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;)Landroid/renderscript/Allocation;

    move-result-object v2

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v3

    new-instance v4, Lcom/postProcessing/ScriptC_median;

    invoke-direct {v4, v1}, Lcom/postProcessing/ScriptC_median;-><init>(Landroid/renderscript/RenderScript;)V

    int-to-float p1, p1

    const/high16 v5, 0x42c80000    # 100.0f

    div-float/2addr p1, v5

    invoke-virtual {v4, p1}, Lcom/postProcessing/ScriptC_median;->set_strength(F)V

    invoke-virtual {v4, v2}, Lcom/postProcessing/ScriptC_median;->set_input(Landroid/renderscript/Allocation;)V

    iget-object p1, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    int-to-long v5, p1

    invoke-virtual {v4, v5, v6}, Lcom/postProcessing/ScriptC_median;->set_width(J)V

    iget-object p1, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    int-to-long v5, p1

    invoke-virtual {v4, v5, v6}, Lcom/postProcessing/ScriptC_median;->set_height(J)V

    invoke-virtual {v4, v2, v3}, Lcom/postProcessing/ScriptC_median;->forEach_median3(Landroid/renderscript/Allocation;Landroid/renderscript/Allocation;)V

    invoke-virtual {v3, v0}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    invoke-virtual {v2}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v3}, Landroid/renderscript/Allocation;->destroy()V

    invoke-virtual {v4}, Landroid/renderscript/ScriptC;->destroy()V

    invoke-virtual {v1}, Landroid/renderscript/RenderScript;->destroy()V

    return-object v0
.end method

.method private runVignette(I)Landroid/graphics/Bitmap;
    .locals 4

    const/4 v0, 0x1

    if-nez p1, :cond_0

    move p1, v0

    :cond_0
    const-string v1, "pref_vignette_strengh_key"

    invoke-static {v1, v0}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    iget-object v0, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    iget-object v0, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    iget-object v0, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x2

    div-int/lit8 v0, v0, 0x64

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x3

    new-instance p1, Landroid/graphics/RectF;

    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-direct {p1, v0}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    new-instance p1, Landroid/graphics/RadialGradient;

    const/4 p1, 0x0

    throw p1
.end method

.method private sixteenByNine()Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    mul-int/lit8 v2, v1, 0x9

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v0, 0x9

    :goto_0
    div-int/lit8 v2, v2, 0x10

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    if-le v0, v1, :cond_1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v4, v3, v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_1
    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-static {v4, v0, v3, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    return-object v0
.end method

.method private twentyOneByNine()Landroid/graphics/Bitmap;
    .locals 5

    iget-object v0, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    mul-int/lit8 v2, v1, 0x9

    goto :goto_0

    :cond_0
    mul-int/lit8 v2, v0, 0x9

    :goto_0
    div-int/lit8 v2, v2, 0x15

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    if-le v0, v1, :cond_1

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-static {v4, v3, v1, v0, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_1

    :cond_1
    sub-int/2addr v0, v2

    div-int/lit8 v0, v0, 0x2

    invoke-static {v4, v0, v3, v2, v1}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_1
    return-object v0
.end method


# virtual methods
.method public filterToBitmap()Landroid/graphics/Bitmap;
    .locals 23

    move-object/from16 v1, p0

    const-string v0, ""

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-static {}, Lcom/Globals;->getAppContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImage;-><init>(Landroid/content/Context;)V

    new-instance v4, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;

    invoke-direct {v4}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;-><init>()V

    iget-object v5, v1, Lcom/agc/util/ImageProcessing;->lutBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_0

    new-instance v5, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLookupFilter;

    invoke-direct {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLookupFilter;-><init>()V

    iget-object v8, v1, Lcom/agc/util/ImageProcessing;->lutBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v5, v8}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLookupFilter;->setBitmap(Landroid/graphics/Bitmap;)V

    iget v8, v1, Lcom/agc/util/ImageProcessing;->lutIntensity:F

    invoke-virtual {v5, v8}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLookupFilter;->setIntensity(F)V

    invoke-virtual {v4, v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    invoke-virtual {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLookupFilter;->destroy()V

    move v5, v7

    goto :goto_0

    :cond_0
    move v5, v6

    :goto_0
    iget v8, v1, Lcom/agc/util/ImageProcessing;->brightness:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_1

    new-instance v5, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;

    invoke-direct {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;-><init>()V

    iget v8, v1, Lcom/agc/util/ImageProcessing;->brightness:F

    invoke-virtual {v5, v8}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;->setBrightness(F)V

    invoke-virtual {v4, v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    invoke-virtual {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;->destroy()V

    move v5, v7

    :cond_1
    iget v8, v1, Lcom/agc/util/ImageProcessing;->luminanceThreshold:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_2

    new-instance v5, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLuminanceThresholdFilter;

    invoke-direct {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLuminanceThresholdFilter;-><init>()V

    iget v8, v1, Lcom/agc/util/ImageProcessing;->luminanceThreshold:F

    invoke-virtual {v5, v8}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLuminanceThresholdFilter;->setThreshold(F)V

    invoke-virtual {v4, v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    invoke-virtual {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLuminanceThresholdFilter;->destroy()V

    move v5, v7

    :cond_2
    iget v8, v1, Lcom/agc/util/ImageProcessing;->exposure:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_3

    new-instance v5, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageExposureFilter;

    invoke-direct {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageExposureFilter;-><init>()V

    iget v8, v1, Lcom/agc/util/ImageProcessing;->exposure:F

    invoke-virtual {v5, v8}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageExposureFilter;->setExposure(F)V

    invoke-virtual {v4, v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    invoke-virtual {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageExposureFilter;->destroy()V

    move v5, v7

    :cond_3
    iget v8, v1, Lcom/agc/util/ImageProcessing;->contrast:F

    const/high16 v10, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_4

    new-instance v5, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageContrastFilter;

    invoke-direct {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageContrastFilter;-><init>()V

    iget v8, v1, Lcom/agc/util/ImageProcessing;->contrast:F

    invoke-virtual {v5, v8}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageContrastFilter;->setContrast(F)V

    invoke-virtual {v4, v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    invoke-virtual {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageContrastFilter;->destroy()V

    move v5, v7

    :cond_4
    iget v8, v1, Lcom/agc/util/ImageProcessing;->gamma:F

    cmpl-float v8, v8, v10

    if-eqz v8, :cond_5

    new-instance v5, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGammaFilter;

    invoke-direct {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGammaFilter;-><init>()V

    iget v8, v1, Lcom/agc/util/ImageProcessing;->gamma:F

    invoke-virtual {v5, v8}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGammaFilter;->setGamma(F)V

    invoke-virtual {v4, v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    invoke-virtual {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGammaFilter;->destroy()V

    move v5, v7

    :cond_5
    sget-object v8, Lcom/Globals;->mParameters:Lcom/Parameters;

    iget v11, v1, Lcom/agc/util/ImageProcessing;->saturation:F

    iput v11, v8, Lcom/Parameters;->saturation:F

    cmpl-float v8, v11, v10

    if-eqz v8, :cond_6

    new-instance v5, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSaturationFilter;

    invoke-direct {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSaturationFilter;-><init>()V

    iget v8, v1, Lcom/agc/util/ImageProcessing;->saturation:F

    invoke-virtual {v5, v8}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSaturationFilter;->setSaturation(F)V

    invoke-virtual {v4, v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    invoke-virtual {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSaturationFilter;->destroy()V

    move v5, v7

    :cond_6
    iget v8, v1, Lcom/agc/util/ImageProcessing;->hue:F

    const/high16 v11, 0x42b40000    # 90.0f

    cmpl-float v8, v8, v11

    if-eqz v8, :cond_7

    new-instance v5, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHueFilter;

    invoke-direct {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHueFilter;-><init>()V

    iget v8, v1, Lcom/agc/util/ImageProcessing;->hue:F

    invoke-virtual {v5, v8}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHueFilter;->setHue(F)V

    invoke-virtual {v4, v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    invoke-virtual {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHueFilter;->destroy()V

    move v5, v7

    :cond_7
    iget v8, v1, Lcom/agc/util/ImageProcessing;->vibrance:F

    const v11, 0x3f99999a    # 1.2f

    cmpl-float v8, v8, v11

    if-eqz v8, :cond_8

    new-instance v5, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageVibranceFilter;

    invoke-direct {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageVibranceFilter;-><init>()V

    iget v8, v1, Lcom/agc/util/ImageProcessing;->vibrance:F

    invoke-virtual {v5, v8}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageVibranceFilter;->setVibrance(F)V

    invoke-virtual {v4, v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    invoke-virtual {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageVibranceFilter;->destroy()V

    move v5, v7

    :cond_8
    iget v8, v1, Lcom/agc/util/ImageProcessing;->wbTemperature:F

    const v11, 0x459c4000    # 5000.0f

    cmpl-float v8, v8, v11

    if-nez v8, :cond_9

    iget v8, v1, Lcom/agc/util/ImageProcessing;->wbTint:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_c

    :cond_9
    new-instance v5, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageWhiteBalanceFilter;

    invoke-direct {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageWhiteBalanceFilter;-><init>()V

    iget v8, v1, Lcom/agc/util/ImageProcessing;->wbTemperature:F

    cmpl-float v11, v8, v11

    if-eqz v11, :cond_a

    invoke-virtual {v5, v8}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageWhiteBalanceFilter;->setTemperature(F)V

    :cond_a
    iget v8, v1, Lcom/agc/util/ImageProcessing;->wbTint:F

    cmpl-float v11, v8, v9

    if-eqz v11, :cond_b

    invoke-virtual {v5, v8}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageWhiteBalanceFilter;->setTint(F)V

    :cond_b
    invoke-virtual {v4, v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    invoke-virtual {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageWhiteBalanceFilter;->destroy()V

    move v5, v7

    :cond_c
    iget v8, v1, Lcom/agc/util/ImageProcessing;->rgbRed:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_d

    iget v8, v1, Lcom/agc/util/ImageProcessing;->rgbGreen:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_d

    iget v8, v1, Lcom/agc/util/ImageProcessing;->rgbBlue:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_11

    :cond_d
    new-instance v5, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;

    invoke-direct {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;-><init>()V

    iget v8, v1, Lcom/agc/util/ImageProcessing;->rgbRed:F

    cmpl-float v11, v8, v9

    if-eqz v11, :cond_e

    invoke-virtual {v5, v8}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->setRed(F)V

    :cond_e
    iget v8, v1, Lcom/agc/util/ImageProcessing;->rgbGreen:F

    cmpl-float v11, v8, v9

    if-eqz v11, :cond_f

    invoke-virtual {v5, v8}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->setGreen(F)V

    :cond_f
    iget v8, v1, Lcom/agc/util/ImageProcessing;->rgbBlue:F

    cmpl-float v11, v8, v9

    if-eqz v11, :cond_10

    invoke-virtual {v5, v8}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->setBlue(F)V

    :cond_10
    invoke-virtual {v4, v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    invoke-virtual {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->destroy()V

    move v5, v7

    :cond_11
    sget-object v8, Lcom/Globals;->mParameters:Lcom/Parameters;

    iget v11, v1, Lcom/agc/util/ImageProcessing;->sharpness:F

    iput v11, v8, Lcom/Parameters;->sharpness:F

    cmpl-float v8, v11, v9

    if-eqz v8, :cond_12

    new-instance v5, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSharpenFilter;

    invoke-direct {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSharpenFilter;-><init>()V

    iget v8, v1, Lcom/agc/util/ImageProcessing;->sharpness:F

    invoke-virtual {v5, v8}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSharpenFilter;->setSharpness(F)V

    invoke-virtual {v4, v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    invoke-virtual {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSharpenFilter;->destroy()V

    move v5, v7

    :cond_12
    iget v8, v1, Lcom/agc/util/ImageProcessing;->unsharpIntensity:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_13

    new-instance v5, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageUnsharpMaskFilter;

    invoke-direct {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageUnsharpMaskFilter;-><init>()V

    iget v8, v1, Lcom/agc/util/ImageProcessing;->unsharpIntensity:F

    invoke-virtual {v5, v8}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageUnsharpMaskFilter;->setIntensity(F)V

    invoke-virtual {v4, v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    invoke-virtual {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageUnsharpMaskFilter;->destroy()V

    move v5, v7

    :cond_13
    sget-object v8, Lcom/Globals;->mParameters:Lcom/Parameters;

    iget v11, v1, Lcom/agc/util/ImageProcessing;->shadows:F

    iput v11, v8, Lcom/Parameters;->shadows:F

    iget v8, v1, Lcom/agc/util/ImageProcessing;->highlights:F

    cmpl-float v8, v8, v10

    if-nez v8, :cond_14

    cmpl-float v8, v11, v9

    if-eqz v8, :cond_17

    :cond_14
    new-instance v5, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;

    invoke-direct {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;-><init>()V

    iget v8, v1, Lcom/agc/util/ImageProcessing;->highlights:F

    cmpl-float v10, v8, v10

    if-eqz v10, :cond_15

    invoke-virtual {v5, v8}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;->setHighlights(F)V

    :cond_15
    iget v8, v1, Lcom/agc/util/ImageProcessing;->shadows:F

    cmpl-float v10, v8, v9

    if-eqz v10, :cond_16

    invoke-virtual {v5, v8}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;->setShadows(F)V

    :cond_16
    invoke-virtual {v4, v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    invoke-virtual {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowFilter;->destroy()V

    move v5, v7

    :cond_17
    iget v8, v1, Lcom/agc/util/ImageProcessing;->vignetteStart:F

    cmpl-float v8, v8, v9

    if-nez v8, :cond_18

    iget v8, v1, Lcom/agc/util/ImageProcessing;->vignetteEnd:F

    cmpl-float v8, v8, v9

    if-eqz v8, :cond_19

    :cond_18
    new-instance v5, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageVignetteFilter;

    invoke-direct {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageVignetteFilter;-><init>()V

    new-instance v8, Landroid/graphics/PointF;

    const/high16 v9, 0x3f000000    # 0.5f

    invoke-direct {v8, v9, v9}, Landroid/graphics/PointF;-><init>(FF)V

    invoke-virtual {v5, v8}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageVignetteFilter;->setVignetteCenter(Landroid/graphics/PointF;)V

    iget v8, v1, Lcom/agc/util/ImageProcessing;->vignetteStart:F

    invoke-virtual {v5, v8}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageVignetteFilter;->setVignetteStart(F)V

    iget v8, v1, Lcom/agc/util/ImageProcessing;->vignetteEnd:F

    invoke-virtual {v5, v8}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageVignetteFilter;->setVignetteEnd(F)V

    invoke-virtual {v4, v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->addFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    invoke-virtual {v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageVignetteFilter;->destroy()V

    move v5, v7

    :cond_19
    invoke-virtual {v3, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    invoke-virtual {v4}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilterGroup;->destroy()V

    iget-object v4, v1, Lcom/agc/util/ImageProcessing;->imgBitmap:Landroid/graphics/Bitmap;

    if-eqz v5, :cond_1a

    invoke-virtual {v3, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getBitmapWithFilterApplied(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    :cond_1a
    const-string v3, "pref_photo_watermark_key"

    invoke-static {v3}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v7, :cond_23

    const-string v3, "pref_watermark_bg_key"

    sget-object v5, Lcom/agc/util/CardBackgroundColor;->WHITE:Lcom/agc/util/CardBackgroundColor;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/Utils/Pref;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v3, "pref_watermark_title_key"

    invoke-static {v3, v0}, Lcom/Utils/Pref;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v3, "pref_watermark_logo_key"

    invoke-static {v3}, Lcom/Utils/Pref;->getStringValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1c

    :cond_1b
    const-string v3, "agc.png"

    :cond_1c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v8, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v8}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/AGC."

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v8, Lcom/Globals;->GcamVersion:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "/logos/"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v8

    if-nez v8, :cond_1d

    invoke-static {}, Lcom/Globals;->getAppContext()Landroid/content/Context;

    move-result-object v5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "logos/"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Lcom/agc/util/AssetsUtil;->getAssetsFile(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    move-object v9, v3

    goto :goto_1

    :cond_1d
    move-object v9, v5

    :goto_1
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " not exists"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/agc/Log;->e(Ljava/lang/Object;)I

    :cond_1e
    invoke-static {v4}, Lcom/agc/util/ImageUtil;->toAgcBitmap(Landroid/graphics/Bitmap;)Lagc/Bitmap;

    move-result-object v3

    const-string v4, "pref_watermark_type_key"

    invoke-static {v4, v6}, Lcom/Utils/Pref;->MenuValue(Ljava/lang/String;I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    const-string v4, "pref_watermark_time_format_key"

    invoke-static {v4, v0}, Lcom/Utils/Pref;->getStringValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1f

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-static {v4}, Ljava/time/format/DateTimeFormatter;->ofPattern(Ljava/lang/String;)Ljava/time/format/DateTimeFormatter;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/time/LocalDateTime;->format(Ljava/time/format/DateTimeFormatter;)Ljava/lang/String;

    move-result-object v0

    :cond_1f
    invoke-static {v3, v0, v6}, Lagc/Agc;->drawWatermarkV1Bitmap(Lagc/Bitmap;Ljava/lang/String;Z)Lagc/Bitmap;

    move-result-object v0

    goto :goto_3

    :pswitch_1
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_20

    const-string v10, "Bigkaka"

    :cond_20
    move-object/from16 v17, v10

    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    const-string v21, "2"

    const/16 v22, 0x0

    move-object/from16 v16, v3

    invoke-static/range {v16 .. v22}, Lagc/Agc;->drawWatermarkV4Bitmap(Lagc/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lagc/Bitmap;

    move-result-object v0

    goto :goto_3

    :pswitch_2
    const-string v11, ""

    const-string v12, ""

    const/4 v14, 0x0

    move-object v8, v3

    move-object v13, v15

    invoke-static/range {v8 .. v14}, Lagc/Agc;->drawWatermarkV3Bitmap(Lagc/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lagc/Bitmap;

    move-result-object v0

    goto :goto_3

    :pswitch_3
    const-string v0, "5"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "6"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    const-string v0, "7"

    invoke-virtual {v15, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    goto :goto_2

    :cond_21
    sget-object v0, Lcom/agc/util/ContentProviderUtils;->isProUser:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    xor-int/lit8 v11, v0, 0x1

    const-string v12, ""

    const-string v13, ""

    const-string v14, ""

    const/16 v16, 0x0

    move-object v8, v3

    invoke-static/range {v8 .. v16}, Lagc/Agc;->drawWatermarkV2Bitmap(Lagc/Bitmap;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)Lagc/Bitmap;

    move-result-object v0

    goto :goto_3

    :cond_22
    :goto_2
    invoke-static {v3, v10, v15, v6}, Lagc/Agc;->drawWatermarkV6Bitmap(Lagc/Bitmap;Ljava/lang/String;Ljava/lang/String;Z)Lagc/Bitmap;

    move-result-object v0

    :goto_3
    move-object v3, v0

    :goto_4
    invoke-static {v3}, Lcom/agc/util/ImageUtil;->fromAgcBitmap(Lagc/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    goto :goto_5

    :cond_23
    move v7, v5

    :goto_5
    const-string v0, "isFiltered"

    invoke-static {v0, v7}, Lcom/agc/Log;->w(Ljava/lang/Object;Z)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_24

    return-object v2

    :cond_24
    return-object v4

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/agc/Log;->e(Ljava/lang/Object;)I

    return-object v2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public saveImageByLUT(Z)Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lcom/agc/util/ImageProcessing;->imgFile:Ljava/lang/String;

    if-eqz p1, :cond_0

    new-instance p1, Ljava/io/File;

    iget-object v0, p0, Lcom/agc/util/ImageProcessing;->lutFile:Ljava/lang/String;

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/agc/util/ImageProcessing;->imgFile:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v4, "."

    invoke-virtual {p1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v2, v3, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/agc/util/ImageProcessing;->lutIntensity:F

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ".jpg"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p0}, Lcom/agc/util/ImageProcessing;->filterToBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    :cond_1
    iget v1, p0, Lcom/agc/util/ImageProcessing;->quality:I

    invoke-static {p1, v0, v1}, Lcom/agc/util/ImageUtil;->saveBitmapFile(Landroid/graphics/Bitmap;Ljava/lang/String;I)V

    iget-object p1, p0, Lcom/agc/util/ImageProcessing;->imgFile:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/agc/util/ImageProcessing;->imgFile:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/agc/util/ExifInterfaceUtil;->copyExifInterface(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method public setBrightness(F)V
    .locals 0

    iput p1, p0, Lcom/agc/util/ImageProcessing;->brightness:F

    return-void
.end method

.method public setContrast(F)V
    .locals 0

    iput p1, p0, Lcom/agc/util/ImageProcessing;->contrast:F

    return-void
.end method

.method public setExposure(F)V
    .locals 0

    iput p1, p0, Lcom/agc/util/ImageProcessing;->exposure:F

    return-void
.end method

.method public setGamma(F)V
    .locals 0

    iput p1, p0, Lcom/agc/util/ImageProcessing;->gamma:F

    return-void
.end method

.method public setHighlights(F)V
    .locals 0

    iput p1, p0, Lcom/agc/util/ImageProcessing;->highlights:F

    return-void
.end method

.method public setHue(F)V
    .locals 0

    iput p1, p0, Lcom/agc/util/ImageProcessing;->hue:F

    return-void
.end method

.method public setLuminanceThreshold(F)V
    .locals 0

    iput p1, p0, Lcom/agc/util/ImageProcessing;->luminanceThreshold:F

    return-void
.end method

.method public setLutParamters(Ljava/lang/String;F)V
    .locals 1

    iput-object p1, p0, Lcom/agc/util/ImageProcessing;->lutFile:Ljava/lang/String;

    iput p2, p0, Lcom/agc/util/ImageProcessing;->lutIntensity:F

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p2

    const-string v0, ".png"

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/agc/util/ImageUtil;->getBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/agc/util/CubeUtil;->getLutBitMap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    :goto_0
    iput-object p1, p0, Lcom/agc/util/ImageProcessing;->lutBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setRgbBlue(F)V
    .locals 0

    iput p1, p0, Lcom/agc/util/ImageProcessing;->rgbBlue:F

    return-void
.end method

.method public setRgbGreen(F)V
    .locals 0

    iput p1, p0, Lcom/agc/util/ImageProcessing;->rgbGreen:F

    return-void
.end method

.method public setRgbRed(F)V
    .locals 0

    iput p1, p0, Lcom/agc/util/ImageProcessing;->rgbRed:F

    return-void
.end method

.method public setSaturation(F)V
    .locals 0

    iput p1, p0, Lcom/agc/util/ImageProcessing;->saturation:F

    return-void
.end method

.method public setShadows(F)V
    .locals 0

    iput p1, p0, Lcom/agc/util/ImageProcessing;->shadows:F

    return-void
.end method

.method public setSharpness(F)V
    .locals 0

    iput p1, p0, Lcom/agc/util/ImageProcessing;->sharpness:F

    return-void
.end method

.method public setUnsharpIntensity(F)V
    .locals 0

    iput p1, p0, Lcom/agc/util/ImageProcessing;->unsharpIntensity:F

    return-void
.end method

.method public setVibrance(F)V
    .locals 0

    iput p1, p0, Lcom/agc/util/ImageProcessing;->vibrance:F

    return-void
.end method

.method public setVignetteEnd(F)V
    .locals 0

    iput p1, p0, Lcom/agc/util/ImageProcessing;->vignetteEnd:F

    return-void
.end method

.method public setVignetteStart(F)V
    .locals 0

    iput p1, p0, Lcom/agc/util/ImageProcessing;->vignetteStart:F

    return-void
.end method

.method public setWbTemperature(F)V
    .locals 0

    iput p1, p0, Lcom/agc/util/ImageProcessing;->wbTemperature:F

    return-void
.end method

.method public setWbTint(F)V
    .locals 0

    iput p1, p0, Lcom/agc/util/ImageProcessing;->wbTint:F

    return-void
.end method
