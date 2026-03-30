.class public Lcom/google/android/material/card/MaterialCardView;
.super Landroidx/cardview/widget/CardView;
.source "PG"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lrld;


# static fields
.field private static final h:[I

.field private static final i:[I


# instance fields
.field public g:Z

.field private final j:Lrgj;

.field private k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_6

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

    :goto_1
    sput-object v0, Lcom/google/android/material/card/MaterialCardView;->i:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    filled-new-array {v0}, [I

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    filled-new-array {v0}, [I

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    sput-object v0, Lcom/google/android/material/card/MaterialCardView;->h:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    const v0, 0x10100a0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_6
    const v0, 0x101009f

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
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_1

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
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

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

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x7f040498

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/card/MaterialCardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7

    goto/32 :goto_8c

    nop

    nop

    nop

    :goto_0
    iput-object v2, p0, Lcom/google/android/material/card/MaterialCardView;->j:Lrgj;

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_2
    invoke-static {p0, v1, p2}, Lqqy;->g(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p0

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

    :goto_3
    iget-object p1, p1, Ldyb;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p3, v2, Lrgj;->c:Lrkp;

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_6
    iget-object p0, v2, Lrgj;->j:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_7
    iput-object p0, v2, Lrgj;->l:Landroid/content/res/ColorStateList;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p1, v2, Lrgj;->i:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object p0, v2, Lrgj;->a:Lcom/google/android/material/card/MaterialCardView;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p2, v2, Lrgj;->l:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x7f1508d6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    :goto_c
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    :cond_0
    goto/32 :goto_33

    nop

    :goto_d
    invoke-virtual {p2, p0}, Lcom/google/android/material/card/MaterialCardView;->setLongClickable(Z)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_e
    const/4 p2, 0x2

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_f
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    :cond_1
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v3, Lrgk;->b:[I

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2}, Lrgj;->c()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p3, v2, Lrgj;->j:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object p0, v2, Lrgj;->c:Lrkp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_14
    invoke-virtual {p0, p1}, Lrkp;->m(F)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move v4, p3

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_17
    iget-object p0, v2, Lrgj;->a:Lcom/google/android/material/card/MaterialCardView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v4, v2, Lrgj;->b:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_1a
    iget-object p2, v2, Lrgj;->d:Lrkp;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_1b
    iget-boolean p0, p0, Lcom/google/android/material/card/MaterialCardView;->g:Z

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_1c
    const/4 p0, 0x3

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_1d
    iget-object p0, v2, Lrgj;->a:Lcom/google/android/material/card/MaterialCardView;

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object p0, v2, Lrgj;->a:Lcom/google/android/material/card/MaterialCardView;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object p0, v2, Lrgj;->k:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput p0, v2, Lrgj;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_21
    move-object v2, p2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p0, v2, Lrgj;->n:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, p2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v2}, Lrgj;->h()V

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_28
    iget-object p0, p0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_29
    iput-boolean p0, v2, Lrgj;->r:Z

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_2a
    invoke-virtual {v2}, Lrgj;->n()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    iput-object p0, v2, Lrgj;->i:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p1, v2, Lrgj;->c:Lrkp;

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1, p0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v2, p1}, Lrgj;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_2f
    const p2, 0x800035

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

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

    nop

    :goto_31
    iget v3, v3, Landroid/graphics/Rect;->right:I

    nop

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

    :goto_32
    invoke-virtual {v1, p1, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

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

    :goto_33
    goto/32 :goto_7e

    nop

    :goto_34
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 p2, 0x7

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iput-object p0, v2, Lrgj;->k:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    :goto_39
    iget-object p0, v2, Lrgj;->p:Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    goto/16 :goto_76

    nop

    :goto_3b
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v1, p0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :goto_3d
    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->k:Z

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object p2, p0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_3f
    const/4 p2, 0x6

    nop

    goto/32 :goto_82

    nop

    nop

    :goto_40
    const p2, 0x7f0b02d7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_41
    iput-object p0, v2, Lrgj;->n:Landroid/content/res/ColorStateList;

    nop

    :goto_42
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v1, p0, p1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_44
    iget-object p2, v2, Lrgj;->a:Lcom/google/android/material/card/MaterialCardView;

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

    :goto_45
    invoke-static {p0, v1, v0}, Lqqy;->g(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_46
    invoke-virtual {v2}, Lrgj;->i()V

    goto/32 :goto_17

    nop

    nop

    :goto_47
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/RippleDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    :goto_49
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    invoke-virtual {v4, p2, p3, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_26

    nop

    nop

    :goto_4b
    iput-object p0, v2, Lrgj;->j:Landroid/graphics/drawable/Drawable;

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

    :goto_4c
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_4d
    check-cast p1, Landroid/view/View;

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {v2, p1}, Lrgj;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_50
    iget-object p0, v2, Lrgj;->k:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_51
    check-cast p0, Landroid/graphics/drawable/RippleDrawable;

    nop

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

    :goto_52
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    nop

    nop

    :goto_53
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_54
    iget-object p0, v2, Lrgj;->o:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p3, p2}, Lrkp;->n(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    const p2, 0x7f040175

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p2, p0}, Lrkp;->n(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v2, p0, p1}, Lrgj;->e(ZZ)V

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    iget-object p0, v2, Lrgj;->a:Lcom/google/android/material/card/MaterialCardView;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_5a
    invoke-static/range {v1 .. v6}, Lric;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_5b
    invoke-static {p0, p2}, Lrgw;->f(Landroid/view/View;I)I

    move-result p0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object v1

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

    :goto_5d
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_5e
    invoke-direct {v2, p0, p2, p3}, Lrgj;-><init>(Lcom/google/android/material/card/MaterialCardView;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    const/16 p2, 0xb

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object p1, v2, Lrgj;->k:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_61
    iget-object p0, v2, Lrgj;->a:Lcom/google/android/material/card/MaterialCardView;

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_62
    invoke-virtual {p1}, Landroid/view/View;->getElevation()F

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_63
    const/4 p0, -0x1

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object p0, v2, Lrgj;->d:Lrkp;

    nop

    nop

    nop

    nop

    nop

    :goto_65
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_66
    if-eqz p0, :cond_2

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_87

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_68
    if-nez p0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget-object p0, v2, Lrgj;->a:Lcom/google/android/material/card/MaterialCardView;

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget p3, p3, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_6b
    if-eqz p0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    iput p0, v2, Lrgj;->h:I

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object p2, p2, Ldyb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    :goto_6e
    invoke-direct {p0, p1, p2, p3}, Landroidx/cardview/widget/CardView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6f
    goto/16 :goto_65

    nop

    nop

    nop

    :goto_70
    goto/32 :goto_64

    nop

    nop

    :goto_71
    iget-object v3, p0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_72
    iput p0, v2, Lrgj;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    :goto_73
    if-nez p0, :cond_5

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v1, p0, p2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_75
    iput-object p0, v2, Lrgj;->j:Landroid/graphics/drawable/Drawable;

    nop

    nop

    :goto_76
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_77
    iget-object p1, v2, Lrgj;->a:Lcom/google/android/material/card/MaterialCardView;

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_79
    const v5, 0x7f1508d6

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_7a
    const/16 p0, 0xc

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

    :goto_7b
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->getContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget p2, p2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    :goto_7d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iput-object p0, v2, Lrgj;->n:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_80
    iget-object p1, p1, Landroidx/cardview/widget/CardView;->e:Ldyb;

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

    :goto_81
    iget-object p2, p0, Landroidx/cardview/widget/CardView;->e:Ldyb;

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_82
    invoke-static {p0, v1, p2}, Lqqy;->g(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_83
    new-array v6, p1, [I

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_84
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_85
    iget-object p3, p0, Landroidx/cardview/widget/CardView;->c:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_86
    add-int v0, v0, v1

    nop

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

    :goto_87
    iget-object p0, v2, Lrgj;->a:Lcom/google/android/material/card/MaterialCardView;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_88
    new-instance v2, Lrgj;

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

    :goto_89
    iput-boolean p1, p0, Lcom/google/android/material/card/MaterialCardView;->g:Z

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_8a
    iget-object p2, p2, Lwm;->e:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8b
    invoke-static {p0, v1, p2}, Lqqy;->g(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    const v0, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-static {p0, v1, p2}, Lqqy;->h(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

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

    :goto_8e
    if-nez p0, :cond_6

    nop

    nop

    goto/32 :goto_49

    nop

    :cond_6
    goto/32 :goto_60

    nop

    nop

    nop

    :goto_8f
    iput p0, v2, Lrgj;->g:I

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    const/4 p0, 0x4

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

    :goto_91
    invoke-virtual {p0, p2, p3}, Landroid/graphics/drawable/LayerDrawable;->setDrawableByLayerId(ILandroid/graphics/drawable/Drawable;)Z

    :goto_92
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_93
    iget-object p0, v2, Lrgj;->a:Lcom/google/android/material/card/MaterialCardView;

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    if-eqz p0, :cond_7

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

    :cond_7
    goto/32 :goto_63

    nop

    nop

    :goto_95
    const/4 p0, 0x5

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_96
    invoke-static {p0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    :goto_97
    check-cast p2, Lwm;

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_98
    invoke-static {p1, p2, p3, v0}, Lrmt;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final c(F)V
    .locals 2

    goto/32 :goto_1e

    nop

    nop

    :goto_0
    if-eqz p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p1, v0}, Landroidx/cardview/widget/CardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    :goto_4
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_5
    iget-object v0, v0, Ldyb;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lrgj;->l()Z

    move-result p1

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

    :goto_7
    invoke-virtual {p0}, Lrgj;->m()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lwm;->invalidateSelf()V

    :goto_9
    goto/32 :goto_24

    nop

    nop

    :goto_a
    invoke-virtual {v0, p1}, Lrku;->e(F)Lrku;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lrgj;->i:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_c
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Landroidx/cardview/widget/CardView;->e:Ldyb;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    goto/32 :goto_2c

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_9

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

    nop

    :goto_11
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_12
    iget-object p1, p0, Lrgj;->a:Lcom/google/android/material/card/MaterialCardView;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Lrgj;->h()V

    :goto_15
    goto/32 :goto_1f

    nop

    nop

    :goto_16
    iput p1, v0, Lwm;->a:F

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

    :goto_17
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    :goto_18
    iget-object p1, p0, Lrgj;->i:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

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

    :goto_1a
    const v1, 0x8

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

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

    :goto_1c
    invoke-virtual {v0, v1}, Lwm;->a(Landroid/graphics/Rect;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1d
    check-cast v0, Lwm;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p0}, Lrgj;->m()Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_20
    iget-boolean p1, p0, Lrgj;->q:Z

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

    :goto_21
    iget-object v0, p0, Lrgj;->m:Lrku;

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

    :goto_22
    invoke-virtual {p0, v0}, Lrgj;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_24
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->j:Lrgj;

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_25
    invoke-virtual {p1, p0}, Lcom/google/android/material/card/MaterialCardView;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_26
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_27
    iget-object p1, p0, Lrgj;->a:Lcom/google/android/material/card/MaterialCardView;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_28
    iget v1, v0, Lwm;->a:F

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0, p1}, Lrgj;->f(Lrku;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    cmpl-float v1, p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    :goto_2c
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_f

    nop

    :goto_2e
    invoke-virtual {p0, v0}, Lrgj;->d(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v0, p0, Lrgj;->c:Lrkp;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop
.end method

.method public final d(Lrku;)V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Lrku;->g(Landroid/graphics/RectF;)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v0}, Lcom/google/android/material/card/MaterialCardView;->setClipToOutline(Z)V

    goto/32 :goto_13

    nop

    nop

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    :goto_9
    iget-object v1, p0, Lcom/google/android/material/card/MaterialCardView;->j:Lrgj;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Landroid/graphics/RectF;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v1, 0x7

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

    nop

    nop

    :goto_d
    iget-object v1, v1, Lrgj;->c:Lrkp;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    invoke-virtual {v1}, Lrkp;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_11
    invoke-virtual {p0, p1}, Lrgj;->f(Lrku;)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_12
    const v0, 0x1a

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->j:Lrgj;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop
.end method

.method public final e(I)V
    .locals 2

    goto/32 :goto_a

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

    :goto_1
    goto/32 :goto_b

    nop

    nop

    :goto_2
    iget-object v1, v0, Lrgj;->n:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->j:Lrgj;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4
    if-ne v1, p1, :cond_0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    :goto_a
    const v0, 0x1b

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
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    iput-object p1, v0, Lrgj;->n:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->invalidate()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lrgj;->i()V

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v1, 0x3

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
.end method

.method public final f()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->j:Lrgj;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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
    iget-boolean p0, p0, Lrgj;->r:Z

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    return p0

    nop

    nop

    nop

    :goto_4
    return p0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

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

    :goto_8
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final isChecked()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean p0, p0, Lcom/google/android/material/card/MaterialCardView;->g:Z

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

    :goto_1
    return p0

    nop

    nop

    nop
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v0}, Lrkm;->d(Landroid/view/View;Lrkp;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-super {p0}, Landroidx/cardview/widget/CardView;->onAttachedToWindow()V

    goto/32 :goto_5

    nop

    nop

    :goto_3
    iget-object v0, v0, Lrgj;->c:Lrkp;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->j:Lrgj;

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

    :goto_5
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->j:Lrgj;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lrgj;->g()V

    goto/32 :goto_4

    nop

    nop
.end method

.method protected final onCreateDrawableState(I)[I
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-static {p1, v0}, Lcom/google/android/material/card/MaterialCardView;->mergeDrawableStates([I[I)[I

    :goto_1
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->onCreateDrawableState(I)[I

    move-result-object p1

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

    :goto_3
    sget-object v0, Lcom/google/android/material/card/MaterialCardView;->h:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    sget-object p0, Lcom/google/android/material/card/MaterialCardView;->i:[I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 p1, p1, 0x3

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
    invoke-static {p1, p0}, Lcom/google/android/material/card/MaterialCardView;->mergeDrawableStates([I[I)[I

    :goto_8
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    return-object p1

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->f()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    iget-boolean p0, p0, Lcom/google/android/material/card/MaterialCardView;->g:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v0, Lcom/google/android/apps/camera/keepalive/Rkn/deLMIrA;->nBHz:Ljava/lang/String;

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
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-boolean p0, p0, Lcom/google/android/material/card/MaterialCardView;->g:Z

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iget-boolean p0, p0, Lcom/google/android/material/card/MaterialCardView;->g:Z

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->f()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_5

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
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
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

    nop

    :goto_7
    sget-object v0, Lcom/google/android/clockwork/common/wearable/wearmaterial/drawable/uK/JLjgPsjc;->luX:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isClickable()Z

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/32 :goto_6

    nop

    nop

    :goto_a
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 10

    goto/32 :goto_14

    nop

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

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lrgj;->k()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_2
    move v6, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_3
    move v7, p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    move v9, v3

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->j:Lrgj;

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_6
    sub-int/2addr v2, v1

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    :goto_9
    iget v3, p0, Lrgj;->f:I

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

    nop

    nop

    :goto_a
    goto/16 :goto_2d

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_2c

    nop

    nop

    :goto_c
    iget v3, p0, Lrgj;->e:I

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_d
    sub-int/2addr p1, v3

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
    iget-object p2, p0, Lrgj;->a:Lcom/google/android/material/card/MaterialCardView;

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_f
    sub-int/2addr p1, v1

    nop

    nop

    :goto_10
    goto/32 :goto_33

    nop

    nop

    :goto_11
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_51

    nop

    :cond_0
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_12
    double-to-int v0, v0

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_13
    sub-int/2addr p2, v0

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

    :goto_14
    const v0, 0xe

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

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->getMeasuredHeight()I

    move-result p2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lrgj;->b()F

    move-result v0

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_17
    if-eq p2, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_58

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_57

    nop

    nop

    :goto_1a
    sub-int/2addr p2, v1

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    sub-int/2addr v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    sub-int v3, p2, v3

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    :goto_1e
    iget p1, p0, Lrgj;->e:I

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget v2, p0, Lrgj;->e:I

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_28

    nop

    nop

    :goto_21
    const v1, 0x13

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_10

    nop

    nop

    :goto_23
    goto/32 :goto_54

    nop

    nop

    nop

    :goto_24
    iget v2, p0, Lrgj;->e:I

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_25
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Lrgj;->k()Z

    move-result v2

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

    :goto_27
    invoke-virtual {p0}, Lrgj;->a()F

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Lrgj;->j()Z

    move-result v3

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    move v6, p1

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Lrgj;->a:Lcom/google/android/material/card/MaterialCardView;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_2c
    iget p2, p0, Lrgj;->e:I

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_3

    nop

    nop

    :goto_2e
    goto/16 :goto_53

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-ne p2, v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    :goto_31
    sub-int v2, p1, v2

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_32
    if-nez v3, :cond_4

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Lrgj;->j()Z

    move-result v1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_34
    iget-boolean v0, v0, Landroidx/cardview/widget/CardView;->a:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v4, p0, Lrgj;->p:Landroid/graphics/drawable/LayerDrawable;

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

    nop

    :goto_36
    iget v3, p0, Lrgj;->e:I

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

    :goto_37
    iget-object v0, p0, Lrgj;->p:Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_38
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    sub-int/2addr v3, v0

    nop

    :goto_3a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    sub-int/2addr p1, v3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    move v8, v2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual/range {v4 .. v9}, Landroid/graphics/drawable/LayerDrawable;->setLayerInset(IIIII)V

    :goto_3e
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_3f
    double-to-int v1, v1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    sub-int/2addr v2, v3

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_41
    sub-int/2addr p2, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_42
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_5
    goto/32 :goto_2b

    nop

    nop

    :goto_43
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_5f

    nop

    :goto_44
    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_45
    iget v3, p0, Lrgj;->f:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_46
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->getMeasuredWidth()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-float/2addr v0, v0

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    float-to-double v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_4a
    goto/16 :goto_2a

    nop

    nop

    :goto_4b
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4c
    if-nez v1, :cond_7

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_4d
    if-nez v3, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_8
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_20

    nop

    :goto_51
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_52
    move v1, v0

    nop

    :goto_53
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_54
    iget v3, p0, Lrgj;->e:I

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_57
    move v8, p1

    nop

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_59
    float-to-double v0, v0

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_5a
    iget v1, p0, Lrgj;->e:I

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_5b
    add-float/2addr v1, v1

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const/4 v5, 0x2

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_5d
    iget v1, p0, Lrgj;->f:I

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iget v4, p0, Lrgj;->f:I

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_60
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-super {p0, p1, p2}, Landroidx/cardview/widget/CardView;->onMeasure(II)V

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_62
    invoke-virtual {p2}, Lcom/google/android/material/card/MaterialCardView;->getLayoutDirection()I

    move-result p2

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
.end method

.method public final setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/card/MaterialCardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_1
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v1, :cond_1

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

    nop

    :goto_4
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->k:Z

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

    :goto_5
    iput-boolean v1, v0, Lrgj;->q:Z

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_2

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

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_a
    const v1, 0x13

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_b
    add-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->j:Lrgj;

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

    nop

    :goto_d
    iget-boolean v1, v0, Lrgj;->q:Z

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

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_4

    nop

    nop

    :goto_10
    const v0, 0x5

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

    :goto_11
    goto/32 :goto_f

    nop

    :goto_12
    const/4 v1, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final setChecked(Z)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-ne v0, p1, :cond_0

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

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->g:Z

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->toggle()V

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final setClickable(Z)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroidx/cardview/widget/CardView;->setClickable(Z)V

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

    nop

    :goto_2
    iget-object p0, p0, Lcom/google/android/material/card/MaterialCardView;->j:Lrgj;

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
    if-nez p0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lrgj;->g()V

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final toggle()V
    .locals 9

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget v6, v2, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget v2, v2, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v4, v5, v6, v7, v8}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_25

    nop

    nop

    :goto_4
    const v1, 0x15

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

    :goto_5
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_6
    iget v5, v2, Landroid/graphics/Rect;->left:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_8
    iget-boolean p0, p0, Lcom/google/android/material/card/MaterialCardView;->g:Z

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->isEnabled()Z

    move-result v0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

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
    iget v7, v2, Landroid/graphics/Rect;->right:I

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    xor-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget v4, v2, Landroid/graphics/Rect;->left:I

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

    :goto_10
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v2, :cond_0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->j:Lrgj;

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

    :goto_14
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v0, p0, v1}, Lrgj;->e(ZZ)V

    :goto_16
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    :goto_18
    iget-object v0, p0, Lcom/google/android/material/card/MaterialCardView;->j:Lrgj;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v5, v2, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    add-int/lit8 v8, v3, -0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->g:Z

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->f()Z

    move-result v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_1d
    iget-object v2, v0, Lrgj;->o:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x1a

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_2

    nop

    goto/32 :goto_11

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_20
    invoke-virtual {p0}, Lcom/google/android/material/card/MaterialCardView;->refreshDrawableState()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v4, v0, Lrgj;->o:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_22
    if-nez v0, :cond_3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0, v4, v5, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_24
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, v0, Lrgj;->o:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_26
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_27
    iput-boolean v0, p0, Lcom/google/android/material/card/MaterialCardView;->g:Z

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop
.end method
