.class public final Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;
.super Landroid/graphics/drawable/DrawableWrapper;


# static fields
.field private static final DEFAULT_VIGNETTE_COLOR:I = -0x1000000

.field public static final HORIZONTAL:I = 0x0

.field public static final VERTICAL:I = 0x1


# instance fields
.field private final endGradientRect:Landroid/graphics/Rect;

.field private endOfClearArea:I

.field private final gradientColors:[I

.field private final gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private isVertical:Z

.field private final startGradientRect:Landroid/graphics/Rect;

.field private startOfClearArea:I

.field private vignetteAlpha:I

.field private vignetteColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/drawable/DrawableWrapper;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientColors:[I

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startGradientRect:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endGradientRect:Landroid/graphics/Rect;

    const/4 v1, -0x1

    iput v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startOfClearArea:I

    iput v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endOfClearArea:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->isVertical:Z

    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    iput-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    invoke-virtual {p0, v1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->setDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static create(I)Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;
    .locals 1

    new-instance v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;

    invoke-direct {v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;-><init>()V

    invoke-direct {v0, p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->initialize(I)V

    return-object v0
.end method

.method private determineEndGradientColor()V
    .locals 3

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientColors:[I

    const/4 v1, 0x0

    aget v1, v0, v1

    iget v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->vignetteAlpha:I

    invoke-static {v1, v2}, Lacp;->d(II)I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    return-void
.end method

.method private ensureClearArea(I)V
    .locals 1

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startOfClearArea:I

    if-gez v0, :cond_0

    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startOfClearArea:I

    :cond_0
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endOfClearArea:I

    if-gez v0, :cond_1

    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endOfClearArea:I

    :cond_1
    return-void
.end method

.method private handleColorChange([I)Z
    .locals 3

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->getVignetteColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    const/high16 v1, -0x1000000

    invoke-virtual {v0, p1, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientColors:[I

    const/4 v1, 0x0

    aget v2, v0, v1

    if-eqz v2, :cond_1

    if-eq v2, p1, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    aput p1, v0, v1

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->determineEndGradientColor()V

    const/4 p1, 0x1

    return p1
.end method

.method private initialize(I)V
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->isVertical:Z

    const/high16 p1, -0x1000000

    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->setVignetteColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private updateGradientRectsForClearArea(Landroid/graphics/Rect;)V
    .locals 5

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    iget-boolean v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->isVertical:Z

    if-eqz v3, :cond_1

    add-int v3, v1, p1

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->ensureClearArea(I)V

    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startGradientRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startOfClearArea:I

    invoke-static {v4, v1, p1}, Laax;->d(III)I

    move-result v4

    invoke-virtual {v3, v0, v1, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endGradientRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endOfClearArea:I

    invoke-static {v4, v1, p1}, Laax;->d(III)I

    move-result v1

    invoke-virtual {v3, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void

    :cond_1
    add-int v3, v0, v2

    div-int/lit8 v3, v3, 0x2

    invoke-direct {p0, v3}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->ensureClearArea(I)V

    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startGradientRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startOfClearArea:I

    invoke-static {v4, v0, v2}, Laax;->d(III)I

    move-result v4

    invoke-virtual {v3, v0, v1, v4, p1}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endGradientRect:Landroid/graphics/Rect;

    iget v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endOfClearArea:I

    invoke-static {v4, v0, v2}, Laax;->d(III)I

    move-result v0

    invoke-virtual {v3, v0, v1, v2, p1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startGradientRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endGradientRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startGradientRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->isVertical:Z

    if-eqz v0, :cond_2

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_1

    :cond_2
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->LEFT_RIGHT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_1
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startGradientRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endGradientRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->isVertical:Z

    if-eqz v0, :cond_4

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    goto :goto_2

    :cond_4
    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->RIGHT_LEFT:Landroid/graphics/drawable/GradientDrawable$Orientation;

    :goto_2
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endGradientRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setBounds(Landroid/graphics/Rect;)V

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    :cond_5
    return-void
.end method

.method getEndGradientRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endGradientRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getOrientation()I
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->isVertical:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method getStartGradientRect()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startGradientRect:Landroid/graphics/Rect;

    return-object v0
.end method

.method public getVignetteAlpha()I
    .locals 1

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->vignetteAlpha:I

    return v0
.end method

.method public getVignetteColor()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->vignetteColor:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const/high16 v0, -0x1000000

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->vignetteColor:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->vignetteColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/DrawableWrapper;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    const/4 p2, 0x0

    if-eqz p4, :cond_0

    sget-object p1, Lixg;->b:[I

    invoke-virtual {p4, p3, p1, p2, p2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    goto :goto_0

    :cond_0
    sget-object p4, Lixg;->b:[I

    invoke-virtual {p1, p3, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    :goto_0
    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    if-ne p4, p3, :cond_1

    const/4 p2, 0x1

    goto :goto_1

    :cond_1
    :goto_1
    iput-boolean p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->isVertical:Z

    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->setVignetteColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eq p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public isStateful()Z
    .locals 1

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->getVignetteColor()Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onBoundsChange(Landroid/graphics/Rect;)V

    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->updateGradientRectsForClearArea(Landroid/graphics/Rect;)V

    return-void
.end method

.method protected onStateChange([I)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/DrawableWrapper;->onStateChange([I)Z

    move-result v0

    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->handleColorChange([I)Z

    move-result p1

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public setClearArea(II)V
    .locals 1

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startOfClearArea:I

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endOfClearArea:I

    if-ne v0, p2, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->startOfClearArea:I

    iput p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->endOfClearArea:I

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->updateGradientRectsForClearArea(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->invalidateSelf()V

    return-void
.end method

.method public setVignetteAlpha(I)V
    .locals 1

    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->vignetteAlpha:I

    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->gradientColors:[I

    const/4 v0, 0x0

    aget p1, p1, v0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->determineEndGradientColor()V

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->invalidateSelf()V

    return-void
.end method

.method public setVignetteColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->vignetteColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->getState()[I

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->handleColorChange([I)Z

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/picker/PickerVignetteDrawable;->invalidateSelf()V

    return-void
.end method
