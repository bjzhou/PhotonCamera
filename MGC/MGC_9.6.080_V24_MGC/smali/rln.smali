.class public Lrln;
.super Landroid/widget/FrameLayout;
.source "PG"


# static fields
.field private static final h:Landroid/view/View$OnTouchListener;


# instance fields
.field public a:Lrlo;

.field b:Lrku;

.field public c:I

.field public final d:F

.field public final e:I

.field public f:Landroid/graphics/Rect;

.field public g:Z

.field private final i:F

.field private final j:I

.field private k:Landroid/content/res/ColorStateList;

.field private l:Landroid/graphics/PorterDuff$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lrlm;-><init>()V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lrln;->h:Landroid/view/View$OnTouchListener;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lrlm;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1, v0}, Lrln;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method protected constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5

    goto/32 :goto_19

    nop

    nop

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p1, p0, Lrln;->k:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    new-instance v0, Lrkp;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v3, 0x4

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_9
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

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

    :goto_a
    const/4 v2, 0x7

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_c
    invoke-static {p0, v1}, Lrgw;->f(Landroid/view/View;I)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_d
    const/4 v3, -0x1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p1, p2, v0, v0}, Lrmt;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_11
    invoke-static {p1, v1, p2}, Lrgw;->h(IIF)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_12
    const/16 v2, 0x9

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_13
    invoke-static {p1, p2, v0, v0}, Lrku;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Lrkt;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_14
    const v1, 0x7f040198

    nop

    nop

    nop

    goto/32 :goto_c

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

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_16
    invoke-virtual {p0, v0}, Lrln;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_17
    goto/32 :goto_1e

    nop

    nop

    :goto_18
    invoke-static {p1, v1, v3}, Lqqy;->g(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0xe

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_1a
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 p2, 0x3

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

    :goto_1d
    iput v2, p0, Lrln;->j:I

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1e
    return-void

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_4b

    nop

    nop

    :goto_21
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_22
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_23
    invoke-static {p0, v2}, Ldvw;->i(Landroid/view/View;F)V

    :goto_24
    goto/32 :goto_2e

    nop

    nop

    :goto_25
    const/4 v2, 0x6

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez p2, :cond_1

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

    :cond_1
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v1, p2, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_29
    invoke-static {p0, p1}, Lrgw;->f(Landroid/view/View;I)I

    move-result p1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2a
    sget-object v1, Lrlo;->b:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1, p1, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_2c
    if-nez p1, :cond_2

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {p1, v4}, La;->n(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v2, 0x2

    nop

    goto/32 :goto_57

    nop

    nop

    :goto_2f
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    nop

    goto/32 :goto_4d

    nop

    nop

    :goto_30
    invoke-virtual {v1, p1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_31
    if-nez v2, :cond_3

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

    :cond_3
    :goto_32
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0, v1}, Lrln;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_34
    const/4 p1, 0x5

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_35
    const v1, 0x7f070668

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    new-instance v1, Landroid/graphics/drawable/GradientDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v0, 0x0

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

    :goto_38
    if-nez v3, :cond_4

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_40

    nop

    nop

    :goto_39
    iput p2, p0, Lrln;->i:F

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_3a
    const p1, 0x7f0401c5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_3b
    if-eqz p1, :cond_5

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

    :cond_5
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p0, p1}, Lrln;->setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_3e
    int-to-float v2, v2

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_3f
    iput v2, p0, Lrln;->c:I

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_40
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_41
    invoke-direct {v2, p2}, Lrku;-><init>(Lrkt;)V

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_42
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0}, Lrln;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_45
    const v1, 0x1b

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v0, p1}, Lrkp;->n(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-direct {v0, p2}, Lrkp;-><init>(Lrku;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v1, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const/4 p1, 0x1

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

    :goto_4a
    move-object v0, v1

    nop

    :goto_4b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4c
    invoke-direct {v1}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    goto/32 :goto_f

    nop

    nop

    :goto_4d
    if-eqz v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_6
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p0, p1}, Lrln;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iput v2, p0, Lrln;->e:I

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_50
    sget-object v0, Lrlo;->b:Ljava/lang/String;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_51
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_52
    new-instance v2, Lrku;

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

    :goto_53
    iput-object v2, p0, Lrln;->b:Lrku;

    nop

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_55
    iget-object p2, p0, Lrln;->b:Lrku;

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_56
    iput v2, p0, Lrln;->d:F

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {v1, v2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_58
    sget-object v1, Lrln;->h:Landroid/view/View$OnTouchListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p0}, Lrln;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_5b
    goto/32 :goto_4

    nop

    nop

    :goto_5c
    invoke-virtual {p0, p1}, Lrln;->setFocusable(Z)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

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

    nop

    :goto_5e
    sget-object v1, Lrlp;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5f
    invoke-virtual {p0}, Lrln;->getContext()Landroid/content/Context;

    move-result-object p1

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
.end method


# virtual methods
.method protected final onAttachedToWindow()V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getMandatorySystemGestureInsets()Landroid/graphics/Insets;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lrln;->a:Lrlo;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_d

    nop

    :goto_3
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v1}, Lrln;->getRootWindowInsets()Landroid/view/WindowInsets;

    move-result-object v1

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

    :goto_5
    const v0, 0x5

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Ldvu;->l(Landroid/view/View;)V

    goto/32 :goto_c

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    :goto_8
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v1, :cond_2

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    goto/32 :goto_1

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lrlo;->f()V

    :goto_10
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput v1, v0, Lrlo;->o:I

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_14
    iget-object v1, v0, Lrlo;->j:Lrln;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_15
    iget v1, v1, Landroid/graphics/Insets;->bottom:I

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method

