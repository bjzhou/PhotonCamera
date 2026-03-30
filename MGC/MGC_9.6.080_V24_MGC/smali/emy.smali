.class public final Lemy;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:F

.field public final b:F

.field public c:F

.field private final d:[I

.field private final e:[F

.field private final f:Landroid/graphics/RectF;

.field private final g:Landroid/graphics/Paint;

.field private h:F

.field private final i:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    :goto_0
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_b

    nop

    nop

    :goto_1
    iput p2, p0, Lemy;->h:F

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lemy;->a:F

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_3
    filled-new-array {v1, v0}, [I

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/high16 v1, -0x1000000

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x16

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_0
    goto/32 :goto_16

    nop

    :goto_a
    mul-float/2addr p1, v2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lemy;->g:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    iput p2, p0, Lemy;->c:F

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Lemy;->f:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_10

    nop

    nop

    :goto_12
    const/4 v0, 0x2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput p3, p0, Lemy;->i:F

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_1e

    nop

    nop

    :goto_15
    add-float/2addr p2, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v0, p0, Lemy;->d:[I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    :array_0
    .array-data 4
        0x3f19999a    # 0.6f
        0x3f800000    # 1.0f
    .end array-data

    :goto_1a
    goto/32 :goto_23

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1d
    iput-object v0, p0, Lemy;->e:[F

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Lemy;->b()V

    goto/32 :goto_19

    nop

    nop

    :goto_1f
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_20
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_21
    iput v2, p0, Lemy;->b:F

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_22
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_24
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_25
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    add-float/2addr p2, p1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(IIII)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    int-to-float p4, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    int-to-float p3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lemy;->f:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lemy;->b()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    int-to-float p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_5

    nop

    nop
.end method

.method public final b()V
    .locals 10

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3
    iget-object v7, p0, Lemy;->e:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    cmpl-float v0, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_5
    add-float/2addr v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v2, 0x0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct/range {v2 .. v8}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    move-object v2, v9

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    new-instance v9, Landroid/graphics/RadialGradient;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    iget v1, p0, Lemy;->a:F

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    iget-object v1, p0, Lemy;->f:Landroid/graphics/RectF;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    const v0, 0x2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_13
    iget v0, p0, Lemy;->c:F

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    iget v1, p0, Lemy;->i:F

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_16
    iput v0, p0, Lemy;->h:F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_17
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    :goto_19
    iget v5, p0, Lemy;->h:F

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_7

    nop

    :goto_1b
    goto/32 :goto_13

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lemy;->g:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-gtz v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1e
    iget-object v6, p0, Lemy;->d:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    mul-float/2addr v1, v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop
.end method
