.class Ljp/co/cyberagent/android/gpuimage/GPUImageView$2;
.super Ljava/lang/Object;
.source "GPUImageView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImageView;->capture(II)Landroid/graphics/Bitmap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;)V
    .locals 0
    .param p1, "this$0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    .prologue
    .line 347
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$2;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 351
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$2;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->access$000(Ljp/co/cyberagent/android/gpuimage/GPUImageView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$2;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    new-instance v1, Ljp/co/cyberagent/android/gpuimage/GPUImageView$LoadingView;

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$2;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$2;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    invoke-virtual {v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageView$LoadingView;-><init>(Ljp/co/cyberagent/android/gpuimage/GPUImageView;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->addView(Landroid/view/View;)V

    .line 355
    :cond_0
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageView$2;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageView;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageView;->access$100(Ljp/co/cyberagent/android/gpuimage/GPUImageView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 356
    return-void
.end method
