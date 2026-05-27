.class public final Lcgf;
.super Ljava/lang/Object;

# interfaces
.implements Lioo;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Llbd;

.field private final c:Landroid/view/animation/Interpolator;

.field private d:Landroid/hardware/HardwareBuffer;

.field private e:Landroid/graphics/RectF;

.field private f:Z

.field private g:Z

.field private h:Lcge;

.field private i:J

.field private j:J

.field private final k:Lldc;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/aizoom/AiZoomViewEffect"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcgf;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Llbd;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcgf;->i:J

    iput-wide v0, p0, Lcgf;->j:J

    iput-object p1, p0, Lcgf;->b:Llbd;

    invoke-static {p1}, Lldc;->o(Llbd;)Lloi;

    move-result-object v0

    const-string v1, "#version 300 es\nin vec2 aPosition;\nin vec2 aTexCoord;\nout vec2 texCoord;\nuniform float zoomFactor;\nvoid main() {\n  texCoord = (aTexCoord - 0.5f) * zoomFactor + 0.5f ;\n  gl_Position = vec4(aPosition.xy, 0.0, 1.0);\n}"

    invoke-static {p1, v1}, Lldc;->h(Llbd;Ljava/lang/String;)Lldc;

    move-result-object v1

    invoke-static {v1}, Lktf;->l(Lkyc;)Llfg;

    move-result-object v1

    invoke-virtual {v0, v1}, Lloi;->b(Llfg;)V

    const-string v1, "#version 300 es\n#extension GL_OES_EGL_image_external_essl3 : require\n#extension GL_EXT_YUV_target : enable\nprecision mediump float;\nuniform samplerExternalOES uImgTex;\nuniform float insideRadius;\nuniform float outsideRadius;\nuniform float insideStroke;\nuniform float outsideStroke;\nuniform vec2 viewportXY;\nuniform vec2 viewportSize;\nuniform vec2 trackPos;\nuniform vec2 trackHalfSize;\nuniform vec2 bracketLimit;\nuniform vec3 innerColor;\nin vec2 texCoord;\nlayout(yuv) out vec4 outColor;\nbool roundedBox(vec2 fragCoord, vec2 pos, vec2 size, float radius) {\n   float d = length(max(abs(fragCoord - pos),size) - size) - radius;\n   return d > 0.0;\n}\nbool roundedFrame(vec2 fragCoord, vec2 pos, vec2 size, float radius, float border) {\n   vec2 dxy = abs(fragCoord - pos);\n   float d = length(max(dxy, size) - size) - radius;\n   return abs(d) < border && (dxy.x >= bracketLimit.x && dxy.y >= bracketLimit.y);\n}\nvoid main() {\n    vec2 fragCoord = gl_FragCoord.xy - viewportXY;\n    if(roundedBox(fragCoord, 0.5 * viewportSize,\n        0.5 * viewportSize - outsideRadius - outsideStroke,\n        outsideRadius + outsideStroke)){ \n        discard;\n    }\n    float pipFrame = float(roundedBox(fragCoord, 0.5 * viewportSize, 0.5 * viewportSize - outsideRadius - outsideStroke, outsideRadius));\n    float bbox = float(roundedFrame(fragCoord, trackPos,\n         trackHalfSize - insideRadius + insideStroke, insideRadius, insideStroke));\n    vec3 rgbColor = bbox * innerColor + \n                    (1.0 - bbox) * texture(uImgTex, texCoord).rgb;\n    if (bool(pipFrame)) { \n        rgbColor = vec3(1.0);\n    }\n    outColor = vec4(rgb_2_yuv(rgbColor, itu_601_full_range), 1.0);\n}"

    invoke-static {p1, v1}, Lldc;->b(Llbd;Ljava/lang/String;)Lldc;

    move-result-object p1

    invoke-static {p1}, Lktf;->l(Lkyc;)Llfg;

    move-result-object p1

    invoke-virtual {v0, p1}, Lloi;->b(Llfg;)V

    invoke-virtual {v0}, Lloi;->d()Lldc;

    move-result-object p1

    iput-object p1, p0, Lcgf;->k:Lldc;

    const p1, 0x10c001a

    invoke-static {p2, p1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p1

    iput-object p1, p0, Lcgf;->c:Landroid/view/animation/Interpolator;

    return-void
.end method


# virtual methods
.method public final a()Liop;
    .locals 1

    sget-object v0, Liop;->j:Liop;

    return-object v0
.end method

.method public final synthetic b()Llbd;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lkba;->t(Lioo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized close()V
    .locals 1

    monitor-enter p0

    :try_start_0
    sget-object v0, Lnbk;->a:Lnbc;

    invoke-virtual {p0}, Lcgf;->g()V

    iget-object v0, p0, Lcgf;->k:Lldc;

    invoke-virtual {v0}, Llbk;->a()Lkzf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized d()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcgf;->g:Z

    iget-object v0, p0, Lcgf;->d:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcgf;->d:Landroid/hardware/HardwareBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e()V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcgf;->i:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcgf;->j:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized f()V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcgf;->i:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcgf;->i:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x1f4

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    sub-long/2addr v4, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v4, v0

    iput-wide v4, p0, Lcgf;->j:J

    iput-wide v2, p0, Lcgf;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcgf;->j:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g()V
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcgf;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized h(Lkpb;Landroid/graphics/RectF;Z)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcgf;->g:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcgf;->d:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/HardwareBuffer;->close()V

    :cond_0
    invoke-interface {p1}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object p1

    iput-object p1, p0, Lcgf;->d:Landroid/hardware/HardwareBuffer;

    if-eqz p2, :cond_1

    iput-object p2, p0, Lcgf;->e:Landroid/graphics/RectF;

    goto :goto_0

    :cond_1
    sget-object p1, Lcgf;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    sget-object p2, Lnbk;->a:Lnbc;

    const-string v0, "BobaEffect"

    invoke-interface {p1, p2, v0}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object p1

    const-string p2, "TrackRegion is null, reusing last known good."

    const/16 v0, 0x84

    invoke-static {p1, p2, v0}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    :goto_0
    iput-boolean p3, p0, Lcgf;->f:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :try_start_1
    sget-object p2, Lnbk;->a:Lnbc;

    invoke-interface {p1}, Lkpb;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized i(Lcge;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    iput-object p1, p0, Lcgf;->h:Lcge;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized j(Lcgh;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcgf;->g:Z

    if-nez v0, :cond_2

    sget-object v0, Lcgh;->a:Lcgh;

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcgf;->g:Z

    sget-object v0, Lcgh;->c:Lcgh;

    if-ne p1, v0, :cond_1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    long-to-float p1, v0

    const/high16 v0, -0x3c060000    # -500.0f

    add-float/2addr p1, v0

    float-to-long v0, p1

    iput-wide v0, p0, Lcgf;->i:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit p0

    return-void

    :cond_1
    const-wide/16 v0, 0x0

    :try_start_1
    iput-wide v0, p0, Lcgf;->i:J

    iput-wide v0, p0, Lcgf;->j:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final synthetic k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final declared-synchronized l(Lkpb;Lkpb;)I
    .locals 18

    move-object/from16 v1, p0

    monitor-enter p0

    :try_start_0
    iget-object v0, v1, Lcgf;->h:Lcge;

    const/4 v2, 0x2

    if-nez v0, :cond_0

    sget-object v0, Lcgf;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    sget-object v3, Lnbk;->a:Lnbc;

    const-string v4, "BobaEffect"

    invoke-interface {v0, v3, v4}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v3, 0x81

    invoke-interface {v0, v3}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    invoke-interface/range {p1 .. p1}, Lkpb;->d()J

    move-result-wide v3

    const-string v5, "Parameters not set, skipping frame %s."

    invoke-interface {v0, v5, v3, v4}, Lnah;->q(Ljava/lang/String;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_10

    monitor-exit p0

    return v2

    :cond_0
    :try_start_1
    iget-boolean v0, v1, Lcgf;->g:Z

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcgf;->d:Landroid/hardware/HardwareBuffer;

    if-eqz v0, :cond_9

    iget-object v0, v1, Lcgf;->e:Landroid/graphics/RectF;

    if-nez v0, :cond_1

    goto/16 :goto_d

    :cond_1
    invoke-interface/range {p1 .. p1}, Lkpb;->f()Landroid/hardware/HardwareBuffer;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_10

    if-nez v3, :cond_2

    :try_start_2
    sget-object v0, Lnbk;->a:Lnbc;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object/from16 v16, v3

    goto/16 :goto_b

    :cond_2
    :try_start_3
    new-instance v2, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    invoke-direct {v2, v3}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_e

    :try_start_4
    new-instance v4, Lcom/google/android/libraries/oliveoil/gl/EGLImage;

    iget-object v0, v1, Lcgf;->d:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v4, v0}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;-><init>(Landroid/hardware/HardwareBuffer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_b

    :try_start_5
    iget-object v0, v1, Lcgf;->b:Llbd;

    invoke-static {v0, v4}, Llcd;->b(Llbd;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Llcd;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_8

    :try_start_6
    iget-object v0, v1, Lcgf;->b:Llbd;

    invoke-static {v0, v2}, Lldc;->j(Llbd;Lcom/google/android/libraries/oliveoil/gl/EGLImage;)Lldc;

    move-result-object v6
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_5

    :try_start_7
    iget-wide v7, v1, Lcgf;->i:J

    const/high16 v0, 0x43fa0000    # 500.0f

    const-wide/16 v9, 0x0

    const/high16 v12, 0x3f800000    # 1.0f

    cmp-long v13, v7, v9

    if-eqz v13, :cond_3

    iget-object v7, v1, Lcgf;->c:Landroid/view/animation/Interpolator;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v13, v1, Lcgf;->i:J

    sub-long/2addr v8, v13

    long-to-float v8, v8

    div-float/2addr v8, v0

    invoke-static {v12, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-interface {v7, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    goto :goto_0

    :cond_3
    iget-wide v7, v1, Lcgf;->j:J

    cmp-long v13, v7, v9

    if-eqz v13, :cond_4

    iget-object v7, v1, Lcgf;->c:Landroid/view/animation/Interpolator;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    iget-wide v13, v1, Lcgf;->j:J

    sub-long/2addr v8, v13

    long-to-float v8, v8

    div-float/2addr v8, v0

    invoke-static {v12, v8}, Ljava/lang/Math;->min(FF)F

    move-result v0

    invoke-interface {v7, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    sub-float v0, v12, v0

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    :goto_0
    iget-object v7, v1, Lcgf;->h:Lcge;

    iget v8, v7, Lcge;->i:I

    int-to-float v8, v8

    mul-float v8, v8, v0

    sub-float v9, v12, v0

    iget v10, v7, Lcge;->b:I

    int-to-float v10, v10

    mul-float v10, v10, v9

    add-float/2addr v8, v10

    iget v10, v7, Lcge;->j:I

    int-to-float v10, v10

    mul-float v10, v10, v0

    iget v13, v7, Lcge;->c:I

    int-to-float v13, v13

    mul-float v13, v13, v9

    add-float/2addr v10, v13

    iget-object v7, v7, Lcge;->a:Ljzr;

    iget-boolean v13, v1, Lcgf;->f:Z

    if-nez v13, :cond_5

    goto :goto_1

    :cond_5
    sget-object v12, Ljzr;->b:Ljzr;

    invoke-virtual {v7, v12}, Ljzr;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_6

    const v12, 0x3f12f1aa    # 0.574f

    goto :goto_1

    :cond_6
    sget-object v12, Ljzr;->a:Ljzr;

    invoke-virtual {v7, v12}, Ljzr;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    const v12, 0x3f441893    # 0.766f

    goto :goto_1

    :cond_7
    const v12, 0x3f84fdf4    # 1.039f

    :goto_1
    const/high16 v7, 0x3f000000    # 0.5f

    div-float v13, v7, v12

    iget-object v14, v1, Lcgf;->e:Landroid/graphics/RectF;

    invoke-virtual {v14}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v14}, Landroid/graphics/RectF;->width()F

    move-result v14

    float-to-int v8, v8

    mul-float v14, v14, v13

    iget-object v15, v1, Lcgf;->e:Landroid/graphics/RectF;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    float-to-int v10, v10

    mul-float v13, v13, v15

    iget-object v15, v1, Lcgf;->b:Llbd;

    invoke-static {v15}, Llcl;->a(Llbd;)Lldh;

    move-result-object v15

    invoke-static {v15}, Llby;->i(Lldh;)Llpu;

    move-result-object v15

    iget-object v7, v1, Lcgf;->k:Lldc;

    invoke-virtual {v15, v7}, Llpu;->c(Lldc;)Llby;

    move-result-object v7

    invoke-virtual {v7, v5}, Llby;->b(Llcd;)V

    const-string v15, "zoomFactor"

    invoke-virtual {v7, v15, v12}, Llby;->d(Ljava/lang/String;F)V

    const-string v15, "insideStroke"

    iget-object v11, v1, Lcgf;->h:Lcge;

    iget v11, v11, Lcge;->e:I

    int-to-float v11, v11

    invoke-virtual {v7, v15, v11}, Llby;->d(Ljava/lang/String;F)V

    const-string v11, "outsideStroke"

    iget-object v15, v1, Lcgf;->h:Lcge;

    iget v15, v15, Lcge;->f:I

    int-to-float v15, v15

    invoke-virtual {v7, v11, v15}, Llby;->d(Ljava/lang/String;F)V

    const-string v11, "insideRadius"

    iget-object v15, v1, Lcgf;->h:Lcge;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-object/from16 v16, v3

    :try_start_8
    iget v3, v15, Lcge;->k:I

    int-to-float v3, v3

    mul-float v3, v3, v0

    iget v15, v15, Lcge;->g:I

    int-to-float v15, v15

    mul-float v15, v15, v9

    add-float/2addr v3, v15

    invoke-virtual {v7, v11, v3}, Llby;->d(Ljava/lang/String;F)V

    const-string v3, "outsideRadius"

    iget-object v11, v1, Lcgf;->h:Lcge;

    iget v15, v11, Lcge;->l:I

    int-to-float v15, v15

    mul-float v0, v0, v15

    iget v11, v11, Lcge;->h:I

    int-to-float v11, v11

    mul-float v9, v9, v11

    add-float/2addr v0, v9

    invoke-virtual {v7, v3, v0}, Llby;->d(Ljava/lang/String;F)V

    const-string v0, "viewportXY"

    iget-object v3, v1, Lcgf;->h:Lcge;

    iget v3, v3, Lcge;->d:I

    int-to-float v3, v3

    invoke-virtual {v7, v0, v3, v3}, Llby;->h(Ljava/lang/String;FF)V

    const-string v0, "viewportSize"

    int-to-float v3, v10

    int-to-float v9, v8

    invoke-virtual {v7, v0, v3, v9}, Llby;->h(Ljava/lang/String;FF)V

    const-string v0, "bracketLimit"

    const/4 v11, 0x0

    invoke-virtual {v7, v0, v11, v11}, Llby;->h(Ljava/lang/String;FF)V

    const-string v0, "trackPos"

    iget-object v11, v1, Lcgf;->e:Landroid/graphics/RectF;

    invoke-virtual {v11}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v11

    const/high16 v15, -0x41000000    # -0.5f

    add-float/2addr v11, v15

    div-float/2addr v11, v12

    const/high16 v15, 0x3f000000    # 0.5f

    add-float/2addr v11, v15

    iget-object v15, v1, Lcgf;->e:Landroid/graphics/RectF;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v15}, Landroid/graphics/RectF;->centerX()F

    move-result v15

    const/high16 v17, 0x3f000000    # 0.5f

    sub-float v15, v17, v15

    div-float/2addr v15, v12

    mul-float v11, v11, v3

    add-float v15, v15, v17

    mul-float v15, v15, v9

    invoke-virtual {v7, v0, v11, v15}, Llby;->h(Ljava/lang/String;FF)V

    const-string v0, "trackHalfSize"

    mul-float v13, v13, v3

    mul-float v14, v14, v9

    invoke-virtual {v7, v0, v13, v14}, Llby;->h(Ljava/lang/String;FF)V

    const-string v0, "innerColor"

    iget-object v3, v7, Llby;->e:Ljava/util/Map;

    new-instance v9, Llbu;

    invoke-direct {v9}, Llbu;-><init>()V

    invoke-interface {v3, v0, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "aPosition"

    const/4 v3, 0x0

    invoke-virtual {v7, v0, v3}, Llby;->a(Ljava/lang/String;I)V

    const-string v0, "aTexCoord"

    const/4 v3, 0x1

    invoke-virtual {v7, v0, v3}, Llby;->a(Ljava/lang/String;I)V

    iget-object v0, v1, Lcgf;->h:Lcge;

    iget v0, v0, Lcge;->d:I

    filled-new-array {v0, v0, v10, v8}, [I

    move-result-object v0

    iput-object v0, v7, Llby;->h:[I

    iget-object v0, v7, Llby;->i:Ljava/util/List;

    const/16 v8, 0xbe2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {v7, v6}, Llby;->k(Lldc;)V

    iget-object v0, v1, Lcgf;->b:Llbd;

    invoke-static {v0}, Lktf;->u(Llbd;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    invoke-virtual {v6}, Llbk;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    invoke-virtual {v5}, Llbk;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_7

    :try_start_b
    invoke-virtual {v4}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_a

    :try_start_c
    invoke-virtual {v2}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_d

    :try_start_d
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_10

    monitor-exit p0

    return v3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catchall_2
    move-exception v0

    move-object/from16 v16, v3

    :goto_2
    move-object v3, v0

    :try_start_e
    invoke-virtual {v6}, Llbk;->close()V
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v6, v0

    :try_start_f
    invoke-static {v3, v6}, Ldez;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_3
    throw v3
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_4

    :catchall_5
    move-exception v0

    move-object/from16 v16, v3

    :goto_4
    move-object v3, v0

    :try_start_10
    invoke-virtual {v5}, Llbk;->close()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_6

    goto :goto_5

    :catchall_6
    move-exception v0

    move-object v5, v0

    :try_start_11
    invoke-static {v3, v5}, Ldez;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_5
    throw v3
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_7

    :catchall_7
    move-exception v0

    goto :goto_6

    :catchall_8
    move-exception v0

    move-object/from16 v16, v3

    :goto_6
    move-object v3, v0

    :try_start_12
    invoke-virtual {v4}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_9

    goto :goto_7

    :catchall_9
    move-exception v0

    move-object v4, v0

    :try_start_13
    invoke-static {v3, v4}, Ldez;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_7
    throw v3
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_a

    :catchall_a
    move-exception v0

    goto :goto_8

    :catchall_b
    move-exception v0

    move-object/from16 v16, v3

    :goto_8
    move-object v3, v0

    :try_start_14
    invoke-virtual {v2}, Lcom/google/android/libraries/oliveoil/gl/EGLImage;->close()V
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    goto :goto_9

    :catchall_c
    move-exception v0

    move-object v2, v0

    :try_start_15
    invoke-static {v3, v2}, Ldez;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_9
    throw v3
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_d

    :catchall_d
    move-exception v0

    goto :goto_a

    :catchall_e
    move-exception v0

    move-object/from16 v16, v3

    :goto_a
    move-object v2, v0

    :goto_b
    if-eqz v16, :cond_8

    :try_start_16
    invoke-virtual/range {v16 .. v16}, Landroid/hardware/HardwareBuffer;->close()V
    :try_end_16
    .catchall {:try_start_16 .. :try_end_16} :catchall_f

    goto :goto_c

    :catchall_f
    move-exception v0

    move-object v3, v0

    :try_start_17
    invoke-static {v2, v3}, Ldez;->e(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_8
    :goto_c
    throw v2

    :cond_9
    :goto_d
    sget-object v0, Lnbk;->a:Lnbc;

    invoke-interface/range {p1 .. p1}, Lkpb;->d()J
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_10

    monitor-exit p0

    return v2

    :catchall_10
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final synthetic m(Lkeb;Lkfj;Lkeb;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lkba;->w(Lioo;Lkeb;Lkfj;Lkeb;)V

    return-void
.end method

.method public final synthetic n(Llcd;Lldc;)I
    .locals 0

    invoke-static {}, Lkba;->v()I

    move-result p1

    return p1
.end method
