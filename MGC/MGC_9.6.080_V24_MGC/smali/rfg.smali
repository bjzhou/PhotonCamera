.class public abstract Lrfg;
.super Lrfi;
.source "PG"


# instance fields
.field public final a:Landroid/graphics/Rect;

.field final b:Landroid/graphics/Rect;

.field public c:I

.field public d:I


# direct methods
.method public constructor <init>()V
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

    :goto_1
    iput-object v0, p0, Lrfg;->a:Landroid/graphics/Rect;

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

    :goto_2
    invoke-direct {p0}, Lrfi;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Lrfg;->b:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    iput v0, p0, Lrfg;->c:I

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

    :goto_8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    new-instance v0, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lrfg;->b:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    iput p1, p0, Lrfg;->c:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Landroid/graphics/Rect;

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
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p1, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    new-instance p1, Landroid/graphics/Rect;

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

    nop

    :goto_8
    iput-object p1, p0, Lrfg;->a:Landroid/graphics/Rect;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0, p1, p2}, Lrfi;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_7

    nop

    nop

    nop
.end method


# virtual methods
.method public ad(Landroid/view/View;)F
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public ae(Landroid/view/View;)I
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public abstract af(Ljava/util/List;)Landroid/view/View;
.end method

.method public final ah(Landroid/view/View;)I
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v1, p0}, Ldvu;->z(III)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1
    iget p0, p0, Lrfg;->d:I

    nop

    nop

    goto/32 :goto_6

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

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    nop

    :goto_3
    iget v0, p0, Lrfg;->d:I

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_5
    float-to-int p1, p1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    int-to-float v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Lrfg;->ad(Landroid/view/View;)F

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_8
    mul-float/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_9
    const v1, 0x7

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_f

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_11
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x0

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

    :goto_14
    rem-int v0, v0, v1

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
.end method

.method public aj()Z
    .locals 0

    goto/32 :goto_1

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

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final ei(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)V
    .locals 8

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getHeight()I

    move-result v6

    nop

    nop

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

    :goto_2
    invoke-virtual {v5, v2, v3, v4, v6}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingLeft()I

    move-result v2

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v3

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget p1, v5, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int/2addr p1, v3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j(Landroid/view/View;I)V

    goto/32 :goto_2a

    nop

    nop

    :goto_9
    iput p1, v5, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    move-object v6, p1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_b
    const v1, 0x3

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

    :goto_c
    sub-int/2addr v4, v6

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_d
    iget v7, v1, Ldsz;->bottomMargin:I

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    :goto_f
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget v1, v1, Ldsz;->c:I

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_11
    iput p1, v5, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_13
    iget v4, v1, Ldsz;->topMargin:I

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_17
    goto/32 :goto_1e

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_19
    add-int/2addr v6, v7

    nop

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

    :goto_1a
    sub-int/2addr p1, v2

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

    nop

    nop

    :goto_1b
    iget-object p1, p0, Lrfg;->b:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1c
    sub-int/2addr v6, v7

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_15

    nop

    :goto_1e
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1f
    iget v2, p1, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_20
    sub-int/2addr v2, p3

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int/2addr v2, v3

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

    :goto_22
    sub-int/2addr v6, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_23
    iget v1, p1, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_24
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_25
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_26
    sub-int/2addr v4, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_27
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result p2

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v3, v1, Ldsz;->leftMargin:I

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

    :goto_29
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingBottom()I

    move-result v7

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2a
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iget p1, p1, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_2c
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_1d

    nop

    :goto_2d
    iget p1, v5, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_2f
    const v1, 0x800033

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_31
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_32
    const v0, 0x16

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

    :goto_33
    iput p1, p0, Lrfg;->c:I

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

    :goto_34
    if-eqz v1, :cond_3

    nop

    goto/32 :goto_30

    nop

    :cond_3
    goto/32 :goto_2f

    nop

    nop

    :goto_35
    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0, v0}, Lrfg;->ah(Landroid/view/View;)I

    move-result p3

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v2, p1, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->e:Ldwy;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/view/View;->layout(IIII)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_3a
    iput p1, p0, Lrfg;->c:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-static/range {v2 .. v7}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;I)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_3c
    move v7, p3

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v2}, Ldwy;->c()I

    move-result v2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3e
    iget-object v5, p0, Lrfg;->a:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3f
    iget v6, v1, Ldsz;->rightMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_40
    check-cast v1, Ldsz;

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_41
    add-int/2addr v3, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_42
    sub-int/2addr p1, p2

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_43
    invoke-virtual {v2}, Ldwy;->b()I

    move-result v3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

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

    :goto_45
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getWidth()I

    move-result v4

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {p2}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result p1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_47
    sub-int/2addr v4, p3

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_48
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getFitsSystemWindows()Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {p1}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->getPaddingRight()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_4c
    iget v3, p1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0, v0}, Lrfg;->af(Ljava/util/List;)Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop
.end method
