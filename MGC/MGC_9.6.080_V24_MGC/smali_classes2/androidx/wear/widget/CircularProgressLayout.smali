.class public Landroidx/wear/widget/CircularProgressLayout;
.super Landroid/widget/FrameLayout;
.source "PG"


# instance fields
.field public a:Leit;

.field private b:Lpcn;


# direct methods
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

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Landroidx/wear/widget/CircularProgressLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

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

    :goto_2
    invoke-direct {p0, p1, p2, v0}, Landroidx/wear/widget/CircularProgressLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_2

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

    :goto_2
    invoke-direct {p0, p1, p2, p3, v0}, Landroidx/wear/widget/CircularProgressLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_0
    iget-object p3, p0, Landroidx/wear/widget/CircularProgressLayout;->a:Leit;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p3}, Landroidx/wear/widget/CircularProgressLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p3, Lemz;

    nop

    goto/32 :goto_21

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

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lpcn;->d(Z)V

    goto/32 :goto_31

    nop

    nop

    :goto_5
    invoke-virtual {p3}, Leit;->invalidateSelf()V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p4, v2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_7
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p4

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

    :goto_8
    invoke-virtual {p2, p4, p3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0, v0}, Landroidx/wear/widget/CircularProgressLayout;->a([I)V

    :goto_a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const p4, 0x7f070121

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_0
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p3, p0, Landroidx/wear/widget/CircularProgressLayout;->b:Lpcn;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

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

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 p1, 0x2

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_11
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_12
    goto/16 :goto_24

    nop

    :goto_13
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_9

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    :goto_16
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {p3, p1}, Leit;-><init>(Landroid/content/Context;)V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_18
    iput v0, p4, Leis;->g:F

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_19
    if-lt v2, v3, :cond_1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    const v0, 0x7f030001

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1b
    iget-object p0, p0, Landroidx/wear/widget/CircularProgressLayout;->b:Lpcn;

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

    :goto_1c
    invoke-virtual {p2, p4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p4

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_1d
    invoke-virtual {p3, p2, p4}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/16 :goto_a

    nop

    nop

    :goto_20
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_21
    invoke-direct {p3}, Lemz;-><init>()V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->getType(I)I

    move-result v0

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

    :goto_23
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object p4, p0, Landroidx/wear/widget/CircularProgressLayout;->a:Leit;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, p4}, Landroidx/wear/widget/CircularProgressLayout;->a([I)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_27
    const/4 p4, 0x3

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_29
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/high16 v0, -0x1000000

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

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

    :goto_2c
    invoke-virtual {p3}, Leit;->invalidateSelf()V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    aput v3, v0, v2

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

    :goto_2e
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_15

    nop

    nop

    :goto_32
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :cond_2
    goto/32 :goto_48

    nop

    :goto_34
    invoke-virtual {p1, p3}, Landroid/content/Context;->getColor(I)I

    move-result p1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_35
    invoke-virtual {p4}, Landroid/content/res/TypedArray;->length()I

    move-result v3

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p2, v1, p1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget-object p3, p0, Landroidx/wear/widget/CircularProgressLayout;->a:Leit;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_39
    new-instance p3, Leit;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const v1, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-direct {p3, p0}, Lpcn;-><init>(Landroidx/wear/widget/CircularProgressLayout;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3c
    const v0, 0x1c

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3d
    iput-object p3, p0, Landroidx/wear/widget/CircularProgressLayout;->a:Leit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_3e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    sget-object p4, Lemb;->e:[I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_40
    const p3, 0x7f06006b

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_41
    const/high16 v0, 0x3f400000    # 0.75f

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_42
    const/4 p4, 0x1

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

    :goto_43
    invoke-virtual {p0, p1}, Landroidx/wear/widget/CircularProgressLayout;->setBackgroundColor(I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-ne v0, p4, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_3
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    new-instance p3, Lpcn;

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v0, v0, Leis;->b:Landroid/graphics/Paint;

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_47
    sget-object p4, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_16

    nop

    :goto_49
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {p2, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_4b
    iget-object v0, p3, Leit;->a:Leis;

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_4c
    filled-new-array {p4}, [I

    move-result-object p4

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0, p3}, Landroidx/wear/widget/CircularProgressLayout;->setOnHierarchyChangeListener(Landroid/view/ViewGroup$OnHierarchyChangeListener;)V

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object p4, p3, Leit;->a:Leis;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_4f
    int-to-float p3, p3

    nop

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

    :goto_50
    invoke-virtual {p4, p3}, Leit;->c(F)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    new-array v0, v0, [I

    nop

    goto/32 :goto_23

    nop

    nop
.end method


# virtual methods
.method public final varargs a([I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Landroidx/wear/widget/CircularProgressLayout;->a:Leit;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Leit;->a:Leis;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Leis;->d(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Leit;->invalidateSelf()V

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

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Leit;->a:Leis;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p1}, Leis;->e([I)V

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method protected final onDetachedFromWindow()V
    .locals 2

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    iget-object p0, p0, Landroidx/wear/widget/CircularProgressLayout;->b:Lpcn;

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

    :goto_2
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Landroidx/wear/widget/CircularProgressLayout;->a:Leit;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Lpcn;->d(Z)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_7
    const v1, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    iput v1, v0, Leis;->f:F

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
    check-cast p0, Landroidx/wear/widget/CircularProgressLayout;

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

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    iput v1, v0, Leis;->e:F

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Leit;->invalidateSelf()V

    goto/32 :goto_f

    nop

    nop

    :goto_e
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lpcn;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_13
    const v0, 0x17

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Leit;->a:Leis;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_0

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
    goto/32 :goto_3

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-static {p2, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Leit;->b(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    int-to-float p1, p1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroidx/wear/widget/CircularProgressLayout;->getChildCount()I

    move-result p1

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

    :goto_6
    if-nez p1, :cond_0

    nop

    goto/32 :goto_f

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

    nop

    nop

    :goto_7
    iget-object p0, p0, Landroidx/wear/widget/CircularProgressLayout;->a:Leit;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_8
    invoke-virtual {p0, p1}, Landroidx/wear/widget/CircularProgressLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    iget-object p0, p0, Landroidx/wear/widget/CircularProgressLayout;->a:Leit;

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

    :goto_a
    const/high16 p2, 0x40000000    # 2.0f

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

    :goto_b
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_c
    invoke-virtual {p0, p1}, Leit;->b(F)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_d
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    div-float/2addr p1, p2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v0, Leis;->d:Landroid/graphics/Paint;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Landroidx/wear/widget/CircularProgressLayout;->a:Leit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_4

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Leit;->invalidateSelf()V

    goto/32 :goto_3

    nop

    nop

    :goto_5
    iget-object v0, p0, Leit;->a:Leis;

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
