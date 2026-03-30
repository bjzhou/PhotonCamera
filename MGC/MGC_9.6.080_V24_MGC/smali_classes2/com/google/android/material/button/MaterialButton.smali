.class public Lcom/google/android/material/button/MaterialButton;
.super Landroid/support/v7/widget/AppCompatButton;
.source "PG"

# interfaces
.implements Landroid/widget/Checkable;
.implements Lrld;


# static fields
.field private static final f:[I

.field private static final g:[I


# instance fields
.field public b:F

.field public c:I

.field public d:I

.field e:I

.field private final h:Lrgf;

.field private final i:Ljava/util/LinkedHashSet;

.field private j:Landroid/graphics/PorterDuff$Mode;

.field private k:Landroid/content/res/ColorStateList;

.field private l:Landroid/graphics/drawable/Drawable;

.field private m:I

.field private n:I

.field private o:I

.field private p:I

.field private q:Z

.field private r:Z

.field private s:I

.field private t:I


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(Z)V
    .locals 6

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :goto_2
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_23

    nop

    :goto_4
    iget v2, p0, Lcom/google/android/material/button/MaterialButton;->m:I

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_5
    iget v4, p0, Lcom/google/android/material/button/MaterialButton;->n:I

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x2

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

    :goto_7
    return-void

    nop

    nop

    :goto_8
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_a
    add-int/2addr v0, v4

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_b
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->33b3102b6558811a7b7629a1e8e59bd2m()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v2, :cond_1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v3, v4, v5, v0, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_11
    if-eq v0, v2, :cond_3

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_3
    :goto_12
    goto/32 :goto_29

    nop

    nop

    :goto_13
    const v1, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_14
    aget-object v0, p1, v0

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->m:I

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v0, :cond_4

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_4
    goto/32 :goto_2b

    nop

    nop

    :goto_18
    const v0, 0x17

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_19
    if-ne v1, p1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_5
    :goto_1a
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1c
    if-eq p1, v0, :cond_6

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_6
    :goto_1d
    goto/32 :goto_41

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

    nop

    :goto_1f
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-nez p1, :cond_7

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :cond_7
    goto/32 :goto_2c

    nop

    nop

    :goto_21
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v2, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_8
    goto/32 :goto_32

    nop

    nop

    :goto_23
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_4

    nop

    nop

    :goto_27
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_28
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_29
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->3fd9578e124c68aa49885b22b61b4ec8m()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2a
    if-nez p1, :cond_9

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

    :cond_9
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

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

    nop

    :goto_2d
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->k:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p1

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

    :goto_31
    aget-object v1, p1, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_33
    add-int/2addr v2, v5

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

    nop

    :goto_34
    goto/32 :goto_24

    nop

    nop

    :goto_35
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

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

    :goto_36
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->19e596a3e324281407eb5c11093c0152m()V

    :goto_37
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_38
    iget v5, p0, Lcom/google/android/material/button/MaterialButton;->o:I

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

    :goto_39
    if-eqz v0, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_b
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    invoke-virtual {v2, v0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :goto_3d
    goto/32 :goto_16

    nop

    nop

    :goto_3e
    iget-object v3, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    aget-object p1, p1, v2

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_40
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b1051a9d8893542362ad09051775f8f6m()Z

    move-result p1

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

    :goto_42
    iget-object v2, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_43
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->19e596a3e324281407eb5c11093c0152m()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 166277962e993c138a6b1f0c9b571cc0m()I
    .locals 4

    goto/32 :goto_10

    nop

    nop

    :goto_0
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1
    float-to-double v0, v2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-lt v1, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_7
    double-to-int p0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    add-int/lit8 v1, v1, 0x1

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

    :goto_9
    invoke-static {v2, v3}, Ljava/lang/Math;->max(FF)F

    move-result v2

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLineCount()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineWidth(I)F

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

    nop

    :goto_c
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v3

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

    :goto_d
    return p0

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
    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_11
    goto :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_e

    nop

    nop

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

    :goto_15
    const/4 v2, 0x0

    nop

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    :goto_17
    goto/32 :goto_14

    nop
.end method

.method private final 19e596a3e324281407eb5c11093c0152m()V
    .locals 2

    goto/32 :goto_16

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
    goto/32 :goto_f

    nop

    nop

    :goto_2
    invoke-virtual {p0, v1, v1, v0, v1}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_15

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_7
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

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

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->33b3102b6558811a7b7629a1e8e59bd2m()Z

    move-result v0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    :goto_d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v0, :cond_2

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

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b1051a9d8893542362ad09051775f8f6m()Z

    move-result v0

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

    :goto_10
    invoke-virtual {p0, v0, v1, v1, v1}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_8

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->3fd9578e124c68aa49885b22b61b4ec8m()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_18

    nop

    :goto_15
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x17

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_17
    return-void

    nop

    nop

    :goto_18
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const/4 v1, 0x0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method

.method private final 1a36313b7ed15ba14e0acb4da569b8b7m()Z
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-boolean p0, p0, Lrgf;->p:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->h:Lrgf;

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

    :goto_4
    const/4 p0, 0x0

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

    :goto_5
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

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

    :goto_6
    if-eqz p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return p0

    nop

    :goto_8
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private final 33b3102b6558811a7b7629a1e8e59bd2m()Z
    .locals 2

    goto/32 :goto_11

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

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    return p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    if-eq p0, v1, :cond_0

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

    nop

    :goto_8
    goto/32 :goto_2

    nop

    :goto_9
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->s:I

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    :goto_f
    if-lez v0, :cond_1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_8

    nop

    :goto_10
    const v1, 0xd

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x14

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_12
    if-ne p0, v0, :cond_2

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_13
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method private final 3fd9578e124c68aa49885b22b61b4ec8m()Z
    .locals 1

    goto/32 :goto_7

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    :goto_3
    if-ne p0, v0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x4

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

    nop

    :goto_6
    if-eq p0, v0, :cond_1

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
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->s:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x3

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

    :goto_9
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_1

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m(II)V
    .locals 6

    goto/32 :goto_82

    nop

    nop

    :goto_0
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayoutDirection()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    if-ne p2, v2, :cond_0

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

    :cond_0
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

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

    :goto_4
    goto/16 :goto_69

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_6
    sub-int/2addr p2, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_7
    if-ne p2, v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_1
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLineCount()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_9
    if-ne p2, v0, :cond_2

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

    :cond_2
    :goto_a
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/16 :goto_67

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-ne p2, v5, :cond_3

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_68

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_4

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    :cond_4
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

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

    :goto_11
    if-ne p2, v5, :cond_5

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_5
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_12
    if-gt v0, v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaddingStart()I

    move-result v0

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

    nop

    :goto_14
    if-ne p2, v0, :cond_7

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

    :cond_7
    :goto_15
    goto/32 :goto_88

    nop

    nop

    :goto_16
    if-ne p2, v2, :cond_8

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_5e

    nop

    nop

    :goto_17
    if-ne v5, v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    :cond_9
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    nop

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

    nop

    :goto_19
    if-eqz p1, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    return-void

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move p2, v3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v4

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_1e
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-ne v0, v4, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :cond_b
    goto/32 :goto_6a

    nop

    nop

    :goto_20
    const v5, 0x800005

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_21
    goto/16 :goto_47

    nop

    nop

    :goto_22
    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_23
    neg-int p1, p1

    nop

    nop

    :goto_24
    goto/32 :goto_7d

    nop

    nop

    :goto_25
    goto/32 :goto_1b

    nop

    :goto_26
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p1

    nop

    nop

    :goto_28
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_29
    invoke-static {v3, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_2a
    sub-int/2addr p2, p1

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_2b
    iput v3, p0, Lcom/google/android/material/button/MaterialButton;->n:I

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_2c
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2d
    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    nop

    nop

    nop

    nop

    :goto_2e
    goto/32 :goto_37

    nop

    nop

    :goto_2f
    const/4 v2, 0x1

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

    :goto_30
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_31
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->33b3102b6558811a7b7629a1e8e59bd2m()Z

    move-result v0

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

    :goto_32
    sub-int/2addr p1, v0

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct {p0, v3}, Lcom/google/android/material/button/MaterialButton;->1478a1c7833aac5e360e0ba4b0c0c568m(Z)V

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v0, v2, v3, v5, v4}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_36
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_37
    sub-int/2addr p2, v0

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_38
    if-ne p2, v0, :cond_c

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

    :cond_c
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    iget v5, p0, Lcom/google/android/material/button/MaterialButton;->s:I

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    and-int/2addr p2, v5

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v5, 0x6

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

    :goto_3c
    invoke-interface {v4, v2, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    sub-int/2addr p2, p1

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_3e
    if-eqz v0, :cond_d

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_40
    sub-int/2addr p1, v1

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

    :goto_41
    sub-int/2addr p1, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_42
    if-nez v4, :cond_e

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-ne p2, v4, :cond_f

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_44
    if-nez v0, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    :cond_10
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    :goto_46
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_53

    nop

    nop

    nop

    nop

    :goto_48
    iget v1, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_49
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->166277962e993c138a6b1f0c9b571cc0m()I

    move-result v1

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    iput v3, p0, Lcom/google/android/material/button/MaterialButton;->n:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_4b
    div-int/2addr p2, v1

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4c
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_4e
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_4f
    new-instance v4, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_50
    const/16 v0, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_51
    if-ne p2, v2, :cond_11

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    :cond_11
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_52
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->s:I

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    iput v3, p0, Lcom/google/android/material/button/MaterialButton;->o:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_54
    if-eqz v0, :cond_12

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

    :cond_12
    goto/32 :goto_79

    nop

    nop

    :goto_55
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->n:I

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_58
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_59
    goto/32 :goto_73

    nop

    nop

    :goto_5a
    const v5, 0x800007

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

    :goto_5b
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->s:I

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    move-result v0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    if-eq p2, v0, :cond_13

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_71

    nop

    nop

    :goto_5e
    const/4 v5, 0x5

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    :goto_5f
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->o:I

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_60
    if-ne p2, p1, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :cond_14
    goto/32 :goto_55

    nop

    nop

    nop

    :goto_61
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->b1051a9d8893542362ad09051775f8f6m()Z

    move-result p1

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

    nop

    :goto_63
    const/4 v0, 0x3

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_56

    nop

    nop

    :goto_65
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_66
    move p2, v2

    nop

    nop

    nop

    nop

    nop

    :goto_67
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    :goto_68
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    nop

    nop

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_6a
    move v2, v3

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6c
    if-ne p2, p1, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_9b

    nop

    nop

    nop

    :goto_6d
    goto/16 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-direct {p0, v3}, Lcom/google/android/material/button/MaterialButton;->1478a1c7833aac5e360e0ba4b0c0c568m(Z)V

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getTextAlignment()I

    move-result p2

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_71
    div-int/lit8 p1, p1, 0x2

    nop

    nop

    nop

    nop

    :goto_72
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_73
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->m:I

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_74
    invoke-direct {p0, v3}, Lcom/google/android/material/button/MaterialButton;->1478a1c7833aac5e360e0ba4b0c0c568m(Z)V

    :goto_75
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    nop

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

    :goto_77
    sget-object p2, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

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

    :goto_78
    sub-int/2addr p1, v1

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_79
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->3fd9578e124c68aa49885b22b61b4ec8m()Z

    move-result v0

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    sub-int/2addr p1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_7b
    goto/16 :goto_69

    nop

    nop

    nop

    nop

    :goto_7c
    goto/32 :goto_77

    nop

    nop

    :goto_7d
    iget p2, p0, Lcom/google/android/material/button/MaterialButton;->n:I

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    :goto_7e
    invoke-direct {p0, v3}, Lcom/google/android/material/button/MaterialButton;->1478a1c7833aac5e360e0ba4b0c0c568m(Z)V

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iput v3, p0, Lcom/google/android/material/button/MaterialButton;->o:I

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_80
    goto/16 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_81
    goto/32 :goto_85

    nop

    nop

    :goto_82
    const v0, 0x1a

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

    nop

    :goto_83
    const v1, 0xd

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_84
    const/4 v4, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_85
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getGravity()I

    move-result p2

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

    :goto_86
    if-ne v5, v2, :cond_16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a0

    nop

    :cond_16
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_87
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaddingEnd()I

    move-result v1

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_88
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->m:I

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

    :goto_89
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_8a
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_8b
    if-eq v5, v1, :cond_17

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

    :cond_17
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8c
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_8d
    sub-int/2addr p2, p1

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

    :goto_8e
    if-eq v0, v4, :cond_18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_18
    goto/32 :goto_8a

    nop

    nop

    :goto_8f
    if-nez p1, :cond_19

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    goto/16 :goto_2e

    nop

    nop

    nop

    :goto_91
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_92
    if-eqz v0, :cond_1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_93
    if-ne p2, v5, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_20

    nop

    nop

    :goto_94
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :goto_95
    if-lez v0, :cond_1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_1c
    goto/32 :goto_25

    nop

    :goto_96
    iget v0, p0, Lcom/google/android/material/button/MaterialButton;->s:I

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getLayout()Landroid/text/Layout;

    move-result-object v2

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

    :goto_98
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    :goto_9a
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_9b
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->o:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v0

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    if-eq p1, v0, :cond_1d

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :cond_1d
    goto/32 :goto_7f

    nop

    nop

    nop

    :goto_9e
    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    return-void

    nop

    nop

    :goto_a0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop
.end method

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

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    const v0, 0x101009f

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

    :goto_3
    sput-object v0, Lcom/google/android/material/button/MaterialButton;->g:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    filled-new-array {v0}, [I

    move-result-object v0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_5
    const v0, 0x10100a0

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

    :goto_6
    sput-object v0, Lcom/google/android/material/button/MaterialButton;->f:[I

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1

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

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/button/MaterialButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x7f040483

    nop

    nop

    goto/32 :goto_0

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
    .locals 21

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput v11, v0, Lcom/google/android/material/button/MaterialButton;->d:I

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v7, v6}, Lrku;->e(F)Lrku;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v8}, Lcom/google/android/material/button/MaterialButton;->getPaddingEnd()I

    move-result v8

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_3
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_4
    new-array v2, v2, [Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    :goto_7
    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_9
    new-array v6, v10, [I

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

    :goto_a
    new-instance v13, Lrkp;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_123

    nop

    nop

    :goto_e
    invoke-static/range {v1 .. v6}, Lric;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_f
    const v5, 0x7f1508ca

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    iput-object v0, v5, Lrgf;->d:Ldyt;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {v6, v1, v7}, Lqqy;->g(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_110

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/high16 v2, 0x44480000    # 800.0f

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v9}, Lcom/google/android/material/button/MaterialButton;->getPaddingBottom()I

    move-result v9

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_14
    invoke-static {v6, v7}, La;->n(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v6

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, v5, Lrgf;->a:Lcom/google/android/material/button/MaterialButton;

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v6, 0x5

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    nop

    :goto_17
    if-nez v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    :cond_1
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v3, v11}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v7, 0x6

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1a
    iget-object v6, v5, Lrgf;->a:Lcom/google/android/material/button/MaterialButton;

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    :goto_1b
    iput v11, v0, Lcom/google/android/material/button/MaterialButton;->c:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput-boolean v6, v5, Lrgf;->r:Z

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

    :goto_1d
    const/16 v6, 0x14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_1e
    invoke-static {v12, v7, v8, v9}, Lrku;->c(Landroid/content/Context;Landroid/util/AttributeSet;II)Lrkt;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v12}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    add-int/2addr v8, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_22
    move/from16 v18, v10

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_23
    iput v11, v0, Lcom/google/android/material/button/MaterialButton;->e:I

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v3, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    :goto_25
    iput v11, v0, Lcom/google/android/material/button/MaterialButton;->t:I

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    :goto_26
    goto/16 :goto_69

    nop

    :goto_27
    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_28
    iget v2, v5, Lrgf;->h:I

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, v5, Lrgf;->c:Lrle;

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {v14}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v14

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_2b
    new-instance v5, Ltar;

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v0}, Ldyt;-><init>()V

    goto/32 :goto_ba

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v5}, Lrgf;->a()Lrkp;

    move-result-object v0

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move-object v1, v12

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_2f
    iget v2, v5, Lrgf;->e:I

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

    :goto_30
    invoke-direct {v14, v15}, Lrkp;-><init>(Lrku;)V

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    :goto_31
    iput-object v6, v5, Lrgf;->n:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_33
    const/16 v2, 0xd

    nop

    goto/32 :goto_10e

    nop

    nop

    :goto_34
    move/from16 v8, p3

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    :goto_35
    iget-object v6, v5, Lrgf;->a:Lcom/google/android/material/button/MaterialButton;

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    :goto_36
    iput-object v5, v0, Lcom/google/android/material/button/MaterialButton;->h:Lrgf;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v1, v6, v11}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_38
    invoke-direct {v13, v14}, Lrkp;-><init>(Lrku;)V

    goto/32 :goto_e7

    nop

    nop

    nop

    :goto_39
    iput-boolean v10, v0, Lcom/google/android/material/button/MaterialButton;->r:Z

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    iget-object v15, v5, Lrgf;->o:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iput v6, v5, Lrgf;->j:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    :goto_3c
    new-instance v4, Lrle;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_3d
    invoke-static {v1, v7, v8, v9}, Lrmt;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    if-nez v3, :cond_2

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    move-object v2, v5

    nop

    :goto_40
    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_41
    invoke-direct {v0, v10}, Lcom/google/android/material/button/MaterialButton;->1478a1c7833aac5e360e0ba4b0c0c568m(Z)V

    goto/32 :goto_b

    nop

    nop

    :goto_42
    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

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

    :goto_43
    add-int/2addr v7, v2

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_44
    invoke-static {v11}, Lrke;->b(Landroid/content/res/ColorStateList;)Landroid/content/res/ColorStateList;

    move-result-object v11

    nop

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v1, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    :goto_46
    iget-object v3, v5, Lrgf;->d:Ldyt;

    nop

    nop

    nop

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_48
    iput-boolean v10, v0, Lcom/google/android/material/button/MaterialButton;->q:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    :goto_49
    iput-object v6, v5, Lrgf;->m:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_4a
    if-nez v7, :cond_3

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_4b
    invoke-virtual {v5}, Lrgf;->b()V

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const/16 v6, 0x9

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

    :goto_4d
    iget v14, v5, Lrgf;->j:I

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_4e
    invoke-static {v6, v1, v7}, Lqqy;->g(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_4f
    iget-object v14, v5, Lrgf;->l:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    :goto_50
    const/4 v10, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_51
    invoke-static {v5, v6}, Lj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    nop

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v6, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_fd

    nop

    nop

    :goto_53
    iput-boolean v3, v5, Lrgf;->q:Z

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_55
    const/4 v2, 0x2

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

    :goto_56
    invoke-direct {v5, v12, v2}, Ltar;-><init>(Landroid/content/Context;I)V

    goto/32 :goto_e2

    nop

    nop

    :goto_57
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_58
    invoke-virtual {v13, v14}, Lrkp;->k(Landroid/content/Context;)V

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-direct {v3, v11, v2, v0}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    if-nez v14, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    :cond_4
    goto/32 :goto_ec

    nop

    nop

    nop

    :goto_5b
    invoke-direct {v5, v0, v2}, Lrgf;-><init>(Lcom/google/android/material/button/MaterialButton;Lrku;)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_5d
    int-to-float v14, v14

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    move/from16 v17, v13

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_5f
    const/16 v3, 0xa

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    move/from16 v4, p3

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

    :goto_61
    const/16 v2, 0x11

    nop

    goto/32 :goto_42

    nop

    nop

    :goto_62
    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_63
    iget-object v0, v5, Lrgf;->o:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_64
    iget-object v14, v5, Lrgf;->d:Ldyt;

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_65
    iput v6, v5, Lrgf;->h:I

    nop

    nop

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_66
    invoke-virtual {v0, v2}, Lrkp;->m(F)V

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-direct {v15, v2}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    :goto_68
    invoke-direct {v4, v5}, Lrle;-><init>(Ltar;)V

    :goto_69
    goto/32 :goto_c4

    nop

    nop

    :goto_6a
    iget v0, v5, Lrgf;->h:I

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    move-object/from16 v2, p2

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_6c
    const/4 v14, 0x1

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    :goto_6d
    add-int/2addr v6, v2

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {v0, v2}, Ldyt;->c(F)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_6f
    check-cast v2, Lrku;

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_70
    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_71
    iput v1, v0, Lcom/google/android/material/button/MaterialButton;->b:F

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_72
    move-object/from16 v7, p2

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_73
    invoke-virtual {v14, v15}, Lrkp;->r(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v1, v3, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_75
    const v0, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_76
    new-instance v1, Ljava/util/LinkedHashSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    :goto_77
    goto/16 :goto_d3

    nop

    nop

    nop

    :goto_78
    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_79
    if-nez v14, :cond_5

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_5
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    iput-object v2, v0, Lcom/google/android/material/button/MaterialButton;->j:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_7b
    invoke-virtual {v5}, Lrgf;->d()V

    :goto_7c
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7d
    iput v6, v5, Lrgf;->i:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    iget-object v3, v5, Lrgf;->o:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_7f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    :goto_80
    iget-object v12, v5, Lrgf;->a:Lcom/google/android/material/button/MaterialButton;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_81
    const/16 v3, 0xe

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    :goto_82
    iput v6, v5, Lrgf;->u:I

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_83
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_84
    if-nez v0, :cond_6

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_94

    nop

    nop

    nop

    :goto_85
    iget v15, v5, Lrgf;->j:I

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_86
    invoke-virtual {v13, v14, v15}, Lrkp;->q(FLandroid/content/res/ColorStateList;)V

    goto/32 :goto_d7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    iput-object v3, v5, Lrgf;->t:Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    :goto_88
    invoke-virtual {v15, v3}, Lrkp;->p(Lrle;)V

    :goto_89
    goto/32 :goto_46

    nop

    nop

    :goto_8a
    iget-object v15, v5, Lrgf;->o:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_8b
    iput v6, v5, Lrgf;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iput-object v4, v5, Lrgf;->c:Lrle;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_8d
    new-instance v0, Ldyt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_8e
    new-instance v15, Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8f
    iget-object v15, v5, Lrgf;->d:Ldyt;

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_90
    new-instance v3, Landroid/graphics/drawable/RippleDrawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_91
    iput-object v6, v5, Lrgf;->k:Landroid/graphics/PorterDuff$Mode;

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

    :goto_92
    invoke-super {v12, v0}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_93
    iput-object v1, v0, Lcom/google/android/material/button/MaterialButton;->i:Ljava/util/LinkedHashSet;

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_94
    invoke-virtual {v5}, Lrgf;->d()V

    :goto_95
    goto/32 :goto_8c

    nop

    nop

    :goto_96
    invoke-virtual {v1, v6, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v5

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_98
    if-nez v14, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_9e

    nop

    nop

    :goto_99
    invoke-virtual {v0, v2}, Ldyt;->e(F)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v14, v15}, Lrkp;->p(Lrle;)V

    :goto_9b
    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_9c
    iget-object v8, v5, Lrgf;->a:Lcom/google/android/material/button/MaterialButton;

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

    :goto_9d
    invoke-direct {v5, v2}, Lrku;-><init>(Lrkt;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    invoke-virtual {v13, v14}, Lrkp;->l(Ldyt;)V

    :goto_9f
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_a0
    const/16 v7, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    move-object/from16 v16, v15

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_a2
    iget-object v2, v4, Lrle;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    :goto_a3
    iget-object v9, v5, Lrgf;->a:Lcom/google/android/material/button/MaterialButton;

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

    :goto_a4
    invoke-direct {v15, v3}, Lrkp;-><init>(Lrku;)V

    goto/32 :goto_b0

    nop

    nop

    :goto_a5
    const/16 v6, 0x15

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_a6
    const/4 v10, 0x0

    nop

    nop

    :goto_a7
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    iget v10, v5, Lrgf;->g:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_a9
    invoke-static {v10}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v15

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_aa
    invoke-virtual {v1, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v7

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

    :goto_ab
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_ac
    goto/32 :goto_125

    nop

    nop

    nop

    nop

    :goto_ad
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    nop

    :goto_ae
    const/4 v11, -0x1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    invoke-virtual {v14, v15}, Lrkp;->s(F)V

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_b0
    iput-object v15, v5, Lrgf;->o:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    iput v2, v0, Lcom/google/android/material/button/MaterialButton;->p:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    :goto_b2
    iget v13, v5, Lrgf;->e:I

    nop

    goto/32 :goto_a8

    nop

    nop

    :goto_b3
    invoke-virtual {v6}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v6

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    :goto_b4
    check-cast v15, Lrkp;

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_b5
    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    move/from16 v19, v14

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    :goto_b7
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    nop

    :goto_b8
    const/4 v6, 0x7

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_b9
    if-eqz v5, :cond_8

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_cc

    nop

    nop

    nop

    :goto_ba
    const v2, 0x3f19999a    # 0.6f

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_bb
    new-instance v15, Lrkp;

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {v7}, Lcom/google/android/material/button/MaterialButton;->getPaddingTop()I

    move-result v7

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

    :goto_bd
    iget-object v3, v5, Lrgf;->c:Lrle;

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_be
    iget v14, v5, Lrgf;->f:I

    nop

    goto/32 :goto_6a

    nop

    nop

    :goto_bf
    iget v2, v5, Lrgf;->f:I

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

    :goto_c0
    iput-boolean v6, v5, Lrgf;->s:Z

    nop

    goto/32 :goto_c7

    nop

    nop

    :goto_c1
    invoke-static {v2, v3}, La;->n(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_c2
    aput-object v14, v2, v10

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    :goto_c3
    iput v2, v5, Lrgf;->e:I

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_c4
    if-nez v4, :cond_9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    :cond_9
    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c5
    const/16 v6, 0x8

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_c6
    iget-object v14, v5, Lrgf;->a:Lcom/google/android/material/button/MaterialButton;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_c7
    iget-object v6, v5, Lrgf;->a:Lcom/google/android/material/button/MaterialButton;

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    iput v2, v0, Lcom/google/android/material/button/MaterialButton;->m:I

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-virtual {v1, v2, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

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

    :goto_ca
    const v9, 0x7f1508ca

    nop

    goto/32 :goto_d6

    nop

    nop

    :goto_cb
    invoke-virtual {v6}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v6

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_cc
    goto/16 :goto_69

    nop

    nop

    nop

    nop

    :goto_cd
    goto/32 :goto_2b

    nop

    nop

    :goto_ce
    const/16 v2, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    :goto_cf
    iput v2, v0, Lcom/google/android/material/button/MaterialButton;->s:I

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_d0
    int-to-float v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_d1
    invoke-direct/range {v15 .. v20}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    goto/32 :goto_63

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {v0, v2}, Lrkp;->setState([I)Z

    :goto_d3
    goto/32 :goto_15

    nop

    nop

    :goto_d4
    const v1, 0xa

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

    :goto_d5
    if-eqz v2, :cond_a

    nop

    goto/32 :goto_27

    nop

    :cond_a
    goto/32 :goto_26

    nop

    nop

    :goto_d6
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_d7
    new-instance v14, Lrkp;

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    :goto_d8
    sget-object v7, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_d9
    invoke-virtual {v5, v6}, Lrgf;->c(Lrku;)V

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    check-cast v15, Lrkp;

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_db
    iget-object v11, v5, Lrgf;->n:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_dc
    if-nez v12, :cond_b

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    :cond_b
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_dd
    iget-object v2, v5, Lrgf;->a:Lcom/google/android/material/button/MaterialButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    :goto_de
    if-nez v15, :cond_c

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

    :cond_c
    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_df
    if-nez v1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    :cond_d
    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_e0
    invoke-virtual {v15, v3}, Lrkp;->l(Ldyt;)V

    :goto_e1
    goto/32 :goto_7e

    nop

    nop

    :goto_e2
    iget v2, v5, Ltar;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_e3
    add-int/2addr v9, v2

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    iget-object v7, v5, Lrgf;->a:Lcom/google/android/material/button/MaterialButton;

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_e5
    iget-object v14, v5, Lrgf;->k:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    iget v2, v5, Lrgf;->g:I

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

    :goto_e7
    iget-object v14, v5, Lrgf;->c:Lrle;

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_e8
    const/16 v2, 0xc

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :goto_e9
    if-lez v0, :cond_e

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_ab

    nop

    :goto_ea
    invoke-virtual {v0, v1}, Lcom/google/android/material/button/MaterialButton;->setCompoundDrawablePadding(I)V

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    :goto_eb
    const/4 v6, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_ec
    invoke-virtual {v13, v14}, Lrkp;->p(Lrle;)V

    :goto_ed
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    :goto_ee
    const/16 v7, 0x13

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

    :goto_ef
    if-nez v15, :cond_f

    nop

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    :cond_f
    goto/32 :goto_f9

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    iget-object v1, v0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    :goto_f1
    iget-object v3, v5, Lrgf;->b:Lrku;

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_f2
    invoke-static {v2, v1, v3}, Lqqy;->h(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    nop

    :goto_f3
    new-instance v2, Landroid/graphics/drawable/InsetDrawable;

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_f4
    iget-object v0, v5, Lrgf;->t:Landroid/graphics/drawable/LayerDrawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    :goto_f5
    invoke-direct {v0, v1, v7, v8}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    :goto_f6
    iget v1, v0, Lcom/google/android/material/button/MaterialButton;->p:I

    nop

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    :goto_f7
    iget-object v15, v5, Lrgf;->c:Lrle;

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_f8
    new-instance v5, Lrgf;

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    invoke-virtual {v14, v15}, Lrkp;->l(Ldyt;)V

    :goto_fa
    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    if-nez v3, :cond_10

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fc
    int-to-float v15, v15

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_fd
    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    iget-object v7, v5, Lrgf;->b:Lrku;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    nop

    :goto_ff
    move-object v15, v2

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_100
    iget-object v14, v5, Lrgf;->b:Lrku;

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_101
    invoke-static {v2, v1, v3}, Lqqy;->g(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    :goto_102
    invoke-virtual {v6}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v6

    nop

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    :goto_103
    iget v2, v5, Lrgf;->u:I

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    :goto_104
    const-string v6, "xml"

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    :goto_105
    iget-object v15, v5, Lrgf;->m:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_106
    goto/16 :goto_a7

    nop

    nop

    nop

    :goto_107
    goto/32 :goto_a6

    nop

    nop

    nop

    :goto_108
    iput-object v2, v0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_10a

    nop

    nop

    :goto_109
    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_10a
    const/16 v2, 0xb

    nop

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    :goto_10b
    move/from16 v20, v0

    nop

    nop

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_10c
    iput-object v2, v0, Lcom/google/android/material/button/MaterialButton;->k:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :goto_10d
    invoke-virtual/range {p0 .. p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    :goto_10f
    if-nez v0, :cond_11

    nop

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_110
    iput-object v6, v5, Lrgf;->l:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    :goto_111
    const/4 v3, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_112
    invoke-virtual {v1, v6, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_113
    invoke-static {v6, v1, v7}, Lqqy;->g(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_114
    invoke-virtual {v14, v10}, Lrkp;->setTint(I)V

    goto/32 :goto_85

    nop

    nop

    :goto_115
    iput v6, v5, Lrgf;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    :goto_116
    sget-object v3, Lrgh;->a:[I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_117
    iget-object v15, v5, Lrgf;->b:Lrku;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_118
    const/high16 v1, -0x40800000    # -1.0f

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_119
    new-instance v5, Lrku;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    :goto_11a
    invoke-virtual {v2}, Lcom/google/android/material/button/MaterialButton;->getDrawableState()[I

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_11b
    invoke-virtual {v13, v14}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_e5

    nop

    nop

    :goto_11c
    invoke-virtual {v0, v6, v7, v8, v9}, Lcom/google/android/material/button/MaterialButton;->setPaddingRelative(IIII)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_11d
    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    int-to-float v6, v6

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    invoke-virtual {v6}, Lcom/google/android/material/button/MaterialButton;->getPaddingStart()I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_120
    goto/16 :goto_40

    nop

    nop

    nop

    :goto_121
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_122
    iget-object v6, v5, Lrgf;->a:Lcom/google/android/material/button/MaterialButton;

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_123
    goto/16 :goto_69

    nop

    nop

    nop

    nop

    :goto_124
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_125
    move-object/from16 v0, p0

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

    :goto_126
    aput-object v13, v2, v14

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
.end method

.method private final b1051a9d8893542362ad09051775f8f6m()Z
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    if-ne p0, v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eq p0, v0, :cond_1

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_1
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    const/16 v0, 0x20

    nop

    nop

    goto/32 :goto_1

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
    goto/32 :goto_5

    nop

    nop

    :goto_5
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_6
    iget p0, p0, Lcom/google/android/material/button/MaterialButton;->s:I

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    const/4 p0, 0x0

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

    :goto_8
    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    :goto_a
    const/16 v0, 0x10

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    nop
.end method


# virtual methods
.method final b()Ljava/lang/String;
    .locals 2

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    const-class p0, Landroid/widget/CompoundButton;

    nop

    nop

    :goto_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_3
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_14

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->g()Z

    move-result p0

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

    :goto_6
    const-class p0, Landroid/widget/Button;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_a
    if-eqz v1, :cond_0

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

    nop

    :goto_b
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    add-int v0, v0, v1

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

    :goto_e
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_2

    nop

    :goto_10
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-ne v0, p0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const v1, 0xe

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
.end method

.method public final c(I)V
    .locals 1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    iput-boolean v0, p0, Lrgf;->q:Z

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lrgf;->c(Lrku;)V

    :goto_3
    goto/32 :goto_7

    nop

    nop

    :goto_4
    invoke-virtual {v0, p1}, Lrku;->e(F)Lrku;

    move-result-object p1

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

    :goto_5
    iget v0, p0, Lrgf;->i:I

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

    :goto_6
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    :goto_9
    iget-boolean v0, p0, Lrgf;->q:Z

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_a
    int-to-float p1, p1

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->h:Lrgf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    if-ne v0, p1, :cond_2

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_2
    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iput p1, p0, Lrgf;->i:I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_f
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->1a36313b7ed15ba14e0acb4da569b8b7m()Z

    move-result v0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lrgf;->b:Lrku;

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
.end method

.method public final d(Lrku;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lrgf;->c(Lrku;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->1a36313b7ed15ba14e0acb4da569b8b7m()Z

    move-result v0

    nop

    nop

    goto/32 :goto_3

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

    goto/32 :goto_7

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

    :goto_4
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    :goto_5
    const-string p1, "Attempted to set ShapeAppearanceModel on a MaterialButton which has an overwritten background."

    nop

    nop

    nop

    goto/32 :goto_4

    nop

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
    goto/32 :goto_0

    nop

    nop

    :goto_8
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->h:Lrgf;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_9
    throw p0

    nop
.end method

.method public final e(Landroid/content/res/ColorStateList;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->1a36313b7ed15ba14e0acb4da569b8b7m()Z

    move-result v0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
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
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrgf;->l:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_18

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lrgf;->a()Lrkp;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object v0, p0, Lhj;->a:Llt;

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lhj;->a()V

    :goto_9
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_a
    if-eqz v0, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    :goto_b
    if-ne v0, p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Lrgf;->l:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    iput-boolean p1, v0, Llt;->d:Z

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0}, Lrgf;->a()Lrkp;

    move-result-object p1

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

    :goto_f
    return-void

    nop

    nop

    nop

    :goto_10
    iput-object p1, v0, Llt;->a:Landroid/content/res/ColorStateList;

    nop

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

    :goto_11
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->h:Lrgf;

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

    :goto_12
    iget-object v0, p0, Lrgf;->l:Landroid/content/res/ColorStateList;

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
    if-nez v0, :cond_4

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

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lhj;->a:Llt;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    const/4 p1, 0x1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_16
    new-instance v0, Llt;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatButton;->a:Lhj;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v0}, Llt;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lhj;->a:Llt;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop
.end method

.method public final f(Landroid/graphics/PorterDuff$Mode;)V
    .locals 1

    goto/32 :goto_c

    nop

    nop

    :goto_0
    iget-object p0, p0, Lrgf;->k:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->h:Lrgf;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_2
    iget-object v0, p0, Lhj;->a:Llt;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-boolean p1, v0, Llt;->c:Z

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lrgf;->k:Landroid/graphics/PorterDuff$Mode;

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
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_1
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lrgf;->a()Lrkp;

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

    :goto_8
    iget-object v0, p0, Lhj;->a:Llt;

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

    :goto_9
    iput-object v0, p0, Lhj;->a:Llt;

    nop

    nop

    :goto_a
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_c
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->1a36313b7ed15ba14e0acb4da569b8b7m()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    iput-object p1, v0, Llt;->b:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object p1, p0, Lrgf;->k:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {v0}, Llt;-><init>()V

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lrgf;->a()Lrkp;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-ne v0, p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_14
    if-nez p0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2

    nop

    nop

    :goto_15
    const/4 p1, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_16
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lhj;->a()V

    :goto_18
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lrgf;->k:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1a
    if-nez p1, :cond_5

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_5
    goto/32 :goto_7

    nop

    nop

    :goto_1b
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatButton;->a:Lhj;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    new-instance v0, Llt;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1d
    return-void

    nop

    nop

    nop
.end method

.method public final g()Z
    .locals 0

    goto/32 :goto_8

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
    if-nez p0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

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

    :goto_3
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

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
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-boolean p0, p0, Lrgf;->r:Z

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

    :goto_8
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->h:Lrgf;

    nop

    goto/32 :goto_6

    nop

    nop

    nop
.end method

.method public final getBackgroundTintList()Landroid/content/res/ColorStateList;
    .locals 1

    goto/32 :goto_10

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

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_2
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatButton;->a:Lhj;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    goto :goto_b

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
    iget-object p0, p0, Lhj;->a:Llt;

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
    if-nez p0, :cond_1

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

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->h:Lrgf;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lrgf;->l:Landroid/content/res/ColorStateList;

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
    if-nez p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    move-object p0, v0

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p0, p0, Llt;->a:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_d
    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    return-object p0

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->1a36313b7ed15ba14e0acb4da569b8b7m()Z

    move-result v0

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
.end method

.method public final getBackgroundTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    goto/32 :goto_9

    nop

    nop

    :goto_0
    return-object p0

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Llt;->b:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_3
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->h:Lrgf;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p0, p0, Landroid/support/v7/widget/AppCompatButton;->a:Lhj;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_5
    if-nez p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_6
    if-nez p0, :cond_2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_c

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->1a36313b7ed15ba14e0acb4da569b8b7m()Z

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

    :goto_a
    iget-object p0, p0, Lrgf;->k:Landroid/graphics/PorterDuff$Mode;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_b
    move-object p0, v0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_c

    nop

    nop

    :goto_e
    goto/32 :goto_b

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

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lhj;->a:Llt;

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final isChecked()Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method protected onAttachedToWindow()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Lrgf;->a()Lrkp;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

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

    :goto_2
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatButton;->onAttachedToWindow()V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->h:Lrgf;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-static {p0, v0}, Lrkm;->d(Landroid/view/View;Lrkp;)V

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->1a36313b7ed15ba14e0acb4da569b8b7m()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onCreateDrawableState(I)[I
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int/lit8 p1, p1, 0x2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {p1, p0}, Lcom/google/android/material/button/MaterialButton;->mergeDrawableStates([I[I)[I

    :goto_2
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->g()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    sget-object v0, Lcom/google/android/material/button/MaterialButton;->f:[I

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    invoke-static {p1, v0}, Lcom/google/android/material/button/MaterialButton;->mergeDrawableStates([I[I)[I

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_8
    if-nez v0, :cond_0

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
    return-object p1

    nop

    :goto_a
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->onCreateDrawableState(I)[I

    move-result-object p1

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

    :goto_b
    if-nez p0, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_c
    sget-object p0, Lcom/google/android/material/button/MaterialButton;->g:[I

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

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

    :goto_3
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    goto/32 :goto_1

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->b()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto/32 :goto_5

    nop

    nop

    :goto_1
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isClickable()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->g()Z

    move-result v0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    goto/32 :goto_4

    nop

    nop

    :goto_7
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->b()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 0

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1
    iget p3, p0, Lcom/google/android/material/button/MaterialButton;->p:I

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_2
    sub-int/2addr p4, p2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    int-to-float p1, p4

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

    :goto_4
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->e:I

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->t:I

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_6
    iget p3, p0, Lcom/google/android/material/button/MaterialButton;->t:I

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    cmpl-float p1, p1, p5

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_9
    add-int p1, p3, p4

    nop

    :goto_a
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_b
    if-ne p3, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    :goto_c
    const/high16 p5, -0x40800000    # -1.0f

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sub-int/2addr p3, p1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-eq p1, p2, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_1
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_f
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->b:F

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_4

    nop

    nop

    :goto_11
    goto :goto_a

    nop

    nop

    :goto_12
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, p1, p3}, Lcom/google/android/material/button/MaterialButton;->51550bab6b6440a4fd45f825c221b363m(II)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    if-eq p1, p2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

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

    :goto_15
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->b:F

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_16
    if-eq p1, p2, :cond_3

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

    :cond_3
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->c:I

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_18
    const/4 p1, 0x0

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

    :goto_19
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->166277962e993c138a6b1f0c9b571cc0m()I

    move-result p4

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p4

    nop

    :goto_1b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->d:I

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-super/range {p0 .. p5}, Landroid/support/v7/widget/AppCompatButton;->onLayout(ZIIII)V

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result p3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    sub-int/2addr p3, p4

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

    :goto_22
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget p1, p0, Lcom/google/android/material/button/MaterialButton;->d:I

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz p4, :cond_5

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_5
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result p1

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz p1, :cond_6

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_29
    iget p4, p0, Lcom/google/android/material/button/MaterialButton;->m:I

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

    :goto_2a
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaddingStart()I

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :goto_2b
    iput p3, p0, Lcom/google/android/material/button/MaterialButton;->e:I

    nop

    nop

    :goto_2c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2d
    const/4 p2, -0x1

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2e
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getPaddingEnd()I

    move-result p1

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_2f
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredHeight()I

    move-result p3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iput p5, p0, Lcom/google/android/material/button/MaterialButton;->b:F

    nop

    :goto_31
    goto/32 :goto_15

    nop

    nop

    :goto_32
    iput p1, p0, Lcom/google/android/material/button/MaterialButton;->c:I

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_24

    nop

    nop

    nop
.end method

.method public final onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, v0}, Landroid/support/v7/widget/AppCompatButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-boolean p1, p1, Lrgd;->a:Z

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    check-cast p1, Lrgd;

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

    :goto_4
    iget-object v0, p1, Ldxv;->d:Landroid/os/Parcelable;

    nop

    goto/32 :goto_0

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

    :goto_6
    instance-of v0, p1, Lrgd;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatButton;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    new-instance v1, Lrgd;

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

    :goto_2
    add-int v0, v0, v1

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

    :goto_3
    iget-boolean p0, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_8
    iput-boolean p0, v1, Lrgd;->a:Z

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v1, v0}, Lrgd;-><init>(Landroid/os/Parcelable;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    :goto_e
    const v1, 0x1d

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/AppCompatButton;->onTextChanged(Ljava/lang/CharSequence;III)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/google/android/material/button/MaterialButton;->51550bab6b6440a4fd45f825c221b363m(II)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredHeight()I

    move-result p2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop
.end method

.method public final performClick()Z
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, v0, Lrgf;->s:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->h:Lrgf;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->toggle()V

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatButton;->performClick()Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop
.end method

.method public final refreshDrawableState()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    const v1, 0x1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

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

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->invalidate()V

    :goto_8
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

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

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getDrawableState()[I

    move-result-object v0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_1

    nop

    nop

    nop

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

    nop

    :goto_c
    const v0, 0x18

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    iget-object v1, p0, Lcom/google/android/material/button/MaterialButton;->l:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-super {p0}, Landroid/support/v7/widget/AppCompatButton;->refreshDrawableState()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_1

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
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setBackgroundColor(I)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lrgf;->a()Lrkp;

    move-result-object p0

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

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->1a36313b7ed15ba14e0acb4da569b8b7m()Z

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

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lrgf;->a()Lrkp;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0, p1}, Lrkp;->setTint(I)V

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    :goto_a
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->h:Lrgf;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundColor(I)V

    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    goto/32 :goto_3

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
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Lrgf;->b()V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_1
    goto/32 :goto_19

    nop

    :goto_a
    const-string v0, "MaterialButton"

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_b
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/android/material/button/MaterialButton;->h:Lrgf;

    nop

    nop

    nop

    goto/32 :goto_8

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
    goto/32 :goto_18

    nop

    nop

    :goto_10
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->1a36313b7ed15ba14e0acb4da569b8b7m()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getState()[I

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_12
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_13

    nop

    nop

    :goto_13
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_17
    const-string v1, "MaterialButton manages its own background to control elevation, shape, color and states. Consider using backgroundTint, shapeAppearance and other attributes where available. A custom background will ignore these attributes and you should consider handling interaction states such as pressed, focused and disabled"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_18
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_1

    nop

    nop

    :goto_1a
    goto/32 :goto_10

    nop

    nop

    :goto_1b
    if-ne p1, v0, :cond_2

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setBackgroundResource(I)V
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

    nop

    :goto_1
    invoke-static {v0, p1}, Le;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

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
    if-nez p1, :cond_0

    nop

    nop

    goto/32 :goto_8

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

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getContext()Landroid/content/Context;

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

    nop

    :goto_4
    invoke-virtual {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x0

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto :goto_6

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setBackgroundTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->e(Landroid/content/res/ColorStateList;)V

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

    nop

    nop
.end method

.method public final setBackgroundTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/android/material/button/MaterialButton;->f(Landroid/graphics/PorterDuff$Mode;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final setChecked(Z)V
    .locals 1

    goto/32 :goto_3

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
    goto/32 :goto_13

    nop

    nop

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->g()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    const/4 p1, 0x0

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

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
    invoke-virtual {p1}, Ljava/util/LinkedHashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->isEnabled()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_a
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->r:Z

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

    :goto_b
    if-ne v0, p1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p0, Lcom/google/android/material/button/MaterialButton;->i:Ljava/util/LinkedHashSet;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_e
    invoke-interface {v0}, Lrgc;->a()V

    goto/32 :goto_22

    nop

    nop

    :goto_f
    check-cast p0, Lrgg;

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

    :goto_10
    instance-of p1, p1, Lrgg;

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_11
    if-nez p1, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_1
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getParent()Landroid/view/ViewParent;

    move-result-object p0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eqz p1, :cond_3

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

    nop

    :cond_3
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v0, :cond_4

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

    :cond_4
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->r:Z

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_17
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_18
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_19
    goto :goto_21

    nop

    nop

    :goto_1a
    goto/32 :goto_17

    nop

    nop

    :goto_1b
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->refreshDrawableState()V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1c
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_1d
    iput-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1e
    check-cast v0, Lrgc;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1f
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    :cond_5
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    throw p0

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_8

    nop

    :goto_23
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-boolean p1, p0, Lcom/google/android/material/button/MaterialButton;->r:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop
.end method

.method public final setElevation(F)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lrkp;->m(F)V

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lrgf;->a()Lrkp;

    move-result-object p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_5
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setElevation(F)V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Lcom/google/android/material/button/MaterialButton;->1a36313b7ed15ba14e0acb4da569b8b7m()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButton;->h:Lrgf;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setTextAlignment(I)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredHeight()I

    move-result v0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/button/MaterialButton;->51550bab6b6440a4fd45f825c221b363m(II)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setTextAlignment(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/button/MaterialButton;->getMeasuredWidth()I

    move-result p1

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

    :goto_4
    return-void

    nop
.end method

.method public final setWidth(I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/high16 v0, -0x40800000    # -1.0f

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput v0, p0, Lcom/google/android/material/button/MaterialButton;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

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
    invoke-super {p0, p1}, Landroid/support/v7/widget/AppCompatButton;->setWidth(I)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final toggle()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    iget-boolean v0, p0, Lcom/google/android/material/button/MaterialButton;->q:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-virtual {p0, v0}, Lcom/google/android/material/button/MaterialButton;->setChecked(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    xor-int/lit8 v0, v0, 0x1

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
.end method
