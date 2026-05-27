.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageDivideBlendFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;
.source "GPUImageDivideBlendFilter.java"


# static fields
.field public static final DIVIDE_BLEND_FRAGMENT_SHADER:Ljava/lang/String; = "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n void main()\n {\n   mediump vec4 base = texture2D(inputImageTexture, textureCoordinate);\n   mediump vec4 overlay = texture2D(inputImageTexture2, textureCoordinate2);\n   \n   mediump float ra;\n   if (overlay.a == 0.0 || ((base.r / overlay.r) > (base.a / overlay.a)))\n     ra = overlay.a * base.a + overlay.r * (1.0 - base.a) + base.r * (1.0 - overlay.a);\n   else\n     ra = (base.r * overlay.a * overlay.a) / overlay.r + overlay.r * (1.0 - base.a) + base.r * (1.0 - overlay.a);\n   \n\n   mediump float ga;\n   if (overlay.a == 0.0 || ((base.g / overlay.g) > (base.a / overlay.a)))\n     ga = overlay.a * base.a + overlay.g * (1.0 - base.a) + base.g * (1.0 - overlay.a);\n   else\n     ga = (base.g * overlay.a * overlay.a) / overlay.g + overlay.g * (1.0 - base.a) + base.g * (1.0 - overlay.a);\n\n   \n   mediump float ba;\n   if (overlay.a == 0.0 || ((base.b / overlay.b) > (base.a / overlay.a)))\n     ba = overlay.a * base.a + overlay.b * (1.0 - base.a) + base.b * (1.0 - overlay.a);\n   else\n     ba = (base.b * overlay.a * overlay.a) / overlay.b + overlay.b * (1.0 - base.a) + base.b * (1.0 - overlay.a);\n\n   mediump float a = overlay.a + base.a - overlay.a * base.a;\n   \n   gl_FragColor = vec4(ra, ga, ba, a);\n }"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    const-string v0, "varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n\n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n void main()\n {\n   mediump vec4 base = texture2D(inputImageTexture, textureCoordinate);\n   mediump vec4 overlay = texture2D(inputImageTexture2, textureCoordinate2);\n   \n   mediump float ra;\n   if (overlay.a == 0.0 || ((base.r / overlay.r) > (base.a / overlay.a)))\n     ra = overlay.a * base.a + overlay.r * (1.0 - base.a) + base.r * (1.0 - overlay.a);\n   else\n     ra = (base.r * overlay.a * overlay.a) / overlay.r + overlay.r * (1.0 - base.a) + base.r * (1.0 - overlay.a);\n   \n\n   mediump float ga;\n   if (overlay.a == 0.0 || ((base.g / overlay.g) > (base.a / overlay.a)))\n     ga = overlay.a * base.a + overlay.g * (1.0 - base.a) + base.g * (1.0 - overlay.a);\n   else\n     ga = (base.g * overlay.a * overlay.a) / overlay.g + overlay.g * (1.0 - base.a) + base.g * (1.0 - overlay.a);\n\n   \n   mediump float ba;\n   if (overlay.a == 0.0 || ((base.b / overlay.b) > (base.a / overlay.a)))\n     ba = overlay.a * base.a + overlay.b * (1.0 - base.a) + base.b * (1.0 - overlay.a);\n   else\n     ba = (base.b * overlay.a * overlay.a) / overlay.b + overlay.b * (1.0 - base.a) + base.b * (1.0 - overlay.a);\n\n   mediump float a = overlay.a + base.a - overlay.a * base.a;\n   \n   gl_FragColor = vec4(ra, ga, ba, a);\n }"

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;-><init>(Ljava/lang/String;)V

    .line 58
    return-void
.end method
