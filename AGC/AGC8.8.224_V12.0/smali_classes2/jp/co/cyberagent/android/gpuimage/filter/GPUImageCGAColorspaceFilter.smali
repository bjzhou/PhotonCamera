.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageCGAColorspaceFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;
.source "GPUImageCGAColorspaceFilter.java"


# static fields
.field public static final CGACOLORSPACE_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nhighp vec2 sampleDivisor = vec2(1.0 / 200.0, 1.0 / 320.0);\n//highp vec4 colorDivisor = vec4(colorDepth);\n\nhighp vec2 samplePos = textureCoordinate - mod(textureCoordinate, sampleDivisor);\nhighp vec4 color = texture2D(inputImageTexture, samplePos );\n\n//gl_FragColor = texture2D(inputImageTexture, samplePos );\nmediump vec4 colorCyan = vec4(85.0 / 255.0, 1.0, 1.0, 1.0);\nmediump vec4 colorMagenta = vec4(1.0, 85.0 / 255.0, 1.0, 1.0);\nmediump vec4 colorWhite = vec4(1.0, 1.0, 1.0, 1.0);\nmediump vec4 colorBlack = vec4(0.0, 0.0, 0.0, 1.0);\n\nmediump vec4 endColor;\nhighp float blackDistance = distance(color, colorBlack);\nhighp float whiteDistance = distance(color, colorWhite);\nhighp float magentaDistance = distance(color, colorMagenta);\nhighp float cyanDistance = distance(color, colorCyan);\n\nmediump vec4 finalColor;\n\nhighp float colorDistance = min(magentaDistance, cyanDistance);\ncolorDistance = min(colorDistance, whiteDistance);\ncolorDistance = min(colorDistance, blackDistance); \n\nif (colorDistance == blackDistance) {\nfinalColor = colorBlack;\n} else if (colorDistance == whiteDistance) {\nfinalColor = colorWhite;\n} else if (colorDistance == cyanDistance) {\nfinalColor = colorCyan;\n} else {\nfinalColor = colorMagenta;\n}\n\ngl_FragColor = finalColor;\n}\n"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    const-string v0, "attribute vec4 position;\nattribute vec4 inputTextureCoordinate;\n \nvarying vec2 textureCoordinate;\n \nvoid main()\n{\n    gl_Position = position;\n    textureCoordinate = inputTextureCoordinate.xy;\n}"

    const-string v1, "varying highp vec2 textureCoordinate;\n\nuniform sampler2D inputImageTexture;\n\nvoid main()\n{\nhighp vec2 sampleDivisor = vec2(1.0 / 200.0, 1.0 / 320.0);\n//highp vec4 colorDivisor = vec4(colorDepth);\n\nhighp vec2 samplePos = textureCoordinate - mod(textureCoordinate, sampleDivisor);\nhighp vec4 color = texture2D(inputImageTexture, samplePos );\n\n//gl_FragColor = texture2D(inputImageTexture, samplePos );\nmediump vec4 colorCyan = vec4(85.0 / 255.0, 1.0, 1.0, 1.0);\nmediump vec4 colorMagenta = vec4(1.0, 85.0 / 255.0, 1.0, 1.0);\nmediump vec4 colorWhite = vec4(1.0, 1.0, 1.0, 1.0);\nmediump vec4 colorBlack = vec4(0.0, 0.0, 0.0, 1.0);\n\nmediump vec4 endColor;\nhighp float blackDistance = distance(color, colorBlack);\nhighp float whiteDistance = distance(color, colorWhite);\nhighp float magentaDistance = distance(color, colorMagenta);\nhighp float cyanDistance = distance(color, colorCyan);\n\nmediump vec4 finalColor;\n\nhighp float colorDistance = min(magentaDistance, cyanDistance);\ncolorDistance = min(colorDistance, whiteDistance);\ncolorDistance = min(colorDistance, blackDistance); \n\nif (colorDistance == blackDistance) {\nfinalColor = colorBlack;\n} else if (colorDistance == whiteDistance) {\nfinalColor = colorWhite;\n} else if (colorDistance == cyanDistance) {\nfinalColor = colorCyan;\n} else {\nfinalColor = colorMagenta;\n}\n\ngl_FragColor = finalColor;\n}\n"

    invoke-direct {p0, v0, v1}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageFilter;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
