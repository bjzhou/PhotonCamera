.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSobelThresholdFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;
.source "GPUImageSobelThresholdFilter.java"


# static fields
.field public static final SOBEL_THRESHOLD_EDGE_DETECTION:Ljava/lang/String; = "precision mediump float;\n\nvarying vec2 textureCoordinate;\nvarying vec2 leftTextureCoordinate;\nvarying vec2 rightTextureCoordinate;\n\nvarying vec2 topTextureCoordinate;\nvarying vec2 topLeftTextureCoordinate;\nvarying vec2 topRightTextureCoordinate;\n\nvarying vec2 bottomTextureCoordinate;\nvarying vec2 bottomLeftTextureCoordinate;\nvarying vec2 bottomRightTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\nuniform lowp float threshold;\n\nconst highp vec3 W = vec3(0.2125, 0.7154, 0.0721);\n\nvoid main()\n{\n    float bottomLeftIntensity = texture2D(inputImageTexture, bottomLeftTextureCoordinate).r;\n    float topRightIntensity = texture2D(inputImageTexture, topRightTextureCoordinate).r;\n    float topLeftIntensity = texture2D(inputImageTexture, topLeftTextureCoordinate).r;\n    float bottomRightIntensity = texture2D(inputImageTexture, bottomRightTextureCoordinate).r;\n    float leftIntensity = texture2D(inputImageTexture, leftTextureCoordinate).r;\n    float rightIntensity = texture2D(inputImageTexture, rightTextureCoordinate).r;\n    float bottomIntensity = texture2D(inputImageTexture, bottomTextureCoordinate).r;\n    float topIntensity = texture2D(inputImageTexture, topTextureCoordinate).r;\n    float h = -topLeftIntensity - 2.0 * topIntensity - topRightIntensity + bottomLeftIntensity + 2.0 * bottomIntensity + bottomRightIntensity;\n    float v = -bottomLeftIntensity - 2.0 * leftIntensity - topLeftIntensity + bottomRightIntensity + 2.0 * rightIntensity + topRightIntensity;\n\n    float mag = 1.0 - length(vec2(h, v));\n    mag = step(threshold, mag);\n\n    gl_FragColor = vec4(vec3(mag), 1.0);\n}\n"


# instance fields
.field private threshold:F

.field private uniformThresholdLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    const v0, 0x3f666666    # 0.9f

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSobelThresholdFilter;-><init>(F)V

    .line 51
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "threshold"    # F

    .prologue
    .line 54
    const-string v0, "precision mediump float;\n\nvarying vec2 textureCoordinate;\nvarying vec2 leftTextureCoordinate;\nvarying vec2 rightTextureCoordinate;\n\nvarying vec2 topTextureCoordinate;\nvarying vec2 topLeftTextureCoordinate;\nvarying vec2 topRightTextureCoordinate;\n\nvarying vec2 bottomTextureCoordinate;\nvarying vec2 bottomLeftTextureCoordinate;\nvarying vec2 bottomRightTextureCoordinate;\n\nuniform sampler2D inputImageTexture;\nuniform lowp float threshold;\n\nconst highp vec3 W = vec3(0.2125, 0.7154, 0.0721);\n\nvoid main()\n{\n    float bottomLeftIntensity = texture2D(inputImageTexture, bottomLeftTextureCoordinate).r;\n    float topRightIntensity = texture2D(inputImageTexture, topRightTextureCoordinate).r;\n    float topLeftIntensity = texture2D(inputImageTexture, topLeftTextureCoordinate).r;\n    float bottomRightIntensity = texture2D(inputImageTexture, bottomRightTextureCoordinate).r;\n    float leftIntensity = texture2D(inputImageTexture, leftTextureCoordinate).r;\n    float rightIntensity = texture2D(inputImageTexture, rightTextureCoordinate).r;\n    float bottomIntensity = texture2D(inputImageTexture, bottomTextureCoordinate).r;\n    float topIntensity = texture2D(inputImageTexture, topTextureCoordinate).r;\n    float h = -topLeftIntensity - 2.0 * topIntensity - topRightIntensity + bottomLeftIntensity + 2.0 * bottomIntensity + bottomRightIntensity;\n    float v = -bottomLeftIntensity - 2.0 * leftIntensity - topLeftIntensity + bottomRightIntensity + 2.0 * rightIntensity + topRightIntensity;\n\n    float mag = 1.0 - length(vec2(h, v));\n    mag = step(threshold, mag);\n\n    gl_FragColor = vec4(vec3(mag), 1.0);\n}\n"

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;-><init>(Ljava/lang/String;)V

    .line 55
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSobelThresholdFilter;->threshold:F

    .line 56
    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    .prologue
    .line 60
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->onInit()V

    .line 61
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSobelThresholdFilter;->getProgram()I

    move-result v0

    const-string v1, "threshold"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSobelThresholdFilter;->uniformThresholdLocation:I

    .line 62
    return-void
.end method

.method public onInitialized()V
    .locals 1

    .prologue
    .line 66
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;->onInitialized()V

    .line 67
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSobelThresholdFilter;->threshold:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSobelThresholdFilter;->setThreshold(F)V

    .line 68
    return-void
.end method

.method public setThreshold(F)V
    .locals 1
    .param p1, "threshold"    # F

    .prologue
    .line 71
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSobelThresholdFilter;->threshold:F

    .line 72
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSobelThresholdFilter;->uniformThresholdLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageSobelThresholdFilter;->setFloat(IF)V

    .line 73
    return-void
.end method
