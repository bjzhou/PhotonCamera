.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageGlassSphereFilter.java"


# static fields
.field public static final SPHERE_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform highp vec2 center;\nuniform highp float radius;\nuniform highp float aspectRatio;\nuniform highp float refractiveIndex;\n// uniform vec3 lightPosition;\nconst highp vec3 lightPosition = vec3(-0.5, 0.5, 1.0);\nconst highp vec3 ambientLightPosition = vec3(0.0, 0.0, 1.0);\n\nvoid main()\n{\nhighp vec2 textureCoordinateToUse = vec2(textureCoordinate.x, (textureCoordinate.y * aspectRatio + 0.5 - 0.5 * aspectRatio));\nhighp float distanceFromCenter = distance(center, textureCoordinateToUse);\nlowp float checkForPresenceWithinSphere = step(distanceFromCenter, radius);\n\ndistanceFromCenter = distanceFromCenter / radius;\n\nhighp float normalizedDepth = radius * sqrt(1.0 - distanceFromCenter * distanceFromCenter);\nhighp vec3 sphereNormal = normalize(vec3(textureCoordinateToUse - center, normalizedDepth));\n\nhighp vec3 refractedVector = 2.0 * refract(vec3(0.0, 0.0, -1.0), sphereNormal, refractiveIndex);\nrefractedVector.xy = -refractedVector.xy;\n\nhighp vec3 finalSphereColor = texture2D(inputImageTexture, (refractedVector.xy + 1.0) * 0.5).rgb;\n\n// Grazing angle lighting\nhighp float lightingIntensity = 2.5 * (1.0 - pow(clamp(dot(ambientLightPosition, sphereNormal), 0.0, 1.0), 0.25));\nfinalSphereColor += lightingIntensity;\n\n// Specular lighting\nlightingIntensity  = clamp(dot(normalize(lightPosition), sphereNormal), 0.0, 1.0);\nlightingIntensity  = pow(lightingIntensity, 15.0);\nfinalSphereColor += vec3(0.8, 0.8, 0.8) * lightingIntensity;\n\ngl_FragColor = vec4(finalSphereColor, 1.0) * checkForPresenceWithinSphere;\n}\n"


# instance fields
.field private aspectRatio:F

.field private aspectRatioLocation:I

.field private center:Landroid/graphics/PointF;

.field private centerLocation:I

.field private radius:F

.field private radiusLocation:I

.field private refractiveIndex:F

.field private refractiveIndexLocation:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    const/high16 v1, 0x3f000000    # 0.5f

    .line 74
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    const/high16 v1, 0x3e800000    # 0.25f

    const v2, 0x3f35c28f    # 0.71f

    invoke-direct {p0, v0, v1, v2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;-><init>(Landroid/graphics/PointF;FF)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/graphics/PointF;FF)V
    .locals 2
    .param p1, "center"    # Landroid/graphics/PointF;
    .param p2, "radius"    # F
    .param p3, "refractiveIndex"    # F

    .prologue
    .line 78
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nuniform highp vec2 center;\nuniform highp float radius;\nuniform highp float aspectRatio;\nuniform highp float refractiveIndex;\n// uniform vec3 lightPosition;\nconst highp vec3 lightPosition = vec3(-0.5, 0.5, 1.0);\nconst highp vec3 ambientLightPosition = vec3(0.0, 0.0, 1.0);\n\nvoid main()\n{\nhighp vec2 textureCoordinateToUse = vec2(textureCoordinate.x, (textureCoordinate.y * aspectRatio + 0.5 - 0.5 * aspectRatio));\nhighp float distanceFromCenter = distance(center, textureCoordinateToUse);\nlowp float checkForPresenceWithinSphere = step(distanceFromCenter, radius);\n\ndistanceFromCenter = distanceFromCenter / radius;\n\nhighp float normalizedDepth = radius * sqrt(1.0 - distanceFromCenter * distanceFromCenter);\nhighp vec3 sphereNormal = normalize(vec3(textureCoordinateToUse - center, normalizedDepth));\n\nhighp vec3 refractedVector = 2.0 * refract(vec3(0.0, 0.0, -1.0), sphereNormal, refractiveIndex);\nrefractedVector.xy = -refractedVector.xy;\n\nhighp vec3 finalSphereColor = texture2D(inputImageTexture, (refractedVector.xy + 1.0) * 0.5).rgb;\n\n// Grazing angle lighting\nhighp float lightingIntensity = 2.5 * (1.0 - pow(clamp(dot(ambientLightPosition, sphereNormal), 0.0, 1.0), 0.25));\nfinalSphereColor += lightingIntensity;\n\n// Specular lighting\nlightingIntensity  = clamp(dot(normalize(lightPosition), sphereNormal), 0.0, 1.0);\nlightingIntensity  = pow(lightingIntensity, 15.0);\nfinalSphereColor += vec3(0.8, 0.8, 0.8) * lightingIntensity;\n\ngl_FragColor = vec4(finalSphereColor, 1.0) * checkForPresenceWithinSphere;\n}\n"

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->center:Landroid/graphics/PointF;

    .line 80
    iput p2, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->radius:F

    .line 81
    iput p3, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->refractiveIndex:F

    .line 82
    return-void
