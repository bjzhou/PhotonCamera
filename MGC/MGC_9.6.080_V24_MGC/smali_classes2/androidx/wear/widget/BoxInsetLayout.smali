.class public Landroidx/wear/widget/BoxInsetLayout;
.super Landroid/view/ViewGroup;
.source "PG"


# instance fields
.field private final a:I

.field private final b:I

.field private c:Z

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/graphics/Rect;

.field private f:Landroid/graphics/drawable/Drawable;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m(Lemv;II)I
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    const/16 p0, 0x50

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

    :goto_1
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean p0, p0, Landroidx/wear/widget/BoxInsetLayout;->c:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    if-eq p2, p0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_0
    :goto_4
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int/2addr p0, p3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    :goto_7
    iget p0, p1, Lemv;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    iget p0, p1, Lemv;->height:I

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

    :goto_a
    return p0

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    iget p0, p1, Lemv;->bottomMargin:I

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    and-int/lit8 p0, p0, 0x8

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_f
    iget p0, p1, Lemv;->bottomMargin:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-ne p0, v0, :cond_3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private final 23ce148e54b083367f51e25c7971761em(II)I
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const p1, 0x3e15f634

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    float-to-int p0, p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    int-to-float p0, p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iget v0, p0, Landroidx/wear/widget/BoxInsetLayout;->a:I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

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

    :goto_6
    invoke-static {p0, p1}, Ljava/lang/Math;->max(II)I

    move-result p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    nop

    nop

    nop

    :goto_8
    mul-float/2addr p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    iget p0, p0, Landroidx/wear/widget/BoxInsetLayout;->b:I

    nop

    nop

    goto/32 :goto_5

    nop

    nop
.end method

.method private final 33f5b80483094659737b73d90f80a8a4m(Lemv;II)I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Landroidx/wear/widget/BoxInsetLayout;->c:Z

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

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

    :goto_2
    if-eq p2, p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    :goto_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget p0, p1, Lemv;->a:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    iget p0, p1, Lemv;->width:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int/2addr p0, p3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x5

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    iget p0, p1, Lemv;->rightMargin:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p0, :cond_2

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

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_e
    and-int/lit8 p0, p0, 0x4

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    iget p0, p1, Lemv;->rightMargin:I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-ne p0, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v0}, Landroidx/wear/widget/BoxInsetLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    const/4 v0, 0x0

    nop

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

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Landroidx/wear/widget/BoxInsetLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

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

    nop

    nop

    :goto_1
    iget-object p1, p0, Landroidx/wear/widget/BoxInsetLayout;->e:Landroid/graphics/Rect;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_7

    nop

    nop

    :goto_4
    iput-object p1, p0, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p1, p0, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9
    if-eqz p1, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    new-instance p1, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_d
    new-instance p1, Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    iput p1, p0, Landroidx/wear/widget/BoxInsetLayout;->a:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f
    if-eqz p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    :goto_11
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object p1

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

    :goto_12
    iput p1, p0, Landroidx/wear/widget/BoxInsetLayout;->b:I

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

    :goto_13
    iput-object p1, p0, Landroidx/wear/widget/BoxInsetLayout;->e:Landroid/graphics/Rect;

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(Lemv;II)I
    .locals 1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget p0, p1, Lemv;->topMargin:I

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/16 p0, 0x30

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    iget p0, p1, Lemv;->topMargin:I

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

    :goto_7
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    and-int/lit8 p0, p0, 0x2

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

    :goto_9
    return p0

    nop

    nop

    :goto_a
    if-eq p2, p0, :cond_2

    nop

    goto/32 :goto_3

    nop

    :cond_2
    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int/2addr p0, p3

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean p0, p0, Landroidx/wear/widget/BoxInsetLayout;->c:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget p0, p1, Lemv;->a:I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    if-ne p0, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    iget p0, p1, Lemv;->height:I

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
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m(Lemv;II)I
    .locals 1

    goto/32 :goto_b

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

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

    :goto_1
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_2
    add-int/2addr p0, p3

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
    return p0

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    nop

    :goto_6
    iget p0, p1, Lemv;->leftMargin:I

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-ne p0, v0, :cond_2

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    and-int/lit8 p0, p0, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    iget p0, p1, Lemv;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v0, -0x1

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

    :goto_b
    iget-boolean p0, p0, Landroidx/wear/widget/BoxInsetLayout;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    iget p0, p1, Lemv;->leftMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_e
    if-eq p2, p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_3
    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget p0, p1, Lemv;->width:I

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
.end method


