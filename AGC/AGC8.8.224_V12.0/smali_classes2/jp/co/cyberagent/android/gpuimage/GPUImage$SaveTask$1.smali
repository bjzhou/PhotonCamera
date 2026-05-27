.class Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1;
.super Ljava/lang/Object;
.source "GPUImage.java"

# interfaces
.implements Landroid/media/MediaScannerConnection$OnScanCompletedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->saveImage(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;)V
    .locals 0
    .param p1, "this$1"    # Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;

    .prologue
    .line 531
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1;->this$1:Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 534
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1;->this$1:Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->access$200(Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;)Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 535
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1;->this$1:Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->access$300(Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1$1;

    invoke-direct {v1, p0, p2}, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1$1;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 543
    :cond_0
    return-void
.end method
