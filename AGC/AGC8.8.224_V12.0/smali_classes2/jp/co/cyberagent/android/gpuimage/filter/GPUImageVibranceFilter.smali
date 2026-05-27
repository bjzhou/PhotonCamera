.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageVibranceFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageVibranceFilter.java"


# static fields
.field public static final VIBRANCE_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\nuniform lowp float vibrance;\n\nvoid main() {\n    lowp vec4 color = texture2D(inputImageTexture, textureCoordinate);\n    lowp float average = (color.r + color.g + color.b) / 3.0;\n    lowp float mx = max(color.r, max(color.g, color.b));\n    lowp float amt = (mx - average) * (-vibrance * 3.0);\n    color.rgb = mix(color.rgb, vec3(mx), amt);\n    gl_FragColor = color;\n}"


# instance fields
.field private vibrance:F

.field private vibranceLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageVibranceFilter;-><init>(F)V

    .line 32
    return-void
.end method

.method public constructor <init>(F)V
    .locals 2
    .param p1, "vibrance"    # F

    .prologue
    .line 35
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\nuniform lowp float vibrance;\n\nvoid main() {\n    lowp vec4 color = texture2D(inputImageTexture, textureCoordinate);\n    lowp float average = (color.r + color.g + color.b) / 3.0;\n    lowp float mx = max(color.r, max(color.g, color.b));\n    lowp float amt = (mx - average) * (-vibrance * 3.0);\n    color.rgb = mix(color.rgb, vec3(mx), amt);\n    gl_FragColor = color;\n}"

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageVibranceFilter;->vibrance:F

    .line 37
    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    .prologue
    .line 26
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    .line 27
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageVibranceFilter;->getProgram()I

    move-result v0

    const-string v1, "vibrance"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageVibranceFilter;->vibranceLocation:I

    .line 28
    return-void
.end method

.method public onInitialized()V
    .locals 1

    .prologue
    .line 41
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    .line 42
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageVibranceFilter;->vibrance:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageVibranceFilter;->setVibrance(F)V

    .line 43
    return-void
.end method

.method public setVibrance(F)V
    .locals 1
    .param p1, "vibrance"    # F

    .prologue
    .line 46
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageVibranceFilter;->vibrance:F

    .line 47
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageVibranceFilter;->isInitialized()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageVibranceFilter;->vibranceLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageVibranceFilter;->setFloat(IF)V

    .line 50
    :cond_0
    return-void
.end method