# virtual methods
.method protected final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
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

    nop

    nop

    :goto_1
    instance-of p0, p1, Lemv;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lemv;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroidx/wear/widget/BoxInsetLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-direct {v0, p0, p1}, Lemv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method protected final generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    new-instance p0, Lemv;

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
    invoke-direct {p0, p1}, Lemv;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onAttachedToWindow()V
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/Configuration;->isScreenRound()Z

    move-result v0

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
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_b

    nop

    :goto_2
    iput-boolean v0, p0, Landroidx/wear/widget/BoxInsetLayout;->c:Z

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroidx/wear/widget/BoxInsetLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetLeft()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetRight()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroidx/wear/widget/BoxInsetLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v0

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

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_d
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetBottom()I

    move-result v0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_f
    const v0, 0x10

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_10
    const v1, 0x18

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_11
    iget-object p0, p0, Landroidx/wear/widget/BoxInsetLayout;->e:Landroid/graphics/Rect;

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

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_13
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getSystemWindowInsetTop()I

    move-result v2

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    invoke-virtual {p0, v1, v2, v3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 17

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sub-int v5, p5, p3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1
    goto/16 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_3
    add-int/2addr v1, v2

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    if-ne v1, v6, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v11, 0x800033

    nop

    nop

    :goto_6
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_37

    nop

    :goto_8
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    goto/32 :goto_57

    nop

    nop

    :cond_1
    goto/32 :goto_56

    nop

    :goto_a
    sub-int v3, p4, p2

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_b
    move-object/from16 v0, p0

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_c
    add-int/2addr v1, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_d
    move/from16 p2, v6

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v5, v0, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sub-int v6, v1, v11

    nop

    nop

    :goto_11
    goto/32 :goto_33

    nop

    nop

    nop

    :goto_12
    iget-object v4, v0, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_13
    add-int/2addr v1, v15

    nop

    nop

    :goto_14
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v8

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_16
    const/16 v8, 0x10

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_17
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getLayoutDirection()I

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_18
    iget v8, v8, Lemv;->height:I

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_19
    sub-int/2addr v1, v10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-ne v1, v6, :cond_2

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1b
    sub-int v1, v5, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_1c
    invoke-direct {v0, v8, v12, v14}, Landroidx/wear/widget/BoxInsetLayout;->f875135777c17da3cef2ea6eeff5be29m(Lemv;II)I

    move-result v15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    add-int/2addr v10, v6

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_1e
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_1f
    const/4 v6, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_20
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingBottom()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_22
    add-int/lit8 v6, p2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_23
    iget v3, v3, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v0, v6}, Landroidx/wear/widget/BoxInsetLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

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

    nop

    :goto_25
    if-eq v8, v12, :cond_3

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_26
    goto/32 :goto_2d

    nop

    nop

    :goto_27
    goto/16 :goto_e

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/4 v12, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_2a
    goto/16 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2c
    and-int/lit8 v1, v13, 0x7

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    add-int/2addr v6, v4

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    sub-int/2addr v5, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_2f
    const/16 v9, 0x8

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_31
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingRight()I

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

    :goto_33
    add-int/2addr v9, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_34
    add-int/2addr v4, v5

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v6, 0x5

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_36
    if-eq v1, v6, :cond_4

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_4
    :goto_37
    goto/32 :goto_52

    nop

    nop

    :goto_38
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

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

    nop

    :goto_39
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_3b
    and-int/lit8 v1, v11, 0x70

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_3c
    move/from16 v16, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3d
    invoke-direct {v0, v8, v1, v14}, Landroidx/wear/widget/BoxInsetLayout;->da190e616797844b591057d0190e7728m(Lemv;II)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_3e
    sub-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_3f
    and-int/lit8 v12, v11, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    :goto_40
    sub-int/2addr v3, v4

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_41
    goto/16 :goto_11

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_43
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_44
    iget v11, v8, Lemv;->gravity:I

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

    :goto_45
    div-int/lit8 v1, v1, 0x2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_46
    if-eq v11, v12, :cond_5

    nop

    goto/32 :goto_6

    nop

    :cond_5
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_47
    move/from16 p2, v6

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_48
    sub-int/2addr v5, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getChildCount()I

    move-result v1

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v7, v15, v6, v9, v10}, Landroid/view/View;->layout(IIII)V

    goto/32 :goto_27

    nop

    nop

    :goto_4b
    move/from16 v1, v16

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v12, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_4d
    check-cast v8, Lemv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    sub-int v15, v1, v12

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-lt v6, v1, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_51
    const v0, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_52
    add-int/2addr v15, v2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-direct {v0, v8, v1, v14}, Landroidx/wear/widget/BoxInsetLayout;->166277962e993c138a6b1f0c9b571cc0m(Lemv;II)I

    move-result v11

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_54
    goto/16 :goto_14

    nop

    nop

    nop

    nop

    :goto_55
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    iget-object v3, v0, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_59
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingTop()I

    move-result v4

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

    :goto_5a
    div-int/lit8 v1, v1, 0x2

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_63

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_39

    nop

    nop

    :goto_5d
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getMeasuredWidth()I

    move-result v14

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_5e
    sub-int v1, v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    :goto_5f
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_60
    const v1, 0x14

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    sub-int v1, v3, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_62
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_50

    nop

    nop

    :goto_64
    iget v4, v4, Landroid/graphics/Rect;->right:I

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_65
    sub-int/2addr v1, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_66
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingLeft()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-ne v1, v8, :cond_7

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_68
    iget-object v6, v0, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_69
    if-ne v8, v9, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_31

    nop

    nop

    :goto_6a
    goto/16 :goto_26

    nop

    :goto_6b
    goto/32 :goto_6d

    nop

    nop

    :goto_6c
    invoke-direct {v0, v8, v12, v14}, Landroidx/wear/widget/BoxInsetLayout;->33f5b80483094659737b73d90f80a8a4m(Lemv;II)I

    move-result v12

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    sub-int v1, v5, v10

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_6e
    const/4 v6, -0x1

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_6f
    move/from16 v16, v1

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getMeasuredHeight()I

    move-result v15

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-direct {v0, v14, v15}, Landroidx/wear/widget/BoxInsetLayout;->23ce148e54b083367f51e25c7971761em(II)I

    move-result v14

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    const/16 v8, 0x50

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_73
    add-int/2addr v1, v6

    nop

    nop

    nop

    nop

    nop

    :goto_74
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_75
    if-ne v1, v8, :cond_9

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_77
    iget v5, v5, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_78
    invoke-static {v11, v13}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_79
    iget v1, v8, Lemv;->width:I

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 20

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/view/View;->measure(II)V

    :goto_1
    goto/32 :goto_6c

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_3
    invoke-direct {v6, v2, v3, v0}, Landroidx/wear/widget/BoxInsetLayout;->da190e616797844b591057d0190e7728m(Lemv;II)I

    move-result v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_4
    const/4 v10, 0x0

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget v2, v0, Lemv;->leftMargin:I

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_6
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    :goto_7
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getChildCount()I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    and-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    :goto_9
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_a
    iget v2, v0, Lemv;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    check-cast v0, Lemv;

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v1, v6, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move/from16 v19, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int/2addr v12, v13

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4c

    nop

    :goto_11
    and-int/lit8 v3, v3, 0x4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    shl-int/lit8 v2, v14, 0x10

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingLeft()I

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget v3, v0, Lemv;->a:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_15
    iget-object v1, v6, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_7a

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v11

    nop

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v4, v0, Lemv;->topMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget v0, v0, Lemv;->bottomMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_1b
    iget v3, v2, Lemv;->gravity:I

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_1c
    add-int v0, v0, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-ne v0, v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget v4, v0, Lemv;->a:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_1f
    invoke-static {v8, v11, v2}, Landroidx/wear/widget/BoxInsetLayout;->getChildMeasureSpec(III)I

    move-result v2

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_20
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_46

    nop

    :goto_22
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    add-int/lit8 v11, v11, 0x1

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

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

    :goto_25
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_26
    move/from16 v4, p2

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_27
    iget-object v12, v6, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v12, v12, Landroid/graphics/Rect;->top:I

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

    nop

    :goto_29
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingBottom()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_42

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_41

    nop

    nop

    :goto_2e
    iget v5, v0, Lemv;->a:I

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    and-int/lit8 v3, v3, 0x70

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_30
    if-lez v0, :cond_2

    nop

    goto/32 :goto_4c

    nop

    :cond_2
    goto/32 :goto_4b

    nop

    :goto_31
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v15}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_33
    add-int/2addr v11, v12

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_34
    sub-int/2addr v4, v11

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

    :goto_35
    const v1, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_36
    move v11, v10

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    add-int/2addr v11, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_38
    move/from16 v2, p1

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

    :goto_39
    iget v3, v2, Lemv;->width:I

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_25

    nop

    nop

    :goto_3b
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingLeft()I

    move-result v4

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_3c
    move/from16 v17, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :goto_3d
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    move-result v2

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v5, v6, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    iget-object v2, v6, Landroidx/wear/widget/BoxInsetLayout;->f:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingTop()I

    move-result v11

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_41
    move v4, v10

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_43
    add-int/2addr v5, v11

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget v2, v2, Lemv;->height:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_45
    move v2, v10

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_47
    add-int/2addr v11, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_48
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_49
    return-void

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    move/from16 v18, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    if-lt v10, v9, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_5
    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_4f
    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    move/from16 v7, p1

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_51
    add-int/2addr v11, v3

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

    :goto_52
    sub-int/2addr v5, v4

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {v7, v4, v3}, Landroidx/wear/widget/BoxInsetLayout;->getChildMeasureSpec(III)I

    move-result v3

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_54
    if-lt v11, v9, :cond_6

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_bb

    nop

    nop

    :goto_55
    invoke-virtual {v15}, Landroid/view/View;->getVisibility()I

    move-result v0

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingRight()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_a1

    nop

    :goto_58
    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_59
    add-int/2addr v13, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    const v0, 0x17

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_5b
    add-int/2addr v0, v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget-object v11, v6, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingBottom()I

    move-result v12

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    :goto_5e
    add-int v0, v0, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingRight()I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/16 :goto_b5

    nop

    :goto_61
    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_62
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getSuggestedMinimumWidth()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_63
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getMeasuredHeight()I

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_64
    check-cast v2, Lemv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_65
    add-int/2addr v4, v5

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_66
    and-int/lit8 v13, v3, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_67
    add-int/2addr v4, v5

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getPaddingTop()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    move/from16 v16, v0

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_6a
    move v13, v12

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_6b
    invoke-direct {v6, v2, v3, v0}, Landroidx/wear/widget/BoxInsetLayout;->166277962e993c138a6b1f0c9b571cc0m(Lemv;II)I

    move-result v3

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

    :goto_6c
    add-int/lit8 v10, v10, 0x1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_6d
    iget v1, v1, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget v4, v0, Lemv;->topMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_6f
    iget v3, v0, Lemv;->rightMargin:I

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    :goto_70
    if-eqz v1, :cond_7

    nop

    goto/32 :goto_9f

    nop

    nop

    :cond_7
    goto/32 :goto_1a

    nop

    nop

    :goto_71
    move/from16 v16, v10

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_72
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_73
    invoke-static {v14, v0}, Landroidx/wear/widget/BoxInsetLayout;->combineMeasuredStates(II)I

    move-result v14

    nop

    nop

    :goto_74
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_75
    iget v5, v5, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    :goto_76
    iget-object v1, v6, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_77
    iget-object v13, v6, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_78
    invoke-direct {v6, v2, v13, v0}, Landroidx/wear/widget/BoxInsetLayout;->33f5b80483094659737b73d90f80a8a4m(Lemv;II)I

    move-result v5

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_79
    invoke-direct {v6, v1, v0}, Landroidx/wear/widget/BoxInsetLayout;->23ce148e54b083367f51e25c7971761em(II)I

    move-result v0

    nop

    :goto_7a
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_7b
    add-int v0, v0, v19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_7c
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual/range {v0 .. v5}, Landroidx/wear/widget/BoxInsetLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    goto/32 :goto_24

    nop

    nop

    :goto_7e
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-direct {v6, v2, v13, v0}, Landroidx/wear/widget/BoxInsetLayout;->f875135777c17da3cef2ea6eeff5be29m(Lemv;II)I

    move-result v14

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget v1, v1, Landroid/graphics/Rect;->top:I

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_81
    move-object/from16 v6, p0

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_82
    move/from16 v8, p2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_83
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_84
    iget v1, v1, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :goto_85
    move/from16 v18, v3

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

    :goto_86
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_88
    if-gt v5, v4, :cond_8

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_8
    :goto_89
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    move v14, v13

    nop

    nop

    nop

    :goto_8b
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_8c
    invoke-virtual {v6, v10}, Landroidx/wear/widget/BoxInsetLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_8d
    move/from16 v17, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_8e
    const/4 v4, -0x1

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_90
    iget-boolean v2, v6, Landroidx/wear/widget/BoxInsetLayout;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_91
    add-int/2addr v0, v1

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_92
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_93
    goto/16 :goto_8b

    nop

    nop

    nop

    nop

    :goto_94
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    iget-object v2, v6, Landroidx/wear/widget/BoxInsetLayout;->f:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_96
    if-eqz v2, :cond_9

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

    :cond_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    iget v11, v11, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    if-eq v3, v4, :cond_a

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_99
    const/4 v3, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9a
    iget-object v1, v6, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getSuggestedMinimumHeight()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    and-int/2addr v1, v5

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

    nop

    :goto_9d
    and-int/lit8 v4, v4, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    goto/16 :goto_b3

    nop

    :goto_9f
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_a0
    move/from16 v19, v4

    nop

    nop

    :goto_a1
    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    add-int v0, v0, v16

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    add-int/2addr v12, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iget v2, v0, Lemv;->leftMargin:I

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

    :goto_a5
    invoke-static {v0, v8, v2}, Landroidx/wear/widget/BoxInsetLayout;->resolveSizeAndState(III)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    :goto_a6
    invoke-static {v1, v7, v14}, Landroidx/wear/widget/BoxInsetLayout;->resolveSizeAndState(III)I

    move-result v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    if-le v11, v5, :cond_b

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_a8
    move v12, v11

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-static {v12, v0}, Ljava/lang/Math;->max(II)I

    move-result v12

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    const v3, 0x800033

    nop

    nop

    nop

    nop

    :goto_ab
    goto/32 :goto_3b

    nop

    nop

    :goto_ac
    const/16 v1, 0x8

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

    :goto_ad
    invoke-virtual {v6, v1, v0}, Landroidx/wear/widget/BoxInsetLayout;->setMeasuredDimension(II)V

    goto/32 :goto_79

    nop

    nop

    :goto_ae
    add-int/2addr v4, v14

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    if-eqz v4, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_c
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_b0
    iget v3, v0, Lemv;->rightMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_b2
    iget v0, v0, Lemv;->bottomMargin:I

    nop

    :goto_b3
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    move v3, v10

    nop

    nop

    nop

    :goto_b5
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-virtual {v15}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    :goto_b7
    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    :goto_b8
    add-int/2addr v4, v5

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-static {v12, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_ba
    move-object v1, v15

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

    nop

    :goto_bb
    invoke-virtual {v6, v11}, Landroidx/wear/widget/BoxInsetLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v15

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual/range {p0 .. p0}, Landroidx/wear/widget/BoxInsetLayout;->getMeasuredWidth()I

    move-result v5

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Landroidx/wear/widget/BoxInsetLayout;->f:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1
    iput-object v0, p0, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    :goto_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Landroidx/wear/widget/BoxInsetLayout;->d:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Landroidx/wear/widget/BoxInsetLayout;->f:Landroid/graphics/drawable/Drawable;

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

    :goto_c
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_0

    nop

    nop

    :goto_d
    new-instance v0, Landroid/graphics/Rect;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method
