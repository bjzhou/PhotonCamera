.class public final Lfbg;
.super Lffj;
.source "PG"


# instance fields
.field public a:Landroid/graphics/Path;

.field private final o:Lffj;


# direct methods
.method public constructor <init>(Lezb;Lffj;)V
    .locals 10

    goto/32 :goto_10

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1a

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    check-cast v3, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    iget v8, p2, Lffj;->g:F

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    iget-object v5, p2, Lffj;->d:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    :goto_8
    iget-object v6, p2, Lffj;->e:Landroid/view/animation/Interpolator;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v7, p2, Lffj;->f:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_a
    move-object v3, v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lfbg;->a()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object v2, p1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_d
    iput-object p2, p0, Lfbg;->o:Lffj;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

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

    :goto_10
    const v0, 0x1d

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

    :goto_11
    move-object v1, p0

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

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    invoke-direct/range {v1 .. v9}, Lffj;-><init>(Lezb;Ljava/lang/Object;Ljava/lang/Object;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;Landroid/view/animation/Interpolator;FLjava/lang/Float;)V

    goto/32 :goto_d

    nop

    nop

    :goto_14
    iget-object v0, p2, Lffj;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    iget-object v9, p2, Lffj;->h:Ljava/lang/Float;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    check-cast v4, Landroid/graphics/PointF;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_18
    iget-object v0, p2, Lffj;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_19
    move-object v4, v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 12

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    nop

    :goto_1
    invoke-virtual {v11, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_2
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_41

    nop

    nop

    :goto_4
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_2
    goto/32 :goto_37

    nop

    nop

    :goto_5
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    iget v3, v1, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_7
    iget v0, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    iget v5, v3, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v4, :cond_4

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_b
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    check-cast v2, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-float/2addr v5, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_e
    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_10
    iget-object v3, p0, Lfbg;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_11
    cmpl-float v4, v4, v5

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_12
    iget v4, v0, Landroid/graphics/PointF;->x:F

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v2, p0, Lfbg;->c:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v0, v0, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_15
    iget v0, v2, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    cmpl-float v4, v4, v5

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
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_18
    invoke-direct {v11}, Landroid/graphics/Path;-><init>()V

    goto/32 :goto_3a

    nop

    nop

    :goto_19
    const/4 v1, 0x0

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

    :goto_1a
    iget v5, v0, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz v4, :cond_6

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lfbg;->b:Ljava/lang/Object;

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

    nop

    :goto_1d
    check-cast v2, Landroid/graphics/PointF;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_7

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v0, :cond_8

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_13

    nop

    nop

    :goto_20
    iput-object v11, p0, Lfbg;->a:Landroid/graphics/Path;

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_24
    check-cast v0, Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v1}, Landroid/graphics/PointF;->length()F

    move-result v4

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

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_27
    new-instance v11, Landroid/graphics/Path;

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

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_29
    iget v0, v2, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_2a
    iget-object v1, v1, Lffj;->n:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2b
    add-float v6, v0, v3

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2c
    invoke-virtual {v11, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    goto/32 :goto_3

    nop

    nop

    :goto_2d
    iget v1, v2, Landroid/graphics/PointF;->y:F

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

    :goto_2e
    iget v10, v2, Landroid/graphics/PointF;->y:F

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    add-float v8, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v3, v1, Lffj;->m:Landroid/graphics/PointF;

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

    :goto_31
    iget v1, v1, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_32
    check-cast v3, Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_33
    iget v0, v2, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Lfbg;->c:Ljava/lang/Object;

    nop

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

    :goto_35
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_36
    iget v9, v2, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_37
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_39
    iget-object v2, p0, Lfbg;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3a
    iget v4, v0, Landroid/graphics/PointF;->x:F

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3b
    check-cast v0, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v2, v0, v3}, Landroid/graphics/PointF;->equals(FF)Z

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3d
    iget v3, v3, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_3e
    return-void

    nop

    nop

    :goto_3f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v1, p0, Lfbg;->o:Lffj;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_41
    if-nez v1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_42
    add-float v7, v0, v3

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_43
    move-object v4, v11

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_44
    goto/16 :goto_2

    nop

    nop

    :goto_45
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_47
    iget v3, v3, Landroid/graphics/PointF;->y:F

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_48
    if-lez v0, :cond_a

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_22

    nop

    :goto_49
    invoke-virtual {v3}, Landroid/graphics/PointF;->length()F

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop
.end method
