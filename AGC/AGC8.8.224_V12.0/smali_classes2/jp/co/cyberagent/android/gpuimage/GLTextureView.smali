.class public Ljp/co/cyberagent/android/gpuimage/GLTextureView;
.super Landroid/view/TextureView;
.source "GLTextureView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$LogWriter;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$EglHelper;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$SimpleEGLConfigChooser;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$BaseConfigChooser;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLConfigChooser;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$DefaultWindowSurfaceFactory;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLWindowSurfaceFactory;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$DefaultContextFactory;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLContextFactory;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;,
        Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLWrapper;
    }
.end annotation


# static fields
.field public static final DEBUG_CHECK_GL_ERROR:I = 0x1

.field public static final DEBUG_LOG_GL_CALLS:I = 0x2

.field private static final LOG_ATTACH_DETACH:Z = false

.field private static final LOG_EGL:Z = false

.field private static final LOG_PAUSE_RESUME:Z = false

.field private static final LOG_RENDERER:Z = false

.field private static final LOG_RENDERER_DRAW_FRAME:Z = false

.field private static final LOG_SURFACE:Z = false

.field private static final LOG_THREADS:Z = false

.field public static final RENDERMODE_CONTINUOUSLY:I = 0x1

.field public static final RENDERMODE_WHEN_DIRTY:I

.field private static final TAG:Ljava/lang/String;

.field private static final glThreadManager:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;


# instance fields
.field private debugFlags:I

.field private detached:Z

.field private eglConfigChooser:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLConfigChooser;

.field private eglContextClientVersion:I

.field private eglContextFactory:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLContextFactory;

.field private eglWindowSurfaceFactory:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLWindowSurfaceFactory;

.field private glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

.field private glWrapper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLWrapper;

.field private final mThisWeakRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Ljp/co/cyberagent/android/gpuimage/GLTextureView;",
            ">;"
        }
    .end annotation
.end field

.field private preserveEGLContextOnPause:Z

.field private renderer:Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;

