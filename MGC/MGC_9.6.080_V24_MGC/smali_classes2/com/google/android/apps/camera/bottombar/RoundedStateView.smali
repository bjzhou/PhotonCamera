.class public Lcom/google/android/apps/camera/bottombar/RoundedStateView;
.super Landroid/widget/ImageButton;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final a:Landroid/graphics/Paint;

.field private final b:Landroid/graphics/Paint;

.field private c:I

.field private d:I

.field private final e:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->e:F

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

    :goto_1
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p1, 0x1

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_3
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v0}, Lnnr;->b(F)I

    move-result v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, -0x1

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

    :goto_6
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p0, p1, p1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p0

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

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_9
    const/high16 v0, 0x40000000    # 2.0f

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

    :goto_a
    const/16 p0, 0x51

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->b:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_9

    nop

    nop

    :goto_d
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_11
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_12
    new-instance p2, Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p2, Landroid/graphics/Paint;

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

    :goto_14
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p2, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->a:Landroid/graphics/Paint;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p2, p1}, Landroid/graphics/Paint;-><init>(I)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p2, p0}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->setClickable(Z)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_19
    const v0, 0x7f07075f

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->onDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    int-to-float v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x7

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    iget-object v3, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->a:Landroid/graphics/Paint;

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

    :goto_d
    rem-int v0, v0, v1

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_f
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    iget v1, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_11
    int-to-float v0, v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1

    nop

    nop

    :goto_15
    iget-object v3, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->b:Landroid/graphics/Paint;

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

    nop

    :goto_16
    iget v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->c:I

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

    :goto_17
    const v3, 0x7f0700be

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_18
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_19
    int-to-float v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v3, 0x7f0700bf

    nop

    nop

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

    :goto_1c
    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1d
    iget v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->c:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
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
    iget p1, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->e:F

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

    :goto_2
    float-to-int p1, p1

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

    :goto_3
    invoke-virtual {p0, p1, p1}, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->setMeasuredDimension(II)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method protected final onSizeChanged(IIII)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->d:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lcom/google/android/apps/camera/bottombar/RoundedStateView;->c:I

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

    :goto_2
    div-int/lit8 v0, p1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

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
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageButton;->onSizeChanged(IIII)V

    goto/32 :goto_3

    nop

    nop

    :goto_5
    div-int/lit8 v0, p2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
