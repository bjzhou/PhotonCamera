.class Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBoxBlurFilter$1;
.super Ljava/lang/Object;
.source "GPUImageBoxBlurFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBoxBlurFilter;->setBlurSize(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBoxBlurFilter;


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBoxBlurFilter;)V
    .locals 0
    .param p1, "this$0"    # Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBoxBlurFilter;

    .prologue
    .line 102
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBoxBlurFilter$1;->this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBoxBlurFilter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBoxBlurFilter$1;->this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBoxBlurFilter;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBoxBlurFilter;->initTexelOffsets()V

    .line 106
    return-void
.end method
