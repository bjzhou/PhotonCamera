.class Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$7;
.super Ljava/lang/Object;
.source "GPUImageFilter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->setPoint(ILandroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

.field final synthetic val$location:I

.field final synthetic val$point:Landroid/graphics/PointF;


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;Landroid/graphics/PointF;I)V
    .locals 0
    .param p1, "this$0"    # Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    .prologue
    .line 234
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$7;->this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$7;->val$point:Landroid/graphics/PointF;

    iput p3, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$7;->val$location:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 237
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$7;->this$0:Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;

    invoke-virtual {v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->ifNeedInit()V

    .line 238
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 239
    .local v0, "vec2":[F
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$7;->val$point:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    aput v1, v0, v2

    .line 240
    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$7;->val$point:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    aput v1, v0, v3

    .line 241
    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter$7;->val$location:I

    invoke-static {v1, v3, v0, v2}, Landroid/opengl/GLES20;->glUniform2fv(II[FI)V

    .line 242
    return-void
.end method
