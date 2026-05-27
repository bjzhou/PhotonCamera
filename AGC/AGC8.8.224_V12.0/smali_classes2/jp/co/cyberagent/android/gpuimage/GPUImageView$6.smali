.class Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;
.super Ljava/lang/Object;
.source "GPUImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImageView;->capture()Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

.field final synthetic val$resultBitmap:Landroid/graphics/Bitmap;

.field final synthetic val$waiter:Ljava/util/concurrent/Semaphore;


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Landroid/graphics/Bitmap;Ljava/util/concurrent/Semaphore;)V
    .locals 0
    .param p1, "this$0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    .prologue
    .line 409
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;->val$resultBitmap:Landroid/graphics/Bitmap;

    iput-object p3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;->val$waiter:Ljava/util/concurrent/Semaphore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;->val$resultBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageNativeLibrary;->adjustBitmap(Landroid/graphics/Bitmap;)V

    .line 413
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$6;->val$waiter:Ljava/util/concurrent/Semaphore;

    invoke-virtual {v0}, Ljava/util/concurrent/Semaphore;->release()V

    .line 414
    return-void
.end method
