.class public final Lfbh;
.super Lfbf;
.source "PG"


# instance fields
.field private final e:Landroid/graphics/PointF;

.field private final f:[F

.field private final g:Landroid/graphics/PathMeasure;

.field private h:Lfbg;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lfbf;-><init>(Ljava/util/List;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfbh;->e:Landroid/graphics/PointF;

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

    :goto_2
    iput-object p1, p0, Lfbh;->g:Landroid/graphics/PathMeasure;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    new-instance p1, Landroid/graphics/PointF;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Landroid/graphics/PathMeasure;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    new-array p1, p1, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    invoke-direct {p1}, Landroid/graphics/PathMeasure;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :goto_a
    iput-object p1, p0, Lfbh;->f:[F

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final bridge synthetic f(Lffj;F)Ljava/lang/Object;
    .locals 10

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    goto/32 :goto_30

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/graphics/PathMeasure;->getLength()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v1, v2}, Landroid/graphics/PathMeasure;->setPath(Landroid/graphics/Path;Z)V

    goto/32 :goto_15

    nop

    nop

    :goto_3
    move-object v6, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    :goto_6
    iget-object p1, v0, Lfbg;->c:Ljava/lang/Object;

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

    :goto_7
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v2, p0, Lfbh;->d:Lffl;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_b
    iget-object p1, v0, Lfbg;->h:Ljava/lang/Float;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lfay;->c()F

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v6, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    aget v0, p2, v2

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

    nop

    :goto_10
    move-object v5, p1

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object p0, p1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_12
    mul-float/2addr p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_13
    aget p2, p2, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_14
    invoke-virtual/range {v2 .. v9}, Lffl;->b(FFLjava/lang/Object;Ljava/lang/Object;FFF)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Lfbh;->h:Lfbg;

    nop

    nop

    :goto_16
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-ne p1, v0, :cond_4

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p0, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Lfbh;->e:Landroid/graphics/PointF;

    nop

    :goto_1a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object p1, p0, Lfbh;->g:Landroid/graphics/PathMeasure;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v4

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    move-object v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v1, 0x1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_21
    iget-object p1, p0, Lfbh;->h:Lfbg;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, v0, p2}, Landroid/graphics/PointF;->set(FF)V

    goto/32 :goto_19

    nop

    nop

    :goto_23
    goto/32 :goto_1e

    nop

    nop

    :goto_24
    iget-object p0, p1, Lffj;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v1, v0, Lfbg;->a:Landroid/graphics/Path;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_26
    iget-object p1, v0, Lfbg;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_27
    return-object p0

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_23

    nop

    nop

    :goto_29
    goto :goto_1a

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2b
    const v1, 0x1e

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2c
    iget-object p1, p0, Lfbh;->g:Landroid/graphics/PathMeasure;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2d
    iget v3, v0, Lfbg;->g:F

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2e
    check-cast v0, Lfbg;

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2f
    goto/16 :goto_1a

    nop

    nop

    :goto_30
    goto/32 :goto_21

    nop

    nop

    nop

    :goto_31
    const v0, 0x1c

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_32
    check-cast v5, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v0, p0, Lfbh;->f:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget v9, p0, Lfay;->c:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_36
    iget-object p2, p0, Lfbh;->f:[F

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_37
    iget-object p1, p0, Lfbh;->e:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_38
    invoke-virtual {p1, p2, v0, v1}, Landroid/graphics/PathMeasure;->getPosTan(F[F[F)Z

    goto/32 :goto_37

    nop

    nop

    :goto_39
    move v8, p2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    check-cast p1, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method
