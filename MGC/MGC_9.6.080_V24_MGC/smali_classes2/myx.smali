.class public final Lmyx;
.super Lmyu;
.source "PG"


# direct methods
.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lmyu;-><init>(Landroid/graphics/Paint;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Landroid/graphics/Canvas;Landroid/graphics/RectF;)V
    .locals 8

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

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

    :goto_3
    iget v0, p2, Landroid/graphics/RectF;->left:F

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-object v2, p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5
    iget v0, p2, Landroid/graphics/RectF;->left:F

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

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_8

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    :goto_b
    iget v4, p2, Landroid/graphics/RectF;->top:F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_e
    iget v6, p2, Landroid/graphics/RectF;->bottom:F

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_10
    iget-boolean v0, p0, Lmyx;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_11
    iget v1, p0, Lmyx;->a:I

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_12
    add-float v5, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v7, p0, Lmyx;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_16
    add-float v3, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget v1, p0, Lmyx;->a:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    :goto_19
    goto/32 :goto_7

    nop

    nop

    nop
.end method
