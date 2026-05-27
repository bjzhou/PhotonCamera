.class public Ljp/co/cyberagent/android/gpuimage/filter/GPUImageNonMaximumSuppressionFilter;
.super Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;
.source "GPUImageNonMaximumSuppressionFilter.java"


# static fields
.field public static final NMS_FRAGMENT_SHADER:Ljava/lang/String; = "uniform sampler2D inputImageTexture;\n\nvarying highp vec2 textureCoordinate;\nvarying highp vec2 leftTextureCoordinate;\nvarying highp vec2 rightTextureCoordinate;\n\nvarying highp vec2 topTextureCoordinate;\nvarying highp vec2 topLeftTextureCoordinate;\nvarying highp vec2 topRightTextureCoordinate;\n\nvarying highp vec2 bottomTextureCoordinate;\nvarying highp vec2 bottomLeftTextureCoordinate;\nvarying highp vec2 bottomRightTextureCoordinate;\n\nvoid main()\n{\nlowp float bottomColor = texture2D(inputImageTexture, bottomTextureCoordinate).r;\nlowp float bottomLeftColor = texture2D(inputImageTexture, bottomLeftTextureCoordinate).r;\nlowp float bottomRightColor = texture2D(inputImageTexture, bottomRightTextureCoordinate).r;\nlowp vec4 centerColor = texture2D(inputImageTexture, textureCoordinate);\nlowp float leftColor = texture2D(inputImageTexture, leftTextureCoordinate).r;\nlowp float rightColor = texture2D(inputImageTexture, rightTextureCoordinate).r;\nlowp float topColor = texture2D(inputImageTexture, topTextureCoordinate).r;\nlowp float topRightColor = texture2D(inputImageTexture, topRightTextureCoordinate).r;\nlowp float topLeftColor = texture2D(inputImageTexture, topLeftTextureCoordinate).r;\n\n// Use a tiebreaker for pixels to the left and immediately above this one\nlowp float multiplier = 1.0 - step(centerColor.r, topColor);\nmultiplier = multiplier * 1.0 - step(centerColor.r, topLeftColor);\nmultiplier = multiplier * 1.0 - step(centerColor.r, leftColor);\nmultiplier = multiplier * 1.0 - step(centerColor.r, bottomLeftColor);\n\nlowp float maxValue = max(centerColor.r, bottomColor);\nmaxValue = max(maxValue, bottomRightColor);\nmaxValue = max(maxValue, rightColor);\nmaxValue = max(maxValue, topRightColor);\n\ngl_FragColor = vec4((centerColor.rgb * step(maxValue, centerColor.r) * multiplier), 1.0);\n}\n"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    const-string v0, "uniform sampler2D inputImageTexture;\n\nvarying highp vec2 textureCoordinate;\nvarying highp vec2 leftTextureCoordinate;\nvarying highp vec2 rightTextureCoordinate;\n\nvarying highp vec2 topTextureCoordinate;\nvarying highp vec2 topLeftTextureCoordinate;\nvarying highp vec2 topRightTextureCoordinate;\n\nvarying highp vec2 bottomTextureCoordinate;\nvarying highp vec2 bottomLeftTextureCoordinate;\nvarying highp vec2 bottomRightTextureCoordinate;\n\nvoid main()\n{\nlowp float bottomColor = texture2D(inputImageTexture, bottomTextureCoordinate).r;\nlowp float bottomLeftColor = texture2D(inputImageTexture, bottomLeftTextureCoordinate).r;\nlowp float bottomRightColor = texture2D(inputImageTexture, bottomRightTextureCoordinate).r;\nlowp vec4 centerColor = texture2D(inputImageTexture, textureCoordinate);\nlowp float leftColor = texture2D(inputImageTexture, leftTextureCoordinate).r;\nlowp float rightColor = texture2D(inputImageTexture, rightTextureCoordinate).r;\nlowp float topColor = texture2D(inputImageTexture, topTextureCoordinate).r;\nlowp float topRightColor = texture2D(inputImageTexture, topRightTextureCoordinate).r;\nlowp float topLeftColor = texture2D(inputImageTexture, topLeftTextureCoordinate).r;\n\n// Use a tiebreaker for pixels to the left and immediately above this one\nlowp float multiplier = 1.0 - step(centerColor.r, topColor);\nmultiplier = multiplier * 1.0 - step(centerColor.r, topLeftColor);\nmultiplier = multiplier * 1.0 - step(centerColor.r, leftColor);\nmultiplier = multiplier * 1.0 - step(centerColor.r, bottomLeftColor);\n\nlowp float maxValue = max(centerColor.r, bottomColor);\nmaxValue = max(maxValue, bottomRightColor);\nmaxValue = max(maxValue, rightColor);\nmaxValue = max(maxValue, topRightColor);\n\ngl_FragColor = vec4((centerColor.rgb * step(maxValue, centerColor.r) * multiplier), 1.0);\n}\n"

    invoke-direct {p0, v0}, Ljp/co/cyberagent/android/gpuimage/filter/GPUImage3x3TextureSamplingFilter;-><init>(Ljava/lang/String;)V

    .line 63
    return-void
.end method
