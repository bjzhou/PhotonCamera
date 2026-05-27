.class public final Lejh;
.super Ljava/lang/Object;

# interfaces
.implements Leiq;


# instance fields
.field private final a:[Lejd;

.field private final b:Lejf;

.field private final c:[F

.field private d:Lejg;

.field private e:Lejg;

.field private f:Z

.field private g:F

.field private h:F

.field private final i:[F

.field private final j:[F

.field private k:Z

.field private final l:Lehw;

.field private final m:Leld;

.field private final n:Leld;

.field private final o:Ljava/util/Map;

.field private final p:[F

.field private q:Lelh;

.field private r:Lelf;

.field private final s:Leir;

.field private final t:Leia;

.field private final u:Leik;

.field private final v:Landroid/content/Context;

.field private final w:Lir;


# direct methods
.method public constructor <init>(Leir;Leia;Leik;Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    new-array v1, v0, [Lejd;

    iput-object v1, p0, Lejh;->a:[Lejd;

    new-instance v1, Lir;

    invoke-direct {v1}, Lir;-><init>()V

    iput-object v1, p0, Lejh;->w:Lir;

    new-instance v1, Lejf;

    invoke-direct {v1}, Lejf;-><init>()V

    iput-object v1, p0, Lejh;->b:Lejf;

    const/16 v1, 0x10

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    iput-object v2, p0, Lejh;->c:[F

    sget-object v2, Lejg;->a:Lejg;

    iput-object v2, p0, Lejh;->d:Lejg;

    sget-object v2, Lejg;->a:Lejg;

    iput-object v2, p0, Lejh;->e:Lejg;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lejh;->f:Z

    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, p0, Lejh;->g:F

    iput v3, p0, Lejh;->h:F

    new-array v3, v0, [F

    fill-array-data v3, :array_1

    iput-object v3, p0, Lejh;->i:[F

    new-array v0, v0, [F

    fill-array-data v0, :array_2

    iput-object v0, p0, Lejh;->j:[F

    iput-boolean v2, p0, Lejh;->k:Z

    new-instance v0, Ljava/util/EnumMap;

    const-class v2, Leij;

    invoke-direct {v0, v2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lejh;->o:Ljava/util/Map;

    new-array v1, v1, [F

    iput-object v1, p0, Lejh;->p:[F

    iput-object p1, p0, Lejh;->s:Leir;

    iput-object p2, p0, Lejh;->t:Leia;

    iput-object p3, p0, Lejh;->u:Leik;

    iput-object p4, p0, Lejh;->v:Landroid/content/Context;

    sget-object p1, Leij;->a:Leij;

    const/high16 p2, 0x41c80000    # 25.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Leij;->b:Leij;

    const/high16 p2, 0x420c0000    # 35.0f

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p1, Lehw;

    invoke-direct {p1}, Lehw;-><init>()V

    iput-object p1, p0, Lejh;->l:Lehw;

    new-instance p1, Leld;

    sget-object p2, Lejg;->a:Lejg;

    invoke-direct {p1, p2}, Leld;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lejh;->m:Leld;

    new-instance p1, Leld;

    sget-object p2, Leje;->a:Leje;

    invoke-direct {p1, p2}, Leld;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lejh;->n:Leld;

    new-instance p1, Lelh;

    invoke-direct {p1}, Lelh;-><init>()V

    iput-object p1, p0, Lejh;->q:Lelh;

    new-instance p1, Lelf;

    invoke-direct {p1}, Lelf;-><init>()V

    iput-object p1, p0, Lejh;->r:Lelf;

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x3e99999a    # 0.3f
        0x0
        0x0
        0x0
        0x3e99999a    # 0.3f
        0x0
        0x0
        0x0
        0x3e99999a    # 0.3f
        0x0
        0x0
        0x0
        0x3e99999a    # 0.3f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private final d(Lejg;FFF)V
    .locals 21

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    sget-object v4, Lejg;->k:Lejg;

    const/4 v5, 0x4

    const/4 v6, 0x2

    const/high16 v7, 0x40000000    # 2.0f

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v11, p1

    if-ne v11, v4, :cond_8

    const/16 v4, 0xbe2

    invoke-static {v4}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v4, 0x302

    const/16 v11, 0x303

    invoke-static {v4, v11}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v4, v0, Lejh;->c:[F

    iget-object v11, v0, Lejh;->s:Leir;

    iget-object v11, v11, Leir;->i:[F

    sget-object v12, Leiy;->a:[F

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v5, :cond_0

    mul-int/lit8 v13, v12, 0x4

    aget v14, v11, v10

    aput v14, v4, v13

    add-int/lit8 v14, v13, 0x1

    aget v15, v11, v8

    aput v15, v4, v14

    add-int/2addr v13, v6

    aget v14, v11, v6

    aput v14, v4, v13

    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_0
    iget-object v4, v0, Lejh;->o:Ljava/util/Map;

    sget-object v5, Leij;->a:Leij;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    goto :goto_1

    :cond_1
    const/high16 v4, 0x41c80000    # 25.0f

    :goto_1
    iget-object v5, v0, Lejh;->u:Leik;

    invoke-virtual {v5}, Leik;->f()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x430c0000    # 140.0f

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float/2addr v5, v4

    sub-float/2addr v6, v4

    div-float/2addr v5, v6

    const v4, 0x3f3d70a4    # 0.74f

    mul-float v5, v5, v4

    iget v4, v0, Lejh;->g:F

    mul-float v5, v5, v4

    iget-object v4, v0, Lejh;->s:Leir;

    iget v4, v4, Leir;->l:F

    div-float/2addr v5, v4

    const v6, 0x3d75c28f    # 0.06f

    div-float/2addr v6, v4

    iget-object v4, v0, Lejh;->p:[F

    invoke-static {v4, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v4, v0, Lejh;->p:[F

    invoke-static {v4, v10, v1, v2, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    const/4 v12, 0x0

    iget-object v13, v0, Lejh;->p:[F

    const/4 v14, 0x0

    iget-object v1, v0, Lejh;->s:Leir;

    iget-object v15, v1, Leir;->f:[F

    const/16 v16, 0x0

    move-object v11, v13

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v1, v0, Lejh;->s:Leir;

    iget-boolean v2, v1, Leir;->h:Z

    add-float/2addr v5, v6

    const v4, 0x3f19999a    # 0.6f

    if-eqz v2, :cond_4

    iget v2, v1, Leir;->e:F

    div-float/2addr v2, v7

    neg-float v2, v2

    div-float v6, v5, v7

    iget-object v8, v0, Lejh;->p:[F

    iget-boolean v1, v1, Leir;->m:Z

    sub-float/2addr v2, v6

    if-nez v1, :cond_2

    neg-float v2, v2

    :cond_2
    invoke-static {v8, v10, v9, v2, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v1, v0, Lejh;->s:Leir;

    iget-boolean v1, v1, Leir;->m:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lejh;->c:[F

    invoke-static {v1, v4, v4, v9, v9}, Leiy;->a([FFFFF)V

    goto :goto_2

    :cond_3
    iget-object v1, v0, Lejh;->c:[F

    invoke-static {v1, v9, v9, v4, v4}, Leiy;->a([FFFFF)V

    goto :goto_2

    :cond_4
    iget v2, v1, Leir;->d:F

    div-float/2addr v2, v7

    neg-float v2, v2

    div-float v6, v5, v7

    iget-object v8, v0, Lejh;->p:[F

    iget-boolean v1, v1, Leir;->m:Z

    sub-float/2addr v2, v6

    if-nez v1, :cond_5

    neg-float v2, v2

    :cond_5
    invoke-static {v8, v10, v2, v9, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v1, v0, Lejh;->s:Leir;

    iget-boolean v1, v1, Leir;->m:Z

    if-eqz v1, :cond_6

    iget-object v1, v0, Lejh;->c:[F

    invoke-static {v1, v9, v4, v9, v4}, Leiy;->a([FFFFF)V

    goto :goto_2

    :cond_6
    iget-object v1, v0, Lejh;->c:[F

    invoke-static {v1, v4, v9, v4, v9}, Leiy;->a([FFFFF)V

    :goto_2
    iget-object v1, v0, Lejh;->r:Lelf;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lejh;->p:[F

    iget-object v1, v1, Lelf;->a:[F

    const/16 v4, 0x10

    invoke-static {v2, v10, v1, v10, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v1, v0, Lejh;->r:Lelf;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lejh;->c:[F

    invoke-virtual {v1, v2}, Lelf;->e([F)V

    iget-object v1, v0, Lejh;->s:Leir;

    iget-boolean v1, v1, Leir;->h:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lejh;->r:Lelf;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    neg-float v2, v3

    div-float v4, v5, v7

    neg-float v5, v5

    div-float/2addr v5, v7

    invoke-virtual {v1, v2, v4, v3, v5}, Lelf;->d(FFFF)V

    goto :goto_3

    :cond_7
    iget-object v1, v0, Lejh;->r:Lelf;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    neg-float v2, v5

    div-float/2addr v2, v7

    div-float/2addr v5, v7

    neg-float v4, v3

    invoke-virtual {v1, v2, v3, v5, v4}, Lelf;->d(FFFF)V

    :goto_3
    iget-object v1, v0, Lejh;->r:Lelf;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lelf;->b()V

    return-void

    :cond_8
    iget-object v3, v0, Lejh;->m:Leld;

    iget v3, v3, Leld;->a:F

    iget-object v4, v0, Lejh;->s:Leir;

    iget-object v4, v4, Leir;->i:[F

    const/4 v12, 0x3

    aput v3, v4, v12

    iget-object v3, v0, Lejh;->p:[F

    invoke-static {v3, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v3, v0, Lejh;->w:Lir;

    invoke-virtual/range {p1 .. p1}, Lejg;->ordinal()I

    move-result v4

    const/16 v13, 0x8

    const/high16 v16, -0x3d4c0000    # -90.0f

    const/high16 v15, -0x40800000    # -1.0f

    const/high16 v7, 0x43340000    # 180.0f

    const/high16 v14, 0x3f800000    # 1.0f

    packed-switch v4, :pswitch_data_0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Unhandled WarningRenderState: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "Invalid WarningRenderState for getWarningInfoForWarningState: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_1
    iget-object v4, v3, Lir;->b:Ljava/lang/Object;

    iget-object v7, v0, Lejh;->s:Leir;

    iget-boolean v7, v7, Leir;->h:Z

    if-eq v8, v7, :cond_9

    const/4 v7, 0x0

    goto :goto_4

    :cond_9
    const/high16 v7, -0x3d4c0000    # -90.0f

    :goto_4
    check-cast v4, [F

    invoke-static {v4, v10, v9, v9, v7}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    iget-object v4, v0, Lejh;->a:[Lejd;

    aget-object v4, v4, v6

    iput-object v4, v3, Lir;->c:Ljava/lang/Object;

    const/4 v4, 0x6

    iput v4, v3, Lir;->a:I

    goto/16 :goto_c

    :pswitch_2
    iget-object v4, v3, Lir;->b:Ljava/lang/Object;

    iget-object v11, v0, Lejh;->s:Leir;

    iget-boolean v11, v11, Leir;->h:Z

    if-eq v8, v11, :cond_a

    goto :goto_5

    :cond_a
    const/high16 v7, 0x42b40000    # 90.0f

    :goto_5
    check-cast v4, [F

    invoke-static {v4, v10, v9, v9, v7}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    iget-object v4, v0, Lejh;->a:[Lejd;

    aget-object v4, v4, v6

    iput-object v4, v3, Lir;->c:Ljava/lang/Object;

    const/4 v4, 0x5

    iput v4, v3, Lir;->a:I

    goto/16 :goto_c

    :pswitch_3
    iget-object v4, v0, Lejh;->a:[Lejd;

    aget-object v4, v4, v6

    iput-object v4, v3, Lir;->c:Ljava/lang/Object;

    iget-object v4, v0, Lejh;->s:Leir;

    iget-boolean v6, v4, Leir;->m:Z

    if-eqz v6, :cond_c

    iget-object v6, v3, Lir;->b:Ljava/lang/Object;

    iget-boolean v4, v4, Leir;->h:Z

    if-eq v8, v4, :cond_b

    const/4 v4, 0x0

    goto :goto_6

    :cond_b
    const/high16 v4, -0x3d4c0000    # -90.0f

    :goto_6
    check-cast v6, [F

    invoke-static {v6, v10, v9, v9, v4}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    iput v5, v3, Lir;->a:I

    goto/16 :goto_c

    :cond_c
    iget-object v6, v3, Lir;->b:Ljava/lang/Object;

    iget-boolean v4, v4, Leir;->h:Z

    if-eq v8, v4, :cond_d

    goto :goto_7

    :cond_d
    const/high16 v7, 0x42b40000    # 90.0f

    :goto_7
    check-cast v6, [F

    invoke-static {v6, v10, v9, v9, v7}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    iput v12, v3, Lir;->a:I

    goto/16 :goto_c

    :pswitch_4
    iget-object v4, v3, Lir;->b:Ljava/lang/Object;

    iget-object v7, v0, Lejh;->s:Leir;

    iget-boolean v7, v7, Leir;->h:Z

    if-eq v8, v7, :cond_e

    const/high16 v7, 0x42b40000    # 90.0f

    goto :goto_8

    :cond_e
    const/4 v7, 0x0

    :goto_8
    check-cast v4, [F

    invoke-static {v4, v10, v9, v9, v7}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    iget-object v4, v0, Lejh;->a:[Lejd;

    aget-object v4, v4, v6

    iput-object v4, v3, Lir;->c:Ljava/lang/Object;

    const/4 v4, 0x7

    iput v4, v3, Lir;->a:I

    goto/16 :goto_c

    :pswitch_5
    iget-object v4, v3, Lir;->b:Ljava/lang/Object;

    iget-object v11, v0, Lejh;->s:Leir;

    iget-boolean v11, v11, Leir;->h:Z

    if-eq v8, v11, :cond_f

    const/high16 v7, -0x3d4c0000    # -90.0f

    goto :goto_9

    :cond_f
    :goto_9
    check-cast v4, [F

    invoke-static {v4, v10, v9, v9, v7}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    iget-object v4, v0, Lejh;->a:[Lejd;

    aget-object v4, v4, v6

    iput-object v4, v3, Lir;->c:Ljava/lang/Object;

    iput v13, v3, Lir;->a:I

    goto/16 :goto_c

    :pswitch_6
    iget-object v4, v3, Lir;->b:Ljava/lang/Object;

    check-cast v4, [F

    invoke-static {v4, v10, v9, v9, v7}, Landroid/opengl/Matrix;->setRotateEulerM([FIFFF)V

    iget-object v4, v0, Lejh;->a:[Lejd;

    aget-object v4, v4, v6

    iput-object v4, v3, Lir;->c:Ljava/lang/Object;

    iput v12, v3, Lir;->a:I

    goto/16 :goto_c

    :pswitch_7
    iget-object v4, v3, Lir;->b:Ljava/lang/Object;

    check-cast v4, [F

    invoke-static {v4, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v4, v0, Lejh;->a:[Lejd;

    aget-object v4, v4, v6

    iput-object v4, v3, Lir;->c:Ljava/lang/Object;

    iput v5, v3, Lir;->a:I

    goto/16 :goto_c

    :pswitch_8
    iget-object v4, v0, Lejh;->s:Leir;

    iget-boolean v7, v4, Leir;->m:Z

    if-nez v7, :cond_11

    iget-boolean v4, v4, Leir;->h:Z

    if-eqz v4, :cond_10

    goto :goto_a

    :cond_10
    iget-object v4, v3, Lir;->b:Ljava/lang/Object;

    check-cast v4, [F

    invoke-static {v4, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v4, v3, Lir;->b:Ljava/lang/Object;

    check-cast v4, [F

    invoke-static {v4, v10, v15, v14, v14}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v4, v0, Lejh;->a:[Lejd;

    aget-object v4, v4, v10

    iput-object v4, v3, Lir;->c:Ljava/lang/Object;

    iput v6, v3, Lir;->a:I

    goto :goto_c

    :cond_11
    :goto_a
    iget-object v4, v3, Lir;->b:Ljava/lang/Object;

    check-cast v4, [F

    invoke-static {v4, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v4, v0, Lejh;->a:[Lejd;

    aget-object v4, v4, v8

    iput-object v4, v3, Lir;->c:Ljava/lang/Object;

    iput v8, v3, Lir;->a:I

    goto :goto_c

    :pswitch_9
    iget-object v4, v3, Lir;->b:Ljava/lang/Object;

    check-cast v4, [F

    invoke-static {v4, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v4, v0, Lejh;->s:Leir;

    iget-boolean v7, v4, Leir;->m:Z

    if-eqz v7, :cond_13

    iget-boolean v4, v4, Leir;->h:Z

    if-eqz v4, :cond_12

    goto :goto_b

    :cond_12
    iget-object v4, v3, Lir;->b:Ljava/lang/Object;

    check-cast v4, [F

    invoke-static {v4, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v4, v0, Lejh;->a:[Lejd;

    aget-object v4, v4, v10

    iput-object v4, v3, Lir;->c:Ljava/lang/Object;

    iput v8, v3, Lir;->a:I

    goto :goto_c

    :cond_13
    :goto_b
    iget-object v4, v3, Lir;->b:Ljava/lang/Object;

    check-cast v4, [F

    invoke-static {v4, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    iget-object v4, v3, Lir;->b:Ljava/lang/Object;

    check-cast v4, [F

    invoke-static {v4, v10, v15, v14, v14}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v4, v0, Lejh;->a:[Lejd;

    aget-object v4, v4, v8

    iput-object v4, v3, Lir;->c:Ljava/lang/Object;

    iput v6, v3, Lir;->a:I

    goto :goto_c

    :pswitch_a
    iget-object v4, v3, Lir;->b:Ljava/lang/Object;

    check-cast v4, [F

    invoke-static {v4, v10}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    const/4 v4, 0x0

    iput-object v4, v3, Lir;->c:Ljava/lang/Object;

    iput v13, v3, Lir;->a:I

    :goto_c
    iget-object v3, v0, Lejh;->w:Lir;

    iget v3, v3, Lir;->a:I

    iget-object v4, v0, Lejh;->b:Lejf;

    iget v6, v0, Lejh;->h:F

    iget-object v7, v0, Lejh;->s:Leir;

    iget v11, v7, Leir;->a:F

    mul-float v6, v6, v11

    iget-object v12, v0, Lejh;->l:Lehw;

    iget v12, v12, Lehw;->a:F

    iput-boolean v8, v4, Lejf;->a:Z

    add-int/lit8 v13, v3, -0x1

    if-eqz v3, :cond_1c

    const v16, 0x3df5c28f    # 0.12f

    const v18, 0x3e99999a    # 0.3f

    const v19, 0x3e4ccccd    # 0.2f

    packed-switch v13, :pswitch_data_1

    new-instance v1, Ljava/lang/RuntimeException;

    packed-switch v3, :pswitch_data_2

    const-string v2, "CENTER_UP_ANIM"

    goto/16 :goto_12

    :pswitch_b
    iget-boolean v3, v7, Leir;->h:Z

    if-eqz v3, :cond_14

    mul-float v1, v12, v6

    goto :goto_d

    :cond_14
    mul-float v12, v12, v6

    neg-float v2, v12

    :goto_d
    iput-boolean v10, v4, Lejf;->a:Z

    goto/16 :goto_11

    :pswitch_c
    iget-boolean v3, v7, Leir;->h:Z

    if-eqz v3, :cond_15

    mul-float v12, v12, v6

    neg-float v1, v12

    goto :goto_e

    :cond_15
    mul-float v2, v12, v6

    :goto_e
    iput-boolean v10, v4, Lejf;->a:Z

    goto/16 :goto_11

    :pswitch_d
    iget-boolean v1, v7, Leir;->h:Z

    add-float v12, v12, v18

    mul-float v12, v12, v6

    if-eqz v1, :cond_16

    sub-float v1, v14, v12

    const/4 v11, 0x0

    goto :goto_f

    :cond_16
    sub-float/2addr v11, v12

    const/4 v1, 0x0

    :goto_f
    iput-boolean v10, v4, Lejf;->a:Z

    move v2, v1

    move v1, v11

    goto :goto_11

    :pswitch_e
    iget-boolean v1, v7, Leir;->h:Z

    if-eqz v1, :cond_17

    add-float v12, v12, v18

    mul-float v12, v12, v6

    add-float/2addr v12, v15

    const/4 v1, 0x0

    goto :goto_10

    :cond_17
    neg-float v1, v11

    add-float v12, v12, v18

    mul-float v12, v12, v6

    add-float/2addr v1, v12

    const/4 v12, 0x0

    :goto_10
    iput-boolean v10, v4, Lejf;->a:Z

    move v2, v12

    goto :goto_11

    :pswitch_f
    iget-boolean v3, v7, Leir;->h:Z

    if-eqz v3, :cond_18

    add-float v12, v12, v19

    mul-float v12, v12, v6

    sub-float/2addr v2, v12

    iget v3, v7, Leir;->e:F

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    add-float/2addr v2, v3

    goto :goto_11

    :cond_18
    const/high16 v4, 0x40000000    # 2.0f

    add-float v12, v12, v19

    mul-float v12, v12, v6

    sub-float/2addr v1, v12

    iget v3, v7, Leir;->d:F

    div-float/2addr v3, v4

    add-float/2addr v1, v3

    goto :goto_11

    :pswitch_10
    iget-boolean v3, v7, Leir;->h:Z

    if-eqz v3, :cond_19

    add-float v12, v12, v19

    mul-float v12, v12, v6

    add-float/2addr v2, v12

    iget v3, v7, Leir;->e:F

    const/high16 v11, 0x40000000    # 2.0f

    div-float/2addr v3, v11

    sub-float/2addr v2, v3

    goto :goto_11

    :cond_19
    const/high16 v11, 0x40000000    # 2.0f

    add-float v12, v12, v19

    mul-float v12, v12, v6

    add-float/2addr v1, v12

    iget v3, v7, Leir;->d:F

    div-float/2addr v3, v11

    sub-float/2addr v1, v3

    goto :goto_11

    :pswitch_11
    const/high16 v11, 0x40000000    # 2.0f

    mul-float v6, v6, v16

    add-float/2addr v1, v6

    iget v3, v7, Leir;->d:F

    div-float/2addr v3, v11

    add-float/2addr v1, v3

    goto :goto_11

    :pswitch_12
    const/high16 v11, 0x40000000    # 2.0f

    mul-float v6, v6, v16

    sub-float/2addr v1, v6

    iget v3, v7, Leir;->d:F

    div-float/2addr v3, v11

    iput-boolean v10, v4, Lejf;->a:Z

    sub-float/2addr v1, v3

    :goto_11
    iget-object v3, v0, Lejh;->p:[F

    invoke-static {v3, v10, v1, v2, v9}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    iget-object v1, v0, Lejh;->b:Lejf;

    iget-boolean v1, v1, Lejf;->a:Z

    if-eqz v1, :cond_1a

    const/16 v16, 0x0

    iget-object v1, v0, Lejh;->p:[F

    const/16 v18, 0x0

    iget-object v2, v0, Lejh;->s:Leir;

    iget-object v2, v2, Leir;->f:[F

    const/16 v20, 0x0

    move-object v15, v1

    move-object/from16 v17, v1

    move-object/from16 v19, v2

    invoke-static/range {v15 .. v20}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    :cond_1a
    iget-object v1, v0, Lejh;->p:[F

    iget v2, v0, Lejh;->g:F

    invoke-static {v1, v10, v2, v2, v14}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    iget-object v1, v0, Lejh;->w:Lir;

    iget-object v2, v1, Lir;->c:Ljava/lang/Object;

    if-eqz v2, :cond_1b

    const/4 v12, 0x0

    iget-object v13, v0, Lejh;->p:[F

    const/4 v14, 0x0

    iget-object v1, v1, Lir;->b:Ljava/lang/Object;

    move-object v15, v1

    check-cast v15, [F

    const/16 v16, 0x0

    move-object v11, v13

    invoke-static/range {v11 .. v16}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    iget-object v1, v0, Lejh;->q:Lelh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lejh;->w:Lir;

    iget-object v2, v2, Lir;->c:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v3, v2

    check-cast v3, Lejd;

    iget-object v4, v3, Lejd;->a:Lcom/google/android/libraries/vision/opengl/Texture;

    iput-object v4, v1, Lelh;->b:Lcom/google/android/libraries/vision/opengl/Texture;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v3, Lejd;->b:F

    iget-object v6, v0, Lejh;->s:Leir;

    iget v6, v6, Leir;->a:F

    mul-float v7, v4, v6

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v2, v3, Lejd;->c:F

    mul-float v4, v4, v2

    mul-float v4, v4, v6

    add-float/2addr v7, v7

    add-float/2addr v4, v4

    invoke-virtual {v1, v7, v4}, Lelh;->d(FF)V

    iget-object v1, v0, Lejh;->q:Lelh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lejh;->s:Leir;

    iget-object v2, v2, Leir;->i:[F

    iget-object v3, v1, Lelh;->e:[F

    invoke-static {v2, v10, v3, v10, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-boolean v8, v1, Lelh;->d:Z

    iget-object v1, v0, Lejh;->q:Lelh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, v0, Lejh;->p:[F

    invoke-virtual {v1, v2}, Lelh;->f([F)V

    iget-object v1, v0, Lejh;->q:Lelh;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lelh;->b()V

    :cond_1b
    return-void

    :pswitch_13
    const-string v2, "CENTER_DOWN_ANIM"

    goto :goto_12

    :pswitch_14
    const-string v2, "START_INNER_RIGHT"

    goto :goto_12

    :pswitch_15
    const-string v2, "START_INNER_LEFT"

    goto :goto_12

    :pswitch_16
    const-string v2, "INNER_RIGHT"

    goto :goto_12

    :pswitch_17
    const-string v2, "INNER_LEFT"

    goto :goto_12

    :pswitch_18
    const-string v2, "OUTER_MIDDLE_RIGHT"

    goto :goto_12

    :pswitch_19
    const-string v2, "OUTER_MIDDLE_LEFT"

    :goto_12
    const-string v3, "Unhandled WarningPositionEnum: "

    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1c
    const/4 v1, 0x0

    goto :goto_14

    :goto_13
    throw v1

    :goto_14
    goto :goto_13

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
    .end packed-switch
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lejh;->q:Lelh;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lelh;->a()V

    iput-object v1, p0, Lejh;->q:Lelh;

    :cond_0
    iget-object v0, p0, Lejh;->r:Lelf;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lelf;->a()V

    iput-object v1, p0, Lejh;->r:Lelf;

    :cond_1
    return-void
.end method

.method public final b()V
    .locals 11

    iget-boolean v0, p0, Lejh;->k:Z

    iget-object v1, p0, Lejh;->s:Leir;

    iget v1, v1, Leir;->g:F

    const v2, 0x3be56042    # 0.007f

    const/4 v3, 0x0

    const/4 v4, 0x1

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lejh;->k:Z

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    iget-object v1, p0, Lejh;->l:Lehw;

    invoke-virtual {v1}, Lehw;->a()V

    iget-object v1, p0, Lejh;->m:Leld;

    invoke-virtual {v1}, Leld;->a()V

    iget-object v1, p0, Lejh;->n:Leld;

    invoke-virtual {v1}, Leld;->a()V

    :cond_1
    iget-boolean v1, p0, Lejh;->k:Z

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    iget-object v0, p0, Lejh;->m:Leld;

    invoke-virtual {v0}, Leld;->a()V

    iget-object v0, p0, Lejh;->m:Leld;

    sget-object v1, Lejg;->a:Lejg;

    iput-object v1, v0, Leld;->c:Ljava/lang/Object;

    iget-object v0, p0, Lejh;->n:Leld;

    invoke-virtual {v0}, Leld;->a()V

    :cond_2
    iget-object v0, p0, Lejh;->s:Leir;

    iget v1, v0, Leir;->g:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, v1

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float v5, v2, v1

    add-float/2addr v5, v1

    iput v5, p0, Lejh;->g:F

    iget v0, v0, Leir;->l:F

    mul-float v5, v5, v0

    iput v5, p0, Lejh;->g:F

    const v1, 0x3f333333    # 0.7f

    mul-float v2, v2, v1

    const v1, 0x3e99999a    # 0.3f

    add-float/2addr v2, v1

    mul-float v2, v2, v0

    iput v2, p0, Lejh;->h:F

    iput-boolean v3, p0, Lejh;->f:Z

    iget-object v0, p0, Lejh;->u:Leik;

    iget-object v1, p0, Lejh;->o:Ljava/util/Map;

    invoke-virtual {v0, v1}, Leik;->h(Ljava/util/Map;)V

    iget-object v0, p0, Lejh;->o:Ljava/util/Map;

    sget-object v1, Leij;->a:Leij;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_1

    :cond_3
    const/high16 v0, 0x41c80000    # 25.0f

    :goto_1
    iget-object v1, p0, Lejh;->s:Leir;

    iget-boolean v1, v1, Leir;->m:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Lejh;->u:Leik;

    invoke-virtual {v1}, Leik;->f()F

    move-result v1

    cmpl-float v0, v1, v0

    if-ltz v0, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lejh;->u:Leik;

    invoke-virtual {v1}, Leik;->f()F

    move-result v1

    neg-float v0, v0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lejh;->o:Ljava/util/Map;

    sget-object v2, Leij;->b:Leij;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_3

    :cond_7
    const/high16 v1, 0x420c0000    # 35.0f

    :goto_3
    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v0, :cond_8

    iget-object v5, p0, Lejh;->u:Leik;

    invoke-virtual {v5}, Leik;->f()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v1, v5, v1

    if-ltz v1, :cond_8

    sget-object v0, Lejg;->k:Lejg;

    iput-object v0, p0, Lejh;->d:Lejg;

    iput-boolean v4, p0, Lejh;->f:Z

    goto/16 :goto_4

    :cond_8
    iget-object v1, p0, Lejh;->u:Leik;

    iget-wide v5, v1, Leik;->p:D

    const-wide/high16 v7, -0x3fdc000000000000L    # -10.0

    cmpg-double v9, v5, v7

    if-gtz v9, :cond_9

    sget-object v0, Lejg;->c:Lejg;

    iput-object v0, p0, Lejh;->d:Lejg;

    iput-boolean v4, p0, Lejh;->f:Z

    goto/16 :goto_4

    :cond_9
    const-wide/high16 v7, 0x4024000000000000L    # 10.0

    cmpl-double v9, v5, v7

    if-ltz v9, :cond_a

    sget-object v0, Lejg;->b:Lejg;

    iput-object v0, p0, Lejh;->d:Lejg;

    iput-boolean v4, p0, Lejh;->f:Z

    goto/16 :goto_4

    :cond_a
    iget-wide v7, v1, Leik;->f:D

    double-to-float v7, v7

    const/high16 v8, 0x41200000    # 10.0f

    cmpl-float v9, v7, v8

    if-ltz v9, :cond_b

    sget-object v0, Lejg;->f:Lejg;

    iput-object v0, p0, Lejh;->d:Lejg;

    iput-boolean v4, p0, Lejh;->f:Z

    goto :goto_4

    :cond_b
    const/high16 v9, -0x3ee00000    # -10.0f

    cmpg-float v9, v7, v9

    if-gtz v9, :cond_c

    sget-object v0, Lejg;->g:Lejg;

    iput-object v0, p0, Lejh;->d:Lejg;

    iput-boolean v4, p0, Lejh;->f:Z

    goto :goto_4

    :cond_c
    iget-wide v9, v1, Leik;->g:D

    double-to-float v1, v9

    cmpl-float v8, v1, v8

    if-ltz v8, :cond_d

    sget-object v0, Lejg;->h:Lejg;

    iput-object v0, p0, Lejh;->d:Lejg;

    iput-boolean v4, p0, Lejh;->f:Z

    goto :goto_4

    :cond_d
    if-eqz v0, :cond_e

    sget-object v0, Lejg;->k:Lejg;

    iput-object v0, p0, Lejh;->d:Lejg;

    goto :goto_4

    :cond_e
    const-wide/high16 v8, -0x3ff4000000000000L    # -3.5

    cmpg-double v0, v5, v8

    if-gtz v0, :cond_f

    sget-object v0, Lejg;->c:Lejg;

    iput-object v0, p0, Lejh;->d:Lejg;

    goto :goto_4

    :cond_f
    const-wide/high16 v8, 0x400c000000000000L    # 3.5

    cmpl-double v0, v5, v8

    if-ltz v0, :cond_10

    sget-object v0, Lejg;->b:Lejg;

    iput-object v0, p0, Lejh;->d:Lejg;

    goto :goto_4

    :cond_10
    const/high16 v0, 0x40200000    # 2.5f

    cmpl-float v0, v7, v0

    if-ltz v0, :cond_11

    sget-object v0, Lejg;->f:Lejg;

    iput-object v0, p0, Lejh;->d:Lejg;

    goto :goto_4

    :cond_11
    const/high16 v0, -0x3fe00000    # -2.5f

    cmpg-float v0, v7, v0

    if-gtz v0, :cond_12

    sget-object v0, Lejg;->g:Lejg;

    iput-object v0, p0, Lejh;->d:Lejg;

    goto :goto_4

    :cond_12
    cmpl-float v0, v1, v2

    if-ltz v0, :cond_13

    sget-object v0, Lejg;->h:Lejg;

    iput-object v0, p0, Lejh;->d:Lejg;

    goto :goto_4

    :cond_13
    sget-object v0, Lejg;->a:Lejg;

    iput-object v0, p0, Lejh;->d:Lejg;

    :goto_4
    iget-boolean v0, p0, Lejh;->k:Z

    if-eqz v0, :cond_14

    iput-boolean v3, p0, Lejh;->f:Z

    :cond_14
    iget-object v0, p0, Lejh;->u:Leik;

    invoke-virtual {v0}, Leik;->j()Z

    move-result v0

    if-eqz v0, :cond_15

    iget-object v0, p0, Lejh;->s:Leir;

    iget-boolean v0, v0, Leir;->n:Z

    if-eqz v0, :cond_1d

    :cond_15
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    iget-object v0, p0, Lejh;->s:Leir;

    iget v1, v0, Leir;->b:F

    iget v5, v0, Leir;->c:F

    iget-boolean v6, v0, Leir;->h:Z

    if-eqz v6, :cond_16

    iget v0, v0, Leir;->d:F

    div-float/2addr v0, v2

    goto :goto_5

    :cond_16
    iget v0, v0, Leir;->e:F

    div-float/2addr v0, v2

    :goto_5
    iget-object v2, p0, Lejh;->q:Lelh;

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lejh;->t:Leia;

    invoke-virtual {v2}, Leia;->b()Z

    move-result v2

    if-nez v2, :cond_17

    goto/16 :goto_9

    :cond_17
    iget-object v2, p0, Lejh;->n:Leld;

    iget-boolean v6, p0, Lejh;->f:Z

    if-eqz v6, :cond_18

    sget-object v6, Leje;->b:Leje;

    goto :goto_6

    :cond_18
    sget-object v6, Leje;->a:Leje;

    :goto_6
    iput-object v6, v2, Leld;->c:Ljava/lang/Object;

    iget-object v2, p0, Lejh;->n:Leld;

    invoke-virtual {v2}, Leld;->b()V

    iget-object v2, p0, Lejh;->s:Leir;

    iget-object v2, v2, Leir;->i:[F

    iget-object v6, p0, Lejh;->j:[F

    iget-object v7, p0, Lejh;->i:[F

    iget-object v8, p0, Lejh;->n:Leld;

    iget v8, v8, Leld;->a:F

    sget-object v9, Leiy;->a:[F

    aget v9, v7, v3

    aget v10, v6, v3

    sub-float/2addr v9, v10

    mul-float v9, v9, v8

    add-float/2addr v9, v10

    aput v9, v2, v3

    aget v3, v7, v4

    aget v9, v6, v4

    sub-float/2addr v3, v9

    mul-float v3, v3, v8

    add-float/2addr v3, v9

    aput v3, v2, v4

    const/4 v3, 0x2

    aget v4, v7, v3

    aget v6, v6, v3

    sub-float/2addr v4, v6

    mul-float v4, v4, v8

    add-float/2addr v4, v6

    aput v4, v2, v3

    iget-object v2, p0, Lejh;->m:Leld;

    iget-boolean v3, p0, Lejh;->k:Z

    if-eqz v3, :cond_19

    sget-object v3, Lejg;->i:Lejg;

    goto :goto_7

    :cond_19
    iget-object v3, p0, Lejh;->d:Lejg;

    :goto_7
    iput-object v3, v2, Leld;->c:Ljava/lang/Object;

    invoke-virtual {v2}, Leld;->b()V

    iget-boolean v2, p0, Lejh;->k:Z

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lejh;->l:Lehw;

    invoke-virtual {v2}, Lehw;->b()V

    sget-object v2, Lejg;->i:Lejg;

    invoke-direct {p0, v2, v1, v5, v0}, Lejh;->d(Lejg;FFF)V

    sget-object v2, Lejg;->j:Lejg;

    invoke-direct {p0, v2, v1, v5, v0}, Lejh;->d(Lejg;FFF)V

    goto :goto_8

    :cond_1a
    iget-object v2, p0, Lejh;->m:Leld;

    iget-object v2, v2, Leld;->b:Ljava/lang/Object;

    sget-object v3, Lejg;->a:Lejg;

    if-eq v2, v3, :cond_1c

    iget-object v3, p0, Lejh;->e:Lejg;

    if-eq v3, v2, :cond_1b

    iget-object v2, p0, Lejh;->l:Lehw;

    invoke-virtual {v2}, Lehw;->a()V

    :cond_1b
    iget-object v2, p0, Lejh;->l:Lehw;

    invoke-virtual {v2}, Lehw;->b()V

    iget-object v2, p0, Lejh;->m:Leld;

    iget-object v2, v2, Leld;->b:Ljava/lang/Object;

    check-cast v2, Lejg;

    invoke-direct {p0, v2, v1, v5, v0}, Lejh;->d(Lejg;FFF)V

    :cond_1c
    :goto_8
    iget-object v0, p0, Lejh;->m:Leld;

    iget-object v0, v0, Leld;->b:Ljava/lang/Object;

    check-cast v0, Lejg;

    iput-object v0, p0, Lejh;->e:Lejg;

    return-void

    :cond_1d
    :goto_9
    return-void
.end method

.method public final c(II)V
    .locals 4

    iget-object v0, p0, Lejh;->q:Lelh;

    if-eqz v0, :cond_0

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v1, v2}, Lelh;->c(FF)V

    :cond_0
    iget-object v0, p0, Lejh;->r:Lelf;

    if-eqz v0, :cond_1

    int-to-float p1, p1

    int-to-float p2, p2

    invoke-virtual {v0, p1, p2}, Lelf;->c(FF)V

    :cond_1
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 p2, 0x0

    iput-boolean p2, p1, Landroid/graphics/BitmapFactory$Options;->inScaled:Z

    iget-object v0, p0, Lejh;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0801c4

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lejh;->a:[Lejd;

    new-instance v2, Lejd;

    invoke-direct {v2}, Lejd;-><init>()V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    new-instance v1, Lcom/google/android/libraries/vision/opengl/Texture;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/vision/opengl/Texture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v2, Lejd;->a:Lcom/google/android/libraries/vision/opengl/Texture;

    iget-object v1, p0, Lejh;->a:[Lejd;

    aget-object v1, v1, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/2addr v2, v0

    int-to-float v0, v2

    iput v0, v1, Lejd;->c:F

    iget-object v0, p0, Lejh;->a:[Lejd;

    aget-object v0, v0, v3

    const v1, 0x3df5c28f    # 0.12f

    iput v1, v0, Lejd;->b:F

    iget-object v0, p0, Lejh;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080277

    invoke-static {v0, v1, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lejh;->a:[Lejd;

    new-instance v2, Lejd;

    invoke-direct {v2}, Lejd;-><init>()V

    const/4 v3, 0x1

    aput-object v2, v1, v3

    new-instance v1, Lcom/google/android/libraries/vision/opengl/Texture;

    invoke-direct {v1, v0}, Lcom/google/android/libraries/vision/opengl/Texture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v1, v2, Lejd;->a:Lcom/google/android/libraries/vision/opengl/Texture;

    iget-object v1, p0, Lejh;->a:[Lejd;

    aget-object v1, v1, v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    div-int/2addr v2, v0

    int-to-float v0, v2

    iput v0, v1, Lejd;->c:F

    iget-object v0, p0, Lejh;->a:[Lejd;

    aget-object v0, v0, v3

    const v1, 0x3d99999a    # 0.075f

    iput v1, v0, Lejd;->b:F

    iget-object v0, p0, Lejh;->v:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080276

    invoke-static {v0, v2, p1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    iget-object v0, p0, Lejh;->a:[Lejd;

    new-instance v2, Lejd;

    invoke-direct {v2}, Lejd;-><init>()V

    aput-object v2, v0, p2

    new-instance v0, Lcom/google/android/libraries/vision/opengl/Texture;

    invoke-direct {v0, p1}, Lcom/google/android/libraries/vision/opengl/Texture;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, v2, Lejd;->a:Lcom/google/android/libraries/vision/opengl/Texture;

    iget-object v0, p0, Lejh;->a:[Lejd;

    aget-object v0, v0, p2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    div-int/2addr v2, p1

    int-to-float p1, v2

    iput p1, v0, Lejd;->c:F

    iget-object p1, p0, Lejh;->a:[Lejd;

    aget-object p1, p1, p2

    iput v1, p1, Lejd;->b:F

    return-void
.end method
