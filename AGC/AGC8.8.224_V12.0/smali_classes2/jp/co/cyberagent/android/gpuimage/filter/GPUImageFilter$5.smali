.class Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$5;
.super Ljava/lang/Object;
.source "GPUImageFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->setFloatVec4(I[F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

.field final synthetic val$arrayValue:[F

.field final synthetic val$location:I


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;I[F)V
    .locals 0
    .param p1, "this$0"    # Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    .prologue
    .line 214
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$5;->this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$5;->val$location:I

    iput-object p3, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$5;->val$arrayValue:[F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 217
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$5;->this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-virtual {v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->ifNeedInit()V

    .line 218
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$5;->val$location:I

    const/4 v1, 0x1

    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$5;->val$arrayValue:[F

    invoke-static {v2}, Ljava/nio/FloatBuffer;->wrap([F)Ljava/nio/FloatBuffer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glUniform4fv(IILjava/nio/FloatBuffer;)V

    .line 219
    return-void
.end method
