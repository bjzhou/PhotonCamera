.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageTwoInputFilter.java"


# static fields
.field private static final VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nattribute vec4 inputTextureCoordinate2;\n \nvarying vec2 textureCoordinate;\nvarying vec2 textureCoordinate2;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n    textureCoordinate2 = inputTextureCoordinate2.xy;\n}"


# instance fields
.field private bitmap:Landroid/graphics/Bitmap;

.field private filterInputTextureUniform2:I

.field private filterSecondTextureCoordinateAttribute:I

.field private filterSourceTexture2:I

.field private texture2CoordinatesBuffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fragmentShader"    # Ljava/lang/String;

    .prologue
    .line 52
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nattribute vec4 inputTextureCoordinate2;\n \nvarying vec2 textureCoordinate;\nvarying vec2 textureCoordinate2;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n    textureCoordinate2 = inputTextureCoordinate2.xy;\n}"

    invoke-direct {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "vertexShader"    # Ljava/lang/String;
    .param p2, "fragmentShader"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 56
    invoke-direct {p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const/4 v0, -0x1

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterSourceTexture2:I

    .line 57
    sget-object v0, Ljp/co/cyberagent/android/gpuimage/util/Rotation;->NORMAL:Ljp/co/cyberagent/android/gpuimage/util/Rotation;

    invoke-virtual {p0, v0, v1, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->setRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;ZZ)V

    .line 58
    return-void
.end method

.method static synthetic access$000(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;)I
    .locals 1
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;

    .prologue
    .line 30
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterSourceTexture2:I

    return v0
.end method

.method static synthetic access$002(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;I)I
    .locals 0
    .param p0, "x0"    # Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;
    .param p1, "x1"    # I

    .prologue
    .line 30
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterSourceTexture2:I

    return p1
.end method


# virtual methods
.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->bitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 110
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onDestroy()V

    .line 111
    new-array v0, v3, [I

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterSourceTexture2:I

    aput v1, v0, v2

    invoke-static {v3, v0, v2}, Landroid/opengl/GLES20;->glDeleteTextures(I[II)V

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterSourceTexture2:I

    .line 115
    return-void
.end method

.method protected onDrawArraysPre()V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 119
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterSecondTextureCoordinateAttribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 120
    const v0, 0x84c3

    invoke-static {v0}, Landroid/opengl/GLES20;->glActiveTexture(I)V

    .line 121
    const/16 v0, 0xde1

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterSourceTexture2:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindTexture(II)V

    .line 122
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterInputTextureUniform2:I

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glUniform1i(II)V

    .line 124
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->texture2CoordinatesBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 125
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterSecondTextureCoordinateAttribute:I

    const/4 v1, 0x2

    const/16 v2, 0x1406

    iget-object v5, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->texture2CoordinatesBuffer:Ljava/nio/ByteBuffer;

    move v4, v3

    invoke-static/range {v0 .. v5}, Landroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 126
    return-void
.end method

.method public onInit()V
    .locals 2

    .prologue
    .line 62
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    .line 64
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->getProgram()I

    move-result v0

    const-string v1, "inputTextureCoordinate2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetAttribLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterSecondTextureCoordinateAttribute:I

    .line 65
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->getProgram()I

    move-result v0

    const-string v1, "inputImageTexture2"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterInputTextureUniform2:I

    .line 66
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->filterSecondTextureCoordinateAttribute:I

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 67
    return-void
.end method

.method public onInitialized()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    .line 72
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 73
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 75
    :cond_0
    return-void
.end method

.method public recycleBitmap()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 105
    const/4 v0, 0x0

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->bitmap:Landroid/graphics/Bitmap;

    .line 107
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 78
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 96
    :cond_0
    :goto_0
    return-void

    .line 81
    :cond_1
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->bitmap:Landroid/graphics/Bitmap;

    .line 82
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->bitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 85
    new-instance v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter$1;

    invoke-direct {v0, p0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter$1;-><init>(Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->runOnDraw(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;ZZ)V
    .locals 5
    .param p1, "rotation"    # Ljp/co/cyberagent/android/gpuimage/util/Rotation;
    .param p2, "flipHorizontal"    # Z
    .param p3, "flipVertical"    # Z

    .prologue
    .line 129
    invoke-static {p1, p2, p3}, Ljp/co/cyberagent/android/gpuimage/util/TextureRotationUtil;->getRotation(Ljp/co/cyberagent/android/gpuimage/util/Rotation;ZZ)[F

    move-result-object v1

    .line 131
    .local v1, "buffer":[F
    const/16 v3, 0x20

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 132
    .local v0, "bBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 133
    .local v2, "fBuffer":Ljava/nio/FloatBuffer;
    invoke-virtual {v2, v1}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    .line 134
    invoke-virtual {v2}, Ljava/nio/FloatBuffer;->flip()Ljava/nio/Buffer;

    .line 136
    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->texture2CoordinatesBuffer:Ljava/nio/ByteBuffer;

    .line 137
    return-void
.end method
