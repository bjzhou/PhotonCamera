.class public final Ldjh;
.super Ljava/lang/Object;
.source "PG"


# direct methods
.method public static final a(Landroid/text/Layout;ILandroid/graphics/Paint;)F
    .locals 4

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    invoke-virtual {p1}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    aget p1, p2, p1

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_3
    add-float/2addr v1, p2

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    cmpg-float v1, v0, v2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_8
    const/high16 p2, 0x40000000    # 2.0f

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_a
    sub-float/2addr p0, v1

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

    :goto_b
    add-int/2addr v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result p0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eq v1, v3, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_11
    return p1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_14
    add-float/2addr p1, p0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_16
    goto :goto_1b

    nop

    :goto_17
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-ltz v1, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1a
    sub-float/2addr p0, v1

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    :goto_1e
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1f
    sub-float/2addr v1, v0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0xc

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

    :goto_21
    sget-object p2, Ldjg;->a:[I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const-string v2, "\u2026"

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, v1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x10

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineLeft(I)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_28
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_29
    div-float/2addr p0, p2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_30

    nop

    nop

    :goto_2b
    goto/32 :goto_27

    nop

    nop

    :goto_2c
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2d
    if-eq p1, v3, :cond_4

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {p0, p1}, Ldjb;->c(Landroid/text/Layout;I)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_2f
    return v2

    nop

    nop

    :goto_30
    goto/32 :goto_9

    nop

    nop

    :goto_31
    if-eqz p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

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
.end method

.method public static final b(Landroid/text/Layout;ILandroid/graphics/Paint;)F
    .locals 2

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_0
    sub-float/2addr p2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1
    sub-float/2addr v1, v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    div-float/2addr p0, p1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-float/2addr v1, p2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_6
    goto/32 :goto_31

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    aget p2, v0, p2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_9
    if-eq p2, v0, :cond_1

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    :goto_a
    invoke-static {p0, p1}, Ldjb;->c(Landroid/text/Layout;I)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sub-float/2addr p2, p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_2
    goto/32 :goto_6

    nop

    :goto_e
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_f
    const/high16 p1, 0x40000000    # 2.0f

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

    :goto_10
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result v0

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_13
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_14
    const-string v0, "\u2026"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_15
    sub-float/2addr p0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_16
    if-ltz v0, :cond_3

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_28

    nop

    nop

    :goto_17
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphAlignment(I)Landroid/text/Layout$Alignment;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1a
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sget-object v0, Ldjg;->a:[I

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

    :goto_1c
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    move-result p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sub-float/2addr p0, v1

    nop

    nop

    :goto_1e
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_22
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p2}, Landroid/text/Layout$Alignment;->ordinal()I

    move-result p2

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_25
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineRight(I)F

    move-result v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getParagraphDirection(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineStart(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_29
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_2a
    sub-float/2addr p2, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Landroid/text/Layout;->getWidth()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    cmpg-float v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return p2

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_30
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    int-to-float p2, p2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_33
    if-eqz p2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :cond_5
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_34
    add-int/2addr v0, v1

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

    :goto_35
    const v0, 0x15

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_1e

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getEllipsisStart(I)I

    move-result v1

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_39
    int-to-float p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_3a
    goto :goto_37

    nop

    nop

    nop

    nop

    :goto_3b
    goto/32 :goto_1b

    nop

    nop

    :goto_3c
    const/4 v1, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method
