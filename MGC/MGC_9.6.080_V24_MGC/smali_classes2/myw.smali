.class public final Lmyw;
.super Lmyv;
.source "PG"


# instance fields
.field private final j:[F


# direct methods
.method public constructor <init>([FZZ)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0, p2, p3}, Lmyv;-><init>(ZZZ)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move v0, p0

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    array-length p1, p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    array-length p2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    invoke-static {v0}, Lrrf;->x(Z)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p3, 0x2

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    const/4 p2, 0x3

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

    :goto_9
    if-ne p2, p3, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_0
    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lmyw;->j:[F

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

    :goto_e
    if-eq p1, p2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    if-eqz p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Landroid/graphics/RectF;)V
    .locals 5

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lmyw;->a:I

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_2
    mul-float/2addr v0, v3

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lmyw;->j:[F

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_48

    nop

    nop

    :goto_5
    mul-float/2addr v0, v3

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

    :goto_6
    if-lez v0, :cond_1

    nop

    goto/32 :goto_12

    nop

    :cond_1
    goto/32 :goto_11

    nop

    :goto_7
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

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

    :goto_8
    aget v3, v3, v1

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

    :goto_9
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    iget-object v3, p0, Lmyw;->j:[F

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_b
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_c
    aget v2, v3, v2

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    mul-float/2addr v0, v3

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_f
    iget-object v3, p0, Lmyw;->j:[F

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_13
    iput v0, p0, Lmyw;->c:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput v0, p0, Lmyw;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result p1

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

    nop

    :goto_18
    iput v0, p0, Lmyw;->c:I

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iput v0, p0, Lmyw;->f:I

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

    :goto_1a
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput p1, p0, Lmyw;->d:I

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lmyw;->j:[F

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1e
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1f
    mul-float/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_21
    aget v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_22
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_23
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_10

    nop

    nop

    :goto_25
    aget v3, v3, v2

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

    :goto_26
    iget-object v3, p0, Lmyw;->j:[F

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_27
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_2b
    iput v0, p0, Lmyw;->b:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v3, p0, Lmyw;->j:[F

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

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

    nop

    :goto_2f
    mul-float/2addr v0, v3

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_31
    iput v0, p0, Lmyw;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_33
    iput v0, p0, Lmyw;->e:I

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_34
    aget v1, v2, v1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v3, p0, Lmyw;->j:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_36
    aget v3, v3, v1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-boolean v0, p0, Lmyw;->h:Z

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

    :goto_38
    iget-object v2, p0, Lmyw;->j:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_39
    aget v0, v0, v4

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    return-void

    nop

    nop

    :goto_3b
    goto/32 :goto_16

    nop

    nop

    :goto_3c
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3d
    mul-float/2addr v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_3e
    const v1, 0x10

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3f
    iput p1, p0, Lmyw;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_40
    mul-float/2addr p1, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_41
    aget v2, v3, v2

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

    :goto_42
    iget-object v3, p0, Lmyw;->j:[F

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_43
    iget-object v3, p0, Lmyw;->j:[F

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

    :goto_44
    mul-float/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_45
    mul-float/2addr p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_46
    aget v3, v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_48
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    aget v3, v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_4b
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    mul-float/2addr v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop
.end method
