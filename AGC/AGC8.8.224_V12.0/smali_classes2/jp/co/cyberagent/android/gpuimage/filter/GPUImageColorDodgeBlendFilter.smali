.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageColorDodgeBlendFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;
.source "GPUImageColorDodgeBlendFilter.java"


# static fields
.field public static final COLOR_DODGE_BLEND_FRAGMENT_SHADER:Ljava/lang/String; = "precision mediump float;\n \n varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n void main()\n {\n     vec4 base = texture2D(inputImageTexture, textureCoordinate);\n     vec4 overlay = texture2D(inputImageTexture2, textureCoordinate2);\n     \n     vec3 baseOverlayAlphaProduct = vec3(overlay.a * base.a);\n     vec3 rightHandProduct = overlay.rgb * (1.0 - base.a) + base.rgb * (1.0 - overlay.a);\n     \n     vec3 firstBlendColor = baseOverlayAlphaProduct + rightHandProduct;\n     vec3 overlayRGB = clamp((overlay.rgb / clamp(overlay.a, 0.01, 1.0)) * step(0.0, overlay.a), 0.0, 0.99);\n     \n     vec3 secondBlendColor = (base.rgb * overlay.a) / (1.0 - overlayRGB) + rightHandProduct;\n     \n     vec3 colorChoice = step((overlay.rgb * base.a + base.rgb * overlay.a), baseOverlayAlphaProduct);\n     \n     gl_FragColor = vec4(mix(firstBlendColor, secondBlendColor, colorChoice), 1.0);\n }"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "precision mediump float;\n \n varying highp vec2 textureCoordinate;\n varying highp vec2 textureCoordinate2;\n \n uniform sampler2D inputImageTexture;\n uniform sampler2D inputImageTexture2;\n \n void main()\n {\n     vec4 base = texture2D(inputImageTexture, textureCoordinate);\n     vec4 overlay = texture2D(inputImageTexture2, textureCoordinate2);\n     \n     vec3 baseOverlayAlphaProduct = vec3(overlay.a * base.a);\n     vec3 rightHandProduct = overlay.rgb * (1.0 - base.a) + base.rgb * (1.0 - overlay.a);\n     \n     vec3 firstBlendColor = baseOverlayAlphaProduct + rightHandProduct;\n     vec3 overlayRGB = clamp((overlay.rgb / clamp(overlay.a, 0.01, 1.0)) * step(0.0, overlay.a), 0.0, 0.99);\n     \n     vec3 secondBlendColor = (base.rgb * overlay.a) / (1.0 - overlayRGB) + rightHandProduct;\n     \n     vec3 colorChoice = step((overlay.rgb * base.a + base.rgb * overlay.a), baseOverlayAlphaProduct);\n     \n     gl_FragColor = vec4(mix(firstBlendColor, secondBlendColor, colorChoice), 1.0);\n }"

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImageTwoInputFilter;-><init>(Ljava/lang/String;)V

    .line 48
    return-void
.end method
