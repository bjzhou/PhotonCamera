.class public Lcom/agc/glide/load/resource/gif/GifDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/resource/gif/GifFrameLoader$FrameCallback;
.implements Landroid/graphics/drawable/Animatable;
.implements Landroidx/vectordrawable/graphics/drawable/Animatable2Compat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;
    }
.end annotation


# static fields
.field private static final GRAVITY:I = 0x77

.field public static final LOOP_FOREVER:I = -0x1

.field public static final LOOP_INTRINSIC:I


# instance fields
.field private animationCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;",
            ">;"
        }
    .end annotation
.end field

.field private applyGravity:Z

.field private destRect:Landroid/graphics/Rect;

.field private isRecycled:Z

.field private isRunning:Z

.field private isStarted:Z

.field private isVisible:Z

.field private loopCount:I

.field private maxLoopCount:I

.field private paint:Landroid/graphics/Paint;

.field private final state:Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/agc/glide/gifdecoder/GifDecoder;Lcom/agc/glide/load/Transformation;IILandroid/graphics/Bitmap;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/agc/glide/gifdecoder/GifDecoder;",
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    new-instance v0, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;

    new-instance v8, Lcom/agc/glide/load/resource/gif/GifFrameLoader;

    invoke-static {p1}, Lcom/agc/glide/Glide;->get(Landroid/content/Context;)Lcom/agc/glide/Glide;

    move-result-object v2

    move-object v1, v8

    move-object v3, p2

    move v4, p4

    move v5, p5

    move-object v6, p3

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;-><init>(Lcom/agc/glide/Glide;Lcom/agc/glide/gifdecoder/GifDecoder;IILcom/agc/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    invoke-direct {v0, v8}, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;-><init>(Lcom/agc/glide/load/resource/gif/GifFrameLoader;)V

    invoke-direct {p0, v0}, Lcom/agc/glide/load/resource/gif/GifDrawable;-><init>(Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/agc/glide/gifdecoder/GifDecoder;Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;Lcom/agc/glide/load/Transformation;IILandroid/graphics/Bitmap;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/agc/glide/gifdecoder/GifDecoder;",
            "Lcom/agc/glide/load/engine/bitmap_recycle/BitmapPool;",
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;II",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/agc/glide/load/resource/gif/GifDrawable;-><init>(Landroid/content/Context;Lcom/agc/glide/gifdecoder/GifDecoder;Lcom/agc/glide/load/Transformation;IILandroid/graphics/Bitmap;)V

    return-void
.end method

.method public constructor <init>(Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;)V
    .locals 1

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->isVisible:Z

    const/4 v0, -0x1

    iput v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    invoke-static {p1}, Lcom/agc/glide/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;

    iput-object p1, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->state:Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;

    return-void
.end method

.method public constructor <init>(Lcom/agc/glide/load/resource/gif/GifFrameLoader;Landroid/graphics/Paint;)V
    .locals 1

    new-instance v0, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;

    invoke-direct {v0, p1}, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;-><init>(Lcom/agc/glide/load/resource/gif/GifFrameLoader;)V

    invoke-direct {p0, v0}, Lcom/agc/glide/load/resource/gif/GifDrawable;-><init>(Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;)V

    iput-object p2, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->paint:Landroid/graphics/Paint;

    return-void
.end method

.method private findCallback()Landroid/graphics/drawable/Drawable$Callback;
    .locals 2

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    :goto_0
    instance-of v1, v0, Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    check-cast v0, Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private getDestRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->destRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->destRect:Landroid/graphics/Rect;

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->destRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method private getPaint()Landroid/graphics/Paint;
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->paint:Landroid/graphics/Paint;

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private notifyAnimationEndToListeners()V
    .locals 3

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->animationCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->animationCallbacks:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;

    invoke-virtual {v2, p0}, Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private resetLoopCount()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->loopCount:I

    return-void
.end method

.method private startRunning()V
    .locals 3

    iget-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->isRecycled:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    const-string v2, "You cannot start a recycled Drawable. Ensure thatyou clear any references to the Drawable when clearing the corresponding request."

    invoke-static {v0, v2}, Lcom/agc/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->state:Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/agc/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->getFrameCount()I

    move-result v0

    if-ne v0, v1, :cond_0

    :goto_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_1

    :cond_0
    iget-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->isRunning:Z

    if-nez v0, :cond_1

    iput-boolean v1, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->isRunning:Z

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->state:Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/agc/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0, p0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->subscribe(Lcom/agc/glide/load/resource/gif/GifFrameLoader$FrameCallback;)V

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private stopRunning()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->isRunning:Z

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->state:Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/agc/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0, p0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->unsubscribe(Lcom/agc/glide/load/resource/gif/GifFrameLoader$FrameCallback;)V

    return-void
.end method


# virtual methods
.method public clearAnimationCallbacks()V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->animationCallbacks:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    iget-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->isRecycled:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->applyGravity:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->getIntrinsicHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {p0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->getDestRect()Landroid/graphics/Rect;

    move-result-object v3

    const/16 v4, 0x77

    invoke-static {v4, v0, v1, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->applyGravity:Z

    :cond_1
    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->state:Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/agc/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->getCurrentFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->getDestRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-direct {p0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->state:Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/agc/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->state:Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;

    return-object v0
.end method

.method public getFirstFrame()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->state:Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/agc/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->getFirstFrame()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getFrameCount()I
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->state:Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/agc/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->getFrameCount()I

    move-result v0

    return v0
.end method

.method public getFrameIndex()I
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->state:Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/agc/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->getCurrentIndex()I

    move-result v0

    return v0
.end method

.method public getFrameTransformation()Lcom/agc/glide/load/Transformation;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->state:Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/agc/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->getFrameTransformation()Lcom/agc/glide/load/Transformation;

    move-result-object v0

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->state:Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/agc/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->getHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->state:Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/agc/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->getWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x2

    return v0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->state:Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/agc/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->getSize()I

    move-result v0

    return v0
.end method

.method public isRecycled()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->isRecycled:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->isRunning:Z

    return v0
.end method

.method public onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->applyGravity:Z

    return-void
.end method

.method public onFrameReady()V
    .locals 2

    invoke-direct {p0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->findCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->stop()V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    invoke-virtual {p0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->getFrameIndex()I

    move-result v0

    invoke-virtual {p0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->getFrameCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->loopCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->loopCount:I

    :cond_1
    iget v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_2

    iget v1, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->loopCount:I

    if-lt v1, v0, :cond_2

    invoke-direct {p0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->notifyAnimationEndToListeners()V

    invoke-virtual {p0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->stop()V

    :cond_2
    return-void
.end method

.method public recycle()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->isRecycled:Z

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->state:Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/agc/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->clear()V

    return-void
.end method

.method public registerAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->animationCallbacks:Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->animationCallbacks:Ljava/util/List;

    :cond_1
    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->animationCallbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    invoke-direct {p0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    invoke-direct {p0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setFrameTransformation(Lcom/agc/glide/load/Transformation;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/agc/glide/load/Transformation<",
            "Landroid/graphics/Bitmap;",
            ">;",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->state:Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/agc/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0, p1, p2}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->setFrameTransformation(Lcom/agc/glide/load/Transformation;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public setIsRunning(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->isRunning:Z

    return-void
.end method

.method public setLoopCount(I)V
    .locals 1

    const/4 v0, -0x1

    if-gtz p1, :cond_1

    if-eq p1, v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Loop count must be greater than 0, or equal to GlideDrawable.LOOP_FOREVER, or equal to GlideDrawable.LOOP_INTRINSIC"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->state:Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;

    iget-object p1, p1, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/agc/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {p1}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->getLoopCount()I

    move-result p1

    if-nez p1, :cond_2

    move p1, v0

    :cond_2
    iput p1, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->maxLoopCount:I

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 2

    iget-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->isRecycled:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Cannot change the visibility of a recycled resource. Ensure that you unset the Drawable from your View before changing the View\'s visibility."

    invoke-static {v0, v1}, Lcom/agc/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->isVisible:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->stopRunning()V

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->isStarted:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->startRunning()V

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result p1

    return p1
.end method

.method public start()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->isStarted:Z

    invoke-direct {p0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->resetLoopCount()V

    iget-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->isVisible:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->startRunning()V

    :cond_0
    return-void
.end method

.method public startFromFirstFrame()V
    .locals 2

    iget-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->isRunning:Z

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "You cannot restart a currently running animation."

    invoke-static {v0, v1}, Lcom/agc/glide/util/Preconditions;->checkArgument(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->state:Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;

    iget-object v0, v0, Lcom/agc/glide/load/resource/gif/GifDrawable$GifState;->frameLoader:Lcom/agc/glide/load/resource/gif/GifFrameLoader;

    invoke-virtual {v0}, Lcom/agc/glide/load/resource/gif/GifFrameLoader;->setNextStartFromFirstFrame()V

    invoke-virtual {p0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->start()V

    return-void
.end method

.method public stop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->isStarted:Z

    invoke-direct {p0}, Lcom/agc/glide/load/resource/gif/GifDrawable;->stopRunning()V

    return-void
.end method

.method public unregisterAnimationCallback(Landroidx/vectordrawable/graphics/drawable/Animatable2Compat$AnimationCallback;)Z
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/resource/gif/GifDrawable;->animationCallbacks:Ljava/util/List;

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method
