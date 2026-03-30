.class public Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;
.super Lrfg;
.source "PG"


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lrfg;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lrfh;->f:[I

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

    :goto_1
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

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

    :goto_2
    iput p2, p0, Lrfg;->d:I

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
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1, p2}, Lrfg;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method static final ag(Ljava/util/List;)Lcom/google/android/material/appbar/AppBarLayout;
    .locals 4

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    if-lt v1, v0, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    return-object v2

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    :goto_4
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_7
    check-cast v2, Landroid/view/View;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_8
    const v1, 0x9

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    return-object p0

    nop

    nop

    :goto_c
    goto/32 :goto_17

    nop

    nop

    :goto_d
    instance-of v3, v2, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v3, :cond_2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x0

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    :goto_12
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    :goto_15
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    nop

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
.end method


# virtual methods
.method public final ad(Landroid/view/View;)F
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v1, p0, p1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    int-to-float p0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_0
    goto/32 :goto_24

    nop

    :goto_4
    const/4 p1, 0x0

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_7
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x1a

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    return p1

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_20

    nop

    nop

    :goto_b
    goto :goto_5

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

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_e
    const v1, 0xb

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p1, p1, Ldsz;->a:Ldsw;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Lrff;->af()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_11
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_13
    div-float/2addr p1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_15
    if-gt v1, v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_2
    :goto_16
    goto/32 :goto_1f

    nop

    nop

    :goto_17
    int-to-float p1, p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_18
    instance-of p0, p1, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->f()I

    move-result p0

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_1a
    if-nez p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->b()I

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1c
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1d
    check-cast p1, Ldsz;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez p0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_5
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    sub-int/2addr p0, v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_20
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_21
    add-float/2addr p1, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_22
    return p0

    nop

    nop

    :goto_23
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_23

    nop

    :goto_25
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/high16 p0, 0x3f800000    # 1.0f

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

    nop

    :goto_27
    instance-of v1, p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop
.end method

.method public final ae(Landroid/view/View;)I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->f()I

    move-result p0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    :goto_2
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout;

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

.method public final bridge synthetic af(Ljava/util/List;)Landroid/view/View;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->ag(Ljava/util/List;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object p0

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

    nop

    nop

    nop
.end method

.method public bridge synthetic e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2, p3}, Lrfg;->e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    return p0

    nop
.end method

.method public final f(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 3

    goto/32 :goto_e

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->ag(Ljava/util/List;)Lcom/google/android/material/appbar/AppBarLayout;

    move-result-object v0

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

    :goto_2
    invoke-virtual {v2, p3, p2}, Landroid/graphics/Rect;->offset(II)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_4
    invoke-direct {v2, p3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result p2

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1, p1}, Lcom/google/android/material/appbar/AppBarLayout;->j(ZZ)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_9
    if-eqz p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_10

    nop

    nop

    :goto_d
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v1, v1, p2, p1}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_1a

    nop

    nop

    :goto_10
    return v1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_11

    nop

    nop

    :goto_14
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_15
    xor-int/lit8 p1, p4, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_2
    goto/32 :goto_13

    nop

    :goto_17
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result p2

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

    :goto_18
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    new-instance v2, Landroid/graphics/Rect;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1a
    invoke-virtual {p0, v2}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result p0

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

    nop

    :goto_1b
    const/4 p0, 0x1

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

    :goto_1c
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout$ScrollingViewBehavior;->a:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop
.end method

.method public final h(Landroid/view/View;)Z
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
    instance-of p0, p1, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public i(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_1
    goto/32 :goto_10

    nop

    nop

    :goto_2
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_4
    add-int/2addr v0, p1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p3, p0}, Lcom/google/android/material/appbar/AppBarLayout;->l(Z)Z

    :goto_6
    goto/32 :goto_22

    nop

    nop

    :goto_7
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_8
    instance-of v0, p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v1

    nop

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

    :goto_a
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result v0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-boolean p0, p3, Lcom/google/android/material/appbar/AppBarLayout;->f:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_d
    const v0, 0xa

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

    :goto_e
    invoke-virtual {p0, p3}, Lrfg;->ah(Landroid/view/View;)I

    move-result p0

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_f
    const v1, 0x16

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    instance-of p0, p3, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p3, p2}, Lcom/google/android/material/appbar/AppBarLayout;->m(Landroid/view/View;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_14
    sub-int/2addr v0, p0

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    add-int/2addr v0, p1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast p1, Ldsz;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_17
    iget p1, p0, Lrfg;->c:I

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    :goto_19
    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1a
    iget p1, p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->a:I

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    :goto_1c
    if-nez v0, :cond_3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sub-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1e
    sget-object p0, Ldwd;->a:[I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_20
    check-cast p1, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

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

    :goto_21
    iget-object p1, p1, Ldsz;->a:Ldsw;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop
.end method

.method public final j(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    instance-of p0, p2, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

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

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-static {p1, p0}, Ldwd;->h(Landroid/view/View;Ldvd;)V

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic k(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;III)Z
    .locals 5

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_0
    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

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

    :goto_1
    move v0, v3

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_4
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result p5

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_7
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v3}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_29

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_b
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    :goto_d
    if-nez v1, :cond_2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    goto/32 :goto_34

    nop

    nop

    :goto_f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_5

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    :goto_12
    add-int/2addr v4, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-gtz p5, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    :goto_14
    add-int/2addr p5, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p5}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p5

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0, v3}, Lrfg;->af(Ljava/util/List;)Landroid/view/View;

    move-result-object v3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_17
    int-to-float p0, p0

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v3, -0x2

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eq v0, v3, :cond_4

    nop

    goto/32 :goto_3a

    nop

    :cond_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v3, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ldwy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_1c
    if-eq v0, v2, :cond_6

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_6
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_1e
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_7
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_24

    nop

    nop

    :goto_20
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v1}, Ldwy;->d()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_22
    const v1, 0x13

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

    :goto_23
    return v1

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    add-int/2addr p5, v4

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    nop

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

    nop

    :goto_27
    invoke-virtual {v1}, Ldwy;->a()I

    move-result v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_28
    const/high16 p0, -0x80000000

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/4 v2, -0x1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_2b
    invoke-virtual {p0, v3}, Lrfg;->ae(Landroid/view/View;)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-static {p5, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0}, Lrfg;->aj()Z

    move-result p0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2e
    invoke-virtual {p2, p0}, Landroid/view/View;->setTranslationY(F)V

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2f
    sub-int/2addr p5, v1

    nop

    nop

    :goto_30
    goto/32 :goto_1c

    nop

    nop

    :goto_31
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_32
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_33
    if-ne v0, v2, :cond_8

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_18

    nop

    nop

    :goto_34
    goto :goto_30

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_36
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_37
    neg-int p0, v1

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

    :goto_38
    const/high16 p0, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_23

    nop

    nop

    :goto_3b
    invoke-virtual {p1, p2, p3, p4, p0}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->m(Landroid/view/View;III)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop
.end method