.end method

.method private setAspectRatio(F)V
    .locals 1
    .param p1, "aspectRatio"    # F

    .prologue
    .line 110
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->aspectRatio:F

    .line 111
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->aspectRatioLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->setFloat(IF)V

    .line 112
    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInit()V

    .line 87
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->getProgram()I

    move-result v0

    const-string v1, "center"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->centerLocation:I

    .line 88
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->getProgram()I

    move-result v0

    const-string v1, "radius"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->radiusLocation:I

    .line 89
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->getProgram()I

    move-result v0

    const-string v1, "aspectRatio"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->aspectRatioLocation:I

    .line 90
    invoke-virtual {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->getProgram()I

    move-result v0

    const-string v1, "refractiveIndex"

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glGetUniformLocation(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->refractiveIndexLocation:I

    .line 91
    return-void
.end method

.method public onInitialized()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onInitialized()V

    .line 96
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->aspectRatio:F

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->setAspectRatio(F)V

    .line 97
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->radius:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->setRadius(F)V

    .line 98
    iget-object v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->center:Landroid/graphics/PointF;

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->setCenter(Landroid/graphics/PointF;)V

    .line 99
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->refractiveIndex:F

    invoke-virtual {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->setRefractiveIndex(F)V

    .line 100
    return-void
.end method

.method public onOutputSizeChanged(II)V
    .locals 2
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 104
    int-to-float v0, p2

    int-to-float v1, p1

    div-float/2addr v0, v1

    iput v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->aspectRatio:F

    .line 105
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->aspectRatio:F

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->setAspectRatio(F)V

    .line 106
    invoke-super {p0, p1, p2}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;->onOutputSizeChanged(II)V

    .line 107
    return-void
.end method

.method public setCenter(Landroid/graphics/PointF;)V
    .locals 1
    .param p1, "center"    # Landroid/graphics/PointF;

    .prologue
    .line 120
    iput-object p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->center:Landroid/graphics/PointF;

    .line 121
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->centerLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->setPoint(ILandroid/graphics/PointF;)V

    .line 122
    return-void
.end method

.method public setRadius(F)V
    .locals 1
    .param p1, "radius"    # F

    .prologue
    .line 125
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->radius:F

    .line 126
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->radiusLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->setFloat(IF)V

    .line 127
    return-void
.end method

.method public setRefractiveIndex(F)V
    .locals 1
    .param p1, "refractiveIndex"    # F

    .prologue
    .line 115
    iput p1, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->refractiveIndex:F

    .line 116
    iget v0, p0, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->refractiveIndexLocation:I

    invoke-virtual {p0, v0, p1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageGlassSphereFilter;->setFloat(IF)V

    .line 117
    return-void
.end method
