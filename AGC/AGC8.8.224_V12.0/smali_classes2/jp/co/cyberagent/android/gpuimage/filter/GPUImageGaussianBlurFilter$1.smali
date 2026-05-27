.class Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter$1;
.super Ljava/lang/Object;
.source "GPUImageGaussianBlurFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter;->setBlurSize(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter;


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter;)V
    .locals 0
    .param p1, "this$0"    # Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter;

    .prologue
    .line 115
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter$1;->this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter$1;->this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGaussianBlurFilter;->initTexelOffsets()V

    .line 119
    return-void
.end method
