.class public final Lfbi;
.super Lfbf;
.source "PG"


# instance fields
.field private final e:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfbi;->e:Landroid/graphics/PointF;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-direct {p0, p1}, Lfbf;-><init>(Ljava/util/List;)V

    goto/32 :goto_4

    nop

    nop

    :goto_4
    new-instance p1, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final synthetic f(Lffj;F)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p2, p2}, Lfbi;->k(Lffj;FFF)Landroid/graphics/PointF;

    move-result-object p0

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
.end method

.method protected final bridge synthetic g(Lffj;FFF)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lfbi;->k(Lffj;FFF)Landroid/graphics/PointF;

    move-result-object p0

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
.end method

.method protected final k(Lffj;FFF)Landroid/graphics/PointF;
    .locals 10

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-float/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_32

    nop

    :goto_2
    iget p2, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_3
    sub-float/2addr v2, v3

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v2, p0, Lfbi;->d:Lffl;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5
    iget v3, p1, Lffj;->g:F

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget v3, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    iget v1, v1, Landroid/graphics/PointF;->y:F

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_9
    add-float/2addr p3, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_a
    move v7, p2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p1, Lffj;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget p3, v0, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget v9, p0, Lfay;->c:F

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p1, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_f
    invoke-virtual/range {v2 .. v9}, Lffl;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    return-object p1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_12
    iget v0, v0, Landroid/graphics/PointF;->y:F

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

    :goto_13
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-object p0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    check-cast v0, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move-object v5, v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_19
    throw p0

    nop

    nop

    :goto_1a
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lfay;->c()F

    move-result v8

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1c
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p0, p0, Lfbi;->e:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1e
    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_21
    iget v2, v1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_22
    mul-float/2addr p4, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object p1, p0, Lfbi;->e:Landroid/graphics/PointF;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_24
    move-object v6, v1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_25
    add-float/2addr p2, p3

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

    :goto_26
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_27
    const v1, 0x1d

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p1, p1, Lffj;->h:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_31

    nop

    :goto_2a
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    mul-float/2addr p3, v2

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2c
    check-cast v1, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p1, Lffj;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p1, p2, p3}, Landroid/graphics/PointF;->set(FF)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_2f
    const-string p1, "Missing values for keyframe."

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_2d

    nop

    nop

    nop

    nop
.end method
