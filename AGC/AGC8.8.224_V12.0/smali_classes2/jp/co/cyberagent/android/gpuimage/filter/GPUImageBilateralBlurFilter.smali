.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBilateralBlurFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageBilateralBlurFilter.java"


# static fields
.field public static final BILATERAL_FRAGMENT_SHADER:Ljava/lang/String; = "uniform sampler2D inputImageTexture;\n const lowp int GAUSSIAN_SAMPLES = 9;\n varying highp vec2 textureCoordinate;\n varying highp vec2 blurCoordinates[GAUSSIAN_SAMPLES];\n uniform mediump float distanceNormalizationFactor;\n void main()\n {\n     lowp vec4 centralColor;\n     lowp float gaussianWeightTotal;\n     lowp vec4 sum;\n     lowp vec4 sampleColor;\n     lowp float distanceFromCentralColor;\n     lowp float gaussianWeight;\n     \n     centralColor = texture2D(inputImageTexture, blurCoordinates[4]);\n     gaussianWeightTotal = 0.18;\n     sum = centralColor * 0.18;\n     \n     sampleColor = texture2D(inputImageTexture, blurCoordinates[0]);\n     distanceFromCentralColor = min(distance(centralColor, sampleColor) * distanceNormalizationFactor, 1.0);\n     gaussianWeight = 0.05 * (1.0 - distanceFromCentralColor);\n     gaussianWeightTotal += gaussianWeight;\n     sum += sampleColor * gaussianWeight;\n     sampleColor = texture2D(inputImageTexture, blurCoordinates[1]);\n     distanceFromCentralColor = min(distance(centralColor, sampleColor) * distanceNormalizationFactor, 1.0);\n     gaussianWeight = 0.09 * (1.0 - distanceFromCentralColor);\n     gaussianWeightTotal += gaussianWeight;\n     sum += sampleColor * gaussianWeight;\n     sampleColor = texture2D(inputImageTexture, blurCoordinates[2]);\n     distanceFromCentralColor = min(distance(centralColor, sampleColor) * distanceNormalizationFactor, 1.0);\n     gaussianWeight = 0.12 * (1.0 - distanceFromCentralColor);\n     gaussianWeightTotal += gaussianWeight;\n     sum += sampleColor * gaussianWeight;\n     sampleColor = texture2D(inputImageTexture, blurCoordinates[3]);\n     distanceFromCentralColor = min(distance(centralColor, sampleColor) * distanceNormalizationFactor, 1.0);\n     gaussianWeight = 0.15 * (1.0 - distanceFromCentralColor);\n     gaussianWeightTotal += gaussianWeight;\n     sum += sampleColor * gaussianWeight;\n     sampleColor = texture2D(inputImageTexture, blurCoordinates[5]);\n     distanceFromCentralColor = min(distance(centralColor, sampleColor) * distanceNormalizationFactor, 1.0);\n     gaussianWeight = 0.15 * (1.0 - distanceFromCentralColor);\n     gaussianWeightTotal += gaussianWeight;\n     sum += sampleColor * gaussianWeight;\n     sampleColor = texture2D(inputImageTexture, blurCoordinates[6]);\n     distanceFromCentralColor = min(distance(centralColor, sampleColor) * distanceNormalizationFactor, 1.0);\n     gaussianWeight = 0.12 * (1.0 - distanceFromCentralColor);\n     gaussianWeightTotal += gaussianWeight;\n     sum += sampleColor * gaussianWeight;\n     sampleColor = texture2D(inputImageTexture, blurCoordinates[7]);\n     distanceFromCentralColor = min(distance(centralColor, sampleColor) * distanceNormalizationFactor, 1.0);\n     gaussianWeight = 0.09 * (1.0 - distanceFromCentralColor);\n     gaussianWeightTotal += gaussianWeight;\n     sum += sampleColor * gaussianWeight;\n     sampleColor = texture2D(inputImageTexture, blurCoordinates[8]);\n     distanceFromCentralColor = min(distance(centralColor, sampleColor) * distanceNormalizationFactor, 1.0);\n     gaussianWeight = 0.05 * (1.0 - distanceFromCentralColor);\n     gaussianWeightTotal += gaussianWeight;\n     sum += sampleColor * gaussianWeight;\n     gl_FragColor = sum / gaussianWeightTotal;\n }"

