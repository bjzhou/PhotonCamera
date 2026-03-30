.class public Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;
.super Lhxh;
.source "PG"


# instance fields
.field public a:I

.field public final b:Ljava/util/Map;

.field public final c:Landroid/graphics/Rect;

.field public final d:Landroid/graphics/Rect;

.field public e:Ljava/util/List;

.field public f:I

.field public g:Z

.field public h:Z

.field private final k:Ljava/util/Map;

.field private final l:Landroid/graphics/Paint;

.field private m:I

.field private n:I

.field private final o:Landroid/graphics/RectF;


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(I)I
    .locals 0

    goto/32 :goto_7

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    :goto_3
    check-cast p0, Ljava/lang/Integer;

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->k:Ljava/util/Map;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

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
.end method

.method private final 3fd9578e124c68aa49885b22b61b4ec8m(IILandroid/graphics/RectF;)Z
    .locals 3

    goto/32 :goto_2a

    nop

    nop

    :goto_0
    if-lez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1
    aget p0, v0, p1

    nop

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

    :goto_2
    invoke-virtual {p3}, Landroid/graphics/RectF;->isEmpty()Z

    move-result p2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3
    int-to-float p1, p1

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_4
    if-gtz p0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p3}, Landroid/graphics/RectF;->width()F

    move-result p2

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    cmpl-float p0, p0, p2

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

    :goto_7
    if-lez p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    :goto_8
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_9
    return p1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_b
    return v1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0}, Landroid/graphics/Matrix;->mapPoints([F)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lhxh;->h()Landroid/graphics/Matrix;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_11
    int-to-float p2, p2

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

    :goto_12
    aget p0, v0, p1

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_13
    aget p0, v0, v1

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

    :goto_14
    const/high16 v2, -0x3db80000    # -50.0f

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0xc

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_16
    add-float/2addr p2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_18
    aput p1, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_19
    cmpl-float p0, p0, p3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez p0, :cond_3

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    :goto_1b
    add-float/2addr p3, v2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-array v0, v0, [F

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1d
    goto/32 :goto_e

    nop

    :goto_1e
    cmpg-float p0, p0, p2

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

    :goto_1f
    if-lez v0, :cond_4

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/high16 p2, 0x42480000    # 50.0f

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_22
    aput p2, v0, p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz p2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_24
    aget p0, v0, v1

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

    :goto_25
    if-ltz p0, :cond_6

    nop

    goto/32 :goto_2d

    nop

    :cond_6
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_26
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_28
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_29
    cmpg-float p0, p0, p2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_2a
    const v0, 0x9

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

    :goto_2b
    invoke-virtual {p3}, Landroid/graphics/RectF;->height()F

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_2c
    goto/16 :goto_c

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m()I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p2, Ljava/util/HashMap;

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
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->o:Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_3
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    instance-of p2, p1, Lfwm;

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

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x9

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

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p2, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_a
    new-instance p2, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_b
    const/high16 v2, 0x43200000    # 160.0f

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

    :goto_c
    invoke-direct {p0, p1, p2}, Lhxh;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_32

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

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_e
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    new-instance p2, Landroid/graphics/RectF;

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

    :goto_10
    if-nez p2, :cond_1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

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

    :goto_14
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_22

    nop

    nop

    :goto_16
    iput p1, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->n:I

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    iput-object p2, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_19
    iput-object v0, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->l:Landroid/graphics/Paint;

    nop

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

    :goto_1a
    new-instance p2, Ljava/util/HashSet;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1b
    iput-boolean v1, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->g:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1}, Lj$/util/Optional;->get()Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p2, v0, v0, v0, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_29

    nop

    nop

    :goto_1e
    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_1f
    div-float/2addr p2, v2

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_21
    iput-object p2, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->k:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_24
    check-cast p1, Lfwm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_25
    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_26
    new-instance p2, Landroid/graphics/Rect;

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

    :goto_27
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_28
    const/4 v1, 0x1

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

    :goto_29
    iput-object p2, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->c:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2a
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v0, 0x20

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    new-instance p2, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_2d
    invoke-interface {p1}, Lfwm;->b()Lhoh;

    move-result-object p1

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

    nop

    :goto_2e
    invoke-virtual {p1, p2}, Lhoh;->a(Lhmo;)Lj$/util/Optional;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput-object p2, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->d:Landroid/graphics/Rect;

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_30
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_12

    nop

    nop

    :goto_32
    const/16 p2, 0x5dc

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 p2, -0x1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    check-cast p1, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_35
    sget-object p2, Lhmp;->a:Lhmo;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_36
    iput v0, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->n:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_37
    int-to-float p2, p2

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {p2}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_36

    nop

    nop

    :goto_39
    iput v0, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->m:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3a
    add-float/2addr p2, p2

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

    :goto_3b
    iput p2, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->a:I

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_3c
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget p2, p2, Landroid/util/DisplayMetrics;->xdpi:F

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3e
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method final a()I
    .locals 2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/high16 v0, 0x40000000    # 2.0f

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    int-to-float p0, p0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_6
    mul-float/2addr v0, p0

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

    :goto_7
    iget p0, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->n:I

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

    :goto_8
    goto/32 :goto_1

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_a
    if-ne v0, v1, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_b
    iget-boolean v1, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->h:Z

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    const v1, 0x1b

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_4

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    :goto_f
    const v0, 0xa

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    if-eqz p0, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_13
    const/16 p0, 0x12c

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_16
    float-to-int p0, v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    const/4 v0, 0x1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop
.end method

.method public final b()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->e()V

    goto/32 :goto_7

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->k:Ljava/util/Map;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {v0}, Ljava/util/Map;->clear()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->b:Ljava/util/Map;

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

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->invalidate()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object v0, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->e:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final c()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iput-boolean v0, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->g:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final d(Z)V
    .locals 3

    goto/32 :goto_e

    nop

    nop

    :goto_0
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->51550bab6b6440a4fd45f825c221b363m()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v1, Lprf;

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

    :goto_5
    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

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

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_f

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_17

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_d
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x1f

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    :goto_13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    :goto_14
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->e:Ljava/util/List;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    check-cast v1, Lhxg;

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

    :goto_19
    iget-object v2, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->b:Ljava/util/Map;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v1, v1, Lprf;->a:I

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1b
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v1, p1}, Lhxg;->b(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final e()V
    .locals 13

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    :goto_1
    if-nez v10, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_41

    nop

    :goto_3
    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->b:Ljava/util/Map;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-gt v5, v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    :cond_1
    goto/32 :goto_c3

    nop

    nop

    nop

    :goto_6
    if-eqz v8, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v5, v6}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v5, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->e:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    :goto_a
    iget-boolean v7, v6, Lhxg;->k:Z

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_b
    new-instance v6, Lhxd;

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

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_d
    iget v4, v1, Lprf;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_e
    invoke-direct {p0, v9}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->1478a1c7833aac5e360e0ba4b0c0c568m(I)I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_f
    if-ge v7, v8, :cond_3

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    :cond_3
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, v4}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->1478a1c7833aac5e360e0ba4b0c0c568m(I)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lhxh;->h()Landroid/graphics/Matrix;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v6

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v7, v1, Lprf;->c:Landroid/graphics/Rect;

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-ge v5, v7, :cond_4

    nop

    goto/32 :goto_41

    nop

    :cond_4
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move v9, v4

    nop

    nop

    :goto_18
    goto/32 :goto_df

    nop

    nop

    :goto_19
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->b:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

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

    :goto_1c
    const/4 v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_1d
    iget v6, v5, Lprf;->b:I

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v5, Lprf;

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_1f
    const/4 v4, 0x2

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_21
    if-eq v11, v12, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-boolean v4, v6, Lhxg;->k:Z

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    :goto_25
    iget-object v7, v5, Lprf;->c:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_26
    mul-int/lit8 v9, v9, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_27
    invoke-direct {v6, v4}, Lhxd;-><init>(I)V

    goto/32 :goto_32

    nop

    nop

    :goto_28
    check-cast v7, Lprf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    :goto_29
    goto/16 :goto_e7

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_2c
    iget v9, v5, Lprf;->a:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_2d
    if-eq v5, v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    :cond_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2e
    if-eqz v4, :cond_7

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_80

    nop

    nop

    :goto_2f
    if-nez v0, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :cond_8
    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    move-result v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cf

    nop

    nop

    :goto_31
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-static {v6}, Lj$/util/Comparator$-CC;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v6

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_9

    nop

    nop

    goto/32 :goto_5b

    nop

    :cond_9
    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v4, v1, Lprf;->c:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v8, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_36
    iget-object v6, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->e:Ljava/util/List;

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_37
    add-int/2addr v8, v5

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {v4}, Lhxg;->a()V

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v11, :cond_a

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget v5, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->m:I

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

    :goto_3b
    iget v5, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->m:I

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_3c
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_3f
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_40
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_42
    iget v7, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->a:I

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_43
    if-gtz v0, :cond_b

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_44
    add-int/2addr v4, v3

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    mul-int/lit8 v4, v4, 0x1e

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_e9

    nop

    :goto_47
    goto/32 :goto_4

    nop

    nop

    :goto_48
    invoke-virtual {v11, v12}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v11

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    :goto_4a
    const v0, 0x6

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_4b
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    :goto_4c
    check-cast v5, Ljava/util/List;

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_4d
    const/16 v2, 0x32

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;

    move-result-object v0

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

    :goto_4f
    add-int/lit8 v9, v9, 0x1

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_50
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v5, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->b:Ljava/util/Map;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_52
    if-ge v7, v8, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_53
    invoke-interface {v6, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_b6

    nop

    nop

    :goto_54
    if-ge v7, v8, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    check-cast v11, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_56
    iget-object v0, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_57
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_58
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v7

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_5a
    if-gtz v1, :cond_e

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    :cond_e
    :goto_5b
    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v6, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_5d
    if-gtz v0, :cond_f

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-direct {p0, v5}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->1478a1c7833aac5e360e0ba4b0c0c568m(I)I

    move-result v5

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_60
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v8

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    if-lt v5, v0, :cond_10

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    :cond_10
    goto/32 :goto_b9

    nop

    nop

    nop

    :goto_63
    if-ge v5, v7, :cond_11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_11
    goto/32 :goto_c0

    nop

    nop

    :goto_64
    check-cast v6, Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    :goto_65
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-interface {v0, v1}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v5, v1, Lprf;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_68
    iget-object v5, v6, Lhxg;->i:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerX()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_6a
    const/4 v3, 0x1

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iput v1, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->m:I

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_6c
    if-le v9, v1, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    if-nez v7, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    :cond_13
    goto/32 :goto_31

    nop

    nop

    :goto_6e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->a()I

    move-result v8

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-interface {v1, v5}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_70
    invoke-direct {p0}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->51550bab6b6440a4fd45f825c221b363m()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_71
    goto/32 :goto_14

    nop

    :goto_72
    iget v5, v5, Lprf;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    :goto_74
    iget-object v1, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->b:Ljava/util/Map;

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/16 :goto_b8

    nop

    :goto_76
    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_77
    add-int/2addr v7, v4

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-interface {v1, v6}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->a()I

    move-result v8

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_7b
    iget-boolean v0, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->g:Z

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    if-nez v1, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    :cond_14
    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object v7, v1, Lprf;->c:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_7f
    if-eqz v5, :cond_15

    nop

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    new-instance v4, Lhxg;

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

    :goto_81
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    :goto_82
    goto/16 :goto_e7

    nop

    :goto_83
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    nop

    :goto_84
    invoke-interface {v8}, Ljava/util/Map;->isEmpty()Z

    move-result v8

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

    :goto_85
    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_86
    add-int/2addr v7, v8

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_87
    check-cast v6, Lhxg;

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_88
    if-eqz v8, :cond_16

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_c7

    nop

    nop

    :goto_89
    invoke-direct {v4, v1, v5, v7}, Lhxg;-><init>(Lprf;Landroid/graphics/Matrix;I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iget-object v6, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->b:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {p0}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->a()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    check-cast v5, Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_8e
    if-lez v0, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_17
    goto/32 :goto_13

    nop

    :goto_8f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    if-nez v7, :cond_18

    nop

    nop

    goto/32 :goto_2a

    nop

    :cond_18
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_91
    mul-int/lit8 v5, v5, 0x1e

    nop

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

    :goto_92
    const/16 v8, 0x19

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iget-object v7, v5, Lprf;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_94
    if-nez v5, :cond_19

    nop

    nop

    goto/32 :goto_e7

    nop

    :cond_19
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerX()I

    move-result v9

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {p0, v6}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->f(Ljava/util/List;)V

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-static {v6}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_98
    iget-boolean v5, v6, Lhxg;->h:Z

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_99
    check-cast v10, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {p0}, Lhxh;->h()Landroid/graphics/Matrix;

    move-result-object v4

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    if-nez v6, :cond_1a

    nop

    goto/32 :goto_e7

    nop

    :cond_1a
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9c
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_9d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->a()I

    move-result v7

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-static {v5}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_9f
    iget-object v5, v6, Lhxg;->i:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a0
    invoke-virtual {p0, v5}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->f(Ljava/util/List;)V

    :goto_a1
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_a2
    iget-object v8, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->b:Ljava/util/Map;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_a3
    if-nez v7, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    :cond_1b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_a4
    if-eqz v0, :cond_1c

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_75

    nop

    nop

    :goto_a5
    new-instance v1, Lhxd;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    iget-object v7, v1, Lprf;->c:Landroid/graphics/Rect;

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    :goto_a7
    if-le v9, v1, :cond_1d

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_109

    nop

    nop

    nop

    :goto_a8
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_a9
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iget-object v8, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_ab
    iget-object v5, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->o:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    invoke-direct {p0, v9, v7, v8}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->3fd9578e124c68aa49885b22b61b4ec8m(IILandroid/graphics/RectF;)Z

    move-result v7

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual {p0}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->a()I

    move-result v8

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    goto/16 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_af
    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_b2
    invoke-direct {v1, v4}, Lhxd;-><init>(I)V

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_b3
    iget v5, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->m:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b4
    iget v12, v7, Lprf;->a:I

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_b5
    invoke-interface {v6, v7}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->invalidate()V

    :goto_b8
    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    :goto_b9
    iget-object v1, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->e:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {v5, v3}, Lhxg;->b(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_bb
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {v7}, Landroid/graphics/Rect;->height()I

    move-result v7

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {v5, v1, v4}, Lhxg;->c(Lprf;Landroid/graphics/Matrix;)V

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_be
    if-gtz v0, :cond_1e

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_bf
    if-gez v4, :cond_1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :cond_1f
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    iget v4, v1, Lprf;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    if-eqz v5, :cond_20

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    :goto_c3
    iget-object v5, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_c4
    iget-object v8, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->o:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    goto/16 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_c7
    iget-object v8, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->b:Ljava/util/Map;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_c8
    if-ge v7, v8, :cond_21

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    :cond_21
    goto/32 :goto_15

    nop

    nop

    :goto_c9
    iget-object v1, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->k:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_ca
    iget-boolean v7, v5, Lhxg;->h:Z

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    iput-boolean v3, v6, Lhxg;->h:Z

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_cc
    check-cast v0, Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_cd
    if-ge v4, v2, :cond_22

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_22
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_ce
    invoke-virtual {v4}, Landroid/graphics/Rect;->centerY()I

    move-result v4

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_cf
    iget v12, v7, Lprf;->a:I

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_d1
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    nop

    nop

    nop

    nop

    :goto_d2
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_d4
    check-cast v5, Lhxg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    invoke-virtual {p0}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->g()Z

    move-result v0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    nop

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

    :goto_d7
    mul-int/lit8 v8, v8, 0x1e

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_d8
    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_d9
    if-ge v6, v2, :cond_23

    nop

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :cond_23
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_da
    invoke-virtual {v6, v4}, Lhxg;->b(Z)V

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_db
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_dc
    invoke-virtual {p0}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->a()I

    move-result v8

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_dd
    invoke-direct {p0}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->51550bab6b6440a4fd45f825c221b363m()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_de
    invoke-interface {v1, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_df
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_e1
    if-nez v7, :cond_24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e2
    invoke-direct {p0, v4}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->1478a1c7833aac5e360e0ba4b0c0c568m(I)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_e3
    invoke-interface {v5, v6}, Lj$/util/stream/Stream;->sorted(Ljava/util/Comparator;)Lj$/util/stream/Stream;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    check-cast v1, Lprf;

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-interface {v5, v6}, Lj$/util/stream/Stream;->collect(Lj$/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    :goto_e7
    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    move v9, v4

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_ea
    iget v7, v1, Lprf;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_eb
    goto/16 :goto_41

    nop

    nop

    :goto_ec
    goto/32 :goto_d5

    nop

    nop

    nop

    nop

    :goto_ed
    if-nez v7, :cond_25

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_25
    :goto_ee
    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    :goto_ef
    invoke-virtual {v7}, Landroid/graphics/Rect;->centerY()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_f0
    iget v1, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->m:I

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    if-gtz v0, :cond_26

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :cond_26
    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_f2
    check-cast v7, Lprf;

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_f3
    goto/16 :goto_18

    nop

    :goto_f4
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_f5
    if-nez v7, :cond_27

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_27
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_f6
    invoke-direct {p0, v4}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->1478a1c7833aac5e360e0ba4b0c0c568m(I)I

    move-result v8

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    :goto_f7
    if-nez v10, :cond_28

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :cond_28
    goto/32 :goto_bb

    nop

    nop

    :goto_f8
    invoke-direct {p0, v7, v4, v5}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->3fd9578e124c68aa49885b22b61b4ec8m(IILandroid/graphics/RectF;)Z

    move-result v4

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_fb
    add-int/2addr v8, v9

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_fc
    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    nop

    :goto_fd
    if-ge v7, v8, :cond_29

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :cond_29
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    nop

    :goto_ff
    iget v7, v5, Lprf;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_100
    check-cast v11, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_101
    invoke-static {v5}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v5

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

    :goto_102
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_103
    iget-object v5, v1, Lprf;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_104
    check-cast v10, Ljava/util/Map$Entry;

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_105
    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_106
    if-nez v1, :cond_2a

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_2a
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_107
    if-nez v5, :cond_2b

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :cond_2b
    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_108
    invoke-interface {v5, v10}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/32 :goto_4f

    nop

    nop

    :goto_109
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop
.end method

.method final f(Ljava/util/List;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->invalidate()V

    :goto_5
    goto/32 :goto_3

    nop

    nop
.end method

.method public final g()Z
    .locals 1

    goto/32 :goto_9

    nop

    nop

    :goto_0
    check-cast v0, Lhxg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

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

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    iget-boolean v0, v0, Lhxg;->k:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_c

    nop

    nop

    :goto_9
    iget-object p0, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->b:Ljava/util/Map;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x1

    nop

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
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

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

    :goto_c
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    :goto_e
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    return p0

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final layout(IIII)V
    .locals 0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    int-to-float p4, p4

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    int-to-float p1, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    int-to-float p3, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/RectF;->set(FFFF)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    int-to-float p2, p2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->o:Landroid/graphics/RectF;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_7
    invoke-super {p0, p1, p2, p3, p4}, Lhxh;->layout(IIII)V

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method protected final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->d(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->b()V

    goto/32 :goto_4

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
    invoke-super {p0, p1}, Lhxh;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/32 :goto_3

    nop

    nop
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-float v7, v9, v4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_1f

    nop

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v4, 0x10e

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v5, 0x1

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_4
    iget v12, v3, Lhxg;->n:F

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_5
    mul-float/2addr v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_6
    if-nez v5, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->b:Ljava/util/Map;

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_9
    iget v10, v3, Lhxg;->m:F

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v8}, Lnpa;->b()V

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    :goto_c
    iget v2, v2, Lnpa;->a:F

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object v0, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-float v8, v10, v2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_11
    const v4, 0x3fa66666    # 1.3f

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

    nop

    :goto_12
    goto/16 :goto_34

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_59

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    :goto_15
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v2, v3, Lhxg;->g:I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_17
    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_18
    iget v2, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->f:I

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-float v7, v9, v2

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

    :goto_1a
    iget v2, v3, Lhxg;->f:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->b:Ljava/util/Map;

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

    :goto_1c
    if-gtz v2, :cond_3

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v2, v3, Lhxg;->c:Lnpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_2b

    nop

    nop

    :goto_1f
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_20
    sub-float v5, v9, v4

    nop

    nop

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

    :goto_21
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_4
    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->51550bab6b6440a4fd45f825c221b363m()I

    move-result v0

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_23
    move-object v4, p1

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_24
    float-to-double v6, v2

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_2f

    nop

    :goto_27
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    cmpl-float v12, v12, v13

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const-wide v8, 0x3ff99999a0000000L    # 1.600000023841858

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2a
    goto/16 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_2d
    mul-double/2addr v6, v8

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

    :goto_2e
    return-void

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_4a

    nop

    nop

    :goto_30
    iget v9, v8, Lnpa;->a:F

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move v5, v1

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_16

    nop

    nop

    :goto_33
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_10

    nop

    nop

    :goto_35
    add-float v8, v10, v4

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_37
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_38
    iget-object v2, v3, Lhxg;->i:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_39
    double-to-float v3, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3a
    iget-object v3, v3, Lhxg;->b:Lnpa;

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    move v10, v3

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_3c
    if-ltz v12, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_5
    goto/32 :goto_55

    nop

    nop

    :goto_3d
    if-gez v12, :cond_6

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :goto_3e
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_3f
    move-object v4, p1

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_40
    add-int v0, v0, v1

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

    :goto_41
    move v9, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_42
    iget v2, v3, Lhxg;->g:I

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_43
    check-cast v3, Lhxg;

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_45
    const/4 v1, 0x0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_46
    if-ne v2, v4, :cond_7

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_7
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_47
    check-cast v2, Ljava/util/Map$Entry;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_48
    iget-object v0, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->b:Ljava/util/Map;

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_49
    iget-object v11, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->l:Landroid/graphics/Paint;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_4a
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    mul-float/2addr v2, v3

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    cmpl-float v12, v12, v13

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_4d
    invoke-virtual/range {v4 .. v11}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_4e
    iget v10, v10, Lnpa;->a:F

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_31

    nop

    nop

    :goto_51
    sub-float v6, v10, v4

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_52
    sub-float v6, v10, v2

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

    :goto_53
    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v11, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_55
    iget v12, v3, Lhxg;->o:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_56
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v8, v3, Lhxg;->a:Lnpa;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_58
    const v1, 0xb

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_59
    sub-float v5, v9, v2

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const/high16 v13, 0x42480000    # 50.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_5b
    move v9, v3

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_5c
    if-eq v2, v4, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_5d
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_5e
    if-eqz v0, :cond_9

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v2}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_60
    iget-object v10, v3, Lhxg;->b:Lnpa;

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_61
    move v10, v3

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_62
    if-eqz v2, :cond_a

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-gtz v0, :cond_b

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v3}, Lnpa;->b()V

    :goto_65
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_66
    iget-boolean v0, p0, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_67
    const/16 v4, 0x5a

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget v9, v3, Lhxg;->l:F

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iput v2, v3, Lhxg;->f:F

    nop

    nop

    :goto_6b
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_6c
    mul-float/2addr v4, v2

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_6d
    const v3, 0x3f8ccccd    # 1.1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onFinishInflate()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p0, v0}, Lezg;->c(Landroid/content/Context;I)Lezs;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    invoke-super {p0}, Lhxh;->onFinishInflate()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lezs;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x7f13003a

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/faceindicator/FaceIndicatorView;->getContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method
