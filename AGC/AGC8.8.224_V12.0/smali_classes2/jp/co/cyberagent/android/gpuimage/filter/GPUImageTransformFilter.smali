.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageTransformFilter.java"


# static fields
.field public static final TRANSFORM_VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 position;\n attribute vec4 inputTextureCoordinate;\n \n uniform mat4 transformMatrix;\n uniform mat4 orthographicMatrix;\n \n varying vec2 textureCoordinate;\n \n void main()\n {\n     gl_Position = transformMatrix * vec4(position.xyz, 1.0) * orthographicMatrix;\n     textureCoordinate = inputTextureCoordinate.xy;\n }"


# instance fields
.field private anchorTopLeft:Z

.field private ignoreAspectRatio:Z

.field private orthographicMatrix:[F

.field private orthographicMatrixUniform:I

.field private transform3D:[F

.field private transformMatrixUniform:I


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    const/16 v8, 0x10

    const/4 v1, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    .line 55
    const-string v0, "attribute vec4 position;\n attribute vec4 inputTextureCoordinate;\n \n uniform mat4 transformMatrix;\n uniform mat4 orthographicMatrix;\n \n varying vec2 textureCoordinate;\n \n void main()\n {\n     gl_Position = transformMatrix * vec4(position.xyz, 1.0) * orthographicMatrix;\n     textureCoordinate = inputTextureCoordinate.xy;\n }"

    const-string v4, "varying highp vec2 textureCoordinate;\n \nuniform sampler2D inputImageTexture;\n \nvoid main()\n{\n     gl_FragColor = texture2D(inputImageTexture, textureCoordinate);\n}"

    invoke-direct {p0, v0, v4}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    new-array v0, v8, [F

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->orthographicMatrix:[F

    .line 58
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->orthographicMatrix:[F

    move v4, v2

    move v5, v3

    move v6, v2

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 60
    new-array v0, v8, [F

    iput-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->transform3D:[F

    .line 61
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->transform3D:[F

    invoke-static {v0, v1}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    .line 62
    return-void
.end method


# virtual methods
.method public anchorTopLeft()Z
    .locals 1

    .prologue
    .line 147
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->anchorTopLeft:Z

    return v0
.end method

.method public getTransform3D()[F
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->transform3D:[F

    return-object v0
.end method

.method public ignoreAspectRatio()Z
    .locals 1

    .prologue
    .line 138
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->ignoreAspectRatio:Z

    return v0
.end method

.method public onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V
    .locals 6
    .param p1, "textureId"    # I
    .param p2, "cubeBuffer"    # Ljava/nio/FloatBuffer;
    .param p3, "textureBuffer"    # Ljava/nio/FloatBuffer;

    .prologue
    const/4 v5, 0x0

    .line 92
    move-object v2, p2

    .line 94
    .local v2, "vertBuffer":Ljava/nio/FloatBuffer;
    iget-boolean v3, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->ignoreAspectRatio:Z

    if-nez v3, :cond_0

    .line 96
    const/16 v3, 0x8

    new-array v0, v3, [F

    .line 98
    .local v0, "adjustedVertices":[F
    invoke-virtual {p2, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 99
    invoke-virtual {p2, v0}, Ljava/nio/FloatBuffer;->get([F)Ljava/nio/FloatBuffer;

    .line 101
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->getOutputHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->getOutputWidth()I

    move-result v4

    int-to-float v4, v4

    div-float v1, v3, v4

    .line 102
    .local v1, "normalizedHeight":F
    const/4 v3, 0x1

    aget v4, v0, v3

    mul-float/2addr v4, v1

    aput v4, v0, v3

    .line 103
    const/4 v3, 0x3

    aget v4, v0, v3

    mul-float/2addr v4, v1

    aput v4, v0, v3

    .line 104
    const/4 v3, 0x5

    aget v4, v0, v3

    mul-float/2addr v4, v1

    aput v4, v0, v3

    .line 105
    const/4 v3, 0x7

    aget v4, v0, v3

    mul-float/2addr v4, v1

    aput v4, v0, v3

    .line 107
    array-length v3, v0

    mul-int/lit8 v3, v3, 0x4

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 108
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 109
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    .line 111
    invoke-virtual {v2, v0}, Ljava/nio/FloatBuffer;->put([F)Ljava/nio/FloatBuffer;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/nio/FloatBuffer;->position(I)Ljava/nio/Buffer;

    .line 114
    .end local v0    # "adjustedVertices":[F
    .end local v1    # "normalizedHeight":F
    :cond_0
    invoke-super {p0, p1, v2, p3}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onDraw(ILjava/nio/FloatBuffer;Ljava/nio/FloatBuffer;)V

    .line 115
    return-void
.end method

.method public onInit()V
    .locals 2

    .prologue
    .line 66
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    .line 67
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->getProgram()I

    move-result v0

    const-string v1, "transformMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->transformMatrixUniform:I

    .line 68
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->getProgram()I

    move-result v0

    const-string v1, "orthographicMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->orthographicMatrixUniform:I

    .line 69
    return-void
.end method

.method public onInitialized()V
    .locals 2

    .prologue
    .line 73
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    .line 74
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->transformMatrixUniform:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->transform3D:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->setUniformMatrix4f(I[F)V

    .line 75
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->orthographicMatrixUniform:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->orthographicMatrix:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->setUniformMatrix4f(I[F)V

    .line 76
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 8
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    .line 80
    invoke-super {p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onOutputSizeChanged(II)V

    .line 82
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->ignoreAspectRatio:Z

    if-nez v0, :cond_0

    .line 83
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->orthographicMatrix:[F

    const/4 v1, 0x0

    int-to-float v4, p2

    mul-float/2addr v4, v2

    int-to-float v5, p1

    div-float/2addr v4, v5

    int-to-float v5, p2

    mul-float/2addr v5, v3

    int-to-float v6, p1

    div-float/2addr v5, v6

    move v6, v2

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 84
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->orthographicMatrixUniform:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->orthographicMatrix:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->setUniformMatrix4f(I[F)V

    .line 86
    :cond_0
    return-void
.end method

.method public setAnchorTopLeft(Z)V
    .locals 1
    .param p1, "anchorTopLeft"    # Z

    .prologue
    .line 142
    iput-boolean p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->anchorTopLeft:Z

    .line 143
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->ignoreAspectRatio:Z

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->setIgnoreAspectRatio(Z)V

    .line 144
    return-void
.end method

.method public setIgnoreAspectRatio(Z)V
    .locals 8
    .param p1, "ignoreAspectRatio"    # Z

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    .line 127
    iput-boolean p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->ignoreAspectRatio:Z

    .line 129
    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->orthographicMatrix:[F

    const/4 v1, 0x0

    move v4, v2

    move v5, v3

    move v6, v2

    move v7, v3

    invoke-static/range {v0 .. v7}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 131
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->orthographicMatrixUniform:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->orthographicMatrix:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->setUniformMatrix4f(I[F)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->getOutputWidth()I

    move-result v0

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->getOutputHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->onOutputSizeChanged(II)V

    goto :goto_0
.end method

.method public setTransform3D([F)V
    .locals 1
    .param p1, "transform3D"    # [F

    .prologue
    .line 118
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->transform3D:[F

    .line 119
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->transformMatrixUniform:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTransformFilter;->setUniformMatrix4f(I[F)V

    .line 120
    return-void
.end method
