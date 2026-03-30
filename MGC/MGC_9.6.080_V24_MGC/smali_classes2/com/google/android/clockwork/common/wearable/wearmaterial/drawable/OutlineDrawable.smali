.class public Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PG"


# instance fields
.field private alpha:I

.field private final backgroundPaint:Landroid/graphics/Paint;

.field private colorFilter:Landroid/graphics/ColorFilter;

.field private constantState:Lnzj;

.field private isMutated:Z

.field private tintColorFilter:Landroid/graphics/PorterDuffColorFilter;


# direct methods
.method private 4c3181809976a744f83af16109efc102m(Landroid/content/res/Resources;)V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    iput v1, v0, Lnzj;->a:I

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

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_3
    const v1, 0x7f0708f7

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->constantState:Lnzj;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    const v0, 0x7f060b4e

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->constantState:Lnzj;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_f

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_11
    iput p1, p0, Lnzj;->b:I

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
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop
.end method

.method private 862f2ce00abb653667dc0e4a096c33a9m()V
    .locals 4

    goto/32 :goto_10

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

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v2, Landroid/graphics/PorterDuffColorFilter;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v2, v0, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    :goto_e
    iput-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->tintColorFilter:Landroid/graphics/PorterDuffColorFilter;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->tintColorFilter:Landroid/graphics/PorterDuffColorFilter;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_10
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v1, :cond_1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_2
    goto/32 :goto_c

    nop

    :goto_13
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->constantState:Lnzj;

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

    :goto_14
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->getState()[I

    move-result-object v2

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

    :goto_15
    iget-object v1, v0, Lnzj;->e:Landroid/graphics/PorterDuff$Mode;

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_16
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    iget-object v0, v0, Lnzj;->d:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_18
    goto/16 :goto_8

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 2

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->constantState:Lnzj;

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

    :goto_1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Landroid/graphics/Paint;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->alpha:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_7
    sget-object p0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->backgroundPaint:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_b
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0xd

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    new-instance v1, Lnzj;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v1, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_11
    invoke-direct {v1}, Lnzj;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    iput-boolean v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->isMutated:Z

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

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

    :goto_14
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_f

    nop

    nop

    :goto_16
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    :goto_18
    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_9

    nop

    nop
.end method

.method private constructor <init>(Lnzj;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->constantState:Lnzj;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public synthetic constructor <init>(Lnzj;Lnzk;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;-><init>(Lnzj;)V

    goto/32 :goto_1

    nop

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
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    goto/32 :goto_34

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    :goto_3
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_4
    move v8, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v3, 0x0

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

    :goto_6
    move v7, v8

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->colorFilter:Landroid/graphics/ColorFilter;

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

    :goto_8
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->constantState:Lnzj;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_27

    nop

    nop

    :goto_a
    invoke-virtual/range {v2 .. v9}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_b
    const v0, 0x16

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object v2, p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    add-int/2addr v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_10
    const v1, 0x6

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    div-float v1, v6, v2

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

    :goto_12
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_14
    iget-object v9, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->backgroundPaint:Landroid/graphics/Paint;

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

    :goto_15
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->tintColorFilter:Landroid/graphics/PorterDuffColorFilter;

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    int-to-float v1, v1

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    goto/32 :goto_8

    nop

    nop

    :goto_1b
    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->backgroundPaint:Landroid/graphics/Paint;

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

    :goto_1c
    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->backgroundPaint:Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1e
    div-float v2, v6, v2

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->backgroundPaint:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/high16 v2, 0x40000000    # 2.0f

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

    :goto_21
    const/4 v4, 0x0

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

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    :goto_24
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_25
    rem-int v0, v0, v1

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_26
    iget v1, v1, Lnzj;->a:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_27
    int-to-float v5, v0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_28
    int-to-float v1, v1

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_29
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->constantState:Lnzj;

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

    :goto_2a
    if-eqz v1, :cond_1

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

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_11

    nop

    nop

    :goto_2c
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget v1, v1, Lnzj;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_2e
    int-to-float v6, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->backgroundPaint:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_30
    iget v1, v1, Lnzj;->b:I

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_31
    invoke-static {v1, v2}, Ljava/lang/Math;->min(FF)F

    move-result v1

    nop

    :goto_32
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    nop

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

    nop

    :goto_34
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->constantState:Lnzj;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->alpha:I

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_2f

    nop

    nop
.end method

.method public getAlpha()I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->alpha:I

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

    nop

    nop

    nop
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->colorFilter:Landroid/graphics/ColorFilter;

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

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->constantState:Lnzj;

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

    :goto_1
    return-object p0

    nop
.end method

.method public getOpacity()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    const/4 p0, -0x3

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    const/4 p4, 0x0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

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

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, p4, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget p2, p0, Lnzj;->b:I

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->constantState:Lnzj;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    iput p2, p0, Lnzj;->b:I

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
    iput p3, p2, Lnzj;->c:I

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    sget-object p2, Lnzl;->a:[I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p3, 0x1

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

    :goto_b
    invoke-virtual {p1, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_c
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->constantState:Lnzj;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->4c3181809976a744f83af16109efc102m(Landroid/content/res/Resources;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public isStateful()Z
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

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
    iget-object p0, p0, Lnzj;->d:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_1

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

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->constantState:Lnzj;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    goto/32 :goto_4

    nop

    nop

    :goto_0
    const/4 v0, 0x1

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

    :goto_1
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->isMutated:Z

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

    :goto_3
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const v0, 0x1b

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lnzj;

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

    :goto_7
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0, v1}, Lnzj;-><init>(Lnzj;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_2

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_c
    return-object p0

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    :goto_e
    iput-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->isMutated:Z

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->constantState:Lnzj;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->constantState:Lnzj;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop
.end method

.method protected onStateChange([I)Z
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p1, Lnzj;->e:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    goto/32 :goto_4

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
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->constantState:Lnzj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, p1, Lnzj;->d:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_a
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->862f2ce00abb653667dc0e4a096c33a9m()V

    goto/32 :goto_9

    nop

    nop
.end method

.method public setAlpha(I)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne v0, p1, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

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

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->invalidateSelf()V

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->alpha:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->alpha:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

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
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->invalidateSelf()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->colorFilter:Landroid/graphics/ColorFilter;

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
.end method

.method public setCornerRadius(I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iput p1, v0, Lnzj;->c:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->constantState:Lnzj;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->invalidateSelf()V

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

    nop

    nop

    nop
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->862f2ce00abb653667dc0e4a096c33a9m()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, v0, Lnzj;->d:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->constantState:Lnzj;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->invalidateSelf()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public setTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->862f2ce00abb653667dc0e4a096c33a9m()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->invalidateSelf()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/OutlineDrawable;->constantState:Lnzj;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, v0, Lnzj;->e:Landroid/graphics/PorterDuff$Mode;

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
.end method
