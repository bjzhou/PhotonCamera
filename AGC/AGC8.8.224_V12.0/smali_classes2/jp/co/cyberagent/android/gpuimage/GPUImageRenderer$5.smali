.class Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;
.super Ljava/lang/Object;
.source "GPUImageRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->setImageBitmap(Landroid/graphics/Bitmap;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

.field final synthetic val$bitmap:Landroid/graphics/Bitmap;

.field final synthetic val$recycle:Z


# direct methods
.method constructor <init>(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;Landroid/graphics/Bitmap;Z)V
    .locals 0
    .param p1, "this$0"    # Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    .prologue
    .line 234
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->val$bitmap:Landroid/graphics/Bitmap;

    iput-boolean p3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->val$recycle:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 238
    const/4 v1, 0x0

    .line 239
    .local v1, "resizedBitmap":Landroid/graphics/Bitmap;
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    rem-int/lit8 v2, v2, 0x2

    if-ne v2, v7, :cond_1

    .line 240
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 242
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 243
    .local v0, "can":Landroid/graphics/Canvas;
    invoke-virtual {v0, v5, v5, v5, v5}, Landroid/graphics/Canvas;->drawARGB(IIII)V

    .line 244
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->val$bitmap:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v6, v6, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 245
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-static {v2, v7}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$902(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I

    .line 250
    .end local v0    # "can":Landroid/graphics/Canvas;
    :goto_0
    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    .line 251
    if-eqz v1, :cond_2

    move-object v2, v1

    :goto_1
    iget-object v4, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-static {v4}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$100(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)I

    move-result v4

    iget-boolean v5, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->val$recycle:Z

    .line 250
    invoke-static {v2, v4, v5}, Ljp/co/cyberagent/android/gpuimage/util/OpenGlUtils;->loadTexture(Landroid/graphics/Bitmap;IZ)I

    move-result v2

    invoke-static {v3, v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$102(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I

    .line 252
    if-eqz v1, :cond_0

    .line 253
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 255
    :cond_0
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-static {v2, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$202(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I

    .line 256
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    iget-object v3, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->val$bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v2, v3}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$302(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I

    .line 257
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-static {v2}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$400(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;)V

    .line 258
    return-void

    .line 247
    :cond_1
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->this$0:Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;

    invoke-static {v2, v5}, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;->access$902(Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer;I)I

    goto :goto_0

    .line 251
    :cond_2
    iget-object v2, p0, Ljp/co/cyberagent/android/gpuimage/GPUImageRenderer$5;->val$bitmap:Landroid/graphics/Bitmap;

    goto :goto_1
.end method
