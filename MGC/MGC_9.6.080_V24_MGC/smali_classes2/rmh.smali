.class public final Lrmh;
.super Landroid/widget/LinearLayout;
.source "PG"


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/ImageView;

.field public final c:Landroid/graphics/drawable/Drawable;

.field final synthetic d:Lcom/google/android/material/tabs/TabLayout;

.field private e:Lrmf;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .locals 9

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_0
    iget v0, p1, Lcom/google/android/material/tabs/TabLayout;->e:I

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_1
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2
    invoke-virtual {p0, p2}, Lrmh;->setGravity(I)V

    goto/32 :goto_54

    nop

    nop

    :goto_3
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_4
    invoke-static {v3, v6}, Lrke;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_5
    if-eq v2, v4, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p1, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v0, :cond_1

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_9
    iget v3, p1, Lcom/google/android/material/tabs/TabLayout;->g:I

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_14

    nop

    :goto_b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object v4, Lrke;->d:[I

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_e
    invoke-static {p2, v0}, Le;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->invalidate()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lrmh;->getDrawableState()[I

    move-result-object v0

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

    nop

    :goto_11
    iget v0, p1, Lcom/google/android/material/tabs/TabLayout;->q:I

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

    :goto_12
    const/16 p2, 0x11

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

    :goto_13
    move-object v1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput v0, p0, Lrmh;->f:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_16
    move-object p2, v1

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    sget-object v8, Landroid/util/StateSet;->NOTHING:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_19
    const v3, 0x3727c5ac    # 1.0E-5f

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1a
    iget p2, p1, Lcom/google/android/material/tabs/TabLayout;->d:I

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-eq v2, v4, :cond_2

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-static {v3, v6}, Lrke;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_1e
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_1f
    sget-object v6, Lrke;->b:[I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_21
    new-instance v5, Landroid/content/res/ColorStateList;

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

    nop

    :goto_22
    invoke-virtual {p0, p1}, Lrmh;->setOrientation(I)V

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_24
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_4f

    nop

    :goto_26
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_27
    return-void

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

    :goto_29
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/16 p2, 0x3ea

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_2d
    filled-new-array {v4, v6, v8}, [[I

    move-result-object v4

    nop

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

    :goto_2e
    iput-object p2, p0, Lrmh;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_2f
    xor-int/2addr p1, v2

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_30
    filled-new-array {v5, v7, v3}, [I

    move-result-object v3

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_31
    invoke-static {p0, p1}, Ldvy;->a(Landroid/view/View;Landroid/view/PointerIcon;)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p0, p2, v0, v1, v3}, Lrmh;->setPaddingRelative(IIII)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {p1, p2}, Landroid/view/PointerIcon;->getSystemIcon(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_34
    move-object p2, v3

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_52

    nop

    nop

    :goto_36
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_38
    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_39
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

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

    :goto_3a
    sget-object v4, Lrke;->a:[I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3b
    if-nez p2, :cond_4

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    :goto_3d
    invoke-direct {v3, v5, p2, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_34

    nop

    nop

    :goto_3e
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3f
    iget-object v3, p1, Lcom/google/android/material/tabs/TabLayout;->l:Landroid/content/res/ColorStateList;

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

    :goto_40
    invoke-virtual {p0}, Lrmh;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

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

    :goto_41
    iput-object p1, p0, Lrmh;->d:Lcom/google/android/material/tabs/TabLayout;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_42
    invoke-direct {v5, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_44
    iget-boolean v4, p1, Lcom/google/android/material/tabs/TabLayout;->z:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_45
    const v0, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_46
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_47
    sget-object v6, Lrke;->a:[I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v0, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_49
    const/4 v1, 0x0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const/4 v0, 0x0

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_4b
    iget v1, p1, Lcom/google/android/material/tabs/TabLayout;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_4c
    invoke-static {v3, v5}, Lrke;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v5

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_6
    goto/32 :goto_29

    nop

    :goto_4e
    iput-object v1, p0, Lrmh;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    sget-object v5, Lrke;->c:[I

    nop

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

    :goto_51
    const v1, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_52
    invoke-virtual {p0, p2}, Lrmh;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p0, v2}, Lrmh;->setClickable(Z)V

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_54
    iget-boolean p1, p1, Lcom/google/android/material/tabs/TabLayout;->w:Z

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop
.end method

.method private static final d(Landroid/view/View;)V
    .locals 3

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    const v0, 0x1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_0

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
    goto/32 :goto_b

    nop

    :goto_6
    new-instance v0, Lgle;

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

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

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

    :goto_a
    const/16 v1, 0xe

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_e
    if-eqz p0, :cond_1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    :goto_f
    invoke-direct {v0, p0, v1, v2}, Lgle;-><init>(Ljava/lang/Object;I[B)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_11
    const v1, 0xd

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
.end method


# virtual methods
.method public final a(Lrmf;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lrmh;->b()V

    :goto_1
    goto/32 :goto_2

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    if-ne p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

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

    :goto_4
    iget-object v0, p0, Lrmh;->e:Lrmf;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object p1, p0, Lrmh;->e:Lrmf;

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

.method final b()V
    .locals 4

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_0
    if-ne v2, v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v2, v0, Lrmf;->g:Lcom/google/android/material/tabs/TabLayout;

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->a()I

    move-result v2

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    throw p0

    nop

    nop

    :goto_b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0}, Lrmh;->c()V

    goto/32 :goto_11

    nop

    nop

    :goto_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x1

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

    :goto_11
    iget-object v0, p0, Lrmh;->e:Lrmf;

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    :goto_13
    goto/32 :goto_2

    nop

    nop

    :goto_14
    if-eq v2, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    iget v0, v0, Lrmf;->d:I

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_17
    const-string v0, "Tab not attached to a TabLayout"

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_18
    if-nez v2, :cond_3

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

    :goto_19
    const v0, 0x1b

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1a
    const/4 v3, -0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_3

    nop

    nop

    :goto_1d
    invoke-virtual {p0, v1}, Lrmh;->setSelected(Z)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c()V
    .locals 12

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_0
    move-object v4, v5

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_2
    iget v1, v1, Lcom/google/android/material/tabs/TabLayout;->j:I

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_3
    xor-int/lit8 v8, v7, 0x1

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v7, :cond_0

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0, v2}, Lrmh;->setVisibility(I)V

    goto/32 :goto_5e

    nop

    nop

    :goto_6
    move v10, v2

    nop

    nop

    :goto_7
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_8
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_9
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget v3, v3, Lcom/google/android/material/tabs/TabLayout;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_b
    iget-object v3, p0, Lrmh;->b:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_29

    nop

    :goto_d
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->k:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    :goto_f
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_10
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_11
    iget-object v1, p0, Lrmh;->a:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_12
    check-cast v1, Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_13
    move v11, v2

    nop

    :goto_14
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0}, Lrmh;->setContentDescription(Ljava/lang/CharSequence;)V

    :goto_16
    goto/32 :goto_4b

    nop

    nop

    :goto_17
    goto/16 :goto_7f

    nop

    :goto_18
    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :goto_1a
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    :goto_1b
    goto :goto_14

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

    nop

    :goto_1d
    move v10, v2

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_1f
    if-ne v9, v8, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move v6, v2

    nop

    nop

    :goto_21
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const v3, 0x7f0e0065

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_23
    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_24
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_25
    iget-object v1, p0, Lrmh;->b:Landroid/widget/ImageView;

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v7

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

    nop

    :goto_27
    iget-object v1, p0, Lrmh;->d:Lcom/google/android/material/tabs/TabLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Lrmh;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result v7

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_2c
    if-nez v1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0, v1}, Lrmh;->addView(Landroid/view/View;)V

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {v3}, Landroid/widget/ImageView;->requestLayout()V

    :goto_30
    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget-object v3, p0, Lrmh;->d:Lcom/google/android/material/tabs/TabLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_32
    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :cond_3
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-eqz v1, :cond_4

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    if-ne v9, v10, :cond_5

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_87

    nop

    nop

    :goto_36
    iget-object v5, v1, Lrmf;->c:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_38
    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    nop

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

    :goto_39
    if-eqz v7, :cond_6

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

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

    :goto_3b
    iget-object v1, p0, Lrmh;->a:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v7, p0, Lrmh;->d:Lcom/google/android/material/tabs/TabLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v1, p0, Lrmh;->d:Lcom/google/android/material/tabs/TabLayout;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_3f
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_40
    invoke-virtual {p0, v1, v2}, Lrmh;->addView(Landroid/view/View;I)V

    :goto_41
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_42
    invoke-static {v7, v6}, Lqqy;->q(Landroid/content/Context;I)F

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_21

    nop

    nop

    :goto_44
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_45
    iget-object v1, v0, Lrmf;->c:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    invoke-static {v1}, Lrmh;->d(Landroid/view/View;)V

    goto/32 :goto_99

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_5d

    nop

    :goto_48
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    goto/16 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_0

    nop

    nop

    :goto_4b
    return-void

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_c

    nop

    nop

    :goto_4d
    const v0, 0x6

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v4, p0, Lrmh;->e:Lrmf;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p0}, Lrmh;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_50
    check-cast v1, Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    :goto_51
    const/4 v2, 0x0

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_52
    if-eq v9, v8, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :cond_7
    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iget-object v1, p0, Lrmh;->a:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v1}, Landroid/widget/TextView;->getMaxLines()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_55
    if-eqz v7, :cond_8

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_56
    if-ne v1, v3, :cond_9

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v0, p0, Lrmh;->e:Lrmf;

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

    :goto_58
    goto/16 :goto_7

    nop

    :goto_59
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez v10, :cond_a

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_26

    nop

    nop

    :goto_5b
    if-nez v1, :cond_b

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :cond_b
    goto/32 :goto_3e

    nop

    nop

    :goto_5c
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_5d
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_5e
    goto/16 :goto_1e

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v3, p0, Lrmh;->d:Lcom/google/android/material/tabs/TabLayout;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_61
    move-object v11, v5

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_62
    if-lez v0, :cond_c

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

    :cond_c
    goto/32 :goto_28

    nop

    :goto_63
    iget-boolean v7, v7, Lcom/google/android/material/tabs/TabLayout;->w:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_64
    if-eqz v1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    :cond_d
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_66
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_67
    iget-object v3, p0, Lrmh;->a:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_68
    if-eqz v7, :cond_e

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_e
    goto/32 :goto_96

    nop

    nop

    :goto_69
    iget-object v4, v4, Lrmf;->b:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    iget v10, v10, Lrmf;->f:I

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    iget-object v1, p0, Lrmh;->a:Landroid/widget/TextView;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6c
    invoke-virtual {p0, v4}, Landroid/view/View;->setTooltipText(Ljava/lang/CharSequence;)V

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_6d
    iget-object v3, p0, Lrmh;->a:Landroid/widget/TextView;

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

    :goto_6e
    iput v1, p0, Lrmh;->f:I

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    if-ne v6, v7, :cond_f

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

    :cond_f
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    if-nez v4, :cond_10

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v3}, Landroid/widget/ImageView;->requestLayout()V

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_73
    if-nez v3, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_74
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_76
    iget-object v10, p0, Lrmh;->e:Lrmf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_77
    if-ne v6, v7, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_12
    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    iget-object v1, p0, Lrmh;->b:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_7a
    move v10, v9

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    iget-object v0, v0, Lrmf;->c:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    float-to-int v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_7d
    if-nez v0, :cond_13

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_45

    nop

    nop

    :goto_7e
    move-object v11, v4

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_80
    if-eqz v1, :cond_14

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_81
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    :goto_82
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_83
    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_84
    goto/16 :goto_98

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_86
    const v1, 0x4

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_87
    move v11, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_88
    const/4 v9, 0x1

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

    :goto_89
    iget v3, v3, Lcom/google/android/material/tabs/TabLayout;->h:I

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_8a
    if-nez v1, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_15
    goto/32 :goto_6d

    nop

    nop

    :goto_8b
    const/16 v6, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    const/4 v3, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    goto/16 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    :goto_8f
    iput-object v1, p0, Lrmh;->b:Landroid/widget/ImageView;

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_90
    iget v7, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_91
    iget-object v1, p0, Lrmh;->e:Lrmf;

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_92
    const v3, 0x7f0e0066

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_93
    if-nez v3, :cond_16

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

    nop

    :cond_16
    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    iget-object v1, p0, Lrmh;->a:Landroid/widget/TextView;

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

    :goto_95
    iput-object v1, p0, Lrmh;->a:Landroid/widget/TextView;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_96
    invoke-virtual {p0}, Lrmh;->getContext()Landroid/content/Context;

    move-result-object v7

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_97
    move-object v4, v5

    nop

    nop

    :goto_98
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    iget-object v1, p0, Lrmh;->a:Landroid/widget/TextView;

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_9b
    invoke-static {v1}, Lrmh;->d(Landroid/view/View;)V

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9d
    invoke-virtual {p0}, Lrmh;->isSelected()Z

    move-result v1

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

    :goto_9e
    rem-int v0, v0, v1

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

    nop
.end method

.method protected final drawableStateChanged()V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lrmh;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

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

    goto/32 :goto_16

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lrmh;->getDrawableState()[I

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_8
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lrmh;->invalidate()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_16

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

    :goto_d
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_3
    goto/32 :goto_12

    nop

    :goto_f
    iget-object v0, p0, Lrmh;->c:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    const v0, 0x1e

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lrmh;->d:Lcom/google/android/material/tabs/TabLayout;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/material/tabs/TabLayout;->invalidate()V

    :goto_16
    goto/32 :goto_5

    nop

    nop
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    goto/32 :goto_12

    nop

    nop

    :goto_0
    sget-object p1, Ldxa;->e:Ldxa;

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

    :goto_1
    iget-object p1, p0, Lrmh;->e:Lrmf;

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :goto_3
    goto/32 :goto_1a

    nop

    nop

    :goto_4
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    const p1, 0x7f1402b7

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1c

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

    :goto_7
    invoke-virtual {p0}, Lrmh;->isSelected()Z

    move-result v1

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

    :goto_8
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_b
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0, v2}, Ldxb;->m(Z)V

    goto/32 :goto_0

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    :goto_e
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, p1}, Ldxb;->o(Ljava/lang/Object;)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lrmh;->isSelected()Z

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

    :goto_11
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_12
    const v0, 0xa

    nop

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

    :goto_13
    new-instance v0, Ldxb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

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

    :goto_15
    invoke-virtual {v0, p0}, Ldxb;->u(Ljava/lang/CharSequence;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    invoke-static {v2, v3, p1, v3, v1}, Lfdn;->af(IIIIZ)Lfdn;

    move-result-object p1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-direct {v0, p1}, Ldxb;-><init>(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget p1, p1, Lrmf;->d:I

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lrmh;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, p1}, Ldxb;->G(Ldxa;)V

    :goto_1c
    goto/32 :goto_19

    nop

    nop

    :goto_1d
    const/4 v2, 0x0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onMeasure(II)V
    .locals 7

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    nop

    :goto_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    if-nez v2, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_31

    nop

    nop

    :goto_3
    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v2, p0, Lrmh;->a:Landroid/widget/TextView;

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

    :goto_6
    sub-int/2addr v2, v4

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_7
    if-ne v1, v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_2
    :goto_8
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_9
    iget v5, v5, Lcom/google/android/material/tabs/TabLayout;->v:I

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_b
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

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

    nop

    :goto_d
    invoke-virtual {v2, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    cmpl-float v2, v0, v2

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v2, p0, Lrmh;->d:Lcom/google/android/material/tabs/TabLayout;

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_10
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lrmh;->getPaddingRight()I

    move-result v4

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_13
    iget-object v2, p0, Lrmh;->a:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    if-gtz v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_15
    sub-int/2addr v2, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_16
    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-gez v5, :cond_4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x13

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lrmh;->getMeasuredWidth()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lrmh;->a:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    div-float v2, v0, v2

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

    :goto_1c
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :goto_1d
    goto/32 :goto_29

    nop

    nop

    :goto_1e
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v2, p0, Lrmh;->b:Landroid/widget/ImageView;

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

    :goto_20
    cmpl-float v2, v3, v2

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_21
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->n:F

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_22
    iget-object v2, p0, Lrmh;->a:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_23
    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-gtz v2, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_40

    nop

    nop

    :goto_25
    if-eqz v2, :cond_6

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

    :cond_6
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/4 v3, -0x1

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-gt v2, v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    :cond_7
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    return-void

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2c
    if-nez v1, :cond_8

    nop

    goto/32 :goto_56

    nop

    nop

    :cond_8
    goto/32 :goto_3b

    nop

    nop

    :goto_2d
    iget-object v0, p0, Lrmh;->d:Lcom/google/android/material/tabs/TabLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Lrmh;->getPaddingLeft()I

    move-result v4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v5, p0, Lrmh;->a:Landroid/widget/TextView;

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->r:I

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_31
    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lrmh;->d:Lcom/google/android/material/tabs/TabLayout;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_33
    if-nez v2, :cond_9

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

    :cond_9
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_35
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v5}, Landroid/widget/TextView;->getMaxLines()I

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Lrmh;->isSelected()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_38
    iget-object v0, p0, Lrmh;->a:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_39
    if-eq v5, v3, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_3a
    if-nez v2, :cond_b

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_3d

    nop

    nop

    :goto_3b
    iget-object v1, p0, Lrmh;->d:Lcom/google/android/material/tabs/TabLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_3c
    if-gtz v2, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3e
    iget v1, p0, Lrmh;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_3f
    if-lez v0, :cond_d

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

    :cond_d
    goto/32 :goto_4a

    nop

    :goto_40
    if-eq v4, v3, :cond_e

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

    :cond_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->p:F

    nop

    nop

    :goto_42
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-gt v0, v2, :cond_f

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :cond_f
    :goto_44
    goto/32 :goto_53

    nop

    nop

    :goto_45
    iget v2, v1, Lcom/google/android/material/tabs/TabLayout;->j:I

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

    :goto_46
    iget-object v4, p0, Lrmh;->a:Landroid/widget/TextView;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_47
    mul-float/2addr v3, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_48
    goto :goto_42

    nop

    nop

    nop

    :goto_49
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_4c
    if-ne v2, v3, :cond_10

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    :cond_10
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_4d
    iget-object v2, p0, Lrmh;->a:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_50
    move v1, v3

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_51
    if-nez v1, :cond_11

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

    :cond_11
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    int-to-float v2, v2

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const/high16 p1, -0x80000000

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_54
    if-eqz v2, :cond_12

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_17

    nop

    nop

    :goto_55
    iget v0, v1, Lcom/google/android/material/tabs/TabLayout;->o:F

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_57
    iget-object v5, p0, Lrmh;->d:Lcom/google/android/material/tabs/TabLayout;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_58
    invoke-static {v2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_5a
    const v1, 0x8

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

.method public final performClick()Z
    .locals 2

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x7

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

    :goto_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_4
    return v0

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_12

    nop

    :goto_7
    iget-object v1, p0, Lrmh;->e:Lrmf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    if-eqz v0, :cond_2

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_2
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x19

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

    :goto_a
    invoke-virtual {p0, v0}, Lrmh;->playSoundEffect(I)V

    :goto_b
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_e
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v0, 0x0

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

    :goto_10
    return p0

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_1

    nop

    nop

    :goto_14
    iget-object p0, p0, Lrmh;->e:Lrmf;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lrmf;->a()V

    goto/32 :goto_e

    nop

    nop
.end method

.method public final setSelected(Z)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

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
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lrmh;->isSelected()Z

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iget-object v0, p0, Lrmh;->a:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_a

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
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lrmh;->b:Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_9
    goto/32 :goto_7

    nop

    nop

    :goto_a
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop
.end method
