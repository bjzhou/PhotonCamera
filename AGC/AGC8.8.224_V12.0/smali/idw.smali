.class public final Lidw;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;
.implements Landroid/view/View$OnLayoutChangeListener;
.implements Lidr;


# instance fields
.field private final a:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final b:Landroid/view/TextureView;

.field private final c:Landroid/view/WindowManager;

.field private final d:Landroid/view/TextureView$SurfaceTextureListener;

.field private final e:Ljava/util/ArrayList;

.field private final f:Lhyy;

.field private g:I

.field private h:I

.field private i:Z

.field private final j:Landroid/graphics/RectF;

.field private k:I

.field private l:Landroid/view/Surface;

.field private m:Landroid/graphics/SurfaceTexture;


# direct methods
.method public constructor <init>(Landroidx/constraintlayout/widget/ConstraintLayout;Lhyy;Landroid/view/WindowManager;Landroid/view/TextureView$SurfaceTextureListener;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lidw;->e:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lidw;->g:I

    iput v0, p0, Lidw;->h:I

    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lidw;->j:Landroid/graphics/RectF;

    const/4 v0, -0x1

    iput v0, p0, Lidw;->k:I

    const/4 v0, 0x0

    iput-object v0, p0, Lidw;->l:Landroid/view/Surface;

    iput-object v0, p0, Lidw;->m:Landroid/graphics/SurfaceTexture;

    iput-object p1, p0, Lidw;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {p1, p0}, Landroidx/constraintlayout/widget/ConstraintLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    new-instance v0, Landroid/view/TextureView;

    invoke-virtual {p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/view/TextureView;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Ljvd;->C(Landroid/view/View;)V

    iput-object v0, p0, Lidw;->b:Landroid/view/TextureView;

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setId(I)V

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    iput-object p3, p0, Lidw;->c:Landroid/view/WindowManager;

    iput-object p2, p0, Lidw;->f:Lhyy;

    iput-object p4, p0, Lidw;->d:Landroid/view/TextureView$SurfaceTextureListener;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lidw;->b:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getHeight()I

    move-result v0

    return v0
.end method

.method public final b()I
    .locals 1

    iget-object v0, p0, Lidw;->b:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->getWidth()I

    move-result v0

    return v0
.end method

.method public final c(Limc;)Lmqp;
    .locals 6

    iget-object v0, p0, Lidw;->b:Landroid/view/TextureView;

    if-nez v0, :cond_0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    new-instance v2, Landroid/graphics/RectF;

    iget v3, p0, Lidw;->g:I

    int-to-float v3, v3

    iget v4, p0, Lidw;->h:I

    int-to-float v4, v4

    const/4 v5, 0x0

    invoke-direct {v2, v5, v5, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    iget-object v3, p0, Lidw;->b:Landroid/view/TextureView;

    invoke-virtual {v3, v1}, Landroid/view/TextureView;->getTransform(Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    move-object v1, v2

    :goto_0
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-int v1, v1

    const/4 v3, 0x2

    div-int/2addr v2, v3

    if-lez v2, :cond_2

    div-int/2addr v1, v3

    if-gtz v1, :cond_1

    goto :goto_1

    :cond_1
    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/view/Surface;

    invoke-virtual {v0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v0

    invoke-direct {v2, v0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    monitor-enter p1

    :try_start_0
    iget-object v0, p1, Limc;->a:Landroid/os/Handler;

    invoke-static {v2, v1, p1, v0}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    invoke-virtual {p1}, Limc;->b()V

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v3}, Lihc;->b(Landroid/graphics/Bitmap;I)Lihc;

    move-result-object p1

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    goto :goto_2

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :goto_1
    sget-object p1, Lmpx;->a:Lmpx;

    :goto_2
    return-object p1
.end method

.method public final d()Lnou;
    .locals 3

    iget-object v0, p0, Lidw;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lidw;->b:Landroid/view/TextureView;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout;->addView(Landroid/view/View;I)V

    const/4 v0, 0x0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lnou;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "Last Create Synchronization has not finished yet."

    invoke-static {v0, v1}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v0, p0, Lidw;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lidw;->b:Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/ConstraintLayout;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-static {v0}, Lnsy;->B(Ljava/lang/Object;)Lnou;

    move-result-object v0

    return-object v0
.end method

.method public final f()V
    .locals 4

    iget-object v0, p0, Lidw;->b:Landroid/view/TextureView;

    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setTransform(Landroid/graphics/Matrix;)V

    iget-object v0, p0, Lidw;->j:Landroid/graphics/RectF;

    iget v1, p0, Lidw;->g:I

    int-to-float v1, v1

    iget v2, p0, Lidw;->h:I

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lidw;->e:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lidw;->b:Landroid/view/TextureView;

    new-instance v2, Licv;

    const/4 v3, 0x2

    invoke-direct {v2, v0, v3}, Licv;-><init>(Ljava/util/List;I)V

    invoke-virtual {v1, v2}, Landroid/view/TextureView;->post(Ljava/lang/Runnable;)Z

    iget v0, p0, Lidw;->g:I

    if-lez v0, :cond_0

    iget v0, p0, Lidw;->h:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lidw;->f:Lhyy;

    invoke-virtual {v0}, Lhyy;->b()Lcom/google/android/apps/camera/ui/views/MainActivityLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/apps/camera/ui/views/MainActivityLayout;->h()V

    :cond_0
    return-void
.end method

.method public final g()V
    .locals 1

    iget-object v0, p0, Lidw;->b:Landroid/view/TextureView;

    invoke-virtual {v0}, Landroid/view/TextureView;->requestLayout()V

    return-void
.end method

.method public final h(Landroid/view/View$OnLayoutChangeListener;)V
    .locals 0

    return-void
.end method

.method public final onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    iget-object p1, p0, Lidw;->b:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/view/TextureView;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-object p1, p0, Lidw;->f:Lhyy;

    invoke-virtual {p1}, Lhyy;->c()Z

    move-result p1

    iget-object p2, p0, Lidw;->c:Landroid/view/WindowManager;

    invoke-static {p2}, Lgfp;->c(Landroid/view/WindowManager;)I

    move-result p2

    iget p3, p0, Lidw;->g:I

    if-ne p3, p4, :cond_2

    iget p3, p0, Lidw;->h:I

    if-ne p3, p5, :cond_2

    iget p3, p0, Lidw;->k:I

    if-ne p3, p2, :cond_2

    iget-boolean p3, p0, Lidw;->i:Z

    if-eq p3, p1, :cond_1

    goto :goto_0

    :cond_1
    return-void

    :cond_2
    :goto_0
    iput p4, p0, Lidw;->g:I

    iput p5, p0, Lidw;->h:I

    iput p2, p0, Lidw;->k:I

    iput-boolean p1, p0, Lidw;->i:Z

    return-void
.end method

.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    iput-object v0, p0, Lidw;->l:Landroid/view/Surface;

    iput-object p1, p0, Lidw;->m:Landroid/graphics/SurfaceTexture;

    iget-object v0, p0, Lidw;->d:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    iget-object v0, p0, Lidw;->d:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z

    iget-object p1, p0, Lidw;->l:Landroid/view/Surface;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    const/4 p1, 0x0

    iput-object p1, p0, Lidw;->l:Landroid/view/Surface;

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    iget-object v0, p0, Lidw;->d:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/TextureView$SurfaceTextureListener;->onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V

    return-void
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 1

    iget-object v0, p0, Lidw;->d:Landroid/view/TextureView$SurfaceTextureListener;

    check-cast v0, Lcie;

    iput-object p1, v0, Lcie;->t:Landroid/graphics/SurfaceTexture;

    return-void
.end method
