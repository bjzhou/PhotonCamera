.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageHighlightShadowTintFilter.java"


# static fields
.field public static final HIGHLIGHT_SHADOW_TINT_FRAGMENT_SHADER:Ljava/lang/String; = " precision lowp float;\n \n varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform lowp float shadowTintIntensity;\n uniform lowp float highlightTintIntensity;\n uniform highp vec3 shadowTintColor;\n uniform highp vec3 highlightTintColor;\n \n const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);\n \n void main()\n {\n    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n    highp float luminance = dot(textureColor.rgb, luminanceWeighting);\n     \n    highp vec4 shadowResult = mix(textureColor, max(textureColor, vec4( mix(shadowTintColor, textureColor.rgb, luminance), textureColor.a)), shadowTintIntensity);\n    highp vec4 highlightResult = mix(textureColor, min(shadowResult, vec4( mix(shadowResult.rgb, highlightTintColor, luminance), textureColor.a)), highlightTintIntensity);\n \n    gl_FragColor = vec4( mix(shadowResult.rgb, highlightResult.rgb, luminance), textureColor.a);\n }"


# instance fields
.field private highlightTintColor:I

.field private highlightTintColorLocation:I

.field private highlightTintIntensity:F

.field private highlightTintIntensityLocation:I

.field private shadowTintColor:I

.field private shadowTintColorLocation:I

.field private shadowTintIntensity:F

.field private shadowTintIntensityLocation:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 64
    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x1000000

    invoke-direct {p0, v0, v1, v2, v2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;-><init>(FFII)V

    .line 65
    return-void
.end method

.method public constructor <init>(FFII)V
    .locals 2
    .param p1, "shadowTintIntensity"    # F
    .param p2, "highlightTintIntensity"    # F
    .param p3, "shadowTintColor"    # I
    .param p4, "highlightTintColor"    # I

    .line 68
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, " precision lowp float;\n \n varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform lowp float shadowTintIntensity;\n uniform lowp float highlightTintIntensity;\n uniform highp vec3 shadowTintColor;\n uniform highp vec3 highlightTintColor;\n \n const mediump vec3 luminanceWeighting = vec3(0.2125, 0.7154, 0.0721);\n \n void main()\n {\n    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n    highp float luminance = dot(textureColor.rgb, luminanceWeighting);\n     \n    highp vec4 shadowResult = mix(textureColor, max(textureColor, vec4( mix(shadowTintColor, textureColor.rgb, luminance), textureColor.a)), shadowTintIntensity);\n    highp vec4 highlightResult = mix(textureColor, min(shadowResult, vec4( mix(shadowResult.rgb, highlightTintColor, luminance), textureColor.a)), highlightTintIntensity);\n \n    gl_FragColor = vec4( mix(shadowResult.rgb, highlightResult.rgb, luminance), textureColor.a);\n }"

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->highlightTintIntensity:F

    .line 70
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->shadowTintIntensity:F

    .line 71
    iput p4, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->highlightTintColor:I

    .line 72
    iput p3, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->shadowTintColor:I

    .line 73
    return-void
.end method

.method private getColor(I)[F
    .locals 3
    .param p1, "color"    # I

    .line 114
    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x1

    aput v1, v0, v2

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v1

    int-to-float v1, v1

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method


# virtual methods
.method public onInit()V
    .locals 2

    .line 77
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    .line 78
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->getProgram()I

    move-result v0

    const-string v1, "highlightTintIntensity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->highlightTintIntensityLocation:I

    .line 79
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->getProgram()I

    move-result v0

    const-string v1, "shadowTintIntensity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->shadowTintIntensityLocation:I

    .line 80
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->getProgram()I

    move-result v0

    const-string v1, "highlightTintColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->highlightTintColorLocation:I

    .line 81
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->getProgram()I

    move-result v0

    const-string v1, "shadowTintColor"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->shadowTintColorLocation:I

    .line 82
    return-void
.end method

.method public onInitialized()V
    .locals 1

    .line 86
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    .line 87
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->highlightTintIntensity:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->setHighlightTintIntensity(F)V

    .line 88
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->shadowTintIntensity:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->setShadowTintIntensity(F)V

    .line 89
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->highlightTintColor:I

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->setHighlightTintColor(I)V

    .line 90
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->shadowTintColor:I

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->setShadowTintColor(I)V

    .line 91
    return-void
.end method

.method public setHighlightTintColor(I)V
    .locals 2
    .param p1, "highlightTintColor"    # I

    .line 104
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->highlightTintColor:I

    .line 105
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->highlightTintColorLocation:I

    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->getColor(I)[F

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->setFloatVec3(I[F)V

    .line 106
    return-void
.end method

.method public setHighlightTintIntensity(F)V
    .locals 1
    .param p1, "highlightTintIntensity"    # F

    .line 94
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->highlightTintIntensity:F

    .line 95
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->highlightTintIntensityLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->setFloat(IF)V

    .line 96
    return-void
.end method

.method public setShadowTintColor(I)V
    .locals 2
    .param p1, "shadowTintColor"    # I

    .line 109
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->shadowTintColor:I

    .line 110
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->shadowTintColorLocation:I

    invoke-direct {p0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->getColor(I)[F

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->setFloatVec3(I[F)V

    .line 111
    return-void
.end method

.method public setShadowTintIntensity(F)V
    .locals 1
    .param p1, "shadowTintIntensity"    # F

    .line 99
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->shadowTintIntensity:F

    .line 100
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->shadowTintIntensityLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageHighlightShadowTintFilter;->setFloat(IF)V

    .line 101
    return-void
.end method
