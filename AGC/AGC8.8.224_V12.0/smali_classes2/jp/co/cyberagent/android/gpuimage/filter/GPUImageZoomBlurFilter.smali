.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageZoomBlurFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageZoomBlurFilter.java"


# static fields
.field public static final ZOOM_BLUR_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform highp vec2 blurCenter;\nuniform highp float blurSize;\n\nvoid main()\n{\n    // TODO: Do a more intelligent scaling based on resolution here\n    highp vec2 samplingOffset = 1.0/100.0 * (blurCenter - textureCoordinate) * blurSize;\n    \n    lowp vec4 fragmentColor = texture2D(inputImageTexture, textureCoordinate) * 0.18;\n    fragmentColor += texture2D(inputImageTexture, textureCoordinate + samplingOffset) * 0.15;\n    fragmentColor += texture2D(inputImageTexture, textureCoordinate + (2.0 * samplingOffset)) *  0.12;\n    fragmentColor += texture2D(inputImageTexture, textureCoordinate + (3.0 * samplingOffset)) * 0.09;\n    fragmentColor += texture2D(inputImageTexture, textureCoordinate + (4.0 * samplingOffset)) * 0.05;\n    fragmentColor += texture2D(inputImageTexture, textureCoordinate - samplingOffset) * 0.15;\n    fragmentColor += texture2D(inputImageTexture, textureCoordinate - (2.0 * samplingOffset)) *  0.12;\n    fragmentColor += texture2D(inputImageTexture, textureCoordinate - (3.0 * samplingOffset)) * 0.09;\n    fragmentColor += texture2D(inputImageTexture, textureCoordinate - (4.0 * samplingOffset)) * 0.05;\n    \n    gl_FragColor = fragmentColor;\n}\n"


# instance fields
.field private blurCenter:Landroid/graphics/PointF;

.field private blurCenterLocation:I

.field private blurSize:F

.field private blurSizeLocation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 39
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageZoomBlurFilter;-><init>(Landroid/graphics/PointF;F)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;F)V
    .locals 2
    .param p1, "blurCenter"    # Landroid/graphics/PointF;
    .param p2, "blurSize"    # F

    .prologue
    .line 43
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform highp vec2 blurCenter;\nuniform highp float blurSize;\n\nvoid main()\n{\n    // TODO: Do a more intelligent scaling based on resolution here\n    highp vec2 samplingOffset = 1.0/100.0 * (blurCenter - textureCoordinate) * blurSize;\n    \n    lowp vec4 fragmentColor = texture2D(inputImageTexture, textureCoordinate) * 0.18;\n    fragmentColor += texture2D(inputImageTexture, textureCoordinate + samplingOffset) * 0.15;\n    fragmentColor += texture2D(inputImageTexture, textureCoordinate + (2.0 * samplingOffset)) *  0.12;\n    fragmentColor += texture2D(inputImageTexture, textureCoordinate + (3.0 * samplingOffset)) * 0.09;\n    fragmentColor += texture2D(inputImageTexture, textureCoordinate + (4.0 * samplingOffset)) * 0.05;\n    fragmentColor += texture2D(inputImageTexture, textureCoordinate - samplingOffset) * 0.15;\n    fragmentColor += texture2D(inputImageTexture, textureCoordinate - (2.0 * samplingOffset)) *  0.12;\n    fragmentColor += texture2D(inputImageTexture, textureCoordinate - (3.0 * samplingOffset)) * 0.09;\n    fragmentColor += texture2D(inputImageTexture, textureCoordinate - (4.0 * samplingOffset)) * 0.05;\n    \n    gl_FragColor = fragmentColor;\n}\n"

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 44
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageZoomBlurFilter;->blurCenter:Landroid/graphics/PointF;

    .line 45
    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageZoomBlurFilter;->blurSize:F

    .line 46
    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    .prologue
    .line 50
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    .line 51
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageZoomBlurFilter;->getProgram()I

    move-result v0

    const-string v1, "blurCenter"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageZoomBlurFilter;->blurCenterLocation:I

    .line 52
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageZoomBlurFilter;->getProgram()I

    move-result v0

    const-string v1, "blurSize"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageZoomBlurFilter;->blurSizeLocation:I

    .line 53
    return-void
.end method

.method public onInitialized()V
    .locals 1

    .prologue
    .line 57
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    .line 58
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageZoomBlurFilter;->blurCenter:Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageZoomBlurFilter;->setBlurCenter(Landroid/graphics/PointF;)V

    .line 59
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageZoomBlurFilter;->blurSize:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageZoomBlurFilter;->setBlurSize(F)V

    .line 60
    return-void
.end method

.method public setBlurCenter(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "blurCenter"    # Landroid/graphics/PointF;

    .prologue
    .line 63
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageZoomBlurFilter;->blurCenter:Landroid/graphics/PointF;

    .line 64
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageZoomBlurFilter;->blurCenterLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageZoomBlurFilter;->setPoint(ILandroid/graphics/PointF;)V

    .line 65
    return-void
.end method

.method public setBlurSize(F)V
    .locals 1
    .param p1, "blurSize"    # F

    .prologue
    .line 68
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageZoomBlurFilter;->blurSize:F

    .line 69
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageZoomBlurFilter;->blurSizeLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageZoomBlurFilter;->setFloat(IF)V

    .line 70
    return-void
.end method
