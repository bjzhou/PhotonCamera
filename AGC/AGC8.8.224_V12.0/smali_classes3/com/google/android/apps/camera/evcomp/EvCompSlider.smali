.class public Lcom/google/android/apps/camera/evcomp/EvCompSlider;
.super Landroid/widget/FrameLayout;


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

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setWillNotDraw(Z)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070136

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->d:I

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070135

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    iput p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->e:I

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->b:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->c:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070134

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const-string p2, "accessibility"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    iput-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->a:Landroid/view/accessibility/AccessibilityManager;

    return-void
.end method


# virtual methods
.method public final a(IIII)V
    .locals 10

    iput p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->f:I

    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->b:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    sget-object v8, Landroid/graphics/Shader$TileMode;->MIRROR:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    int-to-float v5, p1

    move-object v1, v9

    move v6, p2

    move v7, p3

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object p1, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, p4}, Landroid/graphics/Paint;->setColor(I)V

    new-instance p1, Ldoi;

    const/4 p2, 0x1

    invoke-direct {p1, p0, p2}, Ldoi;-><init>(Lcom/google/android/apps/camera/evcomp/EvCompSlider;I)V

    invoke-virtual {p0, p1}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->setOnHoverListener(Landroid/view/View$OnHoverListener;)V

    return-void
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->a:Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    instance-of v2, v1, Ldoj;

    if-eqz v2, :cond_0

    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->e:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->e:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->d:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->f:I

    int-to-float v7, v2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v11, 0x7f070133

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v8, v2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v9, v2

    iget-object v10, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->b:Landroid/graphics/Paint;

    int-to-float v6, v1

    int-to-float v4, v0

    const/4 v5, 0x0

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getMeasuredWidth()I

    move-result v0

    iget v1, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->e:I

    div-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getMeasuredWidth()I

    move-result v1

    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->e:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->d:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->f:I

    int-to-float v7, v2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v8, v2

    invoke-virtual {p0}, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v9, v2

    iget-object v10, p0, Lcom/google/android/apps/camera/evcomp/EvCompSlider;->c:Landroid/graphics/Paint;

    int-to-float v6, v1

    int-to-float v4, v0

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    return-void
.end method
