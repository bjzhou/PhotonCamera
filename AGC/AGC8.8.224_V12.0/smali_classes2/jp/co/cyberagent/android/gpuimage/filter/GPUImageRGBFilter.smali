.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageRGBFilter.java"


# static fields
.field public static final RGB_FRAGMENT_SHADER:Ljava/lang/String; = "  varying highp vec2 textureCoordinate;\n  \n  uniform sampler2D inputImageTexture;\n  uniform highp float red;\n  uniform highp float green;\n  uniform highp float blue;\n  \n  void main()\n  {\n      highp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n      \n      gl_FragColor = vec4(textureColor.r * red, textureColor.g * green, textureColor.b * blue, 1.0);\n  }\n"


# instance fields
.field private blue:F

.field private blueLocation:I

.field private green:F

.field private greenLocation:I

.field private red:F

.field private redLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/high16 v0, 0x3f800000    # 1.0f

    .line 51
    invoke-direct {p0, v0, v0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;-><init>(FFF)V

    .line 52
    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 2
    .param p1, "red"    # F
    .param p2, "green"    # F
    .param p3, "blue"    # F

    .prologue
    .line 55
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "  varying highp vec2 textureCoordinate;\n  \n  uniform sampler2D inputImageTexture;\n  uniform highp float red;\n  uniform highp float green;\n  uniform highp float blue;\n  \n  void main()\n  {\n      highp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n      \n      gl_FragColor = vec4(textureColor.r * red, textureColor.g * green, textureColor.b * blue, 1.0);\n  }\n"

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->red:F

    .line 57
    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->green:F

    .line 58
    iput p3, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->blue:F

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
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->getProgram()I

    move-result v0

    const-string v1, "red"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->redLocation:I

    .line 65
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->getProgram()I

    move-result v0

    const-string v1, "green"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->greenLocation:I

    .line 66
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->getProgram()I

    move-result v0

    const-string v1, "blue"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->blueLocation:I

    .line 67
    return-void
.end method

.method public onInitialized()V
    .locals 1

    .prologue
    .line 71
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    .line 72
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->red:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->setRed(F)V

    .line 73
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->green:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->setGreen(F)V

    .line 74
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->blue:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->setBlue(F)V

    .line 75
    return-void
.end method

.method public setBlue(F)V
    .locals 2
    .param p1, "blue"    # F

    .prologue
    .line 88
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->blue:F

    .line 89
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->blueLocation:I

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->blue:F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->setFloat(IF)V

    .line 90
    return-void
.end method

.method public setGreen(F)V
    .locals 2
    .param p1, "green"    # F

    .prologue
    .line 83
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->green:F

    .line 84
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->greenLocation:I

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->green:F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->setFloat(IF)V

    .line 85
    return-void
.end method

.method public setRed(F)V
    .locals 2
    .param p1, "red"    # F

    .prologue
    .line 78
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->red:F

    .line 79
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->redLocation:I

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->red:F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageRGBFilter;->setFloat(IF)V

    .line 80
    return-void
.end method
