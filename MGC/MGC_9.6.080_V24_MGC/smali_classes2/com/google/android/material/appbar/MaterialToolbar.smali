.class public Lcom/google/android/material/appbar/MaterialToolbar;
.super Landroid/support/v7/widget/Toolbar;
.source "PG"


# static fields
.field private static final E:[Landroid/widget/ImageView$ScaleType;


# instance fields
.field private F:Ljava/lang/Integer;

.field private G:Z

.field private H:Z

.field private I:Landroid/widget/ImageView$ScaleType;

.field private J:Ljava/lang/Boolean;


# direct methods
.method private final 92ebcae27b5395a18af07a7e07265cf7m(Landroid/view/View;Landroid/util/Pair;)V
    .locals 3

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/view/View;->getBottom()I

    move-result v1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/high16 v1, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4
    check-cast p2, Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    div-int/lit8 p0, p0, 0x2

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_6
    sub-int/2addr v0, p2

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_7
    goto/32 :goto_1a

    nop

    nop

    :goto_8
    check-cast v1, Ljava/lang/Integer;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    sub-int/2addr v1, p0

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

    :goto_a
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_b
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

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

    :goto_d
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_f
    if-gtz p2, :cond_0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_10
    const v0, 0x3

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

    :goto_11
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result p2

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v1, 0x4

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

    :goto_13
    const/4 v2, 0x0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, p2, v1}, Landroid/view/View;->measure(II)V

    :goto_15
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    div-int/lit8 v1, v0, 0x2

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

    :goto_17
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getMeasuredWidth()I

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

    nop

    nop

    :goto_18
    add-int/2addr p0, p2

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

    :goto_19
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_17

    nop

    nop

    :goto_1b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_1c
    invoke-virtual {p1, p0, p2, v0, v1}, Landroid/view/View;->layout(IIII)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sub-int/2addr p0, v1

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

    :goto_1e
    return-void

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_20
    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_21
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_22
    rem-int v0, v0, v1

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

    :goto_23
    sub-int p2, v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_24
    add-int/2addr v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_25
    sub-int p2, v0, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_26
    invoke-static {p2, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeightAndState()I

    move-result v1

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
.end method

.method static constructor <clinit>()V
    .locals 8

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

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

    :goto_4
    filled-new-array/range {v0 .. v7}, [Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_5
    sget-object v0, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_7
    sget-object v3, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;

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

    :goto_8
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_END:Landroid/widget/ImageView$ScaleType;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_a
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_b
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v6, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_START:Landroid/widget/ImageView$ScaleType;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xe

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

    nop

    :goto_f
    sget-object v5, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

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

    :goto_10
    sput-object v0, Lcom/google/android/material/appbar/MaterialToolbar;->E:[Landroid/widget/ImageView$ScaleType;

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
    return-void

    nop

    :goto_12
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_1

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
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/MaterialToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

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

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/MaterialToolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x7f040763

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Ldvw;->a(Landroid/view/View;)F

    move-result p1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p3, p1}, Lrkp;->k(Landroid/content/Context;)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const/4 p3, 0x1

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p3, 0x4

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {v6}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->I:Landroid/widget/ImageView$ScaleType;

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_8
    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p3, 0x2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_b
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0, p1, p2, p3}, Landroid/support/v7/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-boolean p3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->H:Z

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

    :goto_e
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_10
    const v1, 0x1e

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

    :goto_11
    iput-object p3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->F:Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p3}, Lrkp;-><init>()V

    goto/32 :goto_2a

    nop

    nop

    :goto_13
    if-gez p3, :cond_2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_14
    const/16 v0, 0x8

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_15
    new-array v5, v6, [I

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_16
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v4, 0x7f15092d

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, p3}, Landroid/support/v7/widget/Toolbar;->q(Landroid/graphics/drawable/Drawable;)V

    :goto_19
    goto/32 :goto_3

    nop

    nop

    :goto_1a
    new-instance p3, Lrkp;

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

    :goto_1b
    move-object v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->e()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1d
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_40

    nop

    :goto_1e
    const/4 p3, 0x3

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lt p3, v0, :cond_4

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p2, v6, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_21
    sget-object v0, Lcom/google/android/material/appbar/MaterialToolbar;->E:[Landroid/widget/ImageView$ScaleType;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_22
    if-eqz p2, :cond_5

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_5
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_6
    goto/32 :goto_16

    nop

    nop

    :goto_24
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_26
    move-object v1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_28
    if-nez p3, :cond_7

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p3, p2}, Lrkp;->n(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2b
    const v0, 0x4

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2c
    invoke-virtual {p2, p3, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p1, p2, p3, v0}, Lrmt;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {p3, p1}, Lrkp;->m(F)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_31
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_33
    sget-object v2, Lrfh;->e:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_34
    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/MaterialToolbar;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_35
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_36
    iput-object p3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->J:Ljava/lang/Boolean;

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static/range {v0 .. v5}, Lric;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_3b
    invoke-static {p2}, Lrgw;->b(Landroid/graphics/drawable/Drawable;)Landroid/content/res/ColorStateList;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_8

    nop

    nop

    :goto_3d
    const/4 v1, -0x1

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_3e
    iput-boolean p3, p0, Lcom/google/android/material/appbar/MaterialToolbar;->G:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_3f
    const v0, 0x7f15092d

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_40
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    return-void

    nop

    :goto_43
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_45
    move v3, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_46
    aget-object p3, v0, p3

    nop

    goto/32 :goto_6

    nop

    nop
.end method


# virtual methods
.method public final n(I)V
    .locals 3

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    move-object v2, v0

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
    check-cast v2, Lfx;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v2}, Lfx;->s()V

    :goto_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lfx;->r()V

    :goto_9
    goto/32 :goto_4

    nop

    nop

    :goto_a
    invoke-super {p0, p1}, Landroid/support/v7/widget/Toolbar;->n(I)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

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

    :goto_c
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->f()Landroid/view/Menu;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    :goto_e
    goto/32 :goto_c

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_10
    instance-of v1, v0, Lfx;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_12
    goto/32 :goto_e

    nop

    :goto_13
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    nop

    :goto_14
    check-cast v0, Lfx;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0xc

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onAttachedToWindow()V
    .locals 0

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

    nop

    nop

    :goto_1
    invoke-super {p0}, Landroid/support/v7/widget/Toolbar;->onAttachedToWindow()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Lrkm;->c(Landroid/view/View;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 6

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p5, Lrid;->a:Ljava/util/Comparator;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_4

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    move-object p1, p3

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_3f

    nop

    nop

    :goto_5
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_6
    iget-boolean p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->G:Z

    nop

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

    :goto_7
    invoke-static {p0, p4}, Lrid;->a(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p4

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/Toolbar;->onLayout(ZIIII)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_57

    nop

    nop

    :goto_b
    check-cast p4, Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4b

    nop

    nop

    :goto_d
    goto/32 :goto_8

    nop

    nop

    :goto_e
    if-nez p5, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0, p2}, Landroid/support/v7/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object p4

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getPaddingRight()I

    move-result v2

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p2, 0x0

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_14
    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p5

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lt v4, p5, :cond_3

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_64

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_17
    if-nez p5, :cond_4

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_75

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    :goto_19
    goto :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-lt p2, p4, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 p2, p2, 0x1

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar;->t:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {v0, v1, p5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/32 :goto_71

    nop

    nop

    :goto_1f
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_51

    nop

    :goto_21
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_22
    check-cast p1, Landroid/widget/TextView;

    nop

    :goto_23
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->J:Ljava/lang/Boolean;

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_25
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_27
    goto/16 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    if-lez v0, :cond_6

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

    :cond_6
    goto/32 :goto_c

    nop

    :goto_2a
    iget-object p4, p0, Landroid/support/v7/widget/Toolbar;->u:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2b
    if-nez p4, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :cond_7
    :goto_2c
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez p5, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez p1, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_9
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2f
    sget-object p4, Lrid;->a:Ljava/util/Comparator;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_30
    if-nez p3, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_a
    goto/32 :goto_24

    nop

    nop

    :goto_31
    invoke-static {p4, p5}, Ljava/util/Collections;->max(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p4

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_32
    if-ne v4, v5, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_33
    div-int/lit8 v0, p5, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_34
    if-nez v0, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_56

    nop

    nop

    :goto_35
    if-eqz p1, :cond_d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getChildCount()I

    move-result p4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_37
    if-gt v4, v1, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_38
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/MaterialToolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_39
    iget-object p1, p0, Landroid/support/v7/widget/Toolbar;->e:Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_3a
    if-nez p4, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    :cond_f
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_3b
    instance-of p5, p4, Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-static {p1, p4}, Ljava/util/Collections;->min(Ljava/util/Collection;Ljava/util/Comparator;)Ljava/lang/Object;

    move-result-object p1

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

    :goto_3d
    add-int/lit8 v2, v2, 0x1

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

    :goto_3e
    if-gt v4, v0, :cond_10

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_3f
    if-eqz p1, :cond_11

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_27

    nop

    nop

    :goto_40
    const/16 v5, 0x8

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/4 p3, 0x0

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {p3, p1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    :goto_43
    goto/32 :goto_7b

    nop

    nop

    :goto_44
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getPaddingLeft()I

    move-result v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_45
    if-lt v4, v0, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/16 :goto_5e

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_48
    if-nez p1, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_6c

    nop

    nop

    nop

    :goto_49
    if-nez p5, :cond_14

    nop

    goto/32 :goto_47

    nop

    nop

    :cond_14
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    return-void

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getMeasuredWidth()I

    move-result p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    iget-boolean p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->H:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_4e
    iget-boolean p1, p0, Lcom/google/android/material/appbar/MaterialToolbar;->H:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_4f
    move-object p1, p3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_50
    move v2, p2

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_73

    nop

    nop

    :goto_52
    if-nez p1, :cond_15

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_53
    move-object p3, p4

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_6a

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p3, p0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    :goto_58
    goto/32 :goto_4a

    nop

    nop

    :goto_59
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez p4, :cond_16

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_5b
    if-ne v3, p1, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    :cond_17
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    if-eqz p1, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_5d
    check-cast p4, Landroid/widget/TextView;

    nop

    :goto_5e
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_60
    new-instance v0, Landroid/util/Pair;

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

    :goto_61
    move-object p4, p3

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_62
    goto/16 :goto_28

    nop

    nop

    :goto_63
    goto/32 :goto_30

    nop

    nop

    nop

    :goto_64
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result p5

    nop

    :goto_65
    goto/32 :goto_3d

    nop

    nop

    :goto_66
    invoke-virtual {v3}, Landroid/view/View;->getRight()I

    move-result v1

    nop

    :goto_67
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_68
    if-lt v2, v3, :cond_19

    nop

    goto/32 :goto_21

    nop

    :cond_19
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_69
    invoke-direct {p0, p4, v0}, Lcom/google/android/material/appbar/MaterialToolbar;->92ebcae27b5395a18af07a7e07265cf7m(Landroid/view/View;Landroid/util/Pair;)V

    :goto_6a
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    if-ne v3, p4, :cond_1a

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-static {p0, p1}, Lrid;->a(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object p1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_6f
    sub-int/2addr p5, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_70
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_71
    iget-boolean p5, p0, Lcom/google/android/material/appbar/MaterialToolbar;->G:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_72
    if-nez p5, :cond_1b

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {p0}, Lcom/google/android/material/appbar/MaterialToolbar;->getChildCount()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    const v0, 0x1d

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_75
    invoke-virtual {p5}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_76
    if-nez p1, :cond_1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    :cond_1c
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    goto/16 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_1c

    nop

    nop

    :goto_79
    invoke-virtual {v3}, Landroid/view/View;->getLeft()I

    move-result v4

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_7a
    invoke-virtual {p4}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p5

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object p0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->I:Landroid/widget/ImageView$ScaleType;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/MaterialToolbar;->92ebcae27b5395a18af07a7e07265cf7m(Landroid/view/View;Landroid/util/Pair;)V

    :goto_7d
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-interface {p4}, Ljava/util/List;->isEmpty()Z

    move-result p5

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {p5, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p5

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop
.end method

.method public final q(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-super {p0, p1}, Landroid/support/v7/widget/Toolbar;->q(Landroid/graphics/drawable/Drawable;)V

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

    :goto_5
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

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

    :goto_7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->F:Ljava/lang/Integer;

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

    :goto_9
    iget-object v0, p0, Lcom/google/android/material/appbar/MaterialToolbar;->F:Ljava/lang/Integer;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final setElevation(F)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/Toolbar;->setElevation(F)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lrkm;->b(Landroid/view/View;F)V

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
.end method
