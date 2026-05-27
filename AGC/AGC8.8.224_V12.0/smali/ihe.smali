.class public final Lihe;
.super Ljava/lang/Object;

# interfaces
.implements Lioo;


# instance fields
.field private final a:Llck;

.field private final b:Lldh;

.field private final c:Llbd;

.field private final d:Lldf;

.field private final e:Lkbc;

.field private final f:Lihd;

.field private g:Llde;

.field private h:Llde;

.field private i:Llar;

.field private final j:[F

.field private final k:[F

.field private final l:[F

.field private final m:[F

.field private final n:Lldc;

.field private final o:Lldc;


# direct methods
.method public constructor <init>(Llbd;Lihd;Lkbc;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x80

    new-array v1, v0, [F

    iput-object v1, p0, Lihe;->j:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lihe;->k:[F

    new-array v1, v0, [F

    iput-object v1, p0, Lihe;->l:[F

    new-array v0, v0, [F

    iput-object v0, p0, Lihe;->m:[F

    iput-object p1, p0, Lihe;->c:Llbd;

    invoke-static {p1}, Lldf;->a(Llbd;)Lldf;

    move-result-object v0

    iput-object v0, p0, Lihe;->d:Lldf;

    iput-object p2, p0, Lihe;->f:Lihd;

    iput-object p3, p0, Lihe;->e:Lkbc;

    new-instance p2, Ldzr;

    const/16 p3, 0xc

    invoke-direct {p2, p1, p3}, Ldzr;-><init>(Llbd;I)V

    invoke-virtual {p2}, Ldzr;->a()Llck;

    move-result-object p3

    iput-object p3, p0, Lihe;->a:Llck;

    iget-object p3, p2, Ldzr;->a:Llbd;

    const/4 v0, 0x2

    new-array v0, v0, [Lldi;

    iget-object v1, p2, Ldzr;->d:[F

    invoke-static {v1}, Lldi;->b([F)Lldi;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-object p2, p2, Ldzr;->c:[F

    invoke-static {p2}, Lldi;->a([F)Lldi;

    move-result-object p2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    invoke-static {p3, v0}, Lldh;->e(Llbd;[Lldi;)Lldh;

    move-result-object p2

    iput-object p2, p0, Lihe;->b:Lldh;

    const-string p2, "#version 320 es\nprecision highp float;\nuniform sampler2D uImgTex;\nuniform int weightLen;\nuniform float weight[128];\nuniform float offsetX[128];\nuniform float offsetY[128];\nin vec2 texCoord;\nout vec4 outColor;\nvoid main() {\n  vec4 fc = texture(uImgTex, texCoord) * weight[0];\n  for (int i = 1; i < weightLen; i++) {\n    fc += texture(uImgTex, texCoord + vec2(offsetX[i], offsetY[i])) * weight[i];\n  }\n  for (int i = 1; i < weightLen; i++) {\n    fc += texture(uImgTex, texCoord - vec2(offsetX[i], offsetY[i])) * weight[i];\n  }\n  outColor = fc;\n}\n"

    invoke-static {p1, p2}, Lihe;->e(Llbd;Ljava/lang/String;)Lldc;

    move-result-object p2

    iput-object p2, p0, Lihe;->n:Lldc;

    const-string p2, "#version 320 es\n#extension GL_EXT_YUV_target : require\nprecision highp float;\nuniform float fade;\nuniform sampler2D uImgTex;\nin vec2 texCoord;\nlayout(yuv) out vec4 outColor;\nvoid main() {\n  outColor =     vec4(rgb_2_yuv(texture(uImgTex, texCoord).xyz * fade, itu_601_full_range), 1.0);\n}"

    invoke-static {p1, p2}, Lihe;->e(Llbd;Ljava/lang/String;)Lldc;

    move-result-object p1

    iput-object p1, p0, Lihe;->o:Lldc;

    return-void
.end method

.method private final d()V
    .locals 2

    iget-object v0, p0, Lihe;->g:Llde;

    if-nez v0, :cond_1

    iget-object v0, p0, Lihe;->h:Llde;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Lmoz;->p(Z)V

    return-void

    :cond_1
    iget-object v0, p0, Lihe;->e:Lkbc;

    const-string v1, "closeTextures"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lihe;->g:Llde;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Llbk;->close()V

    iget-object v0, p0, Lihe;->h:Llde;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Llbk;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lihe;->g:Llde;

    iput-object v0, p0, Lihe;->h:Llde;

    iget-object v0, p0, Lihe;->e:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    return-void
.end method

.method private static e(Llbd;Ljava/lang/String;)Lldc;
    .locals 1

    const-string v0, "#version 320 es\nin vec4 aPosition;\nin vec2 aTexCoord;\nuniform float zoomFactor;\nout vec2 texCoord;\nvoid main() {\n  texCoord = aTexCoord;\n  gl_Position = vec4(zoomFactor * aPosition.xyz, aPosition.w);\n}"

    invoke-static {p0, v0}, Lldc;->h(Llbd;Ljava/lang/String;)Lldc;

    move-result-object v0

    invoke-static {p0, p1}, Lldc;->b(Llbd;Ljava/lang/String;)Lldc;

    move-result-object p1

    invoke-static {p0}, Lldc;->o(Llbd;)Lloi;

    move-result-object p0

    invoke-static {v0}, Lktf;->l(Lkyc;)Llfg;

    move-result-object v0

    invoke-virtual {p0, v0}, Lloi;->b(Llfg;)V

    invoke-static {p1}, Lktf;->l(Lkyc;)Llfg;

    move-result-object p1

    invoke-virtual {p0, p1}, Lloi;->b(Llfg;)V

    invoke-virtual {p0}, Lloi;->d()Lldc;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a()Liop;
    .locals 1

    sget-object v0, Liop;->h:Liop;

    return-object v0
.end method

.method public final b()Llbd;
    .locals 1

    iget-object v0, p0, Lihe;->c:Llbd;

    return-object v0
.end method

.method public final synthetic c()Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Lkba;->t(Lioo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    invoke-direct {p0}, Lihe;->d()V

    iget-object v0, p0, Lihe;->n:Lldc;

    invoke-virtual {v0}, Llbk;->close()V

    iget-object v0, p0, Lihe;->o:Lldc;

    invoke-virtual {v0}, Llbk;->close()V

    iget-object v0, p0, Lihe;->d:Lldf;

    invoke-virtual {v0}, Lldf;->close()V

    return-void
.end method

.method public final synthetic k()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic l(Lkpb;Lkpb;)I
    .locals 0

    invoke-static {p0, p1, p2}, Lkba;->u(Lioo;Lkpb;Lkpb;)I

    move-result p1

    return p1
.end method

.method public final synthetic m(Lkeb;Lkfj;Lkeb;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lkba;->w(Lioo;Lkeb;Lkfj;Lkeb;)V

    return-void
.end method

.method public final n(Llcd;Lldc;)I
    .locals 19

    move-object/from16 v1, p0

    const-string v0, "offsetY"

    const-string v2, "offsetX"

    const-string v3, "weight"

    const-string v4, "uImgTex"

    const-string v5, "zoomFactor"

    const-string v6, "aTexCoord"

    const-string v7, "aPosition"

    iget-object v8, v1, Lihe;->f:Lihd;

    iget-object v8, v8, Lihd;->a:Ljvk;

    iget-object v8, v8, Ljvk;->d:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_0

    invoke-direct/range {p0 .. p0}, Lihe;->d()V

    const/4 v0, 0x2

    return v0

    :cond_0
    iget-object v8, v1, Lihe;->e:Lkbc;

    iget-object v9, v1, Lihe;->f:Lihd;

    iget-object v9, v9, Lihd;->b:Ljvk;

    iget-object v9, v9, Ljvk;->d:Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "Launch: radius="

    invoke-virtual {v10, v9}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v8, v9}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v8, v1, Lihe;->f:Lihd;

    sget-object v9, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    iget-wide v11, v8, Lihd;->f:J

    const-wide/16 v13, 0x0

    cmp-long v15, v11, v13

    if-nez v15, :cond_2

    iget-wide v11, v8, Lihd;->g:J

    cmp-long v15, v11, v13

    if-nez v15, :cond_1

    iput-wide v9, v8, Lihd;->f:J

    move-wide v11, v9

    goto :goto_0

    :cond_1
    move-wide v11, v13

    goto :goto_0

    :cond_2
    :goto_0
    const/4 v14, 0x1

    cmp-long v15, v9, v11

    if-ltz v15, :cond_3

    const/4 v11, 0x1

    goto :goto_1

    :cond_3
    const/4 v11, 0x0

    :goto_1
    invoke-static {v11}, Lmoz;->e(Z)V

    iput-wide v9, v8, Lihd;->g:J

    invoke-virtual {v8}, Lihd;->a()V

    iget-object v8, v1, Lihe;->f:Lihd;

    iget-object v8, v8, Lihd;->a:Ljvk;

    iget-object v8, v8, Ljvk;->d:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    xor-int/2addr v8, v14

    iget-object v9, v1, Lihe;->g:Llde;

    if-nez v9, :cond_6

    iget-object v9, v1, Lihe;->e:Lkbc;

    const-string v10, "allocateTextures"

    invoke-interface {v9, v10}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v9, v1, Lihe;->g:Llde;

    if-nez v9, :cond_4

    const/4 v9, 0x1

    goto :goto_2

    :cond_4
    const/4 v9, 0x0

    :goto_2
    invoke-static {v9}, Lmoz;->p(Z)V

    iget-object v9, v1, Lihe;->h:Llde;

    if-nez v9, :cond_5

    const/4 v9, 0x1

    goto :goto_3

    :cond_5
    const/4 v9, 0x0

    :goto_3
    invoke-static {v9}, Lmoz;->p(Z)V

    new-instance v9, Llar;

    invoke-virtual/range {p1 .. p1}, Llcd;->g()Llaq;

    move-result-object v10

    iget-object v10, v10, Llaq;->a:Lkym;

    iget-object v11, v1, Lihe;->f:Lihd;

    iget v11, v11, Lihd;->e:F

    new-instance v12, Lkym;

    invoke-virtual {v10}, Lkyn;->b()I

    move-result v15

    int-to-float v15, v15

    mul-float v15, v15, v11

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    invoke-virtual {v10}, Lkyn;->a()I

    move-result v10

    int-to-float v10, v10

    mul-float v10, v10, v11

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v10

    invoke-direct {v12, v15, v10}, Lkym;-><init>(II)V

    invoke-direct {v9, v12}, Llar;-><init>(Lkym;)V

    iget-object v10, v1, Lihe;->c:Llbd;

    invoke-static {v10, v9}, Llde;->g(Llbd;Llaq;)Llde;

    move-result-object v10

    iput-object v10, v1, Lihe;->g:Llde;

    iget-object v10, v1, Lihe;->c:Llbd;

    invoke-static {v10, v9}, Llde;->g(Llbd;Llaq;)Llde;

    move-result-object v10

    iput-object v10, v1, Lihe;->h:Llde;

    iput-object v9, v1, Lihe;->i:Llar;

    iget-object v9, v1, Lihe;->e:Lkbc;

    invoke-interface {v9}, Lkbc;->f()V

    :cond_6
    iget-object v9, v1, Lihe;->e:Lkbc;

    const-string v10, "prep"

    invoke-interface {v9, v10}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v9, v1, Lihe;->g:Llde;

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v10, v1, Lihe;->h:Llde;

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v11, v1, Lihe;->f:Lihd;

    iget-object v11, v11, Lihd;->b:Ljvk;

    iget-object v11, v11, Ljvk;->d:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Integer;

    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    const/16 v12, 0x80

    invoke-static {v11, v14, v12}, Lnsy;->O(III)I

    move-result v11

    iget-object v12, v1, Lihe;->i:Llar;

    invoke-virtual {v12}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v12, v12, Llaq;->a:Lkym;

    invoke-virtual {v12}, Lkyn;->b()I

    move-result v12

    int-to-float v12, v12

    iget-object v15, v1, Lihe;->i:Llar;

    invoke-virtual {v15}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v15, v15, Llaq;->a:Lkym;

    invoke-virtual {v15}, Lkyn;->a()I

    move-result v15

    int-to-float v15, v15

    const/4 v14, 0x0

    :goto_4
    const/high16 v13, 0x3f800000    # 1.0f

    if-ge v14, v11, :cond_7

    div-float v16, v13, v15

    div-float/2addr v13, v12

    move/from16 v17, v12

    iget-object v12, v1, Lihe;->k:[F

    move/from16 v18, v15

    int-to-float v15, v14

    mul-float v13, v13, v15

    aput v13, v12, v14

    iget-object v12, v1, Lihe;->l:[F

    mul-float v16, v16, v15

    aput v16, v12, v14

    add-int/lit8 v14, v14, 0x1

    move/from16 v12, v17

    move/from16 v15, v18

    goto :goto_4

    :cond_7
    iget-object v12, v1, Lihe;->m:[F

    const/4 v14, 0x0

    const/4 v15, 0x0

    :goto_5
    if-ge v15, v11, :cond_9

    int-to-float v13, v11

    const/high16 v17, 0x40000000    # 2.0f

    div-float v13, v17, v13

    move/from16 v18, v8

    int-to-float v8, v15

    mul-float v13, v13, v8

    mul-float v13, v13, v13

    neg-float v8, v13

    div-float v8, v8, v17

    move-object v13, v2

    move-object/from16 v17, v3

    float-to-double v2, v8

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v12, v15

    if-eqz v15, :cond_8

    add-float/2addr v2, v2

    :cond_8
    add-float/2addr v14, v2

    add-int/lit8 v15, v15, 0x1

    move-object v2, v13

    move-object/from16 v3, v17

    move/from16 v8, v18

    const/high16 v13, 0x3f800000    # 1.0f

    goto :goto_5

    :cond_9
    move-object v13, v2

    move-object/from16 v17, v3

    move/from16 v18, v8

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v11, :cond_a

    aget v3, v12, v2

    div-float/2addr v3, v14

    aput v3, v12, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_a
    iget-object v2, v1, Lihe;->e:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    iget-object v2, v1, Lihe;->e:Lkbc;

    const-string v3, "downscale"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static {v9}, Lktf;->k(Ljava/lang/Object;)Llfg;

    move-result-object v2

    invoke-static {v2}, Lldc;->m(Llfg;)Lldc;

    move-result-object v2

    :try_start_0
    iget-object v3, v1, Lihe;->d:Lldf;

    move-object/from16 v8, p1

    invoke-virtual {v3, v8, v2}, Lldf;->e(Llcd;Lldc;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    invoke-virtual {v2}, Llbk;->close()V

    iget-object v2, v1, Lihe;->e:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    iget-object v2, v1, Lihe;->e:Lkbc;

    const-string v3, "hblur"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static {v10}, Lktf;->k(Ljava/lang/Object;)Llfg;

    move-result-object v2

    invoke-static {v2}, Lldc;->m(Llfg;)Lldc;

    move-result-object v2

    :try_start_1
    iget-object v3, v1, Lihe;->b:Lldh;

    iget-object v8, v1, Lihe;->a:Llck;

    invoke-static {v3, v8}, Llby;->j(Lldh;Llck;)Llpu;

    move-result-object v3

    iget-object v8, v1, Lihe;->n:Lldc;

    invoke-virtual {v3, v8}, Llpu;->c(Lldc;)Llby;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Llby;->a(Ljava/lang/String;I)V

    const/4 v8, 0x1

    invoke-virtual {v3, v6, v8}, Llby;->a(Ljava/lang/String;I)V

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5, v8}, Llby;->d(Ljava/lang/String;F)V

    invoke-virtual {v3, v11}, Llby;->f(I)V

    iget-object v8, v1, Lihe;->m:[F

    move-object/from16 v12, v17

    invoke-virtual {v3, v12, v8}, Llby;->e(Ljava/lang/String;[F)V

    iget-object v8, v1, Lihe;->k:[F

    invoke-virtual {v3, v13, v8}, Llby;->e(Ljava/lang/String;[F)V

    iget-object v8, v1, Lihe;->j:[F

    invoke-virtual {v3, v0, v8}, Llby;->e(Ljava/lang/String;[F)V

    invoke-virtual {v3, v4, v9}, Llby;->c(Ljava/lang/String;Llde;)V

    invoke-virtual {v3, v2}, Llby;->k(Lldc;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    invoke-virtual {v2}, Llbk;->close()V

    iget-object v2, v1, Lihe;->e:Lkbc;

    invoke-interface {v2}, Lkbc;->f()V

    iget-object v2, v1, Lihe;->e:Lkbc;

    const-string v3, "vblur"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    invoke-static {v9}, Lktf;->k(Ljava/lang/Object;)Llfg;

    move-result-object v2

    invoke-static {v2}, Lldc;->m(Llfg;)Lldc;

    move-result-object v2

    :try_start_2
    iget-object v3, v1, Lihe;->b:Lldh;

    iget-object v8, v1, Lihe;->a:Llck;

    invoke-static {v3, v8}, Llby;->j(Lldh;Llck;)Llpu;

    move-result-object v3

    iget-object v8, v1, Lihe;->n:Lldc;

    invoke-virtual {v3, v8}, Llpu;->c(Lldc;)Llby;

    move-result-object v3

    const/4 v8, 0x0

    invoke-virtual {v3, v7, v8}, Llby;->a(Ljava/lang/String;I)V

    const/4 v8, 0x1

    invoke-virtual {v3, v6, v8}, Llby;->a(Ljava/lang/String;I)V

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-virtual {v3, v5, v8}, Llby;->d(Ljava/lang/String;F)V

    invoke-virtual {v3, v11}, Llby;->f(I)V

    iget-object v8, v1, Lihe;->m:[F

    invoke-virtual {v3, v12, v8}, Llby;->e(Ljava/lang/String;[F)V

    iget-object v8, v1, Lihe;->j:[F

    invoke-virtual {v3, v13, v8}, Llby;->e(Ljava/lang/String;[F)V

    iget-object v8, v1, Lihe;->l:[F

    invoke-virtual {v3, v0, v8}, Llby;->e(Ljava/lang/String;[F)V

    invoke-virtual {v3, v4, v10}, Llby;->c(Ljava/lang/String;Llde;)V

    invoke-virtual {v3, v2}, Llby;->k(Lldc;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-virtual {v2}, Llbk;->close()V

    iget-object v0, v1, Lihe;->e:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, v1, Lihe;->e:Lkbc;

    const-string v2, "upscale"

    invoke-interface {v0, v2}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, v1, Lihe;->b:Lldh;

    iget-object v2, v1, Lihe;->a:Llck;

    invoke-static {v0, v2}, Llby;->j(Lldh;Llck;)Llpu;

    move-result-object v0

    iget-object v2, v1, Lihe;->o:Lldc;

    invoke-virtual {v0, v2}, Llpu;->c(Lldc;)Llby;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v7, v2}, Llby;->a(Ljava/lang/String;I)V

    const/4 v2, 0x1

    invoke-virtual {v0, v6, v2}, Llby;->a(Ljava/lang/String;I)V

    iget-object v2, v1, Lihe;->f:Lihd;

    iget-object v2, v2, Lihd;->c:Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v5, v2}, Llby;->d(Ljava/lang/String;F)V

    iget-object v2, v1, Lihe;->f:Lihd;

    iget-object v2, v2, Lihd;->d:Ljvk;

    iget-object v2, v2, Ljvk;->d:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const-string v3, "fade"

    invoke-virtual {v0, v3, v2}, Llby;->d(Ljava/lang/String;F)V

    invoke-virtual {v0, v4, v10}, Llby;->c(Ljava/lang/String;Llde;)V

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Llby;->k(Lldc;)V

    iget-object v0, v1, Lihe;->e:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    if-eqz v18, :cond_b

    invoke-direct/range {p0 .. p0}, Lihe;->d()V

    :cond_b
    iget-object v0, v1, Lihe;->e:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    move-object v3, v0

    :try_start_3
    invoke-virtual {v2}, Llbk;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v2}, Ljvd;->N(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_7
    throw v3

    :catchall_2
    move-exception v0

    move-object v3, v0

    :try_start_4
    invoke-virtual {v2}, Llbk;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v2}, Ljvd;->N(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_8
    throw v3

    :catchall_4
    move-exception v0

    move-object v3, v0

    :try_start_5
    invoke-virtual {v2}, Llbk;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    goto :goto_9

    :catchall_5
    move-exception v0

    move-object v2, v0

    invoke-static {v3, v2}, Ljvd;->N(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_9
    goto :goto_b

    :goto_a
    throw v3

    :goto_b
    goto :goto_a
.end method
