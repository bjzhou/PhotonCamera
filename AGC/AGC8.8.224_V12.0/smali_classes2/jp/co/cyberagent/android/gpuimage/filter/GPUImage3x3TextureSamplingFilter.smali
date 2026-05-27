.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImage3x3TextureSamplingFilter.java"


# static fields
.field public static final THREE_X_THREE_TEXTURE_SAMPLING_VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n\nuniform highp float texelWidth; \nuniform highp float texelHeight; \n\nvarying vec2 textureCoordinate;\nvarying vec2 leftTextureCoordinate;\nvarying vec2 rightTextureCoordinate;\n\nvarying vec2 topTextureCoordinate;\nvarying vec2 topLeftTextureCoordinate;\nvarying vec2 topRightTextureCoordinate;\n\nvarying vec2 bottomTextureCoordinate;\nvarying vec2 bottomLeftTextureCoordinate;\nvarying vec2 bottomRightTextureCoordinate;\n\nvoid main()\n{\n    gl_Position = position;\n\n    vec2 widthStep = vec2(texelWidth, 0.0);\n    vec2 heightStep = vec2(0.0, texelHeight);\n    vec2 widthHeightStep = vec2(texelWidth, texelHeight);\n    vec2 widthNegativeHeightStep = vec2(texelWidth, -texelHeight);\n\n    textureCoordinate = inputTextureCoordinate.xy;\n    leftTextureCoordinate = inputTextureCoordinate.xy - widthStep;\n    rightTextureCoordinate = inputTextureCoordinate.xy + widthStep;\n\n    topTextureCoordinate = inputTextureCoordinate.xy - heightStep;\n    topLeftTextureCoordinate = inputTextureCoordinate.xy - widthHeightStep;\n    topRightTextureCoordinate = inputTextureCoordinate.xy + widthNegativeHeightStep;\n\n    bottomTextureCoordinate = inputTextureCoordinate.xy + heightStep;\n    bottomLeftTextureCoordinate = inputTextureCoordinate.xy - widthNegativeHeightStep;\n    bottomRightTextureCoordinate = inputTextureCoordinate.xy + widthHeightStep;\n}"


# instance fields
.field private hasOverriddenImageSizeFactor:Z

.field private lineSize:F

.field private texelHeight:F

.field private texelWidth:F

.field private uniformTexelHeightLocation:I

.field private uniformTexelWidthLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 72
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;-><init>(Ljava/lang/String;)V

    .line 73
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "fragmentShader"    # Ljava/lang/String;

    .prologue
    .line 76
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n\nuniform highp float texelWidth; \nuniform highp float texelHeight; \n\nvarying vec2 textureCoordinate;\nvarying vec2 leftTextureCoordinate;\nvarying vec2 rightTextureCoordinate;\n\nvarying vec2 topTextureCoordinate;\nvarying vec2 topLeftTextureCoordinate;\nvarying vec2 topRightTextureCoordinate;\n\nvarying vec2 bottomTextureCoordinate;\nvarying vec2 bottomLeftTextureCoordinate;\nvarying vec2 bottomRightTextureCoordinate;\n\nvoid main()\n{\n    gl_Position = position;\n\n    vec2 widthStep = vec2(texelWidth, 0.0);\n    vec2 heightStep = vec2(0.0, texelHeight);\n    vec2 widthHeightStep = vec2(texelWidth, texelHeight);\n    vec2 widthNegativeHeightStep = vec2(texelWidth, -texelHeight);\n\n    textureCoordinate = inputTextureCoordinate.xy;\n    leftTextureCoordinate = inputTextureCoordinate.xy - widthStep;\n    rightTextureCoordinate = inputTextureCoordinate.xy + widthStep;\n\n    topTextureCoordinate = inputTextureCoordinate.xy - heightStep;\n    topLeftTextureCoordinate = inputTextureCoordinate.xy - widthHeightStep;\n    topRightTextureCoordinate = inputTextureCoordinate.xy + widthNegativeHeightStep;\n\n    bottomTextureCoordinate = inputTextureCoordinate.xy + heightStep;\n    bottomLeftTextureCoordinate = inputTextureCoordinate.xy - widthNegativeHeightStep;\n    bottomRightTextureCoordinate = inputTextureCoordinate.xy + widthHeightStep;\n}"

    invoke-direct {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const/4 v0, 0x0

    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->hasOverriddenImageSizeFactor:Z

    .line 69
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->lineSize:F

    .line 77
    return-void
.end method

.method private updateTexelValues()V
    .locals 2

    .prologue
    .line 122
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->uniformTexelWidthLocation:I

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->texelWidth:F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->setFloat(IF)V

    .line 123
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->uniformTexelHeightLocation:I

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->texelHeight:F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->setFloat(IF)V

    .line 124
    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    .prologue
    .line 81
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    .line 82
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->getProgram()I

    move-result v0

    const-string v1, "texelWidth"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->uniformTexelWidthLocation:I

    .line 83
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->getProgram()I

    move-result v0

    const-string v1, "texelHeight"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->uniformTexelHeightLocation:I

    .line 84
    return-void
.end method

.method public onInitialized()V
    .locals 2

    .prologue
    .line 88
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    .line 89
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->texelWidth:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 90
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->updateTexelValues()V

    .line 92
    :cond_0
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 96
    invoke-super {p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onOutputSizeChanged(II)V

    .line 97
    iget-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->hasOverriddenImageSizeFactor:Z

    if-nez v0, :cond_0

    .line 98
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->lineSize:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->setLineSize(F)V

    .line 100
    :cond_0
    return-void
.end method

.method public setLineSize(F)V
    .locals 1
    .param p1, "size"    # F

    .prologue
    .line 115
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->lineSize:F

    .line 116
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->getOutputWidth()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->texelWidth:F

    .line 117
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->getOutputHeight()I

    move-result v0

    int-to-float v0, v0

    div-float v0, p1, v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->texelHeight:F

    .line 118
    invoke-direct {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->updateTexelValues()V

    .line 119
    return-void
.end method

.method public setTexelHeight(F)V
    .locals 1
    .param p1, "texelHeight"    # F

    .prologue
    .line 109
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->hasOverriddenImageSizeFactor:Z

    .line 110
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->texelHeight:F

    .line 111
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->uniformTexelHeightLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->setFloat(IF)V

    .line 112
    return-void
.end method

.method public setTexelWidth(F)V
    .locals 1
    .param p1, "texelWidth"    # F

    .prologue
    .line 103
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->hasOverriddenImageSizeFactor:Z

    .line 104
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->texelWidth:F

    .line 105
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->uniformTexelWidthLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->setFloat(IF)V

    .line 106
    return-void
.end method
