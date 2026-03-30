.class public Lreu;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/TypeEvaluator;


# instance fields
.field private final a:[F

.field private final b:[F

.field private final c:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance v0, Landroid/graphics/Matrix;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    const/16 v0, 0x9

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lreu;->b:[F

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    new-array v1, v0, [F

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    iput-object v1, p0, Lreu;->a:[F

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lreu;->c:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    new-array v0, v0, [F

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x4

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

    nop

    nop
.end method


# virtual methods
.method public a(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p3, p2}, Landroid/graphics/Matrix;->getValues([F)V

    goto/32 :goto_1c

    nop

    nop

    :goto_2
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    aput v0, p3, p2

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x5

    nop

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

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p0, Lreu;->c:Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, p2}, Landroid/graphics/Matrix;->setValues([F)V

    goto/32 :goto_1e

    nop

    nop

    :goto_a
    aget v0, v0, p2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    aget v1, p3, p2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_10
    iget-object v0, p0, Lreu;->a:[F

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_11
    if-lt p2, p3, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p2, p0, Lreu;->b:[F

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_13
    sub-float/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_14
    invoke-virtual {p2, v0}, Landroid/graphics/Matrix;->getValues([F)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    add-float/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p2, p0, Lreu;->b:[F

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

    nop

    :goto_17
    iget-object v0, p0, Lreu;->a:[F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_18
    mul-float/2addr v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p3, p0, Lreu;->b:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1c
    const/4 p2, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_20

    nop

    nop

    :goto_1e
    iget-object p0, p0, Lreu;->c:Landroid/graphics/Matrix;

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

    nop

    :goto_1f
    add-int/lit8 p2, p2, 0x1

    nop

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

    nop

    :goto_20
    const/16 p3, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method

.method public bridge synthetic evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    check-cast p3, Landroid/graphics/Matrix;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    check-cast p2, Landroid/graphics/Matrix;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1, p2, p3}, Lreu;->a(FLandroid/graphics/Matrix;Landroid/graphics/Matrix;)Landroid/graphics/Matrix;

    move-result-object p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
