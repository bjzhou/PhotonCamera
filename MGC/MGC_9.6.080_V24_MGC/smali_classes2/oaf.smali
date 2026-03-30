.class public final Loaf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Loah;


# instance fields
.field private final a:F

.field private final b:F

.field private final c:F


# direct methods
.method public constructor <init>(FFF)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Loaf;->b:F

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput p3, p0, Loaf;->c:F

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput p2, p0, Loaf;->a:F

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

    :goto_4
    return-void

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;Landroid/graphics/Canvas;IF)V
    .locals 3

    goto/32 :goto_14

    nop

    nop

    :goto_0
    mul-float/2addr p4, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sub-float/2addr p1, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_3
    invoke-virtual {p2, v0, p1}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_5
    int-to-float v0, v0

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

    :goto_6
    iget v2, p0, Loaf;->c:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_7
    iget p0, p0, Loaf;->a:F

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/high16 v2, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_a
    div-float/2addr v0, v2

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

    :goto_b
    sub-float/2addr p4, p3

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_d
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_18

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    int-to-float p3, p3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v1, p0, Loaf;->b:F

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_14
    const v0, 0x1b

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

    :goto_15
    int-to-float p1, p1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    sub-float/2addr v0, p4

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_19
    div-float/2addr v1, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1a
    sub-float/2addr p1, v2

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop
.end method

.method public final b(Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2, p0, p1}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p0, Loaf;->a:F

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
