.class public final Loag;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Loah;


# instance fields
.field private final a:F

.field private final b:F


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m(Landroid/graphics/Rect;)F
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    iget v0, p0, Loag;->a:F

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

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    div-int/lit8 v0, v0, 0x2

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

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

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

    :goto_4
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    const/high16 p0, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    sub-float/2addr p1, v0

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

    nop

    :goto_7
    sub-float/2addr p1, p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    div-int/lit8 p1, p1, 0x2

    nop

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

    nop

    :goto_a
    iget p0, p0, Loag;->b:F

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

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

    :goto_c
    div-float/2addr v0, p0

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public constructor <init>(FF)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Loag;->b:F

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    iput p1, p0, Loag;->a:F

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/graphics/Rect;Landroid/graphics/Canvas;IF)V
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    int-to-float p1, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1
    invoke-virtual {p2, v0, p1}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    int-to-float p1, p1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3
    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->rotate(F)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x7

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

    :goto_5
    div-float/2addr p1, v1

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

    :goto_6
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    mul-float/2addr p1, p3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

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

    :goto_9
    goto/32 :goto_14

    nop

    nop

    :goto_a
    const p3, 0x40d33333    # 6.6f

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    :goto_c
    sub-float/2addr p1, p4

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    div-float/2addr v0, v1

    nop

    nop

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
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    int-to-float v0, v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_11
    invoke-direct {p0, p1}, Loag;->33f5b80483094659737b73d90f80a8a4m(Landroid/graphics/Rect;)F

    move-result p0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p2, p1, p0}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_18
    neg-float p1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    const/4 p1, 0x0

    nop

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

    :goto_1a
    const/high16 v1, 0x40000000    # 2.0f

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Loag;->33f5b80483094659737b73d90f80a8a4m(Landroid/graphics/Rect;)F

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p2, v0, p1}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-virtual {p2, v0, p0}, Landroid/graphics/Canvas;->translate(FF)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const p1, -0x3f2ccccd    # -6.6f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    invoke-virtual {p2, p1}, Landroid/graphics/Canvas;->rotate(F)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    neg-float p1, p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
