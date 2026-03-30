.class public final Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;
.super Lhv;
.source "PG"


# instance fields
.field public final a:Landroid/graphics/PointF;

.field public b:Ljava/util/Map;

.field public c:I

.field public d:I

.field public e:D

.field public f:D

.field public g:D

.field public h:D

.field public i:Lmxs;

.field private final j:Landroid/graphics/Paint;

.field private final k:Landroid/graphics/Paint;

.field private final l:Landroid/graphics/Paint;

.field private final m:Landroid/graphics/Paint;

.field private n:I

.field private final o:I

.field private final p:I

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:I

.field private final u:Landroid/graphics/PointF;


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(D)D
    .locals 4

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, v1, p0, p1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
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

    :goto_3
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    return-wide p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x1b

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-wide v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->e:D

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-wide v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->f:D

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

    :goto_d
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop
.end method

.method private final 33b3102b6558811a7b7629a1e8e59bd2m(Landroid/graphics/Canvas;FDI)V
    .locals 6

    goto/32 :goto_21

    nop

    nop

    :goto_0
    iget-object p5, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->j:Landroid/graphics/Paint;

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

    :goto_1
    if-ne v1, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0, p5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p5

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b:Ljava/util/Map;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5
    move-object v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_9
    move v1, p2

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget p3, p3, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    const v1, 0x1b

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_c
    invoke-static {p0}, Lnzk;->p(Landroid/view/View;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_d
    double-to-int p3, p3

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_e
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    int-to-float p4, p4

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v2, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_26

    nop

    nop

    :goto_13
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    nop

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

    :goto_17
    const/16 p5, 0xff

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

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

    :goto_19
    mul-double/2addr p3, v1

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

    :goto_1a
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p5, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1c
    const/16 p5, 0x4d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_7

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_23
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->j:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_25
    invoke-static {p0}, Lnzk;->v(Landroid/view/View;)I

    move-result v0

    nop

    nop

    :goto_26
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move v3, p2

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    int-to-double v1, p5

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

    :goto_29
    return-void

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v5, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->j:Landroid/graphics/Paint;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_3
    goto/32 :goto_6

    nop

    :goto_2d
    invoke-interface {v0, p5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

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

    :goto_2e
    iget p4, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->o:I

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2f
    sub-float v4, p3, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-eq p5, v0, :cond_4

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_31
    sget-object v0, Lmya;->c:Lmya;

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

    :goto_32
    iget v2, p3, Landroid/graphics/PointF;->y:F

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

    :goto_33
    iget-object p3, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 3fd9578e124c68aa49885b22b61b4ec8m(Landroid/graphics/Canvas;FDZ)F
    .locals 7

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    iget p5, p5, Landroid/graphics/PointF;->y:F

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move v1, p2

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_2
    add-float/2addr p2, p4

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p3, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a:Landroid/graphics/PointF;

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_4
    int-to-float p0, p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_5
    int-to-float p4, p4

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    int-to-float p5, p5

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_8
    add-float v4, p0, v0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_9
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_b
    const/4 p3, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_c
    move v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    iget v2, p5, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_e
    mul-int/2addr p4, p3

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_10
    iget v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->r:I

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_11
    return p2

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_13
    iget-object v5, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->k:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_14
    int-to-float p4, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->p:I

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

    :goto_16
    move-object v1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    add-float/2addr p2, p5

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1a
    add-float v5, p3, p4

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_23

    nop

    nop

    :goto_1d
    if-nez p5, :cond_0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_1e
    iget p5, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->q:I

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

    :goto_1f
    iget-object p4, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->k:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_20
    const/4 p4, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sub-float p0, p2, p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget p4, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->q:I

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->k:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_25
    int-to-float p5, p5

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_26
    iget-object p4, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->k:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

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

    :goto_28
    goto :goto_21

    nop

    nop

    :goto_29
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2a
    const v0, 0x7f0707a5

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2b
    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2d
    int-to-float p5, p5

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget p3, p3, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const v1, 0xc

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

    nop

    nop

    :goto_30
    move-object v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_31
    double-to-int p3, p3

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_32
    const-wide v0, 0x4053400000000000L    # 77.0

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p5

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_36
    add-int/lit8 p4, p4, 0x1

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_37
    if-lt p4, p3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_47

    nop

    nop

    :goto_38
    int-to-float v0, v0

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_39
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_3a
    iget p4, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->q:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3b
    const v0, 0x7f0707ab

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_3c
    mul-double/2addr p3, v0

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

    :goto_3d
    iget-object v6, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->k:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget p5, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->s:I

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_3f
    invoke-virtual {p4, p5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_40
    sub-float v4, p5, v0

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

    :goto_41
    invoke-virtual {p5, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p5

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_42
    move v3, p2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    sub-float v2, p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_44
    int-to-float p5, p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_33

    nop

    :goto_46
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_47
    iget-object p5, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_48
    iget p5, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->p:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_49
    sub-float/2addr p3, p5

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m(Landroid/graphics/Canvas;FD)F
    .locals 6

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    move-object v0, p0

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

    :goto_1
    move-wide v3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    move-object v1, p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1b

    nop

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
    rem-int v0, v0, v1

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
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct/range {v0 .. v5}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->3fd9578e124c68aa49885b22b61b4ec8m(Landroid/graphics/Canvas;FDZ)F

    move-result p0

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

    :goto_d
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    :goto_f
    move v2, p2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_2

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
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_25

    nop

    nop

    :goto_2
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->j:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->p:I

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p1, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_8
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->k:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_9
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

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

    nop

    :goto_a
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    mul-int/lit8 p2, p2, 0x5

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1, p2, p3}, Lhv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_1b

    nop

    nop

    :goto_d
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_f
    iput p2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->q:I

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->l:Landroid/graphics/Paint;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_11
    iput p3, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->r:I

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_12
    iput p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->d:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    const p2, 0x7f0707a7

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    const p2, 0x7f0707aa

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_16
    new-instance p1, Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_17
    iput p3, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->s:I

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
    const p2, 0x7f0707a9

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_19
    new-instance p1, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1b
    new-instance p1, Landroid/graphics/PointF;

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

    :goto_1c
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1d
    const p3, 0x7f0707ad

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1e
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->setProgress(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance p1, Ljava/util/HashMap;

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

    :goto_20
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    goto/32 :goto_e

    nop

    nop

    :goto_21
    iput p2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->o:I

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_22
    const/4 p1, 0x1

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

    :goto_23
    const p3, 0x7f0707a6

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_24
    new-instance p1, Landroid/graphics/Paint;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_25
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b:Ljava/util/Map;

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

    :goto_26
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput p2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->t:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_28
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->m:Landroid/graphics/Paint;

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

    :goto_2a
    iput-object p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->u:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2b
    const p3, 0x7f0707a4

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2c
    new-instance p1, Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2d
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_29

    nop

    nop

    :goto_2e
    iput-wide p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:D

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_2f
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

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
.end method


# virtual methods
.method public final a(D)D
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_2
    iget v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->n:I

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

    :goto_3
    mul-double/2addr v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_d

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    div-double/2addr v0, v2

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

    :goto_7
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    const v1, 0x1c

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    int-to-double v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    return-wide v0

    nop

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    int-to-double v2, p0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->d()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method public final b(D)D
    .locals 11

    goto/32 :goto_c

    nop

    nop

    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

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

    :goto_1
    const-wide v1, 0x7fefffffffffffffL    # Double.MAX_VALUE

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2
    if-ltz v9, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_1d

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    :goto_5
    move-wide v1, v7

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    invoke-interface {v9, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v9, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b:Ljava/util/Map;

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

    :goto_9
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    const v1, 0x1b

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_b
    move-wide v3, v5

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

    nop

    :goto_c
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    :goto_f
    int-to-double v5, v0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_10
    sub-double v7, p1, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_12
    return-wide v3

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_13

    nop

    nop

    :goto_15
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lt v0, v5, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eq v9, v10, :cond_3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v5, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c:I

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

    :goto_19
    invoke-static {v7, v8}, Ljava/lang/Math;->abs(D)D

    move-result-wide v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

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

    :goto_1b
    sget-object v10, Lmya;->a:Lmya;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1c
    move-wide v3, p1

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1e
    cmpg-double v9, v7, v1

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

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop
.end method

.method public final c()D
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-wide v0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    const v0, 0x14

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    iget-wide v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

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

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    invoke-virtual {p0, v0, v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop
.end method

.method public final d()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget p0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    add-int/lit8 p0, p0, -0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e(D)V
    .locals 4

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iput-wide p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:D

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->min(DD)D

    move-result-wide p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->d()I

    move-result v0

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

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_6
    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_7
    const v0, 0xe

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    int-to-double v0, v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

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

    :goto_e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->invalidate()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    :goto_10
    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final f()Z
    .locals 6

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    double-to-int v0, v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    :goto_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-wide/16 v4, 0x0

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

    :goto_6
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

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

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_9
    cmpl-double v2, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x1f

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    nop

    goto/32 :goto_f

    nop

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

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-double v2, v0, v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_11
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-wide v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    if-eq p0, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v0, Lmya;->a:Lmya;

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

    nop

    nop

    :goto_17
    if-eqz v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_e

    nop

    nop

    :goto_19
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b:Ljava/util/Map;

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
.end method

.method public final g(I)Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    :goto_6
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b:Ljava/util/Map;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_8
    if-eq p0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    sget-object p1, Lmya;->a:Lmya;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop
.end method

.method public final h()V
    .locals 6

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v3, Lmya;->a:Lmya;

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

    :goto_1
    if-ne v2, v3, :cond_0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_3
    sget-object v5, Lmya;->a:Lmya;

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

    :goto_4
    mul-int/lit8 v0, v0, 0x3

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

    :goto_5
    iput v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->n:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->d()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_7
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    int-to-double v1, v1

    nop

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

    nop

    :goto_9
    add-int/lit8 v1, v1, -0x1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_a
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

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

    nop

    :goto_c
    const v0, 0x4

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    check-cast v4, Lmya;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v0, 0x4

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

    :goto_f
    const v1, 0x16

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->setMax(I)V

    goto/32 :goto_29

    nop

    nop

    :goto_11
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_12
    iput v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c:I

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

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_15
    int-to-double v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_16
    iput-wide v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->f:D

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

    nop

    :goto_17
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_18
    invoke-static {v4, v3, v5}, Lj$/util/Map$-EL;->getOrDefault(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_19
    iget v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->t:I

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

    :goto_1a
    iput-object v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b:Ljava/util/Map;

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

    :goto_1b
    goto/32 :goto_22

    nop

    :goto_1c
    return-void

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_2e

    nop

    nop

    :goto_1f
    goto/32 :goto_1a

    nop

    nop

    :goto_20
    if-lt v2, v0, :cond_2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v4, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_25
    new-instance v1, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_26
    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_27
    iput-wide v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->f:D

    nop

    nop

    :goto_28
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b:Ljava/util/Map;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto :goto_28

    nop

    nop

    :goto_2b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    :goto_2d
    const/4 v2, 0x0

    nop

    :goto_2e
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method protected final declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-exit p0

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

    :goto_8
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    iget v0, v0, Landroid/graphics/PointF;->x:F

    nop

    float-to-double v0, v0

    nop

    nop

    nop

    nop

    nop

    iget-wide v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:D

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide v2

    nop

    sub-double/2addr v0, v2

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b:Ljava/util/Map;

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    double-to-float v0, v0

    nop

    sget-object v1, Lmya;->b:Lmya;

    nop

    nop

    nop

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    nop

    if-ne v2, v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-wide v6, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->g:D

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    nop

    move-object v3, p0

    nop

    nop

    nop

    nop

    nop

    move-object v4, p1

    nop

    nop

    nop

    move v5, v0

    nop

    nop

    nop

    invoke-direct/range {v3 .. v8}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->33b3102b6558811a7b7629a1e8e59bd2m(Landroid/graphics/Canvas;FDI)V

    iget v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->q:I

    nop

    nop

    nop

    nop

    int-to-float v1, v1

    nop

    add-float/2addr v0, v1

    nop

    nop

    nop

    iget-wide v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->g:D

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->51550bab6b6440a4fd45f825c221b363m(Landroid/graphics/Canvas;FD)F

    move-result v0

    nop

    nop

    nop

    goto :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    move-object v3, p0

    nop

    nop

    move-object v4, p1

    nop

    move v5, v0

    nop

    invoke-direct/range {v3 .. v8}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->33b3102b6558811a7b7629a1e8e59bd2m(Landroid/graphics/Canvas;FDI)V

    iget v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->q:I

    nop

    nop

    int-to-float v1, v1

    nop

    nop

    add-float/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1, v0, v9, v10}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->51550bab6b6440a4fd45f825c221b363m(Landroid/graphics/Canvas;FD)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x1

    nop

    :goto_a
    iget v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c:I

    nop

    add-int/lit8 v2, v2, -0x1

    nop

    if-ge v1, v2, :cond_3

    nop

    nop

    nop

    add-int/lit8 v8, v1, 0x1

    nop

    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    sget-object v3, Lmya;->b:Lmya;

    nop

    nop

    if-eq v2, v3, :cond_2

    nop

    nop

    nop

    nop

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    nop

    nop

    nop

    nop

    move-object v2, p0

    nop

    nop

    nop

    nop

    nop

    move-object v3, p1

    nop

    nop

    nop

    nop

    nop

    move v4, v0

    nop

    nop

    nop

    move v7, v1

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->33b3102b6558811a7b7629a1e8e59bd2m(Landroid/graphics/Canvas;FDI)V

    iget v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->q:I

    nop

    int-to-float v2, v2

    nop

    nop

    nop

    add-float/2addr v0, v2

    nop

    nop

    nop

    iget v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c:I

    nop

    nop

    nop

    add-int/lit8 v2, v2, -0x2

    nop

    nop

    nop

    nop

    nop

    if-ge v1, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b:Ljava/util/Map;

    nop

    nop

    nop

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Lmya;->b:Lmya;

    nop

    nop

    nop

    if-eq v1, v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1, v0, v9, v10}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->51550bab6b6440a4fd45f825c221b363m(Landroid/graphics/Canvas;FD)F

    move-result v0

    nop

    nop

    nop

    nop

    nop

    :cond_2
    move v1, v8

    nop

    nop

    nop

    goto/16 :goto_a

    nop

    nop

    nop

    :cond_3
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b:Ljava/util/Map;

    nop

    nop

    nop

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    sget-object v2, Lmya;->b:Lmya;

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_4

    nop

    nop

    nop

    const-wide/16 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    nop

    move-object v2, p0

    nop

    nop

    nop

    move-object v3, p1

    nop

    nop

    nop

    nop

    move v4, v0

    nop

    nop

    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->3fd9578e124c68aa49885b22b61b4ec8m(Landroid/graphics/Canvas;FDZ)F

    move-result v10

    nop

    nop

    iget v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c:I

    nop

    nop

    add-int/lit8 v13, v0, -0x1

    nop

    const-wide/16 v11, 0x0

    nop

    nop

    move-object v8, p0

    nop

    nop

    nop

    nop

    nop

    move-object v9, p1

    nop

    nop

    nop

    nop

    nop

    invoke-direct/range {v8 .. v13}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->33b3102b6558811a7b7629a1e8e59bd2m(Landroid/graphics/Canvas;FDI)V

    goto :goto_b

    nop

    nop

    nop

    :cond_4
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    nop

    nop

    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    nop

    move-object v2, p0

    nop

    nop

    nop

    move-object v3, p1

    nop

    nop

    nop

    nop

    nop

    move v4, v0

    nop

    nop

    nop

    invoke-direct/range {v2 .. v7}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->3fd9578e124c68aa49885b22b61b4ec8m(Landroid/graphics/Canvas;FDZ)F

    move-result v10

    nop

    nop

    iget v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c:I

    nop

    nop

    nop

    nop

    add-int/lit8 v13, v0, -0x1

    nop

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    nop

    move-object v8, p0

    nop

    nop

    nop

    nop

    nop

    move-object v9, p1

    nop

    nop

    nop

    nop

    invoke-direct/range {v8 .. v13}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->33b3102b6558811a7b7629a1e8e59bd2m(Landroid/graphics/Canvas;FDI)V

    :goto_b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    const v1, 0x7f07079e

    nop

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    int-to-float v0, v0

    nop

    nop

    iget v3, v1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    nop

    iget v4, v1, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    nop

    iget v5, v1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    iget v1, v1, Landroid/graphics/PointF;->y:F

    nop

    nop

    sub-float v6, v1, v0

    nop

    nop

    nop

    nop

    nop

    iget-object v7, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->m:Landroid/graphics/Paint;

    nop

    nop

    move-object v2, p1

    nop

    nop

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    iget v3, v1, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    nop

    iget v4, v1, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    iget v5, v1, Landroid/graphics/PointF;->x:F

    nop

    iget v1, v1, Landroid/graphics/PointF;->y:F

    nop

    nop

    nop

    sub-float v6, v1, v0

    nop

    nop

    nop

    iget-object v7, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->l:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    move-object v2, p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    :goto_c
    const v0, 0xf

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onFinishInflate()V
    .locals 4

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x7f0707ab

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

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h()V

    goto/32 :goto_38

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_20

    nop

    nop

    :goto_8
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_9
    const-wide/16 v0, 0x0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_b
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

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

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->l:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_11
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->m:Landroid/graphics/Paint;

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

    :goto_12
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->j:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_13
    int-to-float v0, v0

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

    :goto_14
    invoke-virtual {p0, v1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->setEnabled(Z)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v1

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x7f0707a8

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->k:Landroid/graphics/Paint;

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->k:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_19
    iput-wide v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->e:D

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

    :goto_1a
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->l:Landroid/graphics/Paint;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1b
    invoke-static {p0}, Lnzk;->p(Landroid/view/View;)I

    move-result v2

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1d
    const v2, 0x7f060897

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_1e
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_1a

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    nop

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

    :goto_20
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->l:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->m:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_6

    nop

    :goto_25
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->setBackgroundColor(I)V

    goto/32 :goto_28

    nop

    nop

    :goto_27
    invoke-super {p0}, Lhv;->onFinishInflate()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2a
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->j:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_2e
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->j:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->k:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_31
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->m:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_f

    nop

    nop

    :goto_37
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

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

    :goto_38
    iput-wide v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->g:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_39
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {p0}, Lnzk;->v(Landroid/view/View;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    int-to-float p3, p3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sub-float/2addr p2, p3

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    int-to-float p2, p2

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iget p3, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->d:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    div-float/2addr p1, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-super/range {p0 .. p5}, Lhv;->onLayout(ZIIII)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    int-to-float p1, p1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    :goto_8
    div-float/2addr p2, p4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a:Landroid/graphics/PointF;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/high16 p4, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1, p2}, Landroid/graphics/PointF;->set(FF)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->getHeight()I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->getWidth()I

    move-result p1

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
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 12

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v2, v0, Lmxs;->d:Lmxw;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

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

    nop

    :goto_2
    iget-object v2, v2, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, v2, p1}, Landroid/graphics/PointF;->set(FF)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_73

    nop

    nop

    :goto_7
    iget-object v3, v0, Lmxs;->d:Lmxw;

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_8
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_9
    iget-wide v4, p1, Lmxs;->a:D

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return v1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez v3, :cond_1

    nop

    goto/32 :goto_85

    nop

    :cond_1
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v0, p1, Lmxs;->b:Z

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_e
    iget-object v3, v3, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v2, v0, Lmxs;->d:Lmxw;

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->invalidate()V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->i:Lmxs;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_12
    iget-object v2, v0, Lmxs;->d:Lmxw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, v6, v7}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->1478a1c7833aac5e360e0ba4b0c0c568m(D)D

    move-result-wide v2

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->invalidate()V

    goto/32 :goto_67

    nop

    nop

    :goto_15
    iget-object v0, p1, Lmxs;->d:Lmxw;

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    double-to-int p1, v2

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_17
    cmpl-double v0, v4, v2

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8c

    nop

    :goto_19
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->d()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_1a
    invoke-direct {p0, v2, v3}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->1478a1c7833aac5e360e0ba4b0c0c568m(D)D

    move-result-wide v2

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    cmpl-double v3, v6, v8

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->u:Landroid/graphics/PointF;

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_1d
    iget v2, v2, Landroid/graphics/PointF;->x:F

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v2, v2, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_1f
    iget-object p1, p1, Lmxs;->d:Lmxw;

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_20
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_22
    iget-object v0, v0, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_23
    float-to-double v8, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_3f

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {v2}, Lmxw;->v(I)Lmxz;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_27
    iget-wide v6, v0, Lmxs;->c:D

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_29
    iget-wide v4, v3, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:D

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v2, v2, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v4, v0, Lmxs;->d:Lmxw;

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_2d
    iget-wide v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:D

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_2e
    iput-wide v2, v0, Lmxs;->a:D

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_2f
    iput-boolean v2, v0, Lmxs;->b:Z

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

    :goto_30
    const/4 v2, 0x2

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_31
    mul-double/2addr v8, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v2, v2, Lmxw;->a:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_33
    if-nez v0, :cond_4

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_4
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v3, v0, Lmxs;->d:Lmxw;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v3}, Lmxw;->g()V

    :goto_36
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    check-cast v3, Lgjw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_38
    return p0

    nop

    nop

    :goto_39
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

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

    :goto_3b
    goto/32 :goto_8d

    nop

    :goto_3c
    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->f()Z

    move-result v2

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

    nop

    :goto_3d
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_5
    goto/32 :goto_24

    nop

    nop

    :goto_3e
    if-ne v0, p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :goto_3f
    goto/32 :goto_20

    nop

    nop

    :goto_40
    if-gtz v3, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v0, p1, Lmxs;->d:Lmxw;

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_42
    return v1

    nop

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-wide v2, v2, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_45
    invoke-virtual {v0, v2, v3}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide v5

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_46
    if-ne v0, v2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->i:Lmxs;

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/4 p1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {v4, v2, v3}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->m(D)V

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v4, v5, v6}, Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;->m(D)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4b
    int-to-double v4, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object v2, v0, Lmxs;->d:Lmxw;

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_4d
    iget-object v2, v0, Lmxs;->d:Lmxw;

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

    :goto_4e
    iget-object v2, v2, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c()D

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_50
    return v1

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_52
    sub-float/2addr v0, v2

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_53
    div-double/2addr v8, v4

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p0, v0, p1}, Landroid/graphics/PointF;->set(FF)V

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    check-cast v3, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_56
    invoke-static {v0}, Lmxs;->a(Lmxw;)V

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->b(D)D

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_58
    iput-wide v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:D

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v0, v2}, Lmxw;->f(Lmxz;)V

    :goto_5a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-nez v2, :cond_9

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_9
    :goto_5c
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-boolean v3, v0, Lmxs;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_5e
    goto :goto_5c

    nop

    :goto_5f
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->setProgress(I)V

    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_61
    iput-wide v4, v0, Lmxs;->c:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_62
    iput-boolean v2, v0, Lmxs;->b:Z

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    nop

    nop

    :goto_65
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_66
    if-nez v0, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    :cond_a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object p0, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->u:Landroid/graphics/PointF;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iput-wide v2, v0, Lmxs;->c:D

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_6a
    cmpg-double v3, v10, v8

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_6b
    int-to-double v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->invalidate()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    sub-double/2addr v6, v8

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

    :goto_6e
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_6f
    double-to-int v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_70
    iget v4, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->n:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_71
    if-nez p1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_72
    if-nez v0, :cond_c

    nop

    nop

    goto/32 :goto_69

    nop

    :cond_c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {p0, v2, v3}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->a(D)D

    move-result-wide v2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v3}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->c()D

    move-result-wide v8

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_76
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v10

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->u:Landroid/graphics/PointF;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_78
    if-ne v0, v1, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_30

    nop

    nop

    :goto_79
    iget-object p1, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->i:Lmxs;

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iget-object v4, v0, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-virtual {v2}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->f()Z

    move-result v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7d
    const v1, 0x10

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

    :goto_7e
    iget-wide v6, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:D

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_7f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->isEnabled()Z

    move-result v0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_81
    invoke-virtual {v3}, Lgjw;->f()V

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_82
    iget-wide v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:D

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_83
    iput-wide v2, p0, Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;->h:D

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_84
    goto/16 :goto_65

    nop

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    iget-object v3, v3, Lmxw;->k:Lcom/google/android/apps/camera/ui/views/CountdownSnapSlider;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_88
    iget-object v0, p1, Lmxs;->d:Lmxw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_89
    if-ltz v3, :cond_e

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    if-eqz v3, :cond_f

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_f
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_43

    nop

    nop

    :goto_8d
    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_8e
    iget-object v4, v4, Lmxw;->j:Lcom/google/android/apps/camera/ui/cuttlefish/CountdownSliderUi;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p1}, Lmxw;->g()V

    :goto_90
    goto/32 :goto_82

    nop

    nop

    nop
.end method
