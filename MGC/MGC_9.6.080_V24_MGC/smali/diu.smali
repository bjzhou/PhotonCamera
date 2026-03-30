.class public final Ldiu;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final a(Landroid/text/TextPaint;Ljava/lang/CharSequence;II)Landroid/graphics/Rect;
    .locals 12

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    invoke-static {p2, v6}, Ljava/lang/Math;->min(II)I

    move-result p2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    if-ne v1, p3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_3
    invoke-direct {v4}, Landroid/text/TextPaint;-><init>()V

    :goto_4
    goto/32 :goto_38

    nop

    nop

    :goto_5
    iput p2, v1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_6
    const-class v2, Landroid/text/style/MetricAffectingSpan;

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
    iget v6, v3, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0, v1, p3, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v4, p0}, Landroid/text/TextPaint;->set(Landroid/text/TextPaint;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_a
    iget p2, v1, Landroid/graphics/Rect;->bottom:I

    nop

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

    :goto_b
    new-instance v3, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    return-object v0

    nop

    :goto_e
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_11
    invoke-virtual {v4, p1, p2, v5, v3}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/CharSequence;IILandroid/graphics/Rect;)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int/lit8 v1, p2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    instance-of v0, p1, Landroid/text/Spanned;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_15
    invoke-static {p2, v6}, Ljava/lang/Math;->max(II)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_16
    iput p2, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_18
    if-ne v10, v11, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_1
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v8, 0x0

    nop

    nop

    :goto_1a
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1b
    iput p2, v1, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto :goto_1a

    nop

    nop

    :goto_1d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    array-length v7, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_21
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v10

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v0, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v11

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

    :goto_24
    iget v6, v3, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_25
    add-int/2addr p2, v6

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    check-cast v6, [Landroid/text/style/MetricAffectingSpan;

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

    :goto_27
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2a
    invoke-interface {v0, p2, v5, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    aget-object v9, v6, v8

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2f
    if-lt v8, v7, :cond_3

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_30
    return-object v1

    nop

    :goto_31
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget p2, v1, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    :goto_34
    invoke-interface {v0, p2, p3, v2}, Landroid/text/Spanned;->nextSpanTransition(IILjava/lang/Class;)I

    move-result v5

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_35
    check-cast v0, Landroid/text/Spanned;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_36
    move p2, v5

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_37
    new-instance v4, Landroid/text/TextPaint;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_38
    if-lt p2, p3, :cond_5

    nop

    goto/32 :goto_3a

    nop

    :cond_5
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/16 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_30

    nop

    nop

    :goto_3b
    invoke-virtual {v9, v4}, Landroid/text/style/MetricAffectingSpan;->updateMeasureState(Landroid/text/TextPaint;)V

    :goto_3c
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    add-int/lit8 v8, v8, 0x1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    move-object v0, p1

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget p2, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop
.end method