.field public static final BILATERAL_VERTEX_SHADER:Ljava/lang/String; = "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nconst int GAUSSIAN_SAMPLES = 9;\nuniform vec2 singleStepOffset;\nvarying vec2 textureCoordinate;\nvarying vec2 blurCoordinates[GAUSSIAN_SAMPLES];\nvoid main()\n{\n\tgl_Position = position;\n\ttextureCoordinate = inputTextureCoordinate.xy;\n\tint multiplier = 0;\n\tvec2 blurStep;\n\tfor (int i = 0; i < GAUSSIAN_SAMPLES; i++)\n\t{\n\t\tmultiplier = (i - ((GAUSSIAN_SAMPLES - 1) / 2));\n\t\tblurStep = float(multiplier) * singleStepOffset;\n\t\tblurCoordinates[i] = inputTextureCoordinate.xy + blurStep;\n\t}\n}"


# instance fields
.field private disFactorLocation:I

.field private distanceNormalizationFactor:F

.field private singleStepOffsetLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 118
    const/high16 v0, 0x41000000    # 8.0f

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBilateralBlurFilter;-><init>(F)V

    .line 119
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .param p1, "distanceNormalizationFactor"    # F

    .prologue
    .line 122
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\nconst int GAUSSIAN_SAMPLES = 9;\nuniform vec2 singleStepOffset;\nvarying vec2 textureCoordinate;\nvarying vec2 blurCoordinates[GAUSSIAN_SAMPLES];\nvoid main()\n{\n\tgl_Position = position;\n\ttextureCoordinate = inputTextureCoordinate.xy;\n\tint multiplier = 0;\n\tvec2 blurStep;\n\tfor (int i = 0; i < GAUSSIAN_SAMPLES; i++)\n\t{\n\t\tmultiplier = (i - ((GAUSSIAN_SAMPLES - 1) / 2));\n\t\tblurStep = float(multiplier) * singleStepOffset;\n\t\tblurCoordinates[i] = inputTextureCoordinate.xy + blurStep;\n\t}\n}"

    const-string v1, "uniform sampler2D inputImageTexture;\n const lowp int GAUSSIAN_SAMPLES = 9;\n varying highp vec2 textureCoordinate;\n varying highp vec2 blurCoordinates[GAUSSIAN_SAMPLES];\n uniform mediump float distanceNormalizationFactor;\n void main()\n {\n     lowp vec4 centralColor;\n     lowp float gaussianWeightTotal;\n     lowp vec4 sum;\n     lowp vec4 sampleColor;\n     lowp float distanceFromCentralColor;\n     lowp float gaussianWeight;\n     \n     centralColor = texture2D(inputImageTexture, blurCoordinates[4]);\n     gaussianWeightTotal = 0.18;\n     sum = centralColor * 0.18;\n     \n     sampleColor = texture2D(inputImageTexture, blurCoordinates[0]);\n     distanceFromCentralColor = min(distance(centralColor, sampleColor) * distanceNormalizationFactor, 1.0);\n     gaussianWeight = 0.05 * (1.0 - distanceFromCentralColor);\n     gaussianWeightTotal += gaussianWeight;\n     sum += sampleColor * gaussianWeight;\n     sampleColor = texture2D(inputImageTexture, blurCoordinates[1]);\n     distanceFromCentralColor = min(distance(centralColor, sampleColor) * distanceNormalizationFactor, 1.0);\n     gaussianWeight = 0.09 * (1.0 - distanceFromCentralColor);\n     gaussianWeightTotal += gaussianWeight;\n     sum += sampleColor * gaussianWeight;\n     sampleColor = texture2D(inputImageTexture, blurCoordinates[2]);\n     distanceFromCentralColor = min(distance(centralColor, sampleColor) * distanceNormalizationFactor, 1.0);\n     gaussianWeight = 0.12 * (1.0 - distanceFromCentralColor);\n     gaussianWeightTotal += gaussianWeight;\n     sum += sampleColor * gaussianWeight;\n     sampleColor = texture2D(inputImageTexture, blurCoordinates[3]);\n     distanceFromCentralColor = min(distance(centralColor, sampleColor) * distanceNormalizationFactor, 1.0);\n     gaussianWeight = 0.15 * (1.0 - distanceFromCentralColor);\n     gaussianWeightTotal += gaussianWeight;\n     sum += sampleColor * gaussianWeight;\n     sampleColor = texture2D(inputImageTexture, blurCoordinates[5]);\n     distanceFromCentralColor = min(distance(centralColor, sampleColor) * distanceNormalizationFactor, 1.0);\n     gaussianWeight = 0.15 * (1.0 - distanceFromCentralColor);\n     gaussianWeightTotal += gaussianWeight;\n     sum += sampleColor * gaussianWeight;\n     sampleColor = texture2D(inputImageTexture, blurCoordinates[6]);\n     distanceFromCentralColor = min(distance(centralColor, sampleColor) * distanceNormalizationFactor, 1.0);\n     gaussianWeight = 0.12 * (1.0 - distanceFromCentralColor);\n     gaussianWeightTotal += gaussianWeight;\n     sum += sampleColor * gaussianWeight;\n     sampleColor = texture2D(inputImageTexture, blurCoordinates[7]);\n     distanceFromCentralColor = min(distance(centralColor, sampleColor) * distanceNormalizationFactor, 1.0);\n     gaussianWeight = 0.09 * (1.0 - distanceFromCentralColor);\n     gaussianWeightTotal += gaussianWeight;\n     sum += sampleColor * gaussianWeight;\n     sampleColor = texture2D(inputImageTexture, blurCoordinates[8]);\n     distanceFromCentralColor = min(distance(centralColor, sampleColor) * distanceNormalizationFactor, 1.0);\n     gaussianWeight = 0.05 * (1.0 - distanceFromCentralColor);\n     gaussianWeightTotal += gaussianWeight;\n     sum += sampleColor * gaussianWeight;\n     gl_FragColor = sum / gaussianWeightTotal;\n }"

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBilateralBlurFilter;->distanceNormalizationFactor:F

    .line 124
    return-void
