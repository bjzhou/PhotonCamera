.class Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1$1;
.super Ljava/lang/Object;
.source "GPUImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1;->onScanCompleted(Ljava/lang/String;Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1;

.field final synthetic val$uri:Landroid/net/Uri;


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1;Landroid/net/Uri;)V
    .locals 0
    .param p1, "this$2"    # Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1;

    .prologue
    .line 567
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1$1;->this$2:Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1;

    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1$1;->val$uri:Landroid/net/Uri;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 571
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1$1;->this$2:Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1;

    iget-object v0, v0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1;->this$1:Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;->access$200(Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask;)Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;

    move-result-object v0

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$SaveTask$1$1;->val$uri:Landroid/net/Uri;

    invoke-interface {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$OnPictureSavedListener;->onPictureSaved(Landroid/net/Uri;)V

    .line 572
    return-void
.end method
