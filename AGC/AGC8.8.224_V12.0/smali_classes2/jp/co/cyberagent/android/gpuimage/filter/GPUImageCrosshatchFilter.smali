.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageCrosshatchFilter.java"


# static fields
.field public static final CROSSHATCH_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\nuniform sampler2D inputImageTexture;\nuniform highp float crossHatchSpacing;\nuniform highp float lineWidth;\nconst highp vec3 W = vec3(0.2125, 0.7154, 0.0721);\nvoid main()\n{\nhighp float luminance = dot(texture2D(inputImageTexture, textureCoordinate).rgb, W);\nlowp vec4 colorToDisplay = vec4(1.0, 1.0, 1.0, 1.0);\nif (luminance < 1.00)\n{\nif (mod(textureCoordinate.x + textureCoordinate.y, crossHatchSpacing) <= lineWidth)\n{\ncolorToDisplay = vec4(0.0, 0.0, 0.0, 1.0);\n}\n}\nif (luminance < 0.75)\n{\nif (mod(textureCoordinate.x - textureCoordinate.y, crossHatchSpacing) <= lineWidth)\n{\ncolorToDisplay = vec4(0.0, 0.0, 0.0, 1.0);\n}\n}\nif (luminance < 0.50)\n{\nif (mod(textureCoordinate.x + textureCoordinate.y - (crossHatchSpacing / 2.0), crossHatchSpacing) <= lineWidth)\n{\ncolorToDisplay = vec4(0.0, 0.0, 0.0, 1.0);\n}\n}\nif (luminance < 0.3)\n{\nif (mod(textureCoordinate.x - textureCoordinate.y - (crossHatchSpacing / 2.0), crossHatchSpacing) <= lineWidth)\n{\ncolorToDisplay = vec4(0.0, 0.0, 0.0, 1.0);\n}\n}\ngl_FragColor = colorToDisplay;\n}\n"


# instance fields
.field private crossHatchSpacing:F

.field private crossHatchSpacingLocation:I

.field private lineWidth:F

.field private lineWidthLocation:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 76
    const v0, 0x3cf5c28f    # 0.03f

    const v1, 0x3b449ba6    # 0.003f

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;-><init>(FF)V

    .line 77
    return-void
.end method

.method public constructor <init>(FF)V
    .locals 2
    .param p1, "crossHatchSpacing"    # F
    .param p2, "lineWidth"    # F

    .prologue
    .line 80
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying highp vec2 textureCoordinate;\nuniform sampler2D inputImageTexture;\nuniform highp float crossHatchSpacing;\nuniform highp float lineWidth;\nconst highp vec3 W = vec3(0.2125, 0.7154, 0.0721);\nvoid main()\n{\nhighp float luminance = dot(texture2D(inputImageTexture, textureCoordinate).rgb, W);\nlowp vec4 colorToDisplay = vec4(1.0, 1.0, 1.0, 1.0);\nif (luminance < 1.00)\n{\nif (mod(textureCoordinate.x + textureCoordinate.y, crossHatchSpacing) <= lineWidth)\n{\ncolorToDisplay = vec4(0.0, 0.0, 0.0, 1.0);\n}\n}\nif (luminance < 0.75)\n{\nif (mod(textureCoordinate.x - textureCoordinate.y, crossHatchSpacing) <= lineWidth)\n{\ncolorToDisplay = vec4(0.0, 0.0, 0.0, 1.0);\n}\n}\nif (luminance < 0.50)\n{\nif (mod(textureCoordinate.x + textureCoordinate.y - (crossHatchSpacing / 2.0), crossHatchSpacing) <= lineWidth)\n{\ncolorToDisplay = vec4(0.0, 0.0, 0.0, 1.0);\n}\n}\nif (luminance < 0.3)\n{\nif (mod(textureCoordinate.x - textureCoordinate.y - (crossHatchSpacing / 2.0), crossHatchSpacing) <= lineWidth)\n{\ncolorToDisplay = vec4(0.0, 0.0, 0.0, 1.0);\n}\n}\ngl_FragColor = colorToDisplay;\n}\n"

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;->crossHatchSpacing:F

    .line 82
    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;->lineWidth:F

    .line 83
    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    .prologue
    .line 87
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    .line 88
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;->getProgram()I

    move-result v0

    const-string v1, "crossHatchSpacing"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;->crossHatchSpacingLocation:I

    .line 89
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;->getProgram()I

    move-result v0

    const-string v1, "lineWidth"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;->lineWidthLocation:I

    .line 90
    return-void
.end method

.method public onInitialized()V
    .locals 1

    .prologue
    .line 94
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    .line 95
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;->crossHatchSpacing:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;->setCrossHatchSpacing(F)V

    .line 96
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;->lineWidth:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;->setLineWidth(F)V

    .line 97
    return-void
.end method

.method public setCrossHatchSpacing(F)V
    .locals 3
    .param p1, "crossHatchSpacing"    # F

    .prologue
    .line 106
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;->getOutputWidth()I

    move-result v1

    if-eqz v1, :cond_0

    .line 107
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;->getOutputWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v0, v1, v2

    .line 112
    .local v0, "singlePixelSpacing":F
    :goto_0
    cmpg-float v1, p1, v0

    if-gez v1, :cond_1

    .line 113
    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;->crossHatchSpacing:F

    .line 118
    :goto_1
    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;->crossHatchSpacingLocation:I

    iget v2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;->crossHatchSpacing:F

    invoke-virtual {p0, v1, v2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;->setFloat(IF)V

    .line 119
    return-void

    .line 109
    .end local v0    # "singlePixelSpacing":F
    :cond_0
    const/high16 v0, 0x3a000000

    .restart local v0    # "singlePixelSpacing":F
    goto :goto_0

    .line 115
    :cond_1
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;->crossHatchSpacing:F

    goto :goto_1
.end method

.method public setLineWidth(F)V
    .locals 2
    .param p1, "lineWidth"    # F

    .prologue
    .line 127
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;->lineWidth:F

    .line 128
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;->lineWidthLocation:I

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;->lineWidth:F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCrosshatchFilter;->setFloat(IF)V

    .line 129
    return-void
.end method
