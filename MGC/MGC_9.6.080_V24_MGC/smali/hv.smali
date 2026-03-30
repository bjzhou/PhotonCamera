.class public Lhv;
.super Landroid/widget/SeekBar;
.source "PG"


# instance fields
.field private final a:Lhw;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, v0}, Lhv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x7f0405be

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lhv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2, p3}, Lhs;->b(Landroid/util/AttributeSet;I)V

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

    :goto_2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lhv;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1, p0}, Lhw;-><init>(Landroid/widget/SeekBar;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Lhw;

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

    :goto_6
    iput-object p1, p0, Lhv;->a:Lhw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-static {p0, p1}, Llq;->d(Landroid/view/View;Landroid/content/Context;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/widget/SeekBar;->drawableStateChanged()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    const v1, 0x3

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

    :goto_3
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    :goto_4
    if-nez v1, :cond_1

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

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x9

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

    :goto_9
    iget-object p0, p0, Lhv;->a:Lhw;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_a
    iget-object p0, p0, Lhw;->b:Landroid/widget/SeekBar;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    iget-object v1, p0, Lhw;->b:Landroid/widget/SeekBar;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    :goto_10
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0, v0}, Landroid/widget/SeekBar;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_14
    goto/32 :goto_c

    nop

    nop

    :goto_15
    iget-object v0, p0, Lhw;->c:Landroid/graphics/drawable/Drawable;

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

    :goto_16
    invoke-virtual {v1}, Landroid/widget/SeekBar;->getDrawableState()[I

    move-result-object v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhv;->a:Lhw;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
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

    :goto_5
    invoke-super {p0}, Landroid/widget/SeekBar;->jumpDrawablesToCurrentState()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lhw;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

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

    goto/32 :goto_8

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

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-super {p0, p1}, Landroid/widget/SeekBar;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lhv;->a:Lhw;

    nop

    nop

    iget-object v1, v0, Lhw;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v0, Lhw;->b:Landroid/widget/SeekBar;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    nop

    const/4 v2, 0x1

    nop

    if-le v1, v2, :cond_4

    nop

    nop

    nop

    nop

    iget-object v3, v0, Lhw;->c:Landroid/graphics/drawable/Drawable;

    nop

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    nop

    nop

    iget-object v4, v0, Lhw;->c:Landroid/graphics/drawable/Drawable;

    nop

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    nop

    if-ltz v3, :cond_0

    nop

    nop

    shr-int/2addr v3, v2

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    :cond_0
    move v3, v2

    nop

    nop

    nop

    nop

    :goto_3
    if-ltz v4, :cond_1

    nop

    nop

    shr-int/lit8 v2, v4, 0x1

    nop

    nop

    :cond_1
    iget-object v4, v0, Lhw;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    neg-int v5, v3

    nop

    nop

    nop

    nop

    nop

    neg-int v6, v2

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5, v6, v3, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, v0, Lhw;->b:Landroid/widget/SeekBar;

    nop

    nop

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getWidth()I

    move-result v2

    nop

    nop

    nop

    nop

    iget-object v3, v0, Lhw;->b:Landroid/widget/SeekBar;

    nop

    nop

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v3

    nop

    nop

    sub-int/2addr v2, v3

    nop

    nop

    iget-object v3, v0, Lhw;->b:Landroid/widget/SeekBar;

    nop

    nop

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v3

    nop

    nop

    nop

    nop

    sub-int/2addr v2, v3

    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v0, Lhw;->b:Landroid/widget/SeekBar;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v4

    nop

    nop

    nop

    int-to-float v4, v4

    nop

    nop

    nop

    nop

    iget-object v5, v0, Lhw;->b:Landroid/widget/SeekBar;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Landroid/widget/SeekBar;->getHeight()I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    div-int/lit8 v5, v5, 0x2

    nop

    nop

    nop

    nop

    nop

    int-to-float v5, v5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v4, 0x0

    nop

    nop

    nop

    :goto_4
    if-gt v4, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    int-to-float v5, v1

    nop

    nop

    nop

    int-to-float v6, v2

    nop

    nop

    iget-object v7, v0, Lhw;->c:Landroid/graphics/drawable/Drawable;

    nop

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    div-float/2addr v6, v5

    nop

    nop

    nop

    nop

    const/4 v5, 0x0

    nop

    invoke-virtual {p1, v6, v5}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v4, v4, 0x1

    nop

    nop

    goto :goto_4

    nop

    :cond_2
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    const v1, 0xf

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    throw p1

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    :goto_d
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop
.end method
