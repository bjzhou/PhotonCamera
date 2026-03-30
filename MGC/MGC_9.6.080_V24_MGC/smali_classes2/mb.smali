.class public final Lmb;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/support/v7/widget/Toolbar;

.field public b:I

.field c:Ljava/lang/CharSequence;

.field public d:Landroid/view/Window$Callback;

.field e:Z

.field public f:Lhc;

.field private g:Landroid/view/View;

.field private h:Landroid/graphics/drawable/Drawable;

.field private i:Landroid/graphics/drawable/Drawable;

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Z

.field private l:Ljava/lang/CharSequence;

.field private m:Ljava/lang/CharSequence;

.field private n:I

.field private o:Landroid/graphics/drawable/Drawable;


# direct methods
.method private final 132cd3b981019b59dc42653eea0b34b4m()V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->o(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lmb;->i:Landroid/graphics/drawable/Drawable;

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

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lmb;->h:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

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

    :goto_7
    and-int/lit8 v0, v0, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x6

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Lmb;->b:I

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_10

    nop

    nop

    :goto_b
    and-int/lit8 v1, v0, 0x2

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    if-eqz v0, :cond_3

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

    :cond_3
    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x0

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_12

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_17
    add-int v0, v0, v1

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

    :goto_18
    const v1, 0x19

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Z)V
    .locals 5

    goto/32 :goto_aa

    nop

    nop

    :goto_0
    iget v3, p0, Lmb;->b:I

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_1
    or-int/lit8 p2, p2, 0x10

    nop

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

    :goto_2
    invoke-virtual {v3, p2, v2}, Llg;->a(II)V

    :goto_3
    goto/32 :goto_29

    nop

    nop

    :goto_4
    iput-object p2, p0, Lmb;->m:Ljava/lang/CharSequence;

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, p2}, Landroidx/wear/ambient/AmbientDelegate;->v(I)Ljava/lang/CharSequence;

    move-result-object p2

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_6
    iput v2, p0, Lmb;->b:I

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0, p2}, Lmb;->e(Landroid/graphics/drawable/Drawable;)V

    :goto_9
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_a
    iput v0, p0, Lmb;->n:I

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_b
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_c
    const/16 p2, 0x1b

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_d
    if-ltz p2, :cond_0

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const/4 v3, 0x3

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 p2, 0x14

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

    :goto_10
    iput-object p2, p0, Lmb;->l:Ljava/lang/CharSequence;

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x7f140006

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    :goto_12
    const/16 p2, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->s(Ljava/lang/CharSequence;)V

    :goto_14
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/16 v2, 0xb

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->h()Ljava/lang/CharSequence;

    move-result-object p2

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p0, p2}, Lmb;->g(Ljava/lang/CharSequence;)V

    :goto_19
    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v0, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1c
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, p2, v0}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result p2

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_48

    nop

    nop

    :goto_21
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_2
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v1, p0, Lmb;->c:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_23
    invoke-virtual {p0, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_16

    nop

    :goto_25
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-gez v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_3
    :goto_27
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v4, 0x0

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const/16 p2, 0x1c

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    iget p2, p0, Lmb;->n:I

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1, v3, v2}, Landroidx/wear/ambient/AmbientDelegate;->m(II)I

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_2c
    if-nez p2, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    :goto_2d
    iput p2, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

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

    :goto_30
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const/16 p2, 0x11

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_32
    if-nez v2, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-eqz v2, :cond_6

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

    :cond_6
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v1, p2, v0}, Landroidx/wear/ambient/AmbientDelegate;->q(II)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_35
    if-nez p2, :cond_7

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    if-eqz p2, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v1, p2}, Landroidx/wear/ambient/AmbientDelegate;->t(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    :goto_38
    iget-object v3, p1, Landroid/support/v7/widget/Toolbar;->b:Landroid/widget/TextView;

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_39
    invoke-direct {p2, p0}, Llz;-><init>(Lmb;)V

    goto/32 :goto_69

    nop

    nop

    :goto_3a
    iget-object v2, p0, Lmb;->g:Landroid/view/View;

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_3b
    if-eqz v2, :cond_9

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_3c
    move v1, v0

    nop

    nop

    nop

    nop

    :goto_3d
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-direct {p0}, Lmb;->132cd3b981019b59dc42653eea0b34b4m()V

    :goto_3f
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v1, p1, Landroid/support/v7/widget/Toolbar;->t:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    :goto_42
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_43
    if-gtz p2, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_44
    invoke-virtual {v1, p2}, Landroidx/wear/ambient/AmbientDelegate;->v(I)Ljava/lang/CharSequence;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v1, p2, v0}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result p2

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/16 p2, 0x16

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_49
    iput-object p2, p0, Lmb;->o:Landroid/graphics/drawable/Drawable;

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

    nop

    :goto_4a
    and-int/lit8 v2, v2, 0x10

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

    :goto_4b
    iput-object v1, p0, Lmb;->l:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_4c
    if-nez p2, :cond_b

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_b
    goto/32 :goto_94

    nop

    nop

    :goto_4d
    if-nez v3, :cond_c

    nop

    goto/32 :goto_61

    nop

    :cond_c
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iput p2, p1, Landroid/support/v7/widget/Toolbar;->m:I

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget p2, p0, Lmb;->b:I

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_50
    iget-object v3, p1, Landroid/support/v7/widget/Toolbar;->c:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51
    and-int/lit8 v2, v2, 0x8

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

    :goto_52
    invoke-virtual {v2, p2, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

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

    :goto_53
    iget v2, p0, Lmb;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_54
    iget-object v1, p1, Landroid/support/v7/widget/Toolbar;->u:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_55
    invoke-virtual {p0}, Lmb;->a()Landroid/content/Context;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    :goto_56
    if-lez v0, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_d
    goto/32 :goto_1d

    nop

    :goto_57
    invoke-virtual {p0, p2}, Lmb;->d(I)V

    :goto_58
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-direct {p0}, Lmb;->d116db4599d9ddc8c35e61366a4f4967m()V

    :goto_5a
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    if-eqz p2, :cond_e

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    iget p2, p0, Lmb;->n:I

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_5d
    const/4 v2, -0x1

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

    :goto_5e
    if-nez v1, :cond_f

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

    :cond_f
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    iput p2, p1, Landroid/support/v7/widget/Toolbar;->l:I

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

    :goto_60
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    :goto_61
    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v1, p2, v0}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result p2

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_64
    if-nez v3, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    :goto_65
    invoke-direct {p0}, Lmb;->a74c8a79bf0ef0e20983317119c87838m()V

    :goto_66
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_67
    new-instance p2, Llz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_68
    if-nez v2, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    :cond_11
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->m()V

    goto/32 :goto_9e

    nop

    nop

    :goto_6a
    goto/16 :goto_7c

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_55

    nop

    nop

    :goto_6c
    invoke-static {v1, v4, v2, v3, v0}, Landroidx/wear/ambient/AmbientDelegate;->C(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroidx/wear/ambient/AmbientDelegate;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_6d
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_6e
    if-nez p2, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_5c

    nop

    nop

    :goto_6f
    goto/32 :goto_1e

    nop

    :goto_70
    const/16 p2, 0x1a

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_71
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_72
    if-nez p2, :cond_13

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :cond_13
    goto/32 :goto_74

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v1, p2}, Landroidx/wear/ambient/AmbientDelegate;->t(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_74
    iput-object p2, p0, Lmb;->h:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v3, v2, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_76
    goto/32 :goto_70

    nop

    nop

    :goto_77
    const/16 p2, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    :goto_78
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->e()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_79
    if-nez p2, :cond_14

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    if-eq p2, v0, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :cond_15
    goto/32 :goto_a3

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_ae

    nop

    nop

    :goto_7d
    invoke-virtual {p0, p2}, Lmb;->d(I)V

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    const/16 p2, 0x19

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

    :goto_80
    const/16 p2, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    and-int/lit8 v3, v3, 0x10

    nop

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

    :goto_82
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->e()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_83
    const v3, 0x7f04000b

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_84
    goto/16 :goto_3d

    nop

    :goto_85
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_86
    return-void

    nop

    nop

    nop

    nop

    :goto_87
    goto/32 :goto_6f

    nop

    nop

    :goto_88
    if-nez p2, :cond_16

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_89
    iput v0, p0, Lmb;->n:I

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

    :goto_8a
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_8b
    const/4 p2, 0x7

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iput-object p2, p0, Lmb;->g:Landroid/view/View;

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_8d
    const v1, 0x13

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    :goto_8e
    const/16 v2, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    if-nez v3, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :goto_90
    iput-object v1, p0, Lmb;->j:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_91
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_92
    invoke-virtual {v1, p2, v2}, Landroidx/wear/ambient/AmbientDelegate;->m(II)I

    move-result p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_93
    if-nez p2, :cond_18

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {p1, p2}, Landroid/support/v7/widget/Toolbar;->r(I)V

    goto/32 :goto_b1

    nop

    nop

    nop

    nop

    :goto_95
    invoke-virtual {v1, p2, v0}, Landroidx/wear/ambient/AmbientDelegate;->o(II)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_96
    sget-object v2, Lew;->a:[I

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_97
    iget v2, p0, Lmb;->b:I

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

    :goto_98
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->k()V

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    if-nez p2, :cond_19

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_19
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iput-object p1, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v1}, Landroidx/wear/ambient/AmbientDelegate;->x()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v1, p2, v0}, Landroidx/wear/ambient/AmbientDelegate;->r(II)I

    move-result p2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->h()Ljava/lang/CharSequence;

    move-result-object p2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_9e
    iget-object p0, p1, Landroid/support/v7/widget/Toolbar;->d:Landroid/widget/ImageButton;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v3, v2, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :goto_a0
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_a2
    iput-object p2, p0, Lmb;->j:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_a3
    goto/16 :goto_66

    nop

    nop

    :goto_a4
    goto/32 :goto_89

    nop

    nop

    nop

    :goto_a5
    invoke-virtual {p1, v2}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_a6
    goto/32 :goto_8b

    nop

    nop

    :goto_a7
    iget-object p2, p0, Lmb;->j:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_a8
    iput-object v3, p0, Lmb;->o:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    iput-boolean v1, p0, Lmb;->k:Z

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    const v0, 0x3

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_ab
    iget-object v3, p1, Landroid/support/v7/widget/Toolbar;->s:Llg;

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

    :goto_ac
    invoke-virtual {v1, v2}, Landroidx/wear/ambient/AmbientDelegate;->t(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_ad
    if-nez p2, :cond_1a

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_1a
    goto/32 :goto_97

    nop

    nop

    :goto_ae
    iput-object v4, p0, Lmb;->m:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_af
    iput-object v1, p0, Lmb;->c:Ljava/lang/CharSequence;

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_b0
    iget-object p2, p0, Lmb;->o:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_b1
    goto/16 :goto_7

    nop

    nop

    nop

    nop

    :goto_b2
    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_b3
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop
.end method

.method private final a74c8a79bf0ef0e20983317119c87838m()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_13

    nop

    nop

    :goto_2
    iget-object p0, p0, Lmb;->m:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v1, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

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

    :goto_4
    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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
    iget-object v0, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/Toolbar;->p(Ljava/lang/CharSequence;)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0}, Landroid/support/v7/widget/Toolbar;->p(Ljava/lang/CharSequence;)V

    :goto_9
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    :goto_c
    iget-object v0, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget p0, p0, Lmb;->n:I

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

    :goto_13
    iget v0, p0, Lmb;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_14
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_18

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

    nop

    :goto_15
    return-void

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_b

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    and-int/lit8 v0, v0, 0x4

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lmb;->m:Ljava/lang/CharSequence;

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

    nop

    :goto_1c
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_0

    nop

    :goto_1d
    const v1, 0x3

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

    :goto_1e
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

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

    :goto_1f
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_3
    goto/32 :goto_1b

    nop

    nop

    nop
