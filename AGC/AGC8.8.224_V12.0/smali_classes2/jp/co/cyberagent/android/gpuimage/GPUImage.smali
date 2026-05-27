.class public Ljp/co/cyberagent/android/gpuimage/GPUImage;
.super Ljava/lang/Object;
.source "GPUImage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/cyberagent/android/gpuimage/GPUImage$ResponseListener;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageTask;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageUriTask;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;,
        Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;
    }
.end annotation


# static fields
.field static final SURFACE_TYPE_SURFACE_VIEW:I = 0x0

.field static final SURFACE_TYPE_TEXTURE_VIEW:I = 0x1


# instance fields
.field private final context:Landroid/content/Context;

.field private currentBitmap:Landroid/graphics/Bitmap;

.field private filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

.field private glSurfaceView:Landroid/opengl/GLSurfaceView;

.field private glTextureView:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

.field private final renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

.field private scaleHeight:I

.field private scaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

.field private scaleWidth:I

.field private surfaceType:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->surfaceType:I

    .line 69
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;->CENTER_CROP:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->scaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    .line 78
    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->supportsOpenGLES2(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "OpenGL ES 2.0 is not supported on this phone."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_0
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->context:Landroid/content/Context;

    .line 83
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-direct {v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    .line 84
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-direct {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;-><init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    .line 85
    return-void
.end method

.method static synthetic access$000(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImage;

    .prologue
    .line 55
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    return-object v0
.end method

.method static synthetic access$100(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImage;

    .prologue
    .line 55
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImage;

    .prologue
    .line 55
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    return-object v0
.end method

.method static synthetic access$500(Ljp/co/cyberagent/android/gpuimage/GPUImage;)I
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImage;

    .prologue
    .line 55
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getOutputWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljp/co/cyberagent/android/gpuimage/GPUImage;)I
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImage;

    .prologue
    .line 55
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getOutputHeight()I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljp/co/cyberagent/android/gpuimage/GPUImage;)Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImage;

    .prologue
    .line 55
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->scaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    return-object v0
.end method

.method static synthetic access$802(Ljp/co/cyberagent/android/gpuimage/GPUImage;I)I
    .locals 0
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImage;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->scaleWidth:I

    return p1
.end method

.method static synthetic access$902(Ljp/co/cyberagent/android/gpuimage/GPUImage;I)I
    .locals 0
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImage;
    .param p1, "x1"    # I

    .prologue
    .line 55
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->scaleHeight:I

    return p1
.end method

.method public static getBitmapForMultipleFilters(Landroid/graphics/Bitmap;Ljava/util/List;Ljp/co/cyberagent/android/gpuimage/GPUImage$ResponseListener;)V
    .locals 5
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/util/List",
            "<",
            "Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;",
            ">;",
            "Ljp/co/cyberagent/android/gpuimage/GPUImage$ResponseListener",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "filters":Ljava/util/List;, "Ljava/util/List<Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;>;"
    .local p2, "listener":Ljp/co/cyberagent/android/gpuimage/GPUImage$ResponseListener;, "Ljp/co/cyberagent/android/gpuimage/GPUImage$ResponseListener<Landroid/graphics/Bitmap;>;"
    const/4 v4, 0x0

    .line 411
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 426
    :goto_0
    return-void

    .line 414
    :cond_0
    new-instance v2, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-direct {v2, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;-><init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    .line 415
    .local v2, "renderer":Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;
    invoke-virtual {v2, p0, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 416
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-direct {v0, v3, v4}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;-><init>(II)V

    .line 417
    .local v0, "buffer":Ljp/co/cyberagent/android/gpuimage/PixelBuffer;
    invoke-virtual {v0, v2}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 419
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    .line 420
    .local v1, "filter":Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
    invoke-virtual {v2, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    .line 421
    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-interface {p2, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImage$ResponseListener;->response(Ljava/lang/Object;)V

    .line 422
    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->destroy()V

    goto :goto_1

    .line 424
    .end local v1    # "filter":Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
    :cond_1
    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->deleteImage()V

    .line 425
    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->destroy()V

    goto :goto_0
.end method

.method private getOutputHeight()I
    .locals 4

    .prologue
    .line 484
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->getFrameHeight()I

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->getFrameHeight()I

    move-result v2

    .line 492
    :goto_0
    return v2

    .line 486
    :cond_0
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 487
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    goto :goto_0

    .line 489
    :cond_1
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->context:Landroid/content/Context;

    const-string v3, "window"

    .line 490
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 491
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 492
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v2

    goto :goto_0
.end method

.method private getOutputWidth()I
    .locals 4

    .prologue
    .line 471
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->getFrameWidth()I

    move-result v2

    if-eqz v2, :cond_0

    .line 472
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->getFrameWidth()I

    move-result v2

    .line 479
    :goto_0
    return v2

    .line 473
    :cond_0
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    .line 474
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    goto :goto_0

    .line 476
    :cond_1
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->context:Landroid/content/Context;

    const-string v3, "window"

    .line 477
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 478
    .local v1, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 479
    .local v0, "display":Landroid/view/Display;
    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v2

    goto :goto_0
.end method

.method private getPath(Landroid/net/Uri;)Ljava/lang/String;
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v3, 0x0

    .line 311
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v1, v2, v0

    .line 314
    .local v2, "projection":[Ljava/lang/String;
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    .line 315
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 316
    .local v6, "cursor":Landroid/database/Cursor;
    const/4 v7, 0x0

    .line 317
    .local v7, "path":Ljava/lang/String;
    if-nez v6, :cond_0

    move-object v8, v7

    .line 325
    .end local v7    # "path":Ljava/lang/String;
    .local v8, "path":Ljava/lang/String;
    :goto_0
    return-object v3

    .line 320
    .end local v8    # "path":Ljava/lang/String;
    .restart local v7    # "path":Ljava/lang/String;
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 321
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v9

    .line 322
    .local v9, "pathIndex":I
    invoke-interface {v6, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 324
    .end local v9    # "pathIndex":I
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v8, v7

    .end local v7    # "path":Ljava/lang/String;
    .restart local v8    # "path":Ljava/lang/String;
    move-object v3, v7

    .line 325
    goto :goto_0
.end method

.method private supportsOpenGLES2(Landroid/content/Context;)Z
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    const-string v2, "activity"

    .line 95
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 97
    .local v0, "activityManager":Landroid/app/ActivityManager;
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;

    move-result-object v1

    .line 98
    .local v1, "configurationInfo":Landroid/content/pm/ConfigurationInfo;
    iget v2, v1, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    const/high16 v3, 0x20000

    if-lt v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method


# virtual methods
.method public deleteImage()V
    .locals 1

    .prologue
    .line 287
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->deleteImage()V

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->currentBitmap:Landroid/graphics/Bitmap;

    .line 289
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V

    .line 290
    return-void
.end method

.method public getBitmapWithFilterApplied()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 334
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getBitmapWithFilterApplied(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapWithFilterApplied(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 344
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->getBitmapWithFilterApplied(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getBitmapWithFilterApplied(Landroid/graphics/Bitmap;Z)Landroid/graphics/Bitmap;
    .locals 7
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "recycle"    # Z

    .prologue
    .line 355
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    if-nez v4, :cond_0

    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glTextureView:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    if-eqz v4, :cond_1

    .line 356
    :cond_0
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v4}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->deleteImage()V

    .line 357
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    new-instance v5, Ljp/co/cyberagent/android/gpuimage/GPUImage$1;

    invoke-direct {v5, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage$1;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;)V

    invoke-virtual {v4, v5}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runOnDraw(Ljava/lang/Runnable;)V

    .line 367
    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    monitor-enter v5

    .line 368
    :try_start_0
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 370
    :try_start_1
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 374
    :goto_0
    :try_start_2
    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 377
    :cond_1
    new-instance v2, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-direct {v2, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;-><init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    .line 378
    .local v2, "renderer":Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;
    sget-object v4, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    .line 379
    invoke-virtual {v5}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->isFlippedHorizontally()Z

    move-result v5

    iget-object v6, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v6}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->isFlippedVertically()Z

    move-result v6

    .line 378
    invoke-virtual {v2, v4, v5, v6}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;ZZ)V

    .line 380
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->scaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    invoke-virtual {v2, v4}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setScaleType(Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;)V

    .line 381
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    invoke-direct {v0, v4, v5}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;-><init>(II)V

    .line 382
    .local v0, "buffer":Ljp/co/cyberagent/android/gpuimage/PixelBuffer;
    invoke-virtual {v0, v2}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 383
    invoke-virtual {v2, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 384
    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v3

    .line 385
    .local v3, "result":Landroid/graphics/Bitmap;
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-virtual {v4}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->destroy()V

    .line 386
    invoke-virtual {v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->deleteImage()V

    .line 387
    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/PixelBuffer;->destroy()V

    .line 389
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-virtual {v4, v5}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    .line 390
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->currentBitmap:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_2

    .line 391
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->currentBitmap:Landroid/graphics/Bitmap;

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 393
    :cond_2
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V

    .line 395
    return-object v3

    .line 371
    .end local v0    # "buffer":Ljp/co/cyberagent/android/gpuimage/PixelBuffer;
    .end local v2    # "renderer":Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;
    .end local v3    # "result":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 372
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 374
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4
.end method

.method public getScaleSize()[I
    .locals 3

    .prologue
    .line 262
    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->scaleWidth:I

    aput v2, v0, v1

    const/4 v1, 0x1

    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->scaleHeight:I

    aput v2, v0, v1

    return-object v0
.end method

.method public requestRender()V
    .locals 2

    .prologue
    .line 148
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->surfaceType:I

    if-nez v0, :cond_1

    .line 149
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 157
    :cond_0
    :goto_0
    return-void

    .line 152
    :cond_1
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->surfaceType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 153
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glTextureView:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glTextureView:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->requestRender()V

    goto :goto_0
.end method

.method runOnGLThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 467
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->runOnDrawEnd(Ljava/lang/Runnable;)V

    .line 468
    return-void
.end method

.method public saveToPictures(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;)V
    .locals 6
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "folderName"    # Ljava/lang/String;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "listener"    # Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;

    .prologue
    .line 458
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 459
    return-void
.end method

.method public saveToPictures(Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;)V
    .locals 1
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "listener"    # Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;

    .prologue
    .line 441
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->currentBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->saveToPictures(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;)V

    .line 442
    return-void
.end method

.method public setBackgroundColor(FFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F

    .prologue
    .line 141
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setBackgroundColor(FFF)V

    .line 142
    return-void
.end method

.method public setFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V
    .locals 2
    .param p1, "filter"    # Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    .prologue
    .line 214
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    .line 215
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    .line 216
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V

    .line 217
    return-void
.end method

.method public setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V
    .locals 7
    .param p1, "view"    # Landroid/opengl/GLSurfaceView;

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 107
    iput v6, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->surfaceType:I

    .line 108
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    .line 109
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/opengl/GLSurfaceView;->setEGLContextClientVersion(I)V

    .line 110
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    const/16 v5, 0x10

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Landroid/opengl/GLSurfaceView;->setEGLConfigChooser(IIIIII)V

    .line 111
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 112
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 113
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, v6}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 114
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 115
    return-void
.end method

.method public setGLTextureView(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)V
    .locals 7
    .param p1, "view"    # Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    .prologue
    const/4 v6, 0x0

    const/16 v1, 0x8

    .line 123
    const/4 v0, 0x1

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->surfaceType:I

    .line 124
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glTextureView:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    .line 125
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glTextureView:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->setEGLContextClientVersion(I)V

    .line 126
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glTextureView:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    const/16 v5, 0x10

    move v2, v1

    move v3, v1

    move v4, v1

    invoke-virtual/range {v0 .. v6}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->setEGLConfigChooser(IIIIII)V

    .line 127
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glTextureView:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    invoke-virtual {v0, v6}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->setOpaque(Z)V

    .line 128
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glTextureView:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->setRenderer(Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;)V

    .line 129
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glTextureView:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    invoke-virtual {v0, v6}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->setRenderMode(I)V

    .line 130
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glTextureView:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->requestRender()V

    .line 131
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 225
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->currentBitmap:Landroid/graphics/Bitmap;

    .line 226
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V

    .line 227
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V

    .line 228
    return-void
.end method

.method public setImage(Landroid/net/Uri;)V
    .locals 2
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 298
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageUriTask;

    invoke-direct {v0, p0, p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageUriTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;Ljp/co/cyberagent/android/gpuimage/GPUImage;Landroid/net/Uri;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageUriTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 299
    return-void
.end method

.method public setImage(Ljava/io/File;)V
    .locals 2
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 307
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;

    invoke-direct {v0, p0, p0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImage;Ljp/co/cyberagent/android/gpuimage/GPUImage;Ljava/io/File;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$LoadImageFileTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 308
    return-void
.end method

.method public setRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;)V
    .locals 1
    .param p1, "rotation"    # Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    .prologue
    .line 271
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;)V

    .line 272
    return-void
.end method

.method public setRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;ZZ)V
    .locals 1
    .param p1, "rotation"    # Ljp/co/cyberagent/android/gpuimage/util/Rotation;
    .param p2, "flipHorizontal"    # Z
    .param p3, "flipVertical"    # Z

    .prologue
    .line 280
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;ZZ)V

    .line 281
    return-void
.end method

.method public setScaleType(Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    .prologue
    .line 248
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->scaleType:Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    .line 249
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setScaleType(Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;)V

    .line 250
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->deleteImage()V

    .line 251
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->currentBitmap:Landroid/graphics/Bitmap;

    .line 252
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->requestRender()V

    .line 253
    return-void
.end method

.method public setUpCamera(Landroid/hardware/Camera;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 169
    invoke-virtual {p0, p1, v0, v0, v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setUpCamera(Landroid/hardware/Camera;IZZ)V

    .line 170
    return-void
.end method

.method public setUpCamera(Landroid/hardware/Camera;IZZ)V
    .locals 3
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "degrees"    # I
    .param p3, "flipHorizontal"    # Z
    .param p4, "flipVertical"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x1

    .line 186
    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->surfaceType:I

    if-nez v1, :cond_1

    .line 187
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glSurfaceView:Landroid/opengl/GLSurfaceView;

    invoke-virtual {v1, v2}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 191
    :cond_0
    :goto_0
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v1, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setUpSurfaceTexture(Landroid/hardware/Camera;)V

    .line 192
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    .line 193
    .local v0, "rotation":Ljp/co/cyberagent/android/gpuimage/util/Rotation;
    sparse-switch p2, :sswitch_data_0

    .line 204
    :goto_1
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v1, v0, p3, p4}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setRotationCamera(Ljp/co/cyberagent/android/gpuimage/util/Rotation;ZZ)V

    .line 205
    return-void

    .line 188
    .end local v0    # "rotation":Ljp/co/cyberagent/android/gpuimage/util/Rotation;
    :cond_1
    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->surfaceType:I

    if-ne v1, v2, :cond_0

    .line 189
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->glTextureView:Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    invoke-virtual {v1, v2}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->setRenderMode(I)V

    goto :goto_0

    .line 195
    .restart local v0    # "rotation":Ljp/co/cyberagent/android/gpuimage/util/Rotation;
    :sswitch_0
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_90:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    .line 196
    goto :goto_1

    .line 198
    :sswitch_1
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_180:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    .line 199
    goto :goto_1

    .line 201
    :sswitch_2
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->ROTATION_270:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    goto :goto_1

    .line 193
    nop

    :sswitch_data_0
    .sparse-switch
        0x5a -> :sswitch_0
        0xb4 -> :sswitch_1
        0x10e -> :sswitch_2
    .end sparse-switch
.end method

.method public updatePreviewFrame([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 238
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage;->renderer:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->onPreviewFrame([BII)V

    .line 239
    return-void
.end method