.end method

.method private setTexelSize(FF)V
    .locals 5
    .param p1, "w"    # F
    .param p2, "h"    # F

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 145
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBilateralBlurFilter;->singleStepOffsetLocation:I

    const/4 v1, 0x2

    new-array v1, v1, [F

    const/4 v2, 0x0

    div-float v3, v4, p1

    aput v3, v1, v2

    const/4 v2, 0x1

    div-float v3, v4, p2

    aput v3, v1, v2

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBilateralBlurFilter;->setFloatVec2(I[F)V

    .line 146
    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    .prologue
    .line 128
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    .line 129
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBilateralBlurFilter;->getProgram()I

    move-result v0

    const-string v1, "distanceNormalizationFactor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBilateralBlurFilter;->disFactorLocation:I

    .line 130
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBilateralBlurFilter;->getProgram()I

    move-result v0

    const-string v1, "singleStepOffset"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBilateralBlurFilter;->singleStepOffsetLocation:I

    .line 131
    return-void
.end method

.method public onInitialized()V
    .locals 1

    .prologue
    .line 135
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    .line 136
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBilateralBlurFilter;->distanceNormalizationFactor:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBilateralBlurFilter;->setDistanceNormalizationFactor(F)V

    .line 137
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 150
    invoke-super {p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onOutputSizeChanged(II)V

    .line 151
    int-to-float v0, p1

    int-to-float v1, p2

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBilateralBlurFilter;->setTexelSize(FF)V

    .line 152
    return-void
.end method

.method public setDistanceNormalizationFactor(F)V
    .locals 1
    .param p1, "newValue"    # F

    .prologue
    .line 140
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBilateralBlurFilter;->distanceNormalizationFactor:F

    .line 141
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBilateralBlurFilter;->disFactorLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBilateralBlurFilter;->setFloat(IF)V

    .line 142
    return-void
.end method
