.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageLuminanceFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageLuminanceFilter.java"


# static fields
.field public static final LUMINANCE_FRAGMENT_SHADER:Ljava/lang/String; = "precision highp float;\n\nvarying vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\n// Values from \"Graphics Shaders: Theory and Practice\" by Bailey and Cunningham\nconst highp vec3 W = vec3(0.2125, 0.7154, 0.0721);\n\nvoid main()\n{\n    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n    float luminance = dot(textureColor.rgb, W);\n    \n    gl_FragColor = vec4(vec3(luminance), textureColor.a);\n}"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "precision highp float;\n\nvarying vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\n// Values from \"Graphics Shaders: Theory and Practice\" by Bailey and Cunningham\nconst highp vec3 W = vec3(0.2125, 0.7154, 0.0721);\n\nvoid main()\n{\n    lowp vec4 textureColor = texture2D(inputImageTexture, textureCoordinate);\n    float luminance = dot(textureColor.rgb, W);\n    \n    gl_FragColor = vec4(vec3(luminance), textureColor.a);\n}"

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    return-void
.end method
