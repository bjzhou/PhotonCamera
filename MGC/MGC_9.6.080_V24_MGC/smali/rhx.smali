.class public Lrhx;
.super Landroid/support/v7/widget/LinearLayoutCompat;
.source "PG"


# instance fields
.field protected a:Z

.field b:Z

.field private c:Landroid/graphics/drawable/Drawable;

.field private final d:Landroid/graphics/Rect;

.field private final e:Landroid/graphics/Rect;

.field private i:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Lrhx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lrhx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_2

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    goto/32 :goto_1b

    nop

    nop

    :goto_0
    const/4 p2, 0x2

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    move-object v2, p1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    iput-boolean p2, p0, Lrhx;->a:Z

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_8
    new-instance v0, Landroid/graphics/Rect;

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

    :goto_9
    goto/32 :goto_28

    nop

    nop

    :goto_a
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lrhx;->d:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v0, 0x1

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

    :goto_e
    iput-boolean v1, p0, Lrhx;->b:Z

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_f
    move-object v3, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_10
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_11
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_12
    new-instance v0, Landroid/graphics/Rect;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_13
    const/16 v0, 0x77

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

    :goto_14
    iput-object v0, p0, Lrhx;->e:Landroid/graphics/Rect;

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

    :goto_15
    iput-boolean v0, p0, Lrhx;->a:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_16
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    :goto_17
    move v5, p3

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/LinearLayoutCompat;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-array v7, v1, [I

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1b
    const v0, 0x20

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

    :goto_1c
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

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

    :goto_1d
    invoke-virtual {p0, p2}, Lrhx;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_1e
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput p2, p0, Lrhx;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_21
    invoke-static/range {v2 .. v7}, Lric;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_22
    iget p2, p0, Lrhx;->i:I

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x9

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_25
    sget-object v4, Lrhz;->a:[I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_26
    iput v0, p0, Lrhx;->i:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_27
    return-void

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 8

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lrhx;->getBottom()I

    move-result v5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v1, p0, Lrhx;->b:Z

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

    nop

    nop

    :goto_2
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    goto/32 :goto_1b

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v6, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_7
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_9
    invoke-virtual {p0}, Lrhx;->getPaddingRight()I

    move-result v7

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

    :goto_a
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    :goto_b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p0, v1, v4, v2, v3}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lrhx;->getRight()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_2d

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lrhx;->getPaddingLeft()I

    move-result v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput-boolean v1, p0, Lrhx;->b:Z

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_12
    goto :goto_16

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    nop

    :goto_14
    sub-int/2addr v5, v7

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

    :goto_15
    invoke-virtual {v2, v1, v6, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    :goto_16
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_17
    iget-boolean v6, p0, Lrhx;->a:Z

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_18
    sub-int/2addr v4, v5

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

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

    :goto_1a
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_1b
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lrhx;->getPaddingBottom()I

    move-result v7

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lrhx;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p0}, Lrhx;->getTop()I

    move-result v6

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_1f
    if-nez v1, :cond_3

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_20
    iget p0, p0, Lrhx;->i:I

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

    :goto_21
    const v1, 0x19

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

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

    :goto_23
    invoke-virtual {p0}, Lrhx;->getPaddingTop()I

    move-result v6

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_24
    goto/32 :goto_f

    nop

    :goto_25
    sub-int/2addr v4, v7

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Lrhx;->getLeft()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {v2, v1, v1, v4, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_28
    sub-int/2addr v5, v6

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

    :goto_29
    iget-object v3, p0, Lrhx;->e:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2b
    iget-object v2, p0, Lrhx;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return-void

    nop

    :goto_2d
    goto/32 :goto_24

    nop

    nop

    nop
.end method

.method public final drawableHotspotChanged(FF)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

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

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutCompat;->drawableHotspotChanged(FF)V

    goto/32 :goto_5

    nop

    nop

    :goto_5
    iget-object p0, p0, Lrhx;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method protected final drawableStateChanged()V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    :goto_0
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

    :goto_1
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lrhx;->c:Landroid/graphics/drawable/Drawable;

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

    :goto_4
    iget-object v0, p0, Lrhx;->c:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lrhx;->getDrawableState()[I

    move-result-object p0

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

    nop

    :goto_6
    if-nez v0, :cond_1

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
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

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

    :goto_8
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->drawableStateChanged()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop
.end method

.method public final getForeground()Landroid/graphics/drawable/Drawable;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrhx;->c:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method public final getForegroundGravity()I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    iget p0, p0, Lrhx;->i:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final jumpDrawablesToCurrentState()V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrhx;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    invoke-super {p0}, Landroid/support/v7/widget/LinearLayoutCompat;->jumpDrawablesToCurrentState()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_4

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
    iget-boolean p2, p0, Lrhx;->b:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    or-int/2addr p1, p2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Lrhx;->b:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/LinearLayoutCompat;->onLayout(ZIIII)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-boolean p1, p0, Lrhx;->b:Z

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

    :goto_3
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/LinearLayoutCompat;->onSizeChanged(IIII)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x0

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
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_d

    nop

    :goto_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean v0, p0, Lrhx;->b:Z

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eq v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Lrhx;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_c
    invoke-virtual {p0, v0}, Lrhx;->setWillNotDraw(Z)V

    :goto_d
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_e
    const/16 v1, 0x77

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    iget v0, p0, Lrhx;->i:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lrhx;->getDrawableState()[I

    move-result-object v0

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

    nop

    :goto_11
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_21

    nop

    nop

    :goto_13
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_16
    if-ne v0, p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    :goto_17
    const v1, 0x19

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_18
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v0}, Lrhx;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lrhx;->invalidate()V

    :goto_1e
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_20
    invoke-virtual {p0, v0}, Lrhx;->setWillNotDraw(Z)V

    goto/32 :goto_1

    nop

    nop

    :goto_21
    iget-object v0, p0, Lrhx;->c:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    :goto_23
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lrhx;->c:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_11

    nop

    :goto_26
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Lrhx;->requestLayout()V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-nez p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setForegroundGravity(I)V
    .locals 1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrhx;->requestLayout()V

    :goto_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3
    and-int/2addr v0, p1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    or-int/2addr p1, v0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    if-eq p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput p1, p0, Lrhx;->i:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v0, 0x77

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

    :goto_9
    and-int/lit8 v0, p1, 0x70

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    new-instance p1, Landroid/graphics/Rect;

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

    :goto_b
    iget v0, p0, Lrhx;->i:I

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lrhx;->c:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_d
    or-int/lit8 p1, p1, 0x30

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    if-nez p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_10
    if-eqz v0, :cond_2

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

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    const v0, 0x800007

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

    :goto_12
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :goto_13
    goto/32 :goto_1

    nop

    nop

    :goto_14
    if-ne v0, p1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x800003

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    if-eqz v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_18
    iget-object p1, p0, Lrhx;->c:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method protected final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto :goto_4

    nop

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    return p0

    nop

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

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_6
    invoke-super {p0, p1}, Landroid/support/v7/widget/LinearLayoutCompat;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    if-eq p1, p0, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lrhx;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

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

    :goto_a
    return p0

    nop

    nop
.end method