.method protected final onDetachedFromWindow()V
    .locals 5

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    invoke-static {}, Lrlt;->a()Lrlt;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

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

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x16

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    :try_start_0
    monitor-exit v1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v1, v0, Lrlt;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lrln;->a:Lrlo;

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

    :goto_8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v1, p0, v2, v3}, Lqxb;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    :goto_e
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_f
    monitor-enter v1

    nop

    :try_start_1
    invoke-virtual {v0, v2}, Lrlt;->g(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x1

    nop

    nop

    nop

    if-nez v3, :cond_3

    nop

    invoke-virtual {v0, v2}, Lrlt;->h(Landroidx/wear/ambient/AmbientModeSupport$AmbientController;)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_2

    nop

    nop

    goto :goto_10

    nop

    :cond_2
    const/4 v4, 0x0

    nop

    nop

    :cond_3
    :goto_10
    monitor-exit v1

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v2, 0xc

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

    :goto_12
    add-int v0, v0, v1

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

    :goto_13
    new-instance v1, Lqxb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_14
    const v1, 0x12

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

    :goto_15
    iget-object v2, p0, Lrlo;->s:Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    goto/32 :goto_f

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
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_4

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_b

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1a
    sget-object v0, Lrlo;->a:Landroid/os/Handler;

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

    nop

    :goto_1b
    goto/32 :goto_c

    nop

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrln;->a:Lrlo;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean p1, p0, Lrlo;->q:Z

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

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
    const/4 p1, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    iput-boolean p1, p0, Lrlo;->q:Z

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    :goto_7
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    invoke-virtual {p0}, Lrlo;->e()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected onMeasure(II)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    const/high16 p1, 0x40000000    # 2.0f

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    if-gtz p1, :cond_0

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

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    iget v0, p0, Lrln;->j:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    iget p1, p0, Lrln;->j:I

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

    :goto_7
    invoke-virtual {p0}, Lrln;->getMeasuredWidth()I

    move-result p1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto/32 :goto_6

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

    nop

    nop

    :goto_a
    if-gt p1, v0, :cond_1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lrln;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lrln;->k:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lrln;->l:Landroid/graphics/PorterDuff$Mode;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p1, :cond_0

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

    :cond_0
    goto/32 :goto_6

    nop

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
    iget-object v0, p0, Lrln;->k:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :goto_9
    goto/32 :goto_3

    nop

    nop

    :goto_a
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p1

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
.end method

.method public final setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrln;->k:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p1, p0, Lrln;->l:Landroid/graphics/PorterDuff$Mode;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lrln;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lrln;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b

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

    nop

    :goto_8
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_9
    goto/32 :goto_7

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lrln;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_b
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    if-ne v0, p1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop
.end method

.method public final setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lrln;->getBackground()Landroid/graphics/drawable/Drawable;

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

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrln;->l:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lrln;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_5
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_7
    if-ne v0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lrln;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

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
    return-void

    nop

    nop

    :goto_a
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
    goto/32 :goto_3

    nop

    nop
.end method

.method public final setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    instance-of v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    goto/32 :goto_6

    nop

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
    iget v3, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    new-instance v0, Landroid/graphics/Rect;

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

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_5
    iget-boolean v0, p0, Lrln;->g:Z

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    iget v2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

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
    iget-object p0, p0, Lrln;->a:Lrlo;

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

    :goto_a
    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    goto/32 :goto_3

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

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Lrln;->f:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget p1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

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

    :goto_e
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    iget v1, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1a

    nop

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p0, :cond_2

    nop

    goto/32 :goto_17

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

    :goto_14
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v1, 0xb

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lrlo;->f()V

    :goto_17
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-direct {v0, v1, v2, v3, p1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto/32 :goto_c

    nop

    nop

    :goto_19
    return-void

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_1

    nop

    nop
.end method

.method public final setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p1, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    invoke-virtual {p0, v0}, Lrln;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/32 :goto_6

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    sget-object v0, Lrln;->h:Landroid/view/View$OnTouchListener;

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method
