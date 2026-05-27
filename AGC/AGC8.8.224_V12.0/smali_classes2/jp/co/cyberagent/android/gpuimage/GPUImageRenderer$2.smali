.class Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$2;
.super Ljava/lang/Object;
.source "GPUImageRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setUpSurfaceTexture(Landroid/hardware/Camera;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

.field final synthetic val$camera:Landroid/hardware/Camera;


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;Landroid/hardware/Camera;)V
    .locals 0
    .param p1, "this$0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    .prologue
    .line 178
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$2;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$2;->val$camera:Landroid/hardware/Camera;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v4, 0x0

    .line 181
    new-array v1, v2, [I

    .line 182
    .local v1, "textures":[I
    invoke-static {v2, v1, v4}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 183
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$2;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    new-instance v3, Landroid/graphics/SurfaceTexture;

    aget v4, v1, v4

    invoke-direct {v3, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    invoke-static {v2, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$502(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;Landroid/graphics/SurfaceTexture;)Landroid/graphics/SurfaceTexture;

    .line 185
    :try_start_0
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$2;->val$camera:Landroid/hardware/Camera;

    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$2;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-static {v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$500(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)Landroid/graphics/SurfaceTexture;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewTexture(Landroid/graphics/SurfaceTexture;)V

    .line 186
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$2;->val$camera:Landroid/hardware/Camera;

    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$2;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-virtual {v2, v3}, Landroid/hardware/Camera;->setPreviewCallback(Landroid/hardware/Camera$PreviewCallback;)V

    .line 187
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$2;->val$camera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->startPreview()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
