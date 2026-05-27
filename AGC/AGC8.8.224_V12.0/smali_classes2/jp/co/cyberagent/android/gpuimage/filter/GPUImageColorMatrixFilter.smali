.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageColorMatrixFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageColorMatrixFilter.java"


# static fields
.field public static final COLOR_MATRIX_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform lowp mat4 colorMatrix;\nuniform lowp float intensity;\n\nvoid main()\n{\n    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n    lowp vec4 outputColor = textureColor * colorMatrix;\n    \n    gl_FragColor = (intensity * outputColor) + ((1.0 - intensity) * textureColor);\n}"


# instance fields
.field private colorMatrix:[F

.field private colorMatrixLocation:I

.field private intensity:F

.field private intensityLocation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    const/high16 v0, 0x3f800000    # 1.0f

    const/16 v1, 0x10

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageColorMatrixFilter;-><init>(F[F)V

    .line 53
    return-void

    .line 47
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public constructor <init>(F[F)V
    .locals 2
    .param p1, "intensity"    # F
    .param p2, "colorMatrix"    # [F

    .prologue
    .line 56
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform lowp mat4 colorMatrix;\nuniform lowp float intensity;\n\nvoid main()\n{\n    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n    lowp vec4 outputColor = textureColor * colorMatrix;\n    \n    gl_FragColor = (intensity * outputColor) + ((1.0 - intensity) * textureColor);\n}"

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageColorMatrixFilter;->intensity:F

    .line 58
    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageColorMatrixFilter;->colorMatrix:[F

    .line 59
    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    .prologue
    .line 63
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    .line 64
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageColorMatrixFilter;->getProgram()I

    move-result v0

    const-string v1, "colorMatrix"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageColorMatrixFilter;->colorMatrixLocation:I

    .line 65
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageColorMatrixFilter;->getProgram()I

    move-result v0

    const-string v1, "intensity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageColorMatrixFilter;->intensityLocation:I

    .line 66
    return-void
.end method

.method public onInitialized()V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    .line 71
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageColorMatrixFilter;->intensity:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageColorMatrixFilter;->setIntensity(F)V

    .line 72
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageColorMatrixFilter;->colorMatrix:[F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageColorMatrixFilter;->setColorMatrix([F)V

    .line 73
    return-void
.end method

.method public setColorMatrix([F)V
    .locals 1
    .param p1, "colorMatrix"    # [F

    .prologue
    .line 81
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageColorMatrixFilter;->colorMatrix:[F

    .line 82
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageColorMatrixFilter;->colorMatrixLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageColorMatrixFilter;->setUniformMatrix4f(I[F)V

    .line 83
    return-void
.end method

.method public setIntensity(F)V
    .locals 1
    .param p1, "intensity"    # F

    .prologue
    .line 76
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageColorMatrixFilter;->intensity:F

    .line 77
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageColorMatrixFilter;->intensityLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageColorMatrixFilter;->setFloat(IF)V

    .line 78
    return-void
.end method
