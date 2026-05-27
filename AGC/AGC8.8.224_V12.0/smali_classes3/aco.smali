.class final Laco;
.super Ljava/lang/Object;


# static fields
.field static final a:Laco;


# instance fields
.field public final b:F

.field public final c:F

.field public final d:F

.field public final e:F

.field public final f:F

.field public final g:[F

.field public final h:F

.field public final i:F

.field public final j:F


# direct methods
.method static constructor <clinit>()V
    .locals 27

    sget-object v0, Lacd;->c:[F

    invoke-static {}, Lacd;->c()F

    move-result v1

    float-to-double v1, v1

    sget-object v3, Lacd;->a:[[F

    const/4 v4, 0x0

    aget v5, v0, v4

    aget-object v6, v3, v4

    aget v7, v6, v4

    mul-float v7, v7, v5

    const/4 v8, 0x1

    aget v9, v0, v8

    aget v10, v6, v8

    mul-float v10, v10, v9

    const/4 v11, 0x2

    aget v12, v0, v11

    aget v6, v6, v11

    mul-float v6, v6, v12

    aget-object v13, v3, v8

    aget v14, v13, v4

    mul-float v14, v14, v5

    aget v15, v13, v8

    mul-float v15, v15, v9

    aget v13, v13, v11

    mul-float v13, v13, v12

    aget-object v3, v3, v11

    aget v16, v3, v4

    mul-float v5, v5, v16

    aget v16, v3, v8

    mul-float v9, v9, v16

    aget v3, v3, v11

    mul-float v12, v12, v3

    const-wide v16, 0x404fd4bbab8b494cL    # 63.66197723675813

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v1, v1, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    div-double v1, v1, v16

    double-to-float v1, v1

    neg-float v2, v1

    const/high16 v3, -0x3dd80000    # -42.0f

    add-float/2addr v2, v3

    const/high16 v3, 0x42b80000    # 92.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->exp(D)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3e8e38e4

    mul-float v2, v2, v3

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v2, v3, v2

    float-to-double v3, v2

    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    cmpl-double v21, v3, v19

    if-lez v21, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const-wide/16 v19, 0x0

    cmpg-double v21, v3, v19

    if-gez v21, :cond_1

    const/4 v2, 0x0

    :cond_1
    :goto_0
    add-float/2addr v5, v9

    add-float/2addr v14, v15

    add-float/2addr v7, v10

    add-float/2addr v5, v12

    add-float/2addr v14, v13

    add-float/2addr v7, v6

    const/high16 v3, 0x42c80000    # 100.0f

    div-float v4, v3, v7

    mul-float v4, v4, v2

    const/high16 v6, 0x3f800000    # 1.0f

    add-float/2addr v4, v6

    sub-float/2addr v4, v2

    const/4 v9, 0x3

    new-array v10, v9, [F

    const/4 v12, 0x0

    aput v4, v10, v12

    div-float v4, v3, v14

    mul-float v4, v4, v2

    add-float/2addr v4, v6

    sub-float/2addr v4, v2

    aput v4, v10, v8

    div-float/2addr v3, v5

    mul-float v3, v3, v2

    add-float/2addr v3, v6

    sub-float/2addr v3, v2

    aput v3, v10, v11

    const/high16 v2, 0x40a00000    # 5.0f

    mul-float v2, v2, v1

    add-float/2addr v2, v6

    div-float v3, v6, v2

    mul-float v2, v3, v3

    mul-float v2, v2, v3

    mul-float v2, v2, v3

    sub-float v3, v6, v2

    mul-float v2, v2, v1

    float-to-double v12, v1

    const-wide/high16 v18, 0x4014000000000000L    # 5.0

    invoke-static {v12, v13}, Ljava/lang/Double;->isNaN(D)Z

    mul-double v12, v12, v18

    invoke-static {v12, v13}, Ljava/lang/Math;->cbrt(D)D

    move-result-wide v12

    double-to-float v1, v12

    invoke-static {}, Lacd;->c()F

    move-result v4

    aget v0, v0, v8

    div-float v0, v4, v0

    float-to-double v12, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    double-to-float v8, v8

    move v9, v5

    const-wide v4, 0x3fc999999999999aL    # 0.2

    invoke-static {v12, v13, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    double-to-float v5, v4

    const/4 v4, 0x3

    new-array v12, v4, [F

    const/4 v4, 0x0

    aget v13, v10, v4

    const v4, 0x3dcccccd    # 0.1f

    mul-float v4, v4, v3

    mul-float v4, v4, v3

    mul-float v4, v4, v1

    add-float v1, v2, v4

    mul-float v13, v13, v1

    mul-float v13, v13, v7

    float-to-double v2, v13

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v2, v2, v16

    const-wide v6, 0x3fdae147ae147ae1L    # 0.42

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const/4 v3, 0x0

    aput v2, v12, v3

    const/4 v2, 0x1

    aget v3, v10, v2

    mul-float v3, v3, v1

    mul-float v3, v3, v14

    float-to-double v3, v3

    invoke-static {v3, v4}, Ljava/lang/Double;->isNaN(D)Z

    div-double v3, v3, v16

    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v3, v3

    aput v3, v12, v2

    aget v2, v10, v11

    mul-float v2, v2, v1

    mul-float v2, v2, v9

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    div-double v2, v2, v16

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    aput v2, v12, v11

    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v6, 0x0

    aget v7, v12, v6

    const/high16 v9, 0x43c80000    # 400.0f

    mul-float v13, v7, v9

    const v14, 0x41d90a3d    # 27.13f

    add-float/2addr v7, v14

    div-float/2addr v13, v7

    aput v13, v3, v6

    const/4 v4, 0x1

    aget v6, v12, v4

    mul-float v7, v6, v9

    add-float/2addr v6, v14

    div-float/2addr v7, v6

    aput v7, v3, v4

    mul-float v9, v9, v2

    add-float/2addr v2, v14

    div-float/2addr v9, v2

    aput v9, v3, v11

    add-float/2addr v13, v13

    add-float/2addr v13, v7

    float-to-double v2, v1

    new-instance v4, Laco;

    const-wide/high16 v6, 0x3fd0000000000000L    # 0.25

    invoke-static {v2, v3, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float v2, v2

    const v3, 0x3d4ccccd    # 0.05f

    mul-float v9, v9, v3

    add-float/2addr v13, v9

    const v3, 0x3f39999a    # 0.725f

    div-float v22, v3, v5

    mul-float v20, v13, v22

    const v3, 0x3fbd70a4    # 1.48f

    add-float v26, v8, v3

    move-object/from16 v18, v4

    move/from16 v19, v0

    move/from16 v21, v22

    move-object/from16 v23, v10

    move/from16 v24, v1

    move/from16 v25, v2

    invoke-direct/range {v18 .. v26}, Laco;-><init>(FFFF[FFFF)V

    sput-object v4, Laco;->a:Laco;

    return-void
.end method

.method private constructor <init>(FFFF[FFFF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Laco;->f:F

    iput p2, p0, Laco;->b:F

    iput p3, p0, Laco;->c:F

    iput p4, p0, Laco;->d:F

    const p1, 0x3f30a3d7    # 0.69f

    iput p1, p0, Laco;->e:F

    iput-object p5, p0, Laco;->g:[F

    iput p6, p0, Laco;->h:F

    iput p7, p0, Laco;->i:F

    iput p8, p0, Laco;->j:F

    return-void
.end method
