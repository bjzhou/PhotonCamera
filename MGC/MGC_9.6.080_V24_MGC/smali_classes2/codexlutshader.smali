.class public final Lcodexlutshader;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\nprecision mediump float;\nuniform vec3 uEdgeColor;\nuniform float uStrongThreshold;\nuniform float uWeakThreshold;\nuniform samplerExternalOES uExternalTex;\nuniform vec2 uExternalTexSize;\nuniform vec2 uRoiCenter;\nuniform float uZoomFactor;\nuniform vec2 uPipOffset;\nuniform vec2 uPipSize;\nuniform float uPipRadius;\nuniform float uPipStroke;\nuniform float uIsPipVisible;\nuniform float isPeakingOn;\nout vec4 outColor;\nvec2 getViewfinderTexCoord() {\n  return gl_FragCoord.xy / uExternalTexSize;\n}\nvoid main() {\n  vec3 rgbColor = texture(uExternalTex, getViewfinderTexCoord()).rgb;\n  float luma = dot(rgbColor, vec3(0.299, 0.587, 0.114));\n  outColor = vec4(vec3(luma), 1.0);\n}\n"

    return-object v0
.end method
