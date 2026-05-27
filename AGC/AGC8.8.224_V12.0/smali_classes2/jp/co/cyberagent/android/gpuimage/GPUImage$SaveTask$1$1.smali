.class Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1$1;
.super Ljava/lang/Object;
.source "GPUImage.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$2"    # Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1;

    .prologue
    .line 535
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1$1;->this$2:Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1;

    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 539
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1$1;->this$2:Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1;

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1;->this$1:Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;->access$200(Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask;)Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;

    move-result-object v0

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImage$SaveTask$1$1;->val$uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImage$OnPictureSavedListener;->onPictureSaved(Landroid/net/Uri;)V

    .line 540
    return-void
.end method
