.class public final Lmm;
.super Landroid/view/View;
.source "PG"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final f:D


# instance fields
.field public final a:Landroid/graphics/drawable/ShapeDrawable;

.field public b:Landroid/content/res/ColorStateList;

.field public c:Landroid/graphics/drawable/Drawable;

.field public d:I

.field public e:I

.field private g:Landroid/graphics/drawable/RippleDrawable;

.field private final h:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_a

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x6

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

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sput-wide v0, Lmm;->f:D

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_c
    const v0, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_38

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v4}, Lmm;->b(I)V

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_5
    const v4, -0x333334

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    if-lt v2, v4, :cond_0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_8
    goto/16 :goto_38

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0, p1, v0, v1, v1}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, v2}, Lmm;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_c
    iput v4, p0, Lmm;->e:I

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

    :goto_d
    if-eq v4, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, v0, v2, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

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

    :goto_f
    const/4 v0, 0x1

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v5, 0x2

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_11
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v2, Lml;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_13
    iput v1, p0, Lmm;->e:I

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

    :goto_14
    const/high16 v3, 0x40000000    # 2.0f

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v4}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_16
    new-instance v2, Landroid/view/animation/AccelerateInterpolator;

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

    nop

    nop

    :goto_17
    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    goto/32 :goto_40

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_1c
    move v2, v1

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1e
    iget-object v5, p0, Lmm;->b:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_1f
    const/4 v4, -0x1

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {v2, v3}, Landroid/view/animation/AccelerateInterpolator;-><init>(F)V

    goto/32 :goto_53

    nop

    nop

    :goto_21
    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, v4}, Lmm;->a(F)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iput-object v4, p0, Lmm;->c:Landroid/graphics/drawable/Drawable;

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

    :goto_24
    if-eq v4, v5, :cond_2

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto :goto_1d

    nop

    nop

    :goto_26
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_38

    nop

    nop

    :goto_28
    goto/32 :goto_39

    nop

    nop

    :goto_29
    sget-object v2, Lmg;->d:[I

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

    :goto_2a
    const v1, 0x1c

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0, v3}, Lmm;->setClickable(Z)V

    goto/32 :goto_19

    nop

    nop

    :goto_2e
    iput-object v4, p0, Lmm;->b:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_2f
    if-eq v4, v5, :cond_3

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :cond_3
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_30
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p1, v5}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-super {p0, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v5, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v4

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v3

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/4 v5, 0x6

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_3a
    goto :goto_38

    nop

    :goto_3b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_3c
    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_1a

    nop

    nop

    :goto_3e
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_40
    iput-object v2, p0, Lmm;->a:Landroid/graphics/drawable/ShapeDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_41
    if-eq v4, v5, :cond_4

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_43
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_44
    iget v4, p0, Lmm;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_45
    if-eq v4, v5, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_5
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v5, 0x5

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

    :goto_47
    invoke-virtual {v5}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_48
    invoke-virtual {p1, v5, v4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_49
    move v3, v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4a
    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_4b
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_38

    nop

    :goto_4d
    goto/32 :goto_34

    nop

    nop

    :goto_4e
    invoke-direct {v2, p0}, Lml;-><init>(Lmm;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v4, p0, Lmm;->a:Landroid/graphics/drawable/ShapeDrawable;

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

    :goto_51
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3d

    nop

    :goto_52
    if-eqz v4, :cond_7

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_7
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_53
    iput-object v2, p0, Lmm;->h:Landroid/view/animation/Interpolator;

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
.end method

.method private static c(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    :goto_2
    goto/32 :goto_6

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

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    if-gtz v0, :cond_1

    nop

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

    nop

    nop

    :goto_8
    if-gtz p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method

.method private final da190e616797844b591057d0190e7728m(Landroid/animation/Animator;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmm;->h:Landroid/view/animation/Interpolator;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(F)V
    .locals 6

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

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

    :goto_1
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sget-object v1, Lmm;->PRESSED_ENABLED_STATE_SET:[I

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
    new-instance v0, Landroid/animation/StateListAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    new-array v2, v2, [F

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

    :goto_5
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    :cond_0
    goto/32 :goto_1e

    nop

    :goto_6
    invoke-virtual {v0, p1, v1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, v1, p1}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Landroid/animation/StateListAnimator;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1, v3}, Landroid/animation/StateListAnimator;->addState([ILandroid/animation/Animator;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_e
    const v0, 0x9

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    const-string v5, "translationZ"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_10
    aput v1, v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lmm;->getElevation()F

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_13
    invoke-static {p0, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_14
    aput p1, v3, v4

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

    :goto_15
    invoke-direct {p0, v3}, Lmm;->da190e616797844b591057d0190e7728m(Landroid/animation/Animator;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {p0, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v1, Lmm;->ENABLED_FOCUSED_STATE_SET:[I

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    aput p1, v3, v4

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    sget-object p1, Lmm;->EMPTY_STATE_SET:[I

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

    :goto_1a
    new-array v3, v2, [F

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_1b
    new-array v3, v2, [F

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v0}, Lmm;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    goto/32 :goto_8

    nop

    nop

    :goto_1e
    goto/32 :goto_9

    nop

    nop

    :goto_1f
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p0, v5, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

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

    :goto_21
    invoke-direct {p0, p1}, Lmm;->da190e616797844b591057d0190e7728m(Landroid/animation/Animator;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0, v1}, Lmm;->da190e616797844b591057d0190e7728m(Landroid/animation/Animator;)V

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final b(I)V
    .locals 2

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lmm;->g:Landroid/graphics/drawable/RippleDrawable;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p1, p0, Lmm;->a:Landroid/graphics/drawable/ShapeDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lmm;->g:Landroid/graphics/drawable/RippleDrawable;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    iget-object v1, p0, Lmm;->a:Landroid/graphics/drawable/ShapeDrawable;

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
    iput-object v0, p0, Lmm;->g:Landroid/graphics/drawable/RippleDrawable;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    :goto_b
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_2
    goto/32 :goto_13

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lmm;->isInEditMode()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_12
    if-ne p1, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_15
    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

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

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_d

    nop

    nop

    :goto_19
    invoke-super {p0, p1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1a
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1e
    invoke-direct {v0, p1, v1, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-super {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop
.end method

.method protected final drawableStateChanged()V
    .locals 4

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    iget-object v1, p0, Lmm;->b:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    const v1, 0x15

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

    :goto_2
    iget-object v0, p0, Lmm;->a:Landroid/graphics/drawable/ShapeDrawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lmm;->b:Landroid/content/res/ColorStateList;

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

    :goto_5
    invoke-virtual {p0}, Lmm;->getDrawableState()[I

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lmm;->a:Landroid/graphics/drawable/ShapeDrawable;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_8
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v1

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b
    invoke-super {p0}, Landroid/view/View;->drawableStateChanged()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto/32 :goto_6

    nop

    nop

    :goto_d
    iget-object v3, p0, Lmm;->b:Landroid/content/res/ColorStateList;

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

    :goto_e
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    :goto_11
    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

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

    :goto_12
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Landroid/graphics/drawable/ShapeDrawable;->invalidateSelf()V

    :goto_15
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_19

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

    goto/32 :goto_7

    nop

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method

.method protected final onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    goto/32 :goto_5

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :goto_1
    iget-object p0, p0, Lmm;->c:Landroid/graphics/drawable/Drawable;

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
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 5

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    mul-double/2addr p2, p4

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_1
    add-int/2addr p2, p3

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v1, p0, Lmm;->e:I

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_3
    add-int/2addr p2, p3

    nop

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

    nop

    :goto_4
    div-float/2addr p4, v1

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_5
    int-to-float p4, p2

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_6
    move v3, p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_3a

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_9
    int-to-double p2, p2

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p2, p3, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    move p1, p2

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_e
    move p2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_f
    int-to-float p3, p5

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_12
    div-float/2addr p2, v2

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

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_0
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p0, p0, Lmm;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_17
    int-to-float v1, p1

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, p3, p4, p2, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_19
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1a
    move p4, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_1b
    float-to-int p2, p2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lmm;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    move p1, v3

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_1f
    sub-int/2addr p4, p1

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_20
    add-int/2addr p1, p2

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_21
    float-to-int p4, p4

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

    :goto_22
    const v0, 0x12

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_23
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lmm;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_25
    int-to-float p5, v0

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

    nop

    nop

    :goto_26
    sub-int p4, p2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_14

    nop

    nop

    :goto_28
    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    float-to-int p4, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2a
    iget-object p0, p0, Lmm;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_2

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_27

    nop

    :goto_2c
    invoke-static {p4}, Lmm;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result p4

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_2d
    sub-int/2addr p3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_2e
    double-to-int p2, p2

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_2f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_30
    if-gt p1, v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    :goto_31
    sub-int/2addr p4, p2

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_33
    div-float/2addr v1, p5

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget p3, p0, Lmm;->d:I

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object p4, p0, Lmm;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p0, p3, p3, p2, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_37
    move v4, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    int-to-float p2, p4

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_39
    move p3, v4

    nop

    nop

    :goto_3a
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3b
    float-to-int p3, p3

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v0, p0, Lmm;->c:Landroid/graphics/drawable/Drawable;

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

    :goto_3d
    invoke-static {v1}, Lmm;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result v1

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_3e
    if-eq p1, v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3f
    add-int/2addr v0, p3

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_40
    iget-object p1, p0, Lmm;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_41
    div-float/2addr p4, v2

    nop

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

    :goto_42
    sub-int/2addr p5, v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_44
    sub-int/2addr p5, p3

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_45
    if-eqz p4, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_46
    sget-wide p4, Lmm;->f:D

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_47
    div-int/lit8 p2, p2, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_48
    int-to-float p4, p4

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

    :goto_49
    const/high16 v2, 0x40000000    # 2.0f

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_4a
    sub-int p4, p2, p1

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_4b
    float-to-int p1, p4

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_4c
    move p4, p3

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_4d
    int-to-float p4, p4

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_4e
    invoke-static {p2, p3}, Ljava/lang/Math;->floor(D)D

    move-result-wide p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_4f
    goto/16 :goto_3a

    nop

    nop

    :goto_50
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_51
    div-float/2addr p4, v2

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_52
    mul-float/2addr p4, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_53
    div-int/lit8 p3, p3, 0x2

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

    nop

    :goto_54
    add-int/2addr p1, p4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_55
    if-eqz v1, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    :cond_6
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    div-float/2addr p3, v2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_59
    iget p2, p0, Lmm;->d:I

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_5a
    float-to-int p1, p4

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    return-void

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_5d
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 5

    goto/32 :goto_1c

    nop

    nop

    :goto_0
    goto :goto_9

    nop

    :goto_1
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

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

    :goto_4
    invoke-static {v2}, Lmm;->c(Landroid/graphics/drawable/Drawable;)Z

    move-result v2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    iput v2, p0, Lmm;->d:I

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

    :goto_6
    sget-wide v2, Lmm;->f:D

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_7
    const/high16 v4, 0x42400000    # 48.0f

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

    nop

    :goto_8
    iput p1, p0, Lmm;->d:I

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_a
    if-ne v1, v3, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lmm;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_d
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_e
    move p1, v2

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v3, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    iget-object v2, p0, Lmm;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_13
    iput p2, p0, Lmm;->d:I

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    move p1, p2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    if-ne v0, v3, :cond_2

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    :goto_1c
    const v0, 0x1f

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    div-double/2addr v0, v2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1f
    if-eq v1, v2, :cond_3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_20
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_21
    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eq v0, v2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    :goto_23
    const/high16 v2, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_25
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

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

    nop

    nop

    :goto_26
    float-to-double v2, v2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_27
    goto/16 :goto_3c

    nop

    nop

    :goto_28
    goto/32 :goto_b

    nop

    nop

    :goto_29
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2a
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2d
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_2e
    invoke-virtual {p0, p1, p1}, Lmm;->setMeasuredDimension(II)V

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_2f
    if-eq v1, v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :cond_5
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/high16 v3, -0x80000000

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_32
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_f

    nop

    :goto_33
    int-to-double v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_34
    double-to-int p2, v0

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    add-int/2addr p2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_36
    if-eq v1, v3, :cond_7

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_9

    nop

    :goto_38
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move p1, p2

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v2, p0, Lmm;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3b
    double-to-int v2, v2

    nop

    nop

    nop

    :goto_3c
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3f
    iget-object v3, p0, Lmm;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_40
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto :goto_47

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_5

    nop

    nop

    :goto_43
    goto/16 :goto_9

    nop

    nop

    :goto_44
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_45
    iput p1, p0, Lmm;->d:I

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

    :goto_46
    goto/16 :goto_9

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_48

    nop

    nop

    :goto_48
    if-ne v0, v3, :cond_8

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-eq v0, v2, :cond_9

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_4b
    iput p1, p0, Lmm;->d:I

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_4c
    move v0, v2

    nop

    :goto_4d
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lmm;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    and-int/lit16 v1, v1, 0xff

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    goto :goto_b

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xe

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_7
    rem-int v0, v0, v1

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

    :goto_8
    add-int v0, v0, v1

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

    :goto_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

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

    :goto_a
    return p0

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    return v0

    nop

    :goto_d
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p0, 0x1

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

    :goto_f
    goto/32 :goto_d

    nop

    nop

    :goto_10
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

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

    nop

    :goto_12
    invoke-virtual {p0, v0, p1}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

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

    :goto_15
    goto/32 :goto_10

    nop

    nop

    :goto_16
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    return-void

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
    return p0

    nop

    :goto_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    if-ne v0, p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_7

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

    nop

    :goto_4
    goto :goto_1

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lmm;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    invoke-super {p0, p1}, Landroid/view/View;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p0, :cond_1

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

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method
