.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLookupFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;
.source "GPUImageLookupFilter.java"


# static fields
.field public static final LOOKUP_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2; // TODO: This is not used\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2; // lookup texture\n \n uniform lowp float intensity;\n \n void main()\n {\n     highp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     highp float blueColor = textureColor.b * 63.0;\n     \n     highp vec2 quad1;\n     quad1.y = floor(floor(blueColor) / 8.0);\n     quad1.x = floor(blueColor) - (quad1.y * 8.0);\n     \n     highp vec2 quad2;\n     quad2.y = floor(ceil(blueColor) / 8.0);\n     quad2.x = ceil(blueColor) - (quad2.y * 8.0);\n     \n     highp vec2 texPos1;\n     texPos1.x = (quad1.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n     texPos1.y = (quad1.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n     \n     highp vec2 texPos2;\n     texPos2.x = (quad2.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n     texPos2.y = (quad2.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n     \n     lowp vec4 newColor1 = texture2D(inputImageTexture2, texPos1);\n     lowp vec4 newColor2 = texture2D(inputImageTexture2, texPos2);\n     \n     lowp vec4 newColor = mix(newColor1, newColor2, fract(blueColor));\n     gl_FragColor = mix(textureColor, vec4(newColor.rgb, textureColor.w), intensity);\n }"


# instance fields
.field private intensity:F

.field private intensityLocation:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 64
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLookupFilter;-><init>(F)V

    .line 65
    return-void
.end method

.method public constructor <init>(F)V
    .locals 1
    .param p1, "intensity"    # F

    .prologue
    .line 68
    const-string v0, "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2; // TODO: This is not used\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2; // lookup texture\n \n uniform lowp float intensity;\n \n void main()\n {\n     highp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     highp float blueColor = textureColor.b * 63.0;\n     \n     highp vec2 quad1;\n     quad1.y = floor(floor(blueColor) / 8.0);\n     quad1.x = floor(blueColor) - (quad1.y * 8.0);\n     \n     highp vec2 quad2;\n     quad2.y = floor(ceil(blueColor) / 8.0);\n     quad2.x = ceil(blueColor) - (quad2.y * 8.0);\n     \n     highp vec2 texPos1;\n     texPos1.x = (quad1.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n     texPos1.y = (quad1.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n     \n     highp vec2 texPos2;\n     texPos2.x = (quad2.x * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.r);\n     texPos2.y = (quad2.y * 0.125) + 0.5/512.0 + ((0.125 - 1.0/512.0) * textureColor.g);\n     \n     lowp vec4 newColor1 = texture2D(inputImageTexture2, texPos1);\n     lowp vec4 newColor2 = texture2D(inputImageTexture2, texPos2);\n     \n     lowp vec4 newColor = mix(newColor1, newColor2, fract(blueColor));\n     gl_FragColor = mix(textureColor, vec4(newColor.rgb, textureColor.w), intensity);\n }"

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;-><init>(Ljava/lang/String;)V

    .line 69
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLookupFilter;->intensity:F

    .line 70
    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    .prologue
    .line 74
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->onInit()V

    .line 75
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLookupFilter;->getProgram()I

    move-result v0

    const-string v1, "intensity"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLookupFilter;->intensityLocation:I

    .line 76
    return-void
.end method

.method public onInitialized()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;->onInitialized()V

    .line 81
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLookupFilter;->intensity:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLookupFilter;->setIntensity(F)V

    .line 82
    return-void
.end method

.method public setIntensity(F)V
    .locals 2
    .param p1, "intensity"    # F

    .prologue
    .line 85
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLookupFilter;->intensity:F

    .line 86
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLookupFilter;->intensityLocation:I

    iget v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLookupFilter;->intensity:F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLookupFilter;->setFloat(IF)V

    .line 87
    return-void
.end method