.end method

.method private final ccb4c19b7dbd16be9d2a43125797659dm(Ljava/lang/CharSequence;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    and-int/lit8 v0, v0, 0x8

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean v0, p0, Lmb;->k:Z

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lmb;->c:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_b

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

    :goto_5
    invoke-static {p0, p1}, Ldwd;->i(Landroid/view/View;Ljava/lang/CharSequence;)V

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0, p1}, Landroid/support/v7/widget/Toolbar;->t(Ljava/lang/CharSequence;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget v0, p0, Lmb;->b:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getRootView()Landroid/view/View;

    move-result-object p0

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
.end method

.method private final d116db4599d9ddc8c35e61366a4f4967m()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

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
    const v0, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_8
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_9
    iget v0, p0, Lmb;->b:I

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
    iget-object v1, p0, Lmb;->j:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lmb;->o:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->q(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_5

    nop

    nop

    :goto_12
    and-int/lit8 v0, v0, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_14
    return-void

    nop

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

    :goto_16
    invoke-virtual {v0, v1}, Landroid/support/v7/widget/Toolbar;->q(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_14

    nop

    nop

    :goto_17
    iget-object p0, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_f

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

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

.method public final b()V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->j()V

    goto/32 :goto_1

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

    :goto_2
    iget-object p0, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/ActionMenuView;->h()V

    :goto_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

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

    :goto_4
    iget-object p0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

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

    :goto_5
    return-void

    nop

    nop
.end method

.method public final d(I)V
    .locals 3

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x9

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

    :goto_1
    and-int/lit8 p1, p1, 0x10

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    goto/32 :goto_26

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_3
    iget-object v1, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0}, Lmb;->d116db4599d9ddc8c35e61366a4f4967m()V

    :goto_6
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Lmb;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_9
    and-int/lit8 v1, p1, 0x8

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v1, :cond_1

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

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Lmb;->a74c8a79bf0ef0e20983317119c87838m()V

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

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
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_2
    goto/32 :goto_14

    nop

    :goto_10
    return-void

    nop

    nop

    :goto_11
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->t(Ljava/lang/CharSequence;)V

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_13
    if-nez v1, :cond_3

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_3
    goto/32 :goto_31

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    :goto_15
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->s(Ljava/lang/CharSequence;)V

    :goto_17
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto :goto_17

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1a
    and-int/lit8 v1, v0, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_1b
    if-nez v1, :cond_4

    nop

    nop

    goto/32 :goto_19

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    nop

    :goto_1c
    iget-object p0, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1d
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_6

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

    :goto_1e
    if-nez v0, :cond_6

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->s(Ljava/lang/CharSequence;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_20
    if-nez p1, :cond_7

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->addView(Landroid/view/View;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    xor-int/2addr v0, p1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_23
    and-int/lit8 v1, v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/Toolbar;->removeView(Landroid/view/View;)V

    :goto_26
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_8

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_34

    nop

    nop

    :goto_28
    iget-object v2, p0, Lmb;->c:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_29
    and-int/lit8 v0, v0, 0x10

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_2a
    iget-object v1, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v2, p0, Lmb;->l:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2d
    const v0, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2e
    if-nez v1, :cond_9

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_b

    nop

    nop

    :goto_2f
    iget-object v1, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_30
    rem-int v0, v0, v1

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

    :goto_31
    invoke-direct {p0}, Lmb;->132cd3b981019b59dc42653eea0b34b4m()V

    :goto_32
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iput p1, p0, Lmb;->b:I

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v0, p0, Lmb;->g:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/Toolbar;->t(Ljava/lang/CharSequence;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_36
    and-int/lit8 v1, v0, 0x8

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_37
    and-int/lit8 v1, p1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_38
    goto/32 :goto_15

    nop

    nop

    nop

    nop
.end method

.method public final e(Landroid/graphics/drawable/Drawable;)V
    .locals 0

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
    iput-object p1, p0, Lmb;->i:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lmb;->132cd3b981019b59dc42653eea0b34b4m()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final f()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

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
    iput-boolean v0, p0, Lmb;->e:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final g(Ljava/lang/CharSequence;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lmb;->k:Z

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-direct {p0, p1}, Lmb;->ccb4c19b7dbd16be9d2a43125797659dm(Ljava/lang/CharSequence;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final h(I)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/Toolbar;->setVisibility(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

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
    return-void

    nop
.end method

.method public final i(Ljava/lang/CharSequence;)V
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

    nop

    :goto_1
    iget-boolean v0, p0, Lmb;->k:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Lmb;->ccb4c19b7dbd16be9d2a43125797659dm(Ljava/lang/CharSequence;)V

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_3

    nop

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

    nop
.end method

.method public final j()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->v()Z

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

    :goto_2
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final k()Z
    .locals 0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Landroid/support/v7/widget/ActionMenuView;->c:Lhc;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lhc;->k()Z

    move-result p0

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
    iget-object p0, p0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p0, :cond_2

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return p0

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final l()Z
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

    :goto_1
    iget-object p0, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->w()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final m()Z
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

    nop

    :goto_1
    iget-object p0, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

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
    invoke-virtual {p0}, Landroid/support/v7/widget/Toolbar;->x()Z

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final n(IJ)Lfdn;
    .locals 2

    goto/32 :goto_d

    nop

    nop

    :goto_0
    const v1, 0xf

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    new-instance p2, Lma;

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

    :goto_4
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    const/high16 v0, 0x3f800000    # 1.0f

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-object v1

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_0
    goto/32 :goto_5

    nop

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

    goto/32 :goto_2

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_a
    invoke-direct {p2, p0, p1}, Lma;-><init>(Lmb;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_b
    invoke-static {v1}, Ldwd;->l(Landroid/view/View;)Lfdn;

    move-result-object v1

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

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    const v0, 0x4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    goto :goto_15

    nop

    nop

    :goto_10
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lmb;->a:Landroid/support/v7/widget/Toolbar;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, p2}, Lfdn;->T(Ldwk;)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, p2, p3}, Lfdn;->S(J)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v1, v0}, Lfdn;->R(F)V

    goto/32 :goto_13

    nop

    nop
.end method
