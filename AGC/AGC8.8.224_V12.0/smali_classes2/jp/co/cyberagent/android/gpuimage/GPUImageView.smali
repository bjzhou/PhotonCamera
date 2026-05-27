.class public Ljp/co/cyberagent/android/gpuimage/GPUImageView;
.super Landroid/widget/FrameLayout;
.source "GPUImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;,
        Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;,
        Ljp/co/cyberagent/android/gpuimage/GPUImageView$LoadingView;,
        Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLTextureView;,
        Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLSurfaceView;,
        Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;
    }
.end annotation


# static fields
.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I


# instance fields
.field private filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

.field public forceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

.field private gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

.field private isShowLoading:Z

.field private ratio:F

.field private surfaceType:I

.field private surfaceView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceType:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->isShowLoading:Z

    .line 57
    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->forceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->ratio:F

    .line 65
    invoke-direct {p0, p1, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 69
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceType:I

    .line 55
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->isShowLoading:Z

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->forceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->ratio:F

    .line 70
    invoke-direct {p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method static synthetic access$000(Ljp/co/cyberagent/android/gpuimage/GPUImageView;)Z
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    .prologue
    .line 50
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->isShowLoading:Z

    return v0
.end method

.method static synthetic access$100(Ljp/co/cyberagent/android/gpuimage/GPUImageView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    .prologue
    .line 50
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 74
    if-eqz p2, :cond_0

    .line 75
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Ljp/co/cyberagent/android/gpuimage/R$styleable;->GPUImageView:[I

    invoke-virtual {v1, p2, v2, v3, v3}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 77
    .local v0, "a":Landroid/content/res/TypedArray;
    :try_start_0
    sget v1, Ljp/co/cyberagent/android/gpuimage/R$styleable;->GPUImageView_gpuimage_surface_type:I

    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceType:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceType:I

    .line 78
    sget v1, Ljp/co/cyberagent/android/gpuimage/R$styleable;->GPUImageView_gpuimage_show_loading:I

    iget-boolean v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->isShowLoading:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->isShowLoading:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 83
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_0
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-direct {v1, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    .line 84
    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 85
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLTextureView;

    invoke-direct {v1, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLTextureView;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    .line 86
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    check-cast v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    invoke-virtual {v2, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setGLTextureView(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)V

    .line 91
    :goto_0
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    invoke-virtual {p0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->addView(Landroid/view/View;)V

    .line 92
    return-void

    .line 80
    .restart local v0    # "a":Landroid/content/res/TypedArray;
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    throw v1

    .line 88
    .end local v0    # "a":Landroid/content/res/TypedArray;
    :cond_1
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLSurfaceView;

    invoke-direct {v1, p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$GPUImageGLSurfaceView;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    .line 89
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    check-cast v1, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v2, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setGLSurfaceView(Landroid/opengl/GLSurfaceView;)V

    goto :goto_0
.end method


# virtual methods
.method public capture()Landroid/graphics/Bitmap;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 402
    new-instance v2, Ljava/util/concurrent/Semaphore;

    const/4 v4, 0x0

    invoke-direct {v2, v4}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 404
    .local v2, "waiter":Ljava/util/concurrent/Semaphore;
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    .line 405
    .local v3, "width":I
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 408
    .local v0, "height":I
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v0, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 409
    .local v1, "resultBitmap":Landroid/graphics/Bitmap;
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    new-instance v5, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;

    invoke-direct {v5, p0, v1, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Landroid/graphics/Bitmap;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v4, v5}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 416
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->requestRender()V

    .line 417
    invoke-virtual {v2}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 419
    return-object v1
.end method

.method public capture(II)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 326
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 327
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Do not call this method from the UI thread!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 330
    :cond_0
    new-instance v2, Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    invoke-direct {v2, p1, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;-><init>(II)V

    iput-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->forceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    .line 332
    new-instance v1, Ljava/util/concurrent/Semaphore;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/Semaphore;-><init>(I)V

    .line 335
    .local v1, "waiter":Ljava/util/concurrent/Semaphore;
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    new-instance v3, Ljp/co/cyberagent/android/gpuimage/GPUImageView$1;

    invoke-direct {v3, p0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$1;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 347
    new-instance v2, Ljp/co/cyberagent/android/gpuimage/GPUImageView$2;

    invoke-direct {v2, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$2;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;)V

    invoke-virtual {p0, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->post(Ljava/lang/Runnable;)Z

    .line 359
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 362
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    new-instance v3, Ljp/co/cyberagent/android/gpuimage/GPUImageView$3;

    invoke-direct {v3, p0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$3;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Ljava/util/concurrent/Semaphore;)V

    invoke-virtual {v2, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->runOnGLThread(Ljava/lang/Runnable;)V

    .line 368
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->requestRender()V

    .line 369
    invoke-virtual {v1}, Ljava/util/concurrent/Semaphore;->acquire()V

    .line 370
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->capture()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 373
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    const/4 v2, 0x0

    iput-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->forceSize:Ljp/co/cyberagent/android/gpuimage/GPUImageView$Size;

    .line 374
    new-instance v2, Ljp/co/cyberagent/android/gpuimage/GPUImageView$4;

    invoke-direct {v2, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$4;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;)V

    invoke-virtual {p0, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->post(Ljava/lang/Runnable;)Z

    .line 380
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->requestRender()V

    .line 382
    iget-boolean v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->isShowLoading:Z

    if-eqz v2, :cond_1

    .line 383
    new-instance v2, Ljp/co/cyberagent/android/gpuimage/GPUImageView$5;

    invoke-direct {v2, p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$5;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {p0, v2, v4, v5}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 392
    :cond_1
    return-object v0
.end method

.method public getFilter()Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
    .locals 1

    .prologue
    .line 243
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    return-object v0
.end method

.method public getGPUImage()Ljp/co/cyberagent/android/gpuimage/GPUImage;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    .line 96
    iget v6, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->ratio:F

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_1

    .line 97
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 98
    .local v5, "width":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 102
    .local v0, "height":I
    int-to-float v6, v5

    iget v7, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->ratio:F

    div-float/2addr v6, v7

    int-to-float v7, v0

    cmpg-float v6, v6, v7

    if-gez v6, :cond_0

    .line 103
    move v3, v5

    .line 104
    .local v3, "newWidth":I
    int-to-float v6, v5

    iget v7, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->ratio:F

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 110
    .local v1, "newHeight":I
    :goto_0
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    .line 111
    .local v4, "newWidthSpec":I
    invoke-static {v1, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 112
    .local v2, "newHeightSpec":I
    invoke-super {p0, v4, v2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 116
    .end local v0    # "height":I
    .end local v1    # "newHeight":I
    .end local v2    # "newHeightSpec":I
    .end local v3    # "newWidth":I
    .end local v4    # "newWidthSpec":I
    .end local v5    # "width":I
    :goto_1
    return-void

    .line 106
    .restart local v0    # "height":I
    .restart local v5    # "width":I
    :cond_0
    move v1, v0

    .line 107
    .restart local v1    # "newHeight":I
    int-to-float v6, v0

    iget v7, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->ratio:F

    mul-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .restart local v3    # "newWidth":I
    goto :goto_0

    .line 114
    .end local v0    # "height":I
    .end local v1    # "newHeight":I
    .end local v3    # "newWidth":I
    .end local v5    # "width":I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto :goto_1
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_1

    .line 427
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onPause()V

    .line 431
    :cond_0
    :goto_0
    return-void

    .line 428
    :cond_1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    if-eqz v0, :cond_0

    .line 429
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->onPause()V

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 437
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_1

    .line 438
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->onResume()V

    .line 442
    :cond_0
    :goto_0
    return-void

    .line 439
    :cond_1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->onResume()V

    goto :goto_0
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_1

    .line 275
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 279
    :cond_0
    :goto_0
    return-void

    .line 276
    :cond_1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    if-eqz v0, :cond_0

    .line 277
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->requestRender()V

    goto :goto_0
.end method

.method public saveToPictures(Ljava/lang/String;Ljava/lang/String;IILjp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V
    .locals 7
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "width"    # I
    .param p4, "height"    # I
    .param p5, "listener"    # Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;

    .prologue
    .line 313
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Ljava/lang/String;Ljava/lang/String;IILjp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 314
    return-void
.end method

.method public saveToPictures(Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V
    .locals 3
    .param p1, "folderName"    # Ljava/lang/String;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "listener"    # Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;

    .prologue
    .line 294
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;

    invoke-direct {v0, p0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Ljava/lang/String;Ljava/lang/String;Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 295
    return-void
.end method

.method public setBackgroundColor(FFF)V
    .locals 1
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F

    .prologue
    .line 176
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setBackgroundColor(FFF)V

    .line 177
    return-void
.end method

.method public setFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V
    .locals 1
    .param p1, "filter"    # Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    .prologue
    .line 232
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->filter:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    .line 233
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setFilter(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;)V

    .line 234
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->requestRender()V

    .line 235
    return-void
.end method

.method public setImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 252
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setImage(Landroid/graphics/Bitmap;)V

    .line 253
    return-void
.end method

.method public setImage(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 261
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setImage(Landroid/net/Uri;)V

    .line 262
    return-void
.end method

.method public setImage(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;

    .prologue
    .line 270
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setImage(Ljava/io/File;)V

    .line 271
    return-void
.end method

.method public setRatio(F)V
    .locals 1
    .param p1, "ratio"    # F

    .prologue
    .line 202
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->ratio:F

    .line 203
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 204
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->deleteImage()V

    .line 205
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .param p1, "renderMode"    # I

    .prologue
    .line 193
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Landroid/opengl/GLSurfaceView;

    if-eqz v0, :cond_1

    .line 194
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    check-cast v0, Landroid/opengl/GLSurfaceView;

    invoke-virtual {v0, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    instance-of v0, v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->surfaceView:Landroid/view/View;

    check-cast v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->setRenderMode(I)V

    goto :goto_0
.end method

.method public setRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;)V
    .locals 1
    .param p1, "rotation"    # Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    .prologue
    .line 222
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;)V

    .line 223
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->requestRender()V

    .line 224
    return-void
.end method

.method public setScaleType(Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;)V
    .locals 1
    .param p1, "scaleType"    # Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;

    .prologue
    .line 213
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setScaleType(Ljp/co/cyberagent/android/gpuimage/GPUImage$ScaleType;)V

    .line 214
    return-void
.end method

.method public setUpCamera(Landroid/hardware/Camera;)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 137
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setUpCamera(Landroid/hardware/Camera;)V

    .line 138
    return-void
.end method

.method public setUpCamera(Landroid/hardware/Camera;IZZ)V
    .locals 1
    .param p1, "camera"    # Landroid/hardware/Camera;
    .param p2, "degrees"    # I
    .param p3, "flipHorizontal"    # Z
    .param p4, "flipVertical"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1, p2, p3, p4}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->setUpCamera(Landroid/hardware/Camera;IZZ)V

    .line 155
    return-void
.end method

.method public updatePreviewFrame([BII)V
    .locals 1
    .param p1, "data"    # [B
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 165
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->gpuImage:Ljp/co/cyberagent/android/gpuimage/GPUImage;

    invoke-virtual {v0, p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GPUImage;->updatePreviewFrame([BII)V

    .line 166
    return-void
.end method
