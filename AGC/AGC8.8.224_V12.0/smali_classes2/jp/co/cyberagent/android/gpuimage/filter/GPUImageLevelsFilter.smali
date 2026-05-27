.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageLevelsFilter.java"


# static fields
.field public static final LEVELS_FRAGMET_SHADER:Ljava/lang/String; = " varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform mediump vec3 levelMinimum;\n uniform mediump vec3 levelMiddle;\n uniform mediump vec3 levelMaximum;\n uniform mediump vec3 minOutput;\n uniform mediump vec3 maxOutput;\n \n void main()\n {\n     mediump vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4( mix(minOutput, maxOutput, pow(min(max(textureColor.rgb -levelMinimum, vec3(0.0)) / (levelMaximum - levelMinimum  ), vec3(1.0)), 1.0 /levelMiddle)) , textureColor.a);\n }\n"

.field private static final LOGTAG:Ljava/lang/String;


# instance fields
.field private max:[F

.field private maxLocation:I

.field private maxOutput:[F

.field private maxOutputLocation:I

.field private mid:[F

.field private midLocation:I

.field private min:[F

.field private minLocation:I

.field private minOutput:[F

.field private minOutputLocation:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->LOGTAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v0, 0x3

    .line 42
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    new-array v2, v0, [F

    fill-array-data v2, :array_1

    new-array v3, v0, [F

    fill-array-data v3, :array_2

    new-array v4, v0, [F

    fill-array-data v4, :array_3

    new-array v5, v0, [F

    fill-array-data v5, :array_4

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;-><init>([F[F[F[F[F)V

    .line 43
    return-void

    .line 42
    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x0
        0x0
        0x0
    .end array-data

    :array_4
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private constructor <init>([F[F[F[F[F)V
    .locals 2
    .param p1, "min"    # [F
    .param p2, "mid"    # [F
    .param p3, "max"    # [F
    .param p4, "minOUt"    # [F
    .param p5, "maxOut"    # [F

    .prologue
    .line 46
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, " varying highp vec2 textureCoordinate;\n \n uniform sampler2D inputImageTexture;\n uniform mediump vec3 levelMinimum;\n uniform mediump vec3 levelMiddle;\n uniform mediump vec3 levelMaximum;\n uniform mediump vec3 minOutput;\n uniform mediump vec3 maxOutput;\n \n void main()\n {\n     mediump vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n     \n     gl_FragColor = vec4( mix(minOutput, maxOutput, pow(min(max(textureColor.rgb -levelMinimum, vec3(0.0)) / (levelMaximum - levelMinimum  ), vec3(1.0)), 1.0 /levelMiddle)) , textureColor.a);\n }\n"

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->min:[F

    .line 49
    iput-object p2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->mid:[F

    .line 50
    iput-object p3, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->max:[F

    .line 51
    iput-object p4, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->minOutput:[F

    .line 52
    iput-object p5, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->maxOutput:[F

    .line 53
    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    .prologue
    .line 57
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    .line 58
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->getProgram()I

    move-result v0

    const-string v1, "levelMinimum"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->minLocation:I

    .line 59
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->getProgram()I

    move-result v0

    const-string v1, "levelMiddle"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->midLocation:I

    .line 60
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->getProgram()I

    move-result v0

    const-string v1, "levelMaximum"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->maxLocation:I

    .line 61
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->getProgram()I

    move-result v0

    const-string v1, "minOutput"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->minOutputLocation:I

    .line 62
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->getProgram()I

    move-result v0

    const-string v1, "maxOutput"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->maxOutputLocation:I

    .line 63
    return-void
.end method

.method public onInitialized()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 67
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    move-object v0, p0

    move v3, v2

    move v4, v1

    move v5, v2

    .line 68
    invoke-virtual/range {v0 .. v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setMin(FFFFF)V

    .line 69
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->updateUniforms()V

    .line 70
    return-void
.end method

.method public setBlueMin(FFF)V
    .locals 6
    .param p1, "min"    # F
    .param p2, "mid"    # F
    .param p3, "max"    # F

    .prologue
    .line 127
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setBlueMin(FFFFF)V

    .line 128
    return-void
.end method

.method public setBlueMin(FFFFF)V
    .locals 2
    .param p1, "min"    # F
    .param p2, "mid"    # F
    .param p3, "max"    # F
    .param p4, "minOut"    # F
    .param p5, "maxOut"    # F

    .prologue
    const/4 v1, 0x2

    .line 118
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->min:[F

    aput p1, v0, v1

    .line 119
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->mid:[F

    aput p2, v0, v1

    .line 120
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->max:[F

    aput p3, v0, v1

    .line 121
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->minOutput:[F

    aput p4, v0, v1

    .line 122
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->maxOutput:[F

    aput p5, v0, v1

    .line 123
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->updateUniforms()V

    .line 124
    return-void
.end method

.method public setGreenMin(FFF)V
    .locals 6
    .param p1, "min"    # F
    .param p2, "mid"    # F
    .param p3, "max"    # F

    .prologue
    .line 114
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setGreenMin(FFFFF)V

    .line 115
    return-void
.end method

.method public setGreenMin(FFFFF)V
    .locals 2
    .param p1, "min"    # F
    .param p2, "mid"    # F
    .param p3, "max"    # F
    .param p4, "minOut"    # F
    .param p5, "maxOut"    # F

    .prologue
    const/4 v1, 0x1

    .line 105
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->min:[F

    aput p1, v0, v1

    .line 106
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->mid:[F

    aput p2, v0, v1

    .line 107
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->max:[F

    aput p3, v0, v1

    .line 108
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->minOutput:[F

    aput p4, v0, v1

    .line 109
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->maxOutput:[F

    aput p5, v0, v1

    .line 110
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->updateUniforms()V

    .line 111
    return-void
.end method

.method public setMin(FFF)V
    .locals 6
    .param p1, "min"    # F
    .param p2, "mid"    # F
    .param p3, "max"    # F

    .prologue
    .line 88
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setMin(FFFFF)V

    .line 89
    return-void
.end method

.method public setMin(FFFFF)V
    .locals 0
    .param p1, "min"    # F
    .param p2, "mid"    # F
    .param p3, "max"    # F
    .param p4, "minOut"    # F
    .param p5, "maxOut"    # F

    .prologue
    .line 82
    invoke-virtual/range {p0 .. p5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setRedMin(FFFFF)V

    .line 83
    invoke-virtual/range {p0 .. p5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setGreenMin(FFFFF)V

    .line 84
    invoke-virtual/range {p0 .. p5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setBlueMin(FFFFF)V

    .line 85
    return-void
.end method

.method public setRedMin(FFF)V
    .locals 6
    .param p1, "min"    # F
    .param p2, "mid"    # F
    .param p3, "max"    # F

    .prologue
    .line 101
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setRedMin(FFFFF)V

    .line 102
    return-void
.end method

.method public setRedMin(FFFFF)V
    .locals 2
    .param p1, "min"    # F
    .param p2, "mid"    # F
    .param p3, "max"    # F
    .param p4, "minOut"    # F
    .param p5, "maxOut"    # F

    .prologue
    const/4 v1, 0x0

    .line 92
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->min:[F

    aput p1, v0, v1

    .line 93
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->mid:[F

    aput p2, v0, v1

    .line 94
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->max:[F

    aput p3, v0, v1

    .line 95
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->minOutput:[F

    aput p4, v0, v1

    .line 96
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->maxOutput:[F

    aput p5, v0, v1

    .line 97
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->updateUniforms()V

    .line 98
    return-void
.end method

.method public updateUniforms()V
    .locals 2

    .prologue
    .line 74
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->minLocation:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->min:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setFloatVec3(I[F)V

    .line 75
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->midLocation:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->mid:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setFloatVec3(I[F)V

    .line 76
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->maxLocation:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->max:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setFloatVec3(I[F)V

    .line 77
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->minOutputLocation:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->minOutput:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setFloatVec3(I[F)V

    .line 78
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->maxOutputLocation:I

    iget-object v1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->maxOutput:[F

    invoke-virtual {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLevelsFilter;->setFloatVec3(I[F)V

    .line 79
    return-void
.end method