.field private surfaceTextureListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/TextureView$SurfaceTextureListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-class v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->TAG:Ljava/lang/String;

    .line 1795
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;-><init>(Ljp/co/cyberagent/android/gpuimage/GLTextureView$1;)V

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThreadManager:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 94
    invoke-direct {p0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    .line 1797
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 1808
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceTextureListeners:Ljava/util/List;

    .line 95
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->init()V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 103
    invoke-direct {p0, p1, p2}, Landroid/view/TextureView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 1797
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    .line 1808
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceTextureListeners:Ljava/util/List;

    .line 104
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->init()V

    .line 105
    return-void
.end method

.method static synthetic access$1000(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)Z
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    .prologue
    .line 40
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->preserveEGLContextOnPause:Z

    return v0
.end method

.method static synthetic access$1100(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    .prologue
    .line 40
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->renderer:Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;

    return-object v0
.end method

.method static synthetic access$200(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)I
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    .prologue
    .line 40
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglContextClientVersion:I

    return v0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLConfigChooser;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    .prologue
    .line 40
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglConfigChooser:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLConfigChooser;

    return-object v0
.end method

.method static synthetic access$500(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLContextFactory;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    .prologue
    .line 40
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglContextFactory:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLContextFactory;

    return-object v0
.end method

.method static synthetic access$600(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLWindowSurfaceFactory;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    .prologue
    .line 40
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglWindowSurfaceFactory:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLWindowSurfaceFactory;

    return-object v0
.end method

.method static synthetic access$700(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLWrapper;
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    .prologue
    .line 40
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glWrapper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLWrapper;

    return-object v0
.end method

.method static synthetic access$800(Ljp/co/cyberagent/android/gpuimage/GLTextureView;)I
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/GLTextureView;

    .prologue
    .line 40
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->debugFlags:I

    return v0
.end method

.method static synthetic access$900()Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThreadManager:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThreadManager;

    return-object v0
.end method

.method private checkRenderThreadState()V
    .locals 2

    .prologue
    .line 1688
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    .line 1689
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setRenderer has already been called for this instance."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1691
    :cond_0
    return-void
.end method

.method private init()V
    .locals 0

    .prologue
    .line 121
    invoke-virtual {p0, p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 122
    return-void
.end method


# virtual methods
.method public addSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/view/TextureView$SurfaceTextureListener;

    .prologue
    .line 494
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceTextureListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 495
    return-void
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 110
    :try_start_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    .line 113
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestExitAndWait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 116
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 118
    return-void

    .line 116
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 117
    throw v0
.end method

.method public getDebugFlags()I
    .locals 1

    .prologue
    .line 162
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->debugFlags:I

    return v0
.end method

.method public getPreserveEGLContextOnPause()Z
    .locals 1

    .prologue
    .line 191
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->preserveEGLContextOnPause:Z

    return v0
.end method

.method public getRenderMode()I
    .locals 1

    .prologue
    .line 376
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->getRenderMode()I

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 453
    invoke-super {p0}, Landroid/view/TextureView;->onAttachedToWindow()V

    .line 457
    iget-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->detached:Z

    if-eqz v1, :cond_2

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->renderer:Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;

    if-eqz v1, :cond_2

    .line 458
    const/4 v0, 0x1

    .line 459
    .local v0, "renderMode":I
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    if-eqz v1, :cond_0

    .line 460
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->getRenderMode()I

    move-result v0

    .line 462
    :cond_0
    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v1, v2}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    .line 463
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 464
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v1, v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->setRenderMode(I)V

    .line 466
    :cond_1
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->start()V

    .line 468
    .end local v0    # "renderMode":I
    :cond_2
    const/4 v1, 0x0

    iput-boolean v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->detached:Z

    .line 469
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    if-eqz v0, :cond_0

    .line 482
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestExitAndWait()V

    .line 484
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->detached:Z

    .line 485
    invoke-super {p0}, Landroid/view/TextureView;->onDetachedFromWindow()V

    .line 486
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 490
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    const/4 v1, 0x0

    sub-int v2, p4, p2

    sub-int v3, p5, p3

    invoke-virtual {p0, v0, v1, v2, v3}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    .line 491
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 422
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->onPause()V

    .line 423
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->onResume()V

    .line 434
    return-void
.end method

.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 498
    invoke-virtual {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceCreated(Landroid/graphics/SurfaceTexture;)V

    .line 499
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    .line 501
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceTextureListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView$SurfaceTextureListener;

    .line 502
    .local v0, "l":Landroid/view/TextureView$SurfaceTextureListener;
    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    .line 504
    .end local v0    # "l":Landroid/view/TextureView$SurfaceTextureListener;
    :cond_0
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 515
    invoke-virtual {p0, p1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V

    .line 517
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceTextureListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView$SurfaceTextureListener;

    .line 518
    .local v0, "l":Landroid/view/TextureView$SurfaceTextureListener;
    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    goto :goto_0

    .line 521
    .end local v0    # "l":Landroid/view/TextureView$SurfaceTextureListener;
    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 507
    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceChanged(Landroid/graphics/SurfaceTexture;III)V

    .line 509
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceTextureListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView$SurfaceTextureListener;

    .line 510
    .local v0, "l":Landroid/view/TextureView$SurfaceTextureListener;
    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    goto :goto_0

    .line 512
    .end local v0    # "l":Landroid/view/TextureView$SurfaceTextureListener;
    :cond_0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 3
    .param p1, "surface"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 525
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->requestRender()V

    .line 527
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->surfaceTextureListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/TextureView$SurfaceTextureListener;

    .line 528
    .local v0, "l":Landroid/view/TextureView$SurfaceTextureListener;
    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 530
    .end local v0    # "l":Landroid/view/TextureView$SurfaceTextureListener;
    :cond_0
    return-void
.end method

.method public queueEvent(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 444
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->queueEvent(Ljava/lang/Runnable;)V

    .line 445
    return-void
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->requestRender()V

    .line 388
    return-void
.end method

.method public setDebugFlags(I)V
    .locals 0
    .param p1, "debugFlags"    # I

    .prologue
    .line 153
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->debugFlags:I

    .line 154
    return-void
.end method

.method public setEGLConfigChooser(IIIIII)V
    .locals 8
    .param p1, "redSize"    # I
    .param p2, "greenSize"    # I
    .param p3, "blueSize"    # I
    .param p4, "alphaSize"    # I
    .param p5, "depthSize"    # I
    .param p6, "stencilSize"    # I

    .prologue
    .line 311
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$ComponentSizeChooser;-><init>(Ljp/co/cyberagent/android/gpuimage/GLTextureView;IIIIII)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->setEGLConfigChooser(Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLConfigChooser;)V

    .line 313
    return-void
.end method

.method public setEGLConfigChooser(Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLConfigChooser;)V
    .locals 0
    .param p1, "configChooser"    # Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLConfigChooser;

    .prologue
    .line 277
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->checkRenderThreadState()V

    .line 278
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglConfigChooser:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLConfigChooser;

    .line 279
    return-void
.end method

.method public setEGLConfigChooser(Z)V
    .locals 1
    .param p1, "needDepth"    # Z

    .prologue
    .line 294
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$SimpleEGLConfigChooser;

    invoke-direct {v0, p0, p1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$SimpleEGLConfigChooser;-><init>(Ljp/co/cyberagent/android/gpuimage/GLTextureView;Z)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->setEGLConfigChooser(Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLConfigChooser;)V

    .line 295
    return-void
.end method

.method public setEGLContextClientVersion(I)V
    .locals 0
    .param p1, "version"    # I

    .prologue
    .line 343
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->checkRenderThreadState()V

    .line 344
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglContextClientVersion:I

    .line 345
    return-void
.end method

.method public setEGLContextFactory(Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLContextFactory;)V
    .locals 0
    .param p1, "factory"    # Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLContextFactory;

    .prologue
    .line 247
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->checkRenderThreadState()V

    .line 248
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglContextFactory:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLContextFactory;

    .line 249
    return-void
.end method

.method public setEGLWindowSurfaceFactory(Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLWindowSurfaceFactory;)V
    .locals 0
    .param p1, "factory"    # Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLWindowSurfaceFactory;

    .prologue
    .line 261
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->checkRenderThreadState()V

    .line 262
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglWindowSurfaceFactory:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLWindowSurfaceFactory;

    .line 263
    return-void
.end method

.method public setGLWrapper(Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLWrapper;)V
    .locals 0
    .param p1, "glWrapper"    # Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLWrapper;

    .prologue
    .line 139
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glWrapper:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLWrapper;

    .line 140
    return-void
.end method

.method public setPreserveEGLContextOnPause(Z)V
    .locals 0
    .param p1, "preserveOnPause"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->preserveEGLContextOnPause:Z

    .line 185
    return-void
.end method

.method public setRenderMode(I)V
    .locals 1
    .param p1, "renderMode"    # I

    .prologue
    .line 364
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v0, p1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->setRenderMode(I)V

    .line 365
    return-void
.end method

.method public setRenderer(Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;)V
    .locals 3
    .param p1, "renderer"    # Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;

    .prologue
    const/4 v2, 0x0

    .line 221
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->checkRenderThreadState()V

    .line 222
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglConfigChooser:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLConfigChooser;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$SimpleEGLConfigChooser;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$SimpleEGLConfigChooser;-><init>(Ljp/co/cyberagent/android/gpuimage/GLTextureView;Z)V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglConfigChooser:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLConfigChooser;

    .line 225
    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglContextFactory:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLContextFactory;

    if-nez v0, :cond_1

    .line 226
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$DefaultContextFactory;

    invoke-direct {v0, p0, v2}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$DefaultContextFactory;-><init>(Ljp/co/cyberagent/android/gpuimage/GLTextureView;Ljp/co/cyberagent/android/gpuimage/GLTextureView$1;)V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglContextFactory:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLContextFactory;

    .line 228
    :cond_1
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglWindowSurfaceFactory:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLWindowSurfaceFactory;

    if-nez v0, :cond_2

    .line 229
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$DefaultWindowSurfaceFactory;

    invoke-direct {v0, v2}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$DefaultWindowSurfaceFactory;-><init>(Ljp/co/cyberagent/android/gpuimage/GLTextureView$1;)V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->eglWindowSurfaceFactory:Ljp/co/cyberagent/android/gpuimage/GLTextureView$EGLWindowSurfaceFactory;

    .line 231
    :cond_2
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->renderer:Ljp/co/cyberagent/android/gpuimage/GLTextureView$Renderer;

    .line 232
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->mThisWeakRef:Ljava/lang/ref/WeakReference;

    invoke-direct {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    .line 233
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->start()V

    .line 234
    return-void
.end method

.method public surfaceChanged(Landroid/graphics/SurfaceTexture;III)V
    .locals 1
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;
    .param p2, "format"    # I
    .param p3, "w"    # I
    .param p4, "h"    # I

    .prologue
    .line 412
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v0, p3, p4}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->onWindowResize(II)V

    .line 413
    return-void
.end method

.method public surfaceCreated(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 395
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->surfaceCreated()V

    .line 396
    return-void
.end method

.method public surfaceDestroyed(Landroid/graphics/SurfaceTexture;)V
    .locals 1
    .param p1, "texture"    # Landroid/graphics/SurfaceTexture;

    .prologue
    .line 404
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GLTextureView;->glThread:Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/GLTextureView$GLThread;->surfaceDestroyed()V

    .line 405
    return-void
.end method
