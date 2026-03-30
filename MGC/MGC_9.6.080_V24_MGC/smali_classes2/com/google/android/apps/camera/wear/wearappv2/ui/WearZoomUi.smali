.class public final Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;
.super Landroid/widget/ScrollView;
.source "PG"


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:F

.field private final e:F

.field private final f:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3
    const v2, 0x7f070a4a

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

    :goto_4
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    const p1, 0x7f070a48

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    const v2, 0x106000b

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_c
    const v1, 0x7f060b1d

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_d
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_f
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput v0, p0, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->e:F

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

    :goto_11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_13
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    :goto_14
    goto/32 :goto_19

    nop

    nop

    :goto_15
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_16
    const v0, 0x7

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p1, p0, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_19
    iget-object p0, p0, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->c:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v0, p0, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->b:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object v0, p0, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->c:Landroid/graphics/Paint;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_1e
    new-instance v0, Landroid/graphics/Paint;

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

    :goto_1f
    const v0, 0x7f070a49

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_20
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_22
    const/16 v2, 0x8f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_23
    add-int v0, v0, v1

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_24
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :try_start_0
    const-string p1, "google-sans"

    nop

    invoke-static {p1, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object p1

    nop

    nop

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_26
    const/high16 p2, 0x431a0000    # 154.0f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_27
    iput p2, p0, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->f:F

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

    :goto_28
    new-instance v0, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v0, 0x7f070a46

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2d
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_2e
    iput-object v0, p0, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->a:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2f
    const v2, 0x7f060b8f

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_30
    iput v0, p0, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->d:F

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_31
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_32

    nop

    nop

    :goto_32
    const/4 v1, 0x1

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_33
    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_34
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/16 :goto_14

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_36
    sget-object v2, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_11

    nop

    nop

    :goto_3b
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_1e

    nop

    nop

    :goto_3d
    invoke-direct {p0, p1, p2, v0, v0}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto/32 :goto_26

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()F
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    const/high16 v0, 0x40000000    # 2.0f

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

    :goto_1
    int-to-float p0, p0

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

    :goto_2
    div-float/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->getWidth()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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
.end method

.method public final b()F
    .locals 1

    goto/32 :goto_4

    nop

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

    nop

    :goto_1
    int-to-float p0, p0

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

    :goto_2
    div-float/2addr p0, v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    const/high16 v0, 0x40000000    # 2.0f

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->getHeight()I

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    goto/32 :goto_26

    nop

    nop

    :goto_0
    double-to-float v0, v0

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

    :goto_1
    mul-double/2addr v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_2
    float-to-double v5, v2

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

    :goto_3
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    iget v2, p0, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->d:F

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    move-object v2, p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {v3, v4}, Ljava/lang/Math;->cos(D)D

    move-result-wide v3

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_8
    add-double/2addr v3, v7

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_9
    iget v1, p0, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->f:F

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    :goto_b
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_c
    invoke-virtual/range {v2 .. v10}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v10, p0, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->a:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->b()F

    move-result v1

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

    :goto_10
    throw p0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 p0, 0x0

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->b()F

    move-result v1

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/high16 v7, 0x431a0000    # 154.0f

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_17
    new-instance p1, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_18
    invoke-virtual {p0}, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->a()F

    move-result v0

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

    :goto_19
    const/high16 v2, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1a
    float-to-double v5, v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1b
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

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

    :goto_1c
    add-float v5, v1, v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    const/high16 v1, 0x43340000    # 180.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_1e
    add-int v0, v0, v1

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

    :goto_1f
    invoke-virtual {p0}, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->a()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_20
    rem-int v0, v0, v1

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

    :goto_21
    invoke-virtual {p1, v1, v2, v0}, Landroid/graphics/Canvas;->rotate(FFF)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_22
    sub-float v3, v1, v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_24
    div-float/2addr v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_25
    add-float v6, v1, v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_26
    const v0, 0x8

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_27
    mul-double/2addr v0, v5

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_28
    add-double/2addr v0, v5

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_29
    if-nez v1, :cond_1

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1d

    nop

    nop

    :goto_2c
    const v1, 0x1a

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_2d
    sub-float v4, v1, v0

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

    nop

    :goto_2e
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v3

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    const/high16 v8, 0x42500000    # 52.0f

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

    :goto_30
    sub-float/2addr v0, v2

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

    :goto_31
    invoke-static {v1, v2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

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

    :goto_32
    float-to-double v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_33
    double-to-float v2, v3

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

    :goto_34
    invoke-virtual {p0}, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->getWidth()I

    move-result v0

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

    :goto_35
    invoke-virtual {p1, v2, v0, v1, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->a()F

    move-result v1

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->b()F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p0}, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->getHeight()I

    move-result v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_3a
    float-to-double v7, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_3b
    iget v1, p0, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->e:F

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object p0, p0, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->b:Landroid/graphics/Paint;

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
.end method

.method public final setPressed(Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->setPressed(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/apps/camera/wear/wearappv2/ui/WearZoomUi;->isPressed()Z

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop
.end method
