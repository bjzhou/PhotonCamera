.class public Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/BackgroundGlowDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "PG"


# instance fields
.field private gradient:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-int/2addr v2, v0

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

    :goto_1
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

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

    :goto_2
    invoke-virtual {v4, v1, v2, v3, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_6

    nop

    nop

    :goto_3
    const v1, 0x9

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

    :goto_4
    div-int/lit8 v2, v2, 0x2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/BackgroundGlowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/BackgroundGlowDrawable;->gradient:Landroid/graphics/drawable/Drawable;

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

    :goto_7
    add-int v3, v1, v0

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

    :goto_8
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/BackgroundGlowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_b
    div-int/lit8 v1, v1, 0x2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/BackgroundGlowDrawable;->getBounds()Landroid/graphics/Rect;

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

    :goto_f
    goto/32 :goto_d

    nop

    :goto_10
    goto/32 :goto_e

    nop

    nop

    :goto_11
    iget-object v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/BackgroundGlowDrawable;->gradient:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

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

    :goto_14
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_f

    nop

    :goto_15
    sub-int/2addr v1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/BackgroundGlowDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_17
    add-int/2addr v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_c

    nop

    nop

    :goto_1a
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

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

    :goto_1c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop
.end method

.method public getAlpha()I
    .locals 0

    goto/32 :goto_1

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
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/BackgroundGlowDrawable;->gradient:Landroid/graphics/drawable/Drawable;

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

    :goto_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result p0

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
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    :goto_1
    return-object p0

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/BackgroundGlowDrawable;->gradient:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->getColorFilter()Landroid/graphics/ColorFilter;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

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

    goto/32 :goto_2

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
.end method

.method public getOpacity()I
    .locals 0

    goto/32 :goto_1

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

    :goto_1
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/BackgroundGlowDrawable;->gradient:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p3, 0x0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    const p2, 0x7f0804e2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_3
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/BackgroundGlowDrawable;->gradient:Landroid/graphics/drawable/Drawable;

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, p2, p3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

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
.end method

.method public setAlpha(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_1

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
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/BackgroundGlowDrawable;->gradient:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/BackgroundGlowDrawable;->gradient:Landroid/graphics/drawable/Drawable;

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

    :goto_4
    return-void

    nop

    nop

    nop

    nop
.end method

.method public setTintBlendMode(Landroid/graphics/BlendMode;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintBlendMode(Landroid/graphics/BlendMode;)V

    :goto_1
    goto/32 :goto_2

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
    if-nez p0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/BackgroundGlowDrawable;->gradient:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public setTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/BackgroundGlowDrawable;->gradient:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    nop
.end method
