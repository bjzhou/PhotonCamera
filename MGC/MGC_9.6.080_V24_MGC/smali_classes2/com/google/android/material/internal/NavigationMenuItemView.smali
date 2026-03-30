.class public Lcom/google/android/material/internal/NavigationMenuItemView;
.super Lrhx;
.source "PG"

# interfaces
.implements Lgj;


# static fields
.field private static final e:[I


# instance fields
.field public c:Z

.field d:Z

.field private i:I

.field private final j:Landroid/widget/CheckedTextView;

.field private k:Landroid/widget/FrameLayout;

.field private l:Lfz;

.field private final m:Ldvd;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    filled-new-array {v0}, [I

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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
    const v0, 0x10100a0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    sput-object v0, Lcom/google/android/material/internal/NavigationMenuItemView;->e:[I

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_1

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

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
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

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
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
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const p2, 0x7f07016c

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    iput p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    const/4 p2, 0x1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_7
    const p1, 0x7f0b0163

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p3, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->m:Ldvd;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    new-instance p3, Lrhy;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_e
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->j:Landroid/widget/CheckedTextView;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    :goto_10
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_11
    const v1, 0xe

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

    :goto_12
    const v0, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_13
    invoke-direct {p0, p1, p2, p3}, Lrhx;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p1, p3}, Ldwd;->h(Landroid/view/View;Ldvd;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    check-cast p1, Landroid/widget/CheckedTextView;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p3, p0}, Lrhy;-><init>(Lcom/google/android/material/internal/NavigationMenuItemView;)V

    goto/32 :goto_c

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1, p0, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

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

    :goto_1a
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/LinearLayoutCompat;->r(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1b
    iput-boolean p2, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->d:Z

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0, p1}, Lcom/google/android/material/internal/NavigationMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

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

    :goto_1d
    const v1, 0x7f0e006d

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lfz;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->l:Lfz;

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
    return-object p0

    nop

    nop

    nop

    nop
.end method

.method public final e()Z
    .locals 0

    goto/32 :goto_1

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
.end method

.method public final f(Lfz;)V
    .locals 8

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    iget v2, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->i:I

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v5, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->j:Landroid/widget/CheckedTextView;

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_2
    move v0, v3

    nop

    :goto_3
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->k:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :goto_5
    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->j:Landroid/widget/CheckedTextView;

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :goto_6
    invoke-virtual {v5, v6, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v5

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

    nop

    :goto_7
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setId(I)V

    :goto_8
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v5, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->j:Landroid/widget/CheckedTextView;

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :goto_a
    move v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1}, Lfz;->getActionView()Landroid/view/View;

    move-result-object p1

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_c
    const v0, 0x2

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

    :goto_d
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v2, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->k:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iput v0, p1, Ljl;->width:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-instance v5, Landroid/graphics/drawable/StateListDrawable;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_14
    iget-object v5, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->j:Landroid/widget/CheckedTextView;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_15
    iget-boolean v5, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->c:Z

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v6, Lcom/google/android/material/internal/NavigationMenuItemView;->e:[I

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->k:Landroid/widget/FrameLayout;

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->refreshDrawableState()V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->k:Landroid/widget/FrameLayout;

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

    :goto_1b
    invoke-virtual {v5, v6, v2}, Landroid/widget/CheckedTextView;->setTypeface(Landroid/graphics/Typeface;I)V

    goto/32 :goto_59

    nop

    nop

    :goto_1c
    invoke-virtual {v2}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v5}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    goto/32 :goto_16

    nop

    nop

    :goto_1e
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_1f
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_20
    invoke-virtual {v5}, Landroid/widget/CheckedTextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setEnabled(Z)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->k:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_23
    check-cast p1, Ljl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_24
    if-lez v0, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_25
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setVisibility(I)V

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v5

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    :goto_27
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->k:Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    iget v0, v0, Landroid/util/TypedValue;->data:I

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_2c
    if-ne v2, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->m:Ldvd;

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

    :goto_2e
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->j:Landroid/widget/CheckedTextView;

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1}, Lfz;->isChecked()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_30
    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_31
    if-nez v0, :cond_2

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_33
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->refreshDrawableState()V

    goto/32 :goto_15

    nop

    nop

    :goto_35
    iput-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->l:Lfz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {p1}, Lfz;->isCheckable()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_37
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_38
    if-eqz v2, :cond_3

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_39
    move-object v5, v4

    nop

    nop

    :goto_3a
    goto/32 :goto_49

    nop

    nop

    :goto_3b
    if-nez v0, :cond_4

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {p1, v3}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    move v2, v3

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_3f
    const v6, 0x7f040175

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

    :goto_40
    const/4 v0, -0x2

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {v7, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42
    goto :goto_3a

    nop

    :goto_43
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_52

    nop

    nop

    :goto_45
    new-instance v7, Landroid/graphics/drawable/ColorDrawable;

    nop

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

    :goto_46
    iput-boolean v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->c:Z

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

    :goto_47
    invoke-virtual {p0, v2}, Lcom/google/android/material/internal/NavigationMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->removeAllViews()V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0, v5}, Lcom/google/android/material/internal/NavigationMenuItemView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :goto_4a
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    iget-object p1, p1, Lfz;->m:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_4d
    check-cast v2, Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p1, v1}, Landroid/widget/CheckedTextView;->setVisibility(I)V

    goto/32 :goto_27

    nop

    nop

    :goto_4f
    invoke-virtual {v5, v0, v6}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-nez p1, :cond_6

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-virtual {p1}, Lfz;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_52
    return-void

    nop

    :goto_53
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-eqz v0, :cond_7

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_55
    invoke-virtual {p1}, Lfz;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    iget-object v0, p1, Lfz;->d:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_57
    check-cast v2, Landroid/view/ViewStub;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v5, v0}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p1}, Lfz;->isEnabled()Z

    move-result v0

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

    :goto_5a
    invoke-direct {v6, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_e

    nop

    nop

    :goto_5c
    iget-boolean v0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->d:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_5d
    check-cast p1, Ljl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    iput v0, p1, Ljl;->width:I

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->k:Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_60
    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->j:Landroid/widget/CheckedTextView;

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_61
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_62
    invoke-virtual {v0, v3, v3, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :goto_63
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_64
    invoke-virtual {p1}, Lfz;->getActionView()Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_65
    if-ne v5, v0, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_66
    goto/16 :goto_3

    nop

    :goto_67
    goto/32 :goto_2

    nop

    nop

    :goto_68
    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    const v2, 0x7f0b0162

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_6a
    iget-object v0, p1, Lfz;->l:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    const/16 v1, 0x8

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-virtual {v2, v0}, Landroid/widget/CheckedTextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_51

    nop

    nop

    :goto_6d
    if-nez v5, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :cond_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6e
    goto/16 :goto_3e

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_70
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_71
    iget-object v0, p1, Lfz;->d:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_72
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_73
    if-nez v0, :cond_a

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

    :cond_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_74
    iget v0, p1, Lfz;->a:I

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v5, v6, v7}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_76
    iget-object v2, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->k:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_77
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->l:Lfz;

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

    :goto_78
    invoke-virtual {v2, v0, v4, v4, v4}, Landroid/widget/CheckedTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_64

    nop

    nop

    :goto_79
    if-eqz p1, :cond_b

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_7a
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->l:Lfz;

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

    :goto_7b
    if-nez v2, :cond_c

    nop

    goto/32 :goto_90

    nop

    :cond_c
    goto/32 :goto_61

    nop

    nop

    :goto_7c
    new-instance v0, Landroid/util/TypedValue;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    sget-object v0, Lcom/google/android/material/internal/NavigationMenuItemView;->EMPTY_STATE_SET:[I

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

    :goto_7e
    iget-object p1, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->j:Landroid/widget/CheckedTextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_7f
    check-cast v2, Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_80
    const/4 v2, 0x1

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

    :goto_81
    if-nez v0, :cond_d

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_82
    invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    :goto_83
    goto/32 :goto_6a

    nop

    nop

    :goto_84
    invoke-virtual {v0, v5, v6}, Ldvd;->e(Landroid/view/View;I)V

    :goto_85
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_86
    if-nez p1, :cond_e

    nop

    nop

    goto/32 :goto_33

    nop

    :cond_e
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_88
    invoke-virtual {p0, v0}, Lcom/google/android/material/internal/NavigationMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_89
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_8a
    invoke-virtual {p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {p0, p1}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto/32 :goto_77

    nop

    nop

    :goto_8c
    invoke-virtual {p1}, Lfz;->isVisible()Z

    move-result v0

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

    :goto_8d
    if-eqz v0, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_55

    nop

    nop

    :goto_8e
    const/16 v6, 0x800

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_90
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_91
    if-gtz v0, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    :cond_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method protected final onCreateDrawableState(I)[I
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object p0, Lcom/google/android/material/internal/NavigationMenuItemView;->e:[I

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    add-int/lit8 p1, p1, 0x1

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
    invoke-super {p0, p1}, Lrhx;->onCreateDrawableState(I)[I

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object p1

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lfz;->isChecked()Z

    move-result p0

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

    :goto_6
    iget-object p0, p0, Lcom/google/android/material/internal/NavigationMenuItemView;->l:Lfz;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    :goto_8
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    invoke-static {p1, p0}, Lcom/google/android/material/internal/NavigationMenuItemView;->mergeDrawableStates([I[I)[I

    :goto_a
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lfz;->isCheckable()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop
.end method
