.class public Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;
.super Ldsw;
.source "PG"


# instance fields
.field private a:Landroid/graphics/Rect;

.field private final b:Z

.field private final c:Z


# direct methods
.method private final 86075455055ffb2eff2cb451f3a7530fm(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lrhe;)V
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_0
    sget p0, Lrhe;->f:I

    nop

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

    :goto_1
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p3, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->a:Landroid/graphics/Rect;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw p2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    if-le p0, p1, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1, p2, p0}, Lrhw;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, p2, p3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->aebddb1475bf501a829b5254fd34bb6bm(Landroid/view/View;Lrhe;)Z

    move-result p3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz p3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-eqz p3, :cond_2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->a:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_d
    iput-object p3, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->a:Landroid/graphics/Rect;

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    :goto_f
    invoke-virtual {p2}, Lcom/google/android/material/appbar/AppBarLayout;->d()I

    move-result p1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    throw p2

    nop

    :goto_11
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    sget p0, Lrhe;->f:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ldsw;-><init>()V

    goto/32 :goto_2

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
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->c:Z

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->b:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v0, Lrhr;->a:[I

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

    :goto_2
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

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

    :goto_4
    const/4 p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_7

    nop

    nop

    :goto_6
    const/4 p2, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    invoke-direct {p0, p1, p2}, Ldsw;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

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

    :goto_a
    iput-boolean p2, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->c:Z

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method private final ab5c75501685ed401efbce34dd7f24e4m(Landroid/view/View;Lrhe;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->aebddb1475bf501a829b5254fd34bb6bm(Landroid/view/View;Lrhe;)Z

    move-result p0

    nop

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

    nop

    :goto_1
    const/4 p0, 0x0

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
    if-lt p1, p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p2}, Lrhe;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

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
    check-cast p0, Ldsz;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p2}, Lrhe;->getHeight()I

    move-result p2

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

    :goto_6
    return-void

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_3

    nop

    nop

    :goto_8
    if-eqz p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    div-int/lit8 p2, p2, 0x2

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_b
    iget p0, p0, Ldsz;->topMargin:I

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    throw p0

    nop

    :goto_d
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int/2addr p2, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    throw p0

    nop

    nop
.end method

.method private static ad(Landroid/view/View;)Z
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    instance-of v0, p0, Ldsz;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    instance-of p0, p0, Lcom/google/android/material/bottomsheet/BottomSheetBehavior;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_3
    iget-object p0, p0, Ldsz;->a:Ldsw;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    check-cast p0, Ldsz;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

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

    :goto_7
    const/4 p0, 0x0

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

    :goto_8
    return p0

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method private final aebddb1475bf501a829b5254fd34bb6bm(Landroid/view/View;Lrhe;)Z
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x14

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p2, Ldsz;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p2}, Lrhe;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return v1

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-boolean v0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->b:Z

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget p0, p2, Ldsz;->f:I

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

    :goto_c
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_14

    nop

    nop

    :goto_f
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_10
    iget-boolean p0, p0, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->c:Z

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_11
    return v1

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_f

    nop

    nop

    :goto_13
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    :goto_16
    if-ne p0, p1, :cond_3

    nop

    goto/32 :goto_12

    nop

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

    :goto_17
    goto/16 :goto_4

    nop

    nop

    :goto_18
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x20

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
.end method


# virtual methods
.method public final a(Ldsz;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    const/16 p0, 0x50

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    if-eqz p0, :cond_0

    nop

    nop

    goto/32 :goto_5

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

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget p0, p1, Ldsz;->h:I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput p0, p1, Ldsz;->h:I

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic e(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;I)Z
    .locals 5

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_2
    if-nez v4, :cond_0

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    :goto_3
    if-nez v4, :cond_1

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->ad(Landroid/view/View;)Z

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v3, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    if-lt v2, v1, :cond_2

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

    :cond_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    instance-of v4, v3, Lcom/google/android/material/appbar/AppBarLayout;

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

    :goto_d
    invoke-direct {p0, v3, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->ab5c75501685ed401efbce34dd7f24e4m(Landroid/view/View;Lrhe;)V

    :goto_e
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_10
    const v0, 0x9

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

    :goto_11
    const v1, 0x17

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, p2, p3}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->j(Landroid/view/View;I)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, p2}, Landroidx/coordinatorlayout/widget/CoordinatorLayout;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v0

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

    :goto_15
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_16
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p2, Lrhe;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_19
    const/4 p0, 0x1

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

    :goto_1a
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    :goto_1b
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_e

    nop

    :goto_1e
    goto/32 :goto_8

    nop

    nop

    :goto_1f
    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0, p1, v3, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->86075455055ffb2eff2cb451f3a7530fm(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lrhe;)V

    goto/32 :goto_1d

    nop

    nop

    nop
.end method

.method public final bridge synthetic i(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroid/view/View;Landroid/view/View;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    instance-of v0, p3, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    check-cast p3, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    check-cast p2, Lrhe;

    nop

    nop

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

    :goto_8
    invoke-direct {p0, p1, p3, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->86075455055ffb2eff2cb451f3a7530fm(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Lrhe;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p3}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->ad(Landroid/view/View;)Z

    move-result p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p3, p2}, Lcom/google/android/material/floatingactionbutton/ExtendedFloatingActionButton$ExtendedFloatingActionButtonBehavior;->ab5c75501685ed401efbce34dd7f24e4m(Landroid/view/View;Lrhe;)V

    :goto_b
    goto/32 :goto_7

    nop

    nop
.end method

.method public final bridge synthetic r(Landroid/view/View;Landroid/graphics/Rect;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lrhe;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method
