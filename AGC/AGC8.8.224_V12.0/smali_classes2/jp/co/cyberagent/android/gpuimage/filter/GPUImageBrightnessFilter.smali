.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageBrightnessFilter.java"


# static fields
.field public static final BRIGHTNESS_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform lowp float brightness;\n \n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4((textureColor.rgb + vec3(brightness)), textureColor.w);\n }"


# instance fields
.field private brightness:F

.field private brightnessLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;-><init>(F)V

    .line 43
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .param p1, "brightness"    # F

    .prologue
    .line 46
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform lowp float brightness;\n \n void main()\n {\n     lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4((textureColor.rgb + vec3(brightness)), textureColor.w);\n }"

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;->brightness:F

    .line 48
    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    .prologue
    .line 52
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    .line 53
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;->getProgram()I

    move-result v0

    const-string v1, "brightness"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;->brightnessLocation:I

    .line 54
    return-void
.end method

.method public onInitialized()V
    .locals 1

    .prologue
    .line 58
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    .line 59
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;->brightness:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;->setBrightness(F)V

    .line 60
    return-void
.end method

.method public setBrightness(F)V
    .locals 2
    .param p1, "brightness"    # F

    .prologue
    .line 63
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;->brightness:F

    .line 64
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;->brightnessLocation:I

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;->brightness:F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageBrightnessFilter;->setFloat(IF)V

    .line 65
    return-void
.end method
