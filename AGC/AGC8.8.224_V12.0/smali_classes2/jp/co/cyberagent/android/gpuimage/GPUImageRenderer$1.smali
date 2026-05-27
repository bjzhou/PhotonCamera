.class Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;
.super Ljava/lang/Object;
.source "GPUImageRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->onPreviewFrame([BII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

.field final synthetic val$data:[B

.field final synthetic val$height:I

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;[BII)V
    .locals 0
    .param p1, "this$0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    .prologue
    .line 161
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;->val$data:[B

    iput p3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;->val$width:I

    iput p4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;->val$height:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 164
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;->val$data:[B

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;->val$width:I

    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;->val$height:I

    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-static {v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$000(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)Ljava/nio/IntBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/nio/IntBuffer;->array()[I

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageNativeLibrary;->YUVtoRBGA([BII[I)V

    .line 165
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-static {v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$000(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)Ljava/nio/IntBuffer;

    move-result-object v1

    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;->val$width:I

    iget v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;->val$height:I

    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-static {v4}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$100(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)I

    move-result v4

    invoke-static {v1, v2, v3, v4}, Ljp/co/cyberagent/android/gpuimage/util/OpenGlUtils;->loadTexture(Ljava/nio/IntBuffer;III)I

    move-result v1

    invoke-static {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$102(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I

    .line 167
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$200(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)I

    move-result v0

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;->val$width:I

    if-eq v0, v1, :cond_0

    .line 168
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;->val$width:I

    invoke-static {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$202(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I

    .line 169
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;->val$height:I

    invoke-static {v0, v1}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$302(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I

    .line 170
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$1;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-static {v0}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$400(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)V

    .line 172
    :cond_0
    return-void
.end method
