.class public final Lner;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/view/View;

.field private final b:Landroid/content/Context;

.field private final c:I

.field private final d:I

.field private final e:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lner;->b:Landroid/content/Context;

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
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lner;->d:I

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

    :goto_3
    const v0, 0x7f0c005d

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p2, p0, Lner;->e:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    iput-object p2, p0, Lner;->a:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    new-instance p2, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    const p2, 0x7f0c005e

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_e
    iput p2, p0, Lner;->c:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Z)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lieq;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2
    const v0, 0x6

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

    :goto_3
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Lner;->c:I

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Landroid/view/animation/LinearInterpolator;

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

    :goto_7
    return-void

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    int-to-long v0, v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lner;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_c
    const/4 p1, 0x0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    filled-new-array {p1, v1}, [I

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x11

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_f
    iget v0, p0, Lner;->d:I

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

    :goto_10
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0}, Landroid/view/View;->getForeground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, p1}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_7

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_18
    const/16 v1, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    new-instance v0, Lneq;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1a
    if-nez p1, :cond_0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_1b
    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1d
    invoke-direct {v0, p0, v1}, Lieq;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_f

    nop

    nop

    :goto_1f
    invoke-direct {v0, p0}, Lneq;-><init>(Lner;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_21
    const-string v1, "alpha"

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_22
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_11

    nop

    nop

    :goto_24
    invoke-static {v0, v1, p1}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object p1

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

    :goto_25
    const/16 p1, 0xff

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_26
    int-to-long v0, v0

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

    nop

    :goto_27
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_10

    nop

    :goto_28
    iget-object p0, p0, Lner;->a:Landroid/view/View;

    nop

    nop

    goto/32 :goto_c

    nop

    nop
.end method

.method public final b()V
    .locals 10

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v3, 0x7f080393

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct/range {v4 .. v9}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto/32 :goto_17

    nop

    nop

    :goto_2
    invoke-direct {v1, v2, v3, v4, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    iget-object v4, p0, Lner;->e:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sub-int v8, v4, v0

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget v4, v4, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_a
    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    iget v4, v4, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v4, v4, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_11
    div-int/lit8 v0, v0, 0x2

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v2, 0x1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_14
    sub-int/2addr v1, v4

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_15
    const v0, 0x1f

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v2, p0, Lner;->a:Landroid/view/View;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lner;->a:Landroid/view/View;

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

    :goto_18
    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1a
    if-eq v0, v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v4, p0, Lner;->e:Landroid/graphics/Rect;

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

    :goto_1c
    new-instance v1, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1d
    move-object v4, v2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1e
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

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

    :goto_1f
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v3

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

    :goto_20
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    :goto_21
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, v2}, Landroid/view/View;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_23
    iget-object v0, p0, Lner;->b:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_4

    nop

    nop

    :goto_26
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_29
    iget-object v4, p0, Lner;->e:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2b
    sub-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, p0, Lner;->a:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2d
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_2e
    const v1, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_2f
    iget v7, v4, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_30
    add-int v6, v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_31
    sub-int/2addr v3, v4

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_12

    nop

    nop

    :goto_33
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

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

    :goto_35
    sub-int v9, v1, v4

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop
.end method

.method public final c(III)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

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
    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lner;->e:Landroid/graphics/Rect;

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
