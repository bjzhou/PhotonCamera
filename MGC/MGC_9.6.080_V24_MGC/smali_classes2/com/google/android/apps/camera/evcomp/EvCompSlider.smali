.class public Lcom/google/android/apps/camera/evcomp/EvCompSlider;
.super Landroid/widget/FrameLayout;
.source "PG"


# instance fields
.field public final a:Landroid/view/accessibility/AccessibilityManager;

.field private final b:Landroid/graphics/Paint;

.field private final c:Landroid/graphics/Paint;

.field private final d:I

.field private final e:I

.field private f:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    goto/32 :goto_1e

    nop

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

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p2}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setWillNotDraw(Z)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

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
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

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

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

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

    :goto_a
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

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

    :goto_b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->e:I

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

    :goto_f
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x7f0701b1

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

    :goto_12
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p2, Landroid/graphics/Paint;

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_14
    iput-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->a:Landroid/view/accessibility/AccessibilityManager;

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

    :goto_15
    const/4 p2, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_16
    const v0, 0x7f0701b2

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

    nop

    :goto_17
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    :goto_18
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1b
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance p2, Landroid/graphics/Paint;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1e
    const v0, 0x20

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->c:Landroid/graphics/Paint;

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

    nop

    nop

    :goto_20
    iput p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->d:I

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

    :goto_21
    int-to-float v1, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_22
    const v1, 0x16

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_24
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

    :goto_25
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    goto/32 :goto_13

    nop

    nop

    :goto_26
    const v2, 0x7f0701af

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_28
    const-string p2, "accessibility"

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_29
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    add-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(IIII)V
    .locals 9

    goto/32 :goto_a

    nop

    nop

    :goto_0
    move-object v0, v8

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
    const/4 p2, 0x0

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

    :goto_2
    new-instance p1, Lhuk;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_4
    sget-object v7, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    nop

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

    :goto_5
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    move v6, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7
    move v5, p2

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    const v0, 0x18

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

    nop

    nop

    :goto_b
    int-to-float v4, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_c
    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->f:I

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_f
    invoke-direct {p1, p0, p2}, Lhuk;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_12
    const/4 v3, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    goto/32 :goto_10

    nop

    nop

    :goto_14
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    :goto_16
    invoke-virtual {p1, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    const/4 v1, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_18
    new-instance v8, Landroid/graphics/LinearGradient;

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

    :goto_19
    add-int v0, v0, v1

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

    :goto_1a
    iget-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->c:Landroid/graphics/Paint;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_1b
    iget-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1c
    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    goto/32 :goto_1b

    nop

    nop

    nop
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v2, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4
    const v0, 0x11

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    if-lt v0, v1, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    :goto_9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_e

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    :goto_d
    return p0

    nop

    :goto_e
    goto/32 :goto_17

    nop

    nop

    :goto_f
    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->a:Landroid/view/accessibility/AccessibilityManager;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_12
    return p0

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_17
    goto/32 :goto_b

    nop

    nop

    :goto_18
    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_19
    instance-of v2, v1, Lhul;

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

    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getChildCount()I

    move-result v1

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

    :goto_1b
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1a

    nop

    nop

    nop
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->e:I

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v10, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->b:Landroid/graphics/Paint;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_4
    goto/32 :goto_19

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getMeasuredWidth()I

    move-result v2

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

    nop

    :goto_7
    iget v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_8
    div-int/lit8 v0, v0, 0x2

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

    :goto_9
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sub-int/2addr v2, v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    div-int/lit8 v0, v0, 0x2

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

    :goto_f
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_10
    add-int/2addr v2, p0

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_12
    int-to-float v8, v0

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

    :goto_13
    const v11, 0x7f0701ae

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

    :goto_14
    iget v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->f:I

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

    :goto_15
    div-int/lit8 v0, v0, 0x2

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget p0, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->d:I

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1a
    iget v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->f:I

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    int-to-float v4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1e
    iget-object v10, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->c:Landroid/graphics/Paint;

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

    :goto_1f
    iget v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->e:I

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

    :goto_20
    sub-int/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_21
    iget v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->d:I

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_22
    iget v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->e:I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getMeasuredWidth()I

    move-result v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_24
    int-to-float v6, v2

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v5, 0x0

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

    :goto_26
    invoke-virtual {v0, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_27
    int-to-float v4, v1

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_28
    int-to-float v9, v0

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

    :goto_29
    add-int v0, v0, v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    int-to-float v6, v2

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    int-to-float v7, v0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2e
    sub-int/2addr v1, v0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2f
    int-to-float v9, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_30
    int-to-float v8, v0

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_31
    sub-int/2addr v2, v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    move-object v3, p1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getMeasuredWidth()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getMeasuredWidth()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_36
    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_37
    div-int/lit8 v0, v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_38
    add-int/2addr v2, v0

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_39
    int-to-float v7, v0

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
.end method
