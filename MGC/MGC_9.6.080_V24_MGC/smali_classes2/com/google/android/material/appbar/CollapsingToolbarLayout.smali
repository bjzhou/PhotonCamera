.class public Lcom/google/android/material/appbar/CollapsingToolbarLayout;
.super Landroid/widget/FrameLayout;
.source "PG"


# instance fields
.field private A:I

.field private B:I

.field private C:Z

.field private D:I

.field private E:Z

.field private F:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field final a:Lrhv;

.field final b:Lrgx;

.field c:Landroid/graphics/drawable/Drawable;

.field d:I

.field public e:Ldwy;

.field private f:Z

.field private g:I

.field private h:Landroid/view/ViewGroup;

.field private i:Landroid/view/View;

.field private j:Landroid/view/View;

.field private k:I

.field private l:I

.field private m:I

.field private n:I

.field private final o:Landroid/graphics/Rect;

.field private p:Z

.field private q:Z

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:I

.field private t:Z

.field private u:Landroid/animation/ValueAnimator;

.field private v:J

.field private final w:Landroid/animation/TimeInterpolator;

.field private final x:Landroid/animation/TimeInterpolator;

.field private y:I

.field private z:I


# direct methods
.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(Lcom/google/android/material/appbar/AppBarLayout;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->ccb4c19b7dbd16be9d2a43125797659dm()Z

    move-result p0

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

    :goto_1
    iput-boolean p0, p1, Lcom/google/android/material/appbar/AppBarLayout;->f:Z

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

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

    :goto_5
    const/4 p0, 0x0

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

    nop
.end method

.method private final 1a36313b7ed15ba14e0acb4da569b8b7m()V
    .locals 2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1b

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

    nop

    :goto_2
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    :goto_3
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_1d

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    :goto_6
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez v0, :cond_2

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    :goto_a
    instance-of v1, v0, Landroid/support/v7/widget/Toolbar;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

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

    :goto_c
    instance-of v1, v0, Landroid/widget/Toolbar;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_e
    check-cast v0, Landroid/widget/Toolbar;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_f
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a:Lrhv;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, v0, Lrhv;->v:Ljava/lang/CharSequence;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_16
    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->t:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e(Ljava/lang/CharSequence;)V

    :goto_18
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1a
    goto :goto_1d

    nop

    nop

    :goto_1b
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1f
    check-cast v0, Landroid/support/v7/widget/Toolbar;

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Landroid/widget/Toolbar;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_21
    add-int v0, v0, v1

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

    :goto_22
    if-lez v0, :cond_5

    nop

    goto/32 :goto_8

    nop

    :cond_5
    goto/32 :goto_7

    nop
.end method

.method private final 33b3102b6558811a7b7629a1e8e59bd2m(Landroid/graphics/drawable/Drawable;Landroid/view/View;II)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getBottom()I

    move-result p4

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iget-boolean p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4

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

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
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

    :goto_6
    return-void

    nop

    :goto_7
    invoke-virtual {p1, p0, p0, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->ccb4c19b7dbd16be9d2a43125797659dm()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    if-nez p2, :cond_2

    nop

    goto/32 :goto_1

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
.end method

.method private final 3fd9578e124c68aa49885b22b61b4ec8m(Landroid/graphics/drawable/Drawable;II)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->33b3102b6558811a7b7629a1e8e59bd2m(Landroid/graphics/drawable/Drawable;Landroid/view/View;II)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/ViewGroup;

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
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m()V
    .locals 7

    goto/32 :goto_39

    nop

    nop

    :goto_0
    check-cast v0, Landroid/view/ViewGroup;

    nop

    :goto_1
    goto/32 :goto_1a

    nop

    nop

    :goto_2
    goto :goto_10

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_5
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->j:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_6
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Z

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_7
    if-nez v4, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    instance-of v6, v5, Landroid/widget/Toolbar;

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

    :goto_9
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/32 :goto_b

    nop

    nop

    :goto_a
    move-object v0, v5

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->j:Landroid/view/View;

    nop

    :goto_c
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_d
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->i:Landroid/view/View;

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_3f

    nop

    nop

    :goto_f
    move v4, v3

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz v0, :cond_1

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

    :cond_1
    goto/32 :goto_22

    nop

    nop

    :goto_12
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_3
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 v3, 0x0

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

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_16
    if-nez v3, :cond_4

    nop

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

    :cond_4
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eqz v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_46

    nop

    nop

    :goto_18
    check-cast v1, Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    :goto_1a
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/ViewGroup;

    nop

    :goto_1b
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    move-object v1, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v6, :cond_6

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v1, :cond_7

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->j:Landroid/view/View;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_20
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->j:Landroid/view/View;

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_8

    nop

    goto/32 :goto_44

    nop

    :cond_8
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_23
    if-nez v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_41

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/ViewGroup;

    nop

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

    :goto_25
    invoke-virtual {p0, v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_26
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_27
    iput-boolean v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Z

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_28
    instance-of v1, v0, Landroid/view/ViewGroup;

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

    :goto_29
    return-void

    nop

    nop

    :goto_2a
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_a

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

    :cond_a
    goto/32 :goto_53

    nop

    :goto_2c
    if-nez v6, :cond_b

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v0, Landroid/view/ViewGroup;

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

    :goto_2e
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->i:Landroid/view/View;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->g:I

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_30
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->j:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_33
    if-eqz v0, :cond_c

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_d

    nop

    nop

    :goto_36
    if-ne v1, v2, :cond_d

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_3e

    nop

    nop

    :goto_37
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_38
    check-cast v1, Landroid/view/ViewGroup;

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_39
    const v0, 0x1f

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

    :goto_3a
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Z

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3b
    return-void

    nop

    nop

    :goto_3c
    goto/32 :goto_51

    nop

    nop

    nop

    :goto_3d
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->j:Landroid/view/View;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_3f
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_40
    if-lt v4, v1, :cond_e

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_e
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_42
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Z

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

    :goto_43
    invoke-virtual {v0, v1, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    :goto_44
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildCount()I

    move-result v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_46
    new-instance v0, Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_47
    const v1, 0xc

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

    :goto_48
    if-nez v0, :cond_f

    nop

    goto/32 :goto_44

    nop

    :cond_f
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_49
    instance-of v6, v5, Landroid/support/v7/widget/Toolbar;

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

    :goto_4a
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :goto_4b
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4e
    if-eqz v0, :cond_10

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_3d

    nop

    nop

    :goto_4f
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    nop

    nop

    nop

    :goto_50
    goto/32 :goto_56

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_54

    nop

    nop

    :goto_52
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    :goto_53
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_54
    goto/32 :goto_3a

    nop

    nop

    :goto_55
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/ViewGroup;

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

    :goto_56
    if-ne v3, p0, :cond_11

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :cond_11
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_57
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_58
    instance-of v4, v3, Landroid/view/View;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_59
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_2e

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

    nop

    nop

    :goto_0
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

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_1

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

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const v0, 0x7f04016a

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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11

    goto/32 :goto_cb

    nop

    nop

    :goto_0
    if-eqz v2, :cond_0

    nop

    goto/32 :goto_e8

    nop

    nop

    :cond_0
    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_f9

    nop

    nop

    nop

    :goto_2
    invoke-direct {v2, p3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    goto/32 :goto_d8

    nop

    nop

    :goto_3
    move-object v3, p2

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    nop

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

    nop

    :goto_5
    iget v2, v9, Lrhv;->i:I

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v2, v9, Lrhv;->m:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_7
    iput-object v9, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a:Lrhv;

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/16 p3, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v0, -0x1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_c
    const/4 p3, 0x7

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

    nop

    :goto_d
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_e
    iput p3, v9, Lrhv;->i:I

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->1478a1c7833aac5e360e0ba4b0c0c568m(Lcom/google/android/material/appbar/AppBarLayout;)V

    :goto_10
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {p3, v2}, Ldtk;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget v2, v9, Lrhv;->j:I

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    :goto_13
    if-eqz p3, :cond_1

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_14
    iput v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->y:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v9, p3}, Lrhv;->i(I)V

    goto/32 :goto_28

    nop

    nop

    :goto_16
    goto/32 :goto_102

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v9, p3}, Lrhv;->i(I)V

    :goto_19
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d0

    nop

    nop

    :goto_1b
    const p3, 0x7f1502f6

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/16 p3, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_1d
    iput p3, v9, Lrhv;->j:I

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :goto_1e
    iget v4, v2, Landroid/util/TypedValue;->resourceId:I

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    :goto_1f
    iget-object v2, v9, Lrhv;->l:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    iput-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->w:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    iput p3, v9, Lrhv;->E:I

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

    :goto_22
    if-nez v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    :cond_3
    goto/32 :goto_41

    nop

    nop

    :goto_23
    if-nez v2, :cond_4

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    move v5, p3

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

    :goto_25
    iput v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->B:I

    nop

    goto/32 :goto_fb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iput-boolean p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Z

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-static {p1, p2, p3, v0}, Lrmt;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const p3, 0x7f1502db

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    :goto_2a
    iget v2, v9, Lrhv;->E:I

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_2b
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const v1, 0x17

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v9}, Lrhv;->f()V

    :goto_2e
    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->g:I

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    const v2, 0x800053

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {p3, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/32 :goto_60

    nop

    nop

    :goto_33
    const v0, 0x7f150692

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_34
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    nop

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    :goto_35
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v2

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

    nop

    :goto_36
    if-ne v2, p3, :cond_5

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->postInvalidateOnAnimation()V

    :goto_38
    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    new-array v7, v1, [I

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_3c
    iput-object p3, v9, Lrhv;->l:Landroid/content/res/ColorStateList;

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

    :goto_3d
    if-nez p3, :cond_6

    nop

    goto/32 :goto_d9

    nop

    :cond_6
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const/16 p3, 0xa

    nop

    nop

    goto/32 :goto_ff

    nop

    nop

    :goto_3f
    const/16 p3, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    :goto_40
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->k:I

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c6

    nop

    nop

    nop

    :goto_42
    if-nez v2, :cond_7

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

    :cond_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_43
    move-object v2, v8

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

    :goto_44
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    :goto_45
    const/16 p3, 0x9

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_46
    const/16 v2, 0x258

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_47
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->n:I

    nop

    :goto_48
    goto/32 :goto_b7

    nop

    nop

    :goto_49
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->l:I

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_4a
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_4b
    invoke-virtual {v9}, Lrhv;->f()V

    :goto_4c
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_4d
    sget-object p3, Lrer;->c:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_4e
    sget-object v4, Lrfh;->c:[I

    nop

    nop

    nop

    goto/32 :goto_ce

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget p3, v2, Landroid/util/TypedValue;->data:I

    nop

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

    :goto_50
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_51
    if-nez p3, :cond_8

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    :goto_53
    iput v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->z:I

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v9}, Lrhv;->f()V

    :goto_55
    goto/32 :goto_f1

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_57
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_59
    goto/32 :goto_37

    nop

    nop

    :goto_5a
    iput-wide v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->v:J

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const v2, 0x7f0404ea

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    :goto_5c
    new-instance v0, Landroid/graphics/Rect;

    nop

    goto/32 :goto_113

    nop

    nop

    :goto_5d
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    nop

    :goto_5e
    if-eqz v2, :cond_9

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->ccb4c19b7dbd16be9d2a43125797659dm()Z

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/graphics/drawable/Drawable;

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

    nop

    :goto_61
    goto/16 :goto_98

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_c4

    nop

    nop

    nop

    :goto_63
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_64
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_65
    iput-object v2, v9, Lrhv;->C:Landroid/animation/TimeInterpolator;

    nop

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_66
    iput-boolean p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->C:Z

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->START:Landroid/text/TextUtils$TruncateAt;

    nop

    nop

    nop

    :goto_68
    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    if-nez p3, :cond_a

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :cond_a
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const/16 p3, 0x17

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_6c
    new-instance v9, Lrhv;

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    :goto_6d
    const/4 p3, 0x2

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_6e
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    invoke-static/range {v2 .. v7}, Lric;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    :goto_70
    invoke-virtual {p3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v10, v2, p3}, Lrgx;->b(IF)I

    move-result p3

    nop

    :goto_73
    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    if-ne v2, p3, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    :cond_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_75
    instance-of v4, v2, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    :goto_76
    invoke-virtual {v9, p3}, Lrhv;->h(I)V

    :goto_77
    goto/32 :goto_cd

    nop

    nop

    nop

    :goto_78
    if-nez p3, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    :cond_c
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_79
    goto/16 :goto_68

    nop

    nop

    nop

    nop

    :goto_7a
    goto/32 :goto_67

    nop

    nop

    nop

    :goto_7b
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->m:I

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    :goto_7c
    const/16 p3, 0x13

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    goto/16 :goto_10d

    nop

    nop

    nop

    :goto_7e
    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    :goto_7f
    const/4 p3, 0x6

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_80
    const/4 v3, 0x3

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    move-object p3, v3

    nop

    nop

    nop

    :goto_82
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_83
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    nop

    :goto_84
    const/16 p3, 0x12

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_85
    const v2, 0x7f0401c7

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

    nop

    :goto_86
    invoke-static {v8, p2, p3}, Lqqy;->g(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

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

    :goto_87
    iput-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_88
    if-nez v2, :cond_d

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

    nop

    :cond_d
    goto/32 :goto_103

    nop

    nop

    nop

    nop

    :goto_89
    new-instance p2, Lrlj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    :goto_8a
    check-cast v2, Lcom/google/android/material/appbar/AppBarLayout;

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

    :goto_8b
    invoke-virtual {v9, p3}, Lrhv;->h(I)V

    goto/32 :goto_3e

    nop

    nop

    :goto_8c
    iput-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->x:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_8d
    goto/16 :goto_73

    nop

    nop

    :goto_8e
    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    :goto_8f
    int-to-long v4, p3

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    :goto_90
    iput-object p3, v9, Lrhv;->m:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_91
    iput-object v10, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->b:Lrgx;

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

    :goto_92
    iget v2, v10, Lrgx;->b:I

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_93
    iput-boolean v1, v9, Lrhv;->x:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_94
    iget v2, v2, Landroid/util/TypedValue;->resourceId:I

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_95
    if-nez v2, :cond_e

    nop

    nop

    goto/32 :goto_de

    nop

    :cond_e
    goto/32 :goto_f0

    nop

    nop

    nop

    :goto_96
    move v2, p1

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_97
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    :goto_98
    goto/32 :goto_fd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    iget v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

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

    :goto_9a
    const v2, 0x7f070153

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {v9}, Lrhv;->f()V

    :goto_9c
    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    :goto_9d
    if-nez v2, :cond_f

    nop

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_9e
    goto/16 :goto_68

    nop

    nop

    nop

    nop

    :goto_9f
    goto/32 :goto_d7

    nop

    nop

    :goto_a0
    invoke-virtual {v9}, Lrhv;->f()V

    :goto_a1
    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_a2
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_11c

    nop

    nop

    :goto_a3
    if-ne v2, p3, :cond_10

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    :cond_10
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->A:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_a5
    const/4 p3, 0x4

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

    :goto_a6
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_119

    nop

    nop

    :goto_a7
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :goto_a8
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->l:I

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    goto/32 :goto_7f

    nop

    nop

    :goto_ab
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_ac
    if-ne p3, v3, :cond_11

    nop

    goto/32 :goto_9f

    nop

    nop

    :cond_11
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    const/4 v1, 0x0

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

    :goto_ae
    const/16 p3, 0xf

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_af
    invoke-virtual {p3, v2, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    goto/32 :goto_110

    nop

    nop

    :goto_b0
    invoke-virtual {v9}, Lrhv;->f()V

    :goto_b1
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-static {v8, v2, p3}, Lqqy;->n(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    :goto_b3
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p3

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

    :goto_b4
    invoke-direct {p2, p0, p1}, Lrlj;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_ca

    nop

    nop

    :goto_b5
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_e2

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->MIDDLE:Landroid/text/TextUtils$TruncateAt;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    const/16 p3, 0x14

    nop

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_b8
    sget-object p3, Lrer;->d:Landroid/animation/TimeInterpolator;

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    :goto_b9
    invoke-direct {v10, v8}, Lrgx;-><init>(Landroid/content/Context;)V

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_ba
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_bb
    if-nez v4, :cond_12

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_bd
    invoke-virtual {p2, p1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    :goto_be
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    :goto_bf
    iput-object p3, v9, Lrhv;->B:Landroid/animation/TimeInterpolator;

    nop

    goto/32 :goto_a0

    nop

    nop

    :goto_c0
    if-ne p3, v2, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    :cond_13
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    iput-boolean p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->E:Z

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :goto_c3
    const/16 p3, 0x15

    nop

    goto/32 :goto_107

    nop

    nop

    :goto_c4
    iget p3, v2, Landroid/util/TypedValue;->data:I

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_c5
    if-ne v2, p3, :cond_14

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_14
    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    invoke-static {v8, p3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object p3

    nop

    nop

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    nop

    nop

    :goto_c7
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_c9
    const/4 p3, 0x5

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    :goto_ca
    invoke-static {p0, p2}, Ldvw;->j(Landroid/view/View;Ldvo;)V

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :goto_cb
    const v0, 0x13

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_cc
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_cd
    const/16 p3, 0x16

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    :goto_ce
    const v6, 0x7f150692

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cf
    const/16 p3, 0xc

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    :goto_d0
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_d1
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->n:I

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_d2
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_d3
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->y:I

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

    :goto_d4
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->m:I

    nop

    :goto_d5
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_d6
    invoke-virtual {p0, p3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e(Ljava/lang/CharSequence;)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    sget-object p3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c(Landroid/graphics/drawable/Drawable;)V

    :goto_d9
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v2

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

    :goto_db
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    :goto_dc
    invoke-static {p3, v2}, Lqqy;->j(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object v2

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_dd
    iput p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->k:I

    nop

    nop

    nop

    :goto_de
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_df
    if-nez p3, :cond_15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e0
    if-ne p3, p1, :cond_16

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_e1
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e2
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setWillNotDraw(Z)V

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e3
    goto/16 :goto_82

    nop

    nop

    nop

    nop

    nop

    :goto_e4
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    :goto_e5
    invoke-static {v8, v2, p3}, Lqqy;->n(Landroid/content/Context;ILandroid/animation/TimeInterpolator;)Landroid/animation/TimeInterpolator;

    move-result-object p3

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    sget-object v2, Lrer;->e:Landroid/animation/TimeInterpolator;

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_e7
    goto/16 :goto_98

    nop

    nop

    nop

    :goto_e8
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    const p3, 0x800013

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-virtual {p2, p3, p1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_eb
    if-nez v2, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :cond_17
    goto/32 :goto_86

    nop

    nop

    :goto_ec
    invoke-virtual {v9}, Lrhv;->f()V

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_ed
    invoke-virtual {p3, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    goto/32 :goto_db

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    invoke-virtual {v9}, Lrhv;->f()V

    :goto_ef
    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_f0
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_f1
    const/16 p3, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    :goto_f2
    if-nez p3, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f3
    goto/16 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-virtual {p3, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p3

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_f7
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getVisibility()I

    move-result v2

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

    :goto_f8
    invoke-virtual {v3}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p3

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    const/16 p3, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    :goto_fa
    if-nez v2, :cond_19

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_10f

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    iput v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->D:I

    nop

    nop

    nop

    goto/32 :goto_115

    nop

    nop

    nop

    :goto_fc
    const/16 p3, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    :goto_fd
    if-nez v3, :cond_1a

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

    :cond_1a
    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_fe
    new-instance v10, Lrgx;

    nop

    nop

    nop

    goto/32 :goto_b9

    nop

    nop

    :goto_ff
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_100
    if-nez v2, :cond_1b

    nop

    goto/32 :goto_19

    nop

    :cond_1b
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_101
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_102
    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_103
    invoke-static {v8, p2, p3}, Lqqy;->g(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p3

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

    :goto_104
    invoke-virtual {v2, v3}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :goto_105
    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_106
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_108

    nop

    nop

    nop

    :goto_107
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

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

    :goto_108
    rem-int v0, v0, v1

    nop

    goto/32 :goto_112

    nop

    nop

    :goto_109
    if-nez p3, :cond_1c

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :cond_1c
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_10a
    iput-boolean p3, v9, Lrhv;->c:Z

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_10b
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getLayoutDirection()I

    move-result v2

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    :goto_10c
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    goto/32 :goto_af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10e
    iput-object p3, v9, Lrhv;->u:Landroid/text/TextUtils$TruncateAt;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10f
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

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

    :goto_110
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_111
    if-nez v4, :cond_1d

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

    :cond_1d
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_112
    if-lez v0, :cond_1e

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1e
    goto/32 :goto_16

    nop

    :goto_113
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_114
    invoke-virtual {p2, p3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_115
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_116
    if-nez v2, :cond_1f

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    :cond_1f
    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_117
    invoke-virtual {p2, p3, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    :goto_118
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

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

    :goto_119
    if-ne v2, p3, :cond_20

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    invoke-direct {v9, p0}, Lrhv;-><init>(Landroid/view/View;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :goto_11c
    const/4 p1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_11d
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop
.end method

.method private final b1051a9d8893542362ad09051775f8f6m(IIIIZ)V
    .locals 14

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    move v12, v2

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v7}, Landroid/widget/Toolbar;->getTitleMarginStart()I

    move-result v2

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_75

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

    :goto_5
    sub-int v7, p3, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, v1}, Lrhv;->g(Z)V

    :goto_7
    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v1, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->j:Landroid/view/View;

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_a
    goto/16 :goto_40

    nop

    :goto_b
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_c
    const v1, 0x5

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

    :goto_d
    move-object v0, p0

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    :goto_e
    iget-object v2, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a:Lrhv;

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_f
    move v5, v3

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    instance-of v8, v7, Landroid/support/v7/widget/Toolbar;

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_11
    iget-object v6, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->i:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_12
    invoke-virtual {v7}, Landroid/widget/Toolbar;->getTitleMarginTop()I

    move-result v9

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->j:Landroid/view/View;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_6f

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_16
    iget v8, v7, Landroid/support/v7/widget/Toolbar;->p:I

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

    :goto_17
    move v8, v7

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v7, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->j:Landroid/view/View;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_19
    move v1, v2

    nop

    :goto_1a
    goto/32 :goto_3b

    nop

    nop

    :goto_1b
    iget-object v11, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Landroid/graphics/Rect;

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_1c
    move/from16 v1, p5

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sub-int/2addr v5, v8

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v10, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a:Lrhv;

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

    :goto_20
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_83

    nop

    nop

    nop

    :goto_21
    iget-object v6, v10, Lrhv;->h:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_22
    sub-int/2addr v4, v2

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-eqz v6, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    :cond_3
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_24
    iget v4, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->k:I

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_26
    iget v5, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->k:I

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

    :goto_27
    iget-object v6, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_37

    nop

    nop

    :goto_2a
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2c
    iget-object v6, v10, Lrhv;->h:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_4
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_2e
    iget-object v13, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    :goto_2f
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v5, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_68

    nop

    nop

    :goto_31
    goto/16 :goto_1d

    nop

    :goto_32
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_33
    iget v8, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->n:I

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

    :goto_34
    iget-object v8, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Landroid/graphics/Rect;

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

    :goto_35
    iget v11, v11, Landroid/graphics/Rect;->left:I

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_36
    iget v5, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->m:I

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_39
    move v7, v2

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

    :goto_3a
    iget-object v8, v2, Lrhv;->g:Landroid/graphics/Rect;

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

    :goto_3b
    iput-boolean v1, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:Z

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_3c
    move v1, v3

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

    :goto_3d
    sub-int v5, p4, p2

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_3e
    invoke-virtual {v8, v4, v6, v7, v5}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_3f
    move v9, v8

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {p0, v6}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a(Landroid/view/View;)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_42
    iget v2, v7, Landroid/support/v7/widget/Toolbar;->o:I

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_43
    goto :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_44
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    iget v4, v13, Landroid/graphics/Rect;->right:I

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

    :goto_46
    invoke-virtual {v7}, Landroid/widget/Toolbar;->getTitleMarginBottom()I

    move-result v7

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_47
    if-eqz v6, :cond_6

    nop

    goto/32 :goto_7b

    nop

    :cond_6
    goto/32 :goto_21

    nop

    nop

    :goto_48
    iget-object v12, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget v6, v6, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_4a
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    :cond_7
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_4b
    sub-int/2addr v2, v7

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

    nop

    :goto_4c
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const v0, 0x11

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    return-void

    nop

    nop

    :goto_4f
    goto/32 :goto_57

    nop

    nop

    :goto_50
    check-cast v7, Landroid/widget/Toolbar;

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

    :goto_51
    instance-of v8, v7, Landroid/widget/Toolbar;

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    :goto_52
    if-nez v5, :cond_8

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_53
    invoke-static {p0, v7, v8}, Lrhw;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/graphics/Rect;)V

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {v6, v11, v12, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_2

    nop

    :goto_56
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_57
    goto/32 :goto_6a

    nop

    nop

    :goto_58
    invoke-virtual {v7}, Landroid/widget/Toolbar;->getTitleMarginEnd()I

    move-result v8

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

    :goto_59
    move v1, v3

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

    :goto_5a
    iget-object v7, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    iget v9, v7, Landroid/support/v7/widget/Toolbar;->q:I

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    :goto_5c
    add-int/2addr v2, v6

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_5d
    move v12, v8

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

    nop

    :goto_5e
    goto/16 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_60
    if-eq v4, v3, :cond_9

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-eq v4, v3, :cond_a

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_5d

    nop

    nop

    :goto_62
    iget-object v2, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_63
    iget-object v0, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a:Lrhv;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_64
    iget v12, v12, Landroid/graphics/Rect;->top:I

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_65
    if-lez v0, :cond_b

    nop

    goto/32 :goto_6a

    nop

    :cond_b
    goto/32 :goto_69

    nop

    :goto_66
    const/4 v3, 0x1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_67
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getLayoutDirection()I

    move-result v4

    nop

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

    nop

    :goto_68
    iget v4, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->m:I

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_69
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    if-nez v8, :cond_c

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    :cond_c
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    check-cast v7, Landroid/support/v7/widget/Toolbar;

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    iget v7, v7, Landroid/support/v7/widget/Toolbar;->r:I

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

    :goto_6e
    move v5, v2

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_70
    add-int/2addr v6, v7

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_71
    invoke-virtual {v1}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v1

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

    :goto_72
    move v2, v8

    nop

    nop

    nop

    nop

    nop

    :goto_73
    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_74
    goto/16 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_75
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    sub-int/2addr v7, v5

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_77
    iget-object v8, v2, Lrhv;->g:Landroid/graphics/Rect;

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_78
    iget v7, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->l:I

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_79
    invoke-static {v8, v4, v6, v7, v5}, Lrhv;->j(Landroid/graphics/Rect;IIII)Z

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_7a
    iput-boolean v3, v10, Lrhv;->z:Z

    nop

    :goto_7b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    if-nez v8, :cond_d

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    add-int/2addr v12, v9

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

    nop

    :goto_7e
    iget-boolean v1, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Z

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    if-ne v4, v3, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    :cond_e
    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_80
    add-int/2addr v11, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_81
    invoke-static {v6, v11, v12, v4, v2}, Lrhv;->j(Landroid/graphics/Rect;IIII)Z

    move-result v6

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    :goto_82
    if-eqz v8, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_3a

    nop

    nop

    :goto_83
    if-nez p5, :cond_10

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_84
    iput-boolean v3, v2, Lrhv;->z:Z

    nop

    :goto_85
    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_86
    add-int/2addr v12, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_87
    iget-object v6, v0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->o:Landroid/graphics/Rect;

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop
.end method

.method private final ccb4c19b7dbd16be9d2a43125797659dm()Z
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    :goto_1
    return v0

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
    if-eq p0, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    iget p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->A:I

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method static g(Landroid/view/View;)Ltjo;
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    :goto_4
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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

    :goto_6
    new-instance v1, Ltjo;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    :goto_8
    const v0, 0x5

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    const v1, 0x10

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_a
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-eqz v1, :cond_0

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
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x7f0b0507

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
    invoke-direct {v1, p0}, Ltjo;-><init>(Landroid/view/View;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    :goto_11
    check-cast v1, Ltjo;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static h(Landroid/view/View;)I
    .locals 2

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_1
    if-nez v1, :cond_0

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

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

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

    :goto_3
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

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

    :goto_4
    add-int/2addr p0, v0

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

    :goto_5
    goto/32 :goto_15

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

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_7
    const v1, 0x11

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_b
    instance-of v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;

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

    :goto_c
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_e
    return p0

    nop

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_11
    add-int/2addr p0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_13
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_14
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_3

    nop

    nop
.end method


# virtual methods
.method final a(Landroid/view/View;)I
    .locals 2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    move-result p0

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

    :goto_1
    return p0

    nop

    :goto_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    const v0, 0x17

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_5
    sub-int/2addr p0, p1

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

    nop

    :goto_6
    sub-int/2addr p0, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->g(Landroid/view/View;)Ltjo;

    move-result-object v0

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

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xe

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
    sub-int/2addr p0, p1

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

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_d
    check-cast v1, Lrfd;

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

    :goto_e
    iget v0, v0, Ltjo;->b:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_10
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    iget p1, v1, Lrfd;->bottomMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_13
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop
.end method

.method public final b()I
    .locals 2

    goto/32 :goto_1b

    nop

    nop

    :goto_0
    add-int/2addr v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return v0

    nop

    :goto_2
    goto/32 :goto_1a

    nop

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

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_5
    div-int/lit8 p0, p0, 0x3

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

    :goto_6
    add-int/2addr v1, v0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->y:I

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    :goto_9
    goto/32 :goto_11

    nop

    nop

    :goto_a
    return p0

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
    invoke-virtual {v0}, Ldwy;->d()I

    move-result v0

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    move-result p0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    invoke-static {v1, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_12
    if-gez v0, :cond_0

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

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_2
    goto/32 :goto_e

    nop

    :goto_15
    const/4 v0, 0x0

    nop

    :goto_16
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_16

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_19
    add-int/2addr v0, p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e:Ldwy;

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1b
    const v0, 0xb

    nop

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

    :goto_1c
    const v1, 0x11

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    move-result p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    iget p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->D:I

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1f
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->B:I

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMinimumHeight()I

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_21
    if-gtz v1, :cond_3

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

    :cond_3
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_22
    add-int/2addr v1, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final c(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    :goto_2
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

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

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    move-result v0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    const v1, 0x3

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

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getWidth()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_8
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_9
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    :goto_c
    invoke-direct {p0, v1, p1, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->3fd9578e124c68aa49885b22b61b4ec8m(Landroid/graphics/drawable/Drawable;II)V

    goto/32 :goto_1e

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

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :goto_f
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->postInvalidateOnAnimation()V

    :goto_13
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    const v0, 0x1f

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

    :goto_15
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-nez p1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_3
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_1a
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_b

    nop

    nop

    :goto_1c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    if-ne v0, p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    :cond_4
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1e
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    instance-of p0, p1, Lrfd;

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

    :goto_1
    return p0

    nop

    nop
.end method

.method public final d(I)V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    :goto_0
    if-ne p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_0
    goto/32 :goto_b

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
    if-nez v0, :cond_1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->postInvalidateOnAnimation()V

    :goto_4
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_a

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

    nop

    nop

    :goto_7
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/ViewGroup;

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

    :goto_8
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

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
    invoke-virtual {v0}, Landroid/view/ViewGroup;->postInvalidateOnAnimation()V

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 6

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_1
    if-gtz v0, :cond_0

    nop

    nop

    goto/32 :goto_32

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

    nop

    nop

    :goto_2
    if-gtz v1, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    iget v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:I

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_6
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    goto/32 :goto_39

    nop

    nop

    :goto_7
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->ccb4c19b7dbd16be9d2a43125797659dm()Z

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_8
    iget v5, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:I

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

    :goto_9
    rem-int v0, v0, v1

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_a
    sub-int/2addr v0, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_b
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_c
    goto/32 :goto_42

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

    goto/32 :goto_48

    nop

    :cond_2
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e:Ldwy;

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/graphics/drawable/Drawable;

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

    nop

    :goto_10
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a:Lrhv;

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

    :goto_12
    const v0, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_13
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_14
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :goto_16
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_17
    neg-int v3, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_19
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1a
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

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

    :goto_1c
    invoke-virtual {v2, v1, v3, v4, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/graphics/drawable/Drawable;

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

    :goto_1e
    const v1, 0x1e

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

    :goto_1f
    invoke-virtual {v0}, Ldwy;->d()I

    move-result v0

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v0, :cond_3

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_24
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

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

    :goto_25
    if-ltz v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move v0, v1

    nop

    :goto_27
    goto/32 :goto_49

    nop

    nop

    :goto_28
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_29
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->q:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    if-nez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_6
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_2f
    if-nez v0, :cond_7

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_30
    iget v0, v0, Lrhv;->e:F

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/16 :goto_48

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_33
    const/4 v1, 0x0

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

    :goto_34
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a:Lrhv;

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_36
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

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

    :goto_37
    if-eqz v0, :cond_8

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_8
    goto/32 :goto_3b

    nop

    nop

    :goto_38
    cmpg-float v0, v1, v0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_39
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a:Lrhv;

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-gtz v0, :cond_9

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

    :cond_9
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    :goto_3c
    iget v1, v0, Lrhv;->b:F

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_27

    nop

    nop

    nop

    nop

    :goto_3e
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-nez v0, :cond_a

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_a
    goto/32 :goto_35

    nop

    nop

    nop

    :goto_40
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/graphics/drawable/Drawable;

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

    :goto_41
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_42
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Z

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_43
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->51550bab6b6440a4fd45f825c221b363m()V

    goto/32 :goto_22

    nop

    nop

    :goto_45
    if-lez v0, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_20

    nop

    :goto_46
    invoke-virtual {v1, p1}, Lrhv;->d(Landroid/graphics/Canvas;)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v0, p1}, Lrhv;->d(Landroid/graphics/Canvas;)V

    :goto_48
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-gtz v0, :cond_d

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :cond_d
    goto/32 :goto_1d

    nop

    nop

    :goto_4a
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_4b
    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4c
    if-nez v0, :cond_e

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

    :cond_e
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getWidth()I

    move-result v4

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

    :goto_50
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop
.end method

.method protected final drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 5

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_1

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

    :goto_2
    goto/16 :goto_24

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_2d

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    :goto_6
    if-eq v3, p0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_3

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

    nop

    :goto_7
    move v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getWidth()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_a
    if-nez v3, :cond_3

    nop

    goto/32 :goto_24

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->i:Landroid/view/View;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_c
    const v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_d
    if-eq p2, v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_4
    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_5

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

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

    :goto_11
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_1b

    nop

    :goto_15
    goto/32 :goto_1a

    nop

    nop

    :goto_16
    invoke-direct {p0, v0, p2, v3, v4}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->33b3102b6558811a7b7629a1e8e59bd2m(Landroid/graphics/drawable/Drawable;Landroid/view/View;II)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto :goto_1f

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1a
    return v2

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_1c
    iget v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1e
    move v0, v2

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_21
    const/4 v2, 0x0

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

    :goto_22
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_23
    goto :goto_18

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_25
    if-eqz p0, :cond_6

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

    :cond_6
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_26
    if-ne p2, v3, :cond_7

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_23

    nop

    nop

    :goto_27
    const v0, 0x1d

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_5

    nop

    :goto_29
    if-gtz v3, :cond_8

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_b

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    move-result v4

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2b
    iget v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    return v1

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_2f
    invoke-virtual {v0, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method protected final drawableStateChanged()V
    .locals 5

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, v3, Lrhv;->m:Landroid/content/res/ColorStateList;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0xb

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

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

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

    :goto_5
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    if-eqz v0, :cond_1

    nop

    nop

    goto/32 :goto_1d

    nop

    :cond_1
    :goto_8
    goto/32 :goto_2c

    nop

    nop

    :goto_9
    invoke-virtual {v3}, Lrhv;->f()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_b
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_16

    nop

    nop

    :goto_d
    or-int/2addr v1, v2

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_10
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

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

    :goto_12
    iput-object v0, v3, Lrhv;->y:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v3, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    :cond_2
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v3, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_16
    invoke-super {p0}, Landroid/widget/FrameLayout;->drawableStateChanged()V

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_30

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_1a
    if-nez v1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    :cond_4
    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_1b
    if-nez v0, :cond_5

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1c
    if-nez v0, :cond_6

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_6
    :goto_1d
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v0, :cond_7

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

    :cond_7
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1f
    iget-object v3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a:Lrhv;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_20
    const/4 v2, 0x1

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v4, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :cond_8
    goto/32 :goto_10

    nop

    nop

    :goto_23
    goto/32 :goto_c

    nop

    :goto_24
    or-int/2addr v1, v3

    nop

    nop

    :goto_25
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_23

    nop

    nop

    :goto_28
    const v1, 0x15

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_29
    if-nez v1, :cond_9

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getDrawableState()[I

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2b
    if-nez v3, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v0, v3, Lrhv;->l:Landroid/content/res/ColorStateList;

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

    :goto_2d
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->invalidate()V

    :goto_2e
    goto/32 :goto_26

    nop

    nop

    :goto_2f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_30
    move v1, v2

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_a

    nop

    nop
.end method

.method public final e(Ljava/lang/CharSequence;)V
    .locals 3

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz v2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_0
    :goto_1
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    if-nez p1, :cond_1

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

    :cond_1
    goto/32 :goto_18

    nop

    nop

    :goto_3
    iput-object v1, v0, Lrhv;->w:Ljava/lang/CharSequence;

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

    :goto_4
    if-lez v0, :cond_2

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    :goto_5
    iget-boolean p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->p:Z

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

    :goto_6
    const v1, 0x6

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

    :goto_7
    invoke-virtual {v0}, Lrhv;->f()V

    :goto_8
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a:Lrhv;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    iget-object v1, p1, Lrhv;->v:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iput-object p1, v0, Lrhv;->v:Ljava/lang/CharSequence;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_13

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_12
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a:Lrhv;

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

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_18
    iget-object v2, v0, Lrhv;->v:Ljava/lang/CharSequence;

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

    :goto_19
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v0, 0x3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method final f()V
    .locals 7

    goto/32 :goto_39

    nop

    nop

    :goto_0
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_4
    move v5, v2

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    nop

    :goto_6
    if-nez v5, :cond_1

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_1
    goto/32 :goto_33

    nop

    nop

    :goto_7
    if-eqz v5, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    new-instance v1, Lrfp;

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->w:Landroid/animation/TimeInterpolator;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getHeight()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Landroid/animation/ValueAnimator;

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

    :goto_d
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->51550bab6b6440a4fd45f825c221b363m()V

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_e
    move v4, v3

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    :cond_3
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_11
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_12
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    :goto_13
    goto/16 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-gt v3, v1, :cond_4

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_9

    nop

    nop

    :goto_16
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->b()I

    move-result v1

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

    :goto_18
    invoke-direct {v1, p0, v2}, Lrfp;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    if-lt v0, v1, :cond_5

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz v0, :cond_6

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

    :cond_6
    goto/32 :goto_c

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    :goto_1c
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->u:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_f

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_40

    nop

    nop

    :goto_21
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_36

    nop

    :goto_23
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-boolean v6, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->t:Z

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->u:Landroid/animation/ValueAnimator;

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const/16 v3, 0xff

    nop

    nop

    :goto_27
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->isLaidOut()Z

    move-result v5

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_29
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->s:I

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_2a
    iput-boolean v4, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->t:Z

    nop

    nop

    :goto_2b
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v0, :cond_7

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

    :cond_7
    :goto_2d
    goto/32 :goto_a

    nop

    nop

    :goto_2e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-ne v6, v4, :cond_8

    nop

    goto/32 :goto_2b

    nop

    nop

    :cond_8
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_30
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->u:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_31
    move v5, v3

    nop

    nop

    nop

    nop

    :goto_32
    goto/32 :goto_24

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->isInEditMode()Z

    move-result v5

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

    :goto_34
    const v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :goto_36
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_37
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->u:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_38
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :goto_3a
    if-eqz v0, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    invoke-virtual {p0, v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d(I)V

    :goto_3c
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3d
    goto :goto_3c

    nop

    nop

    :goto_3e
    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_3f
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->x:Landroid/animation/TimeInterpolator;

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_41
    return-void

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_43
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_44
    move v4, v2

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_45
    if-lt v0, v1, :cond_a

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

    :cond_a
    goto/32 :goto_44

    nop

    nop

    :goto_46
    if-lez v0, :cond_b

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_0

    nop

    :goto_47
    iget-wide v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->v:J

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48
    add-int/2addr v0, v1

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

    :goto_49
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->u:Landroid/animation/ValueAnimator;

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

    :goto_4a
    iput-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->u:Landroid/animation/ValueAnimator;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4b
    filled-new-array {v1, v3}, [I

    move-result-object v1

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_4c
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_4e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_4f
    iget v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->d:I

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_51
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->u:Landroid/animation/ValueAnimator;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p0, Lrfd;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lrfd;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final synthetic generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Lrfd;-><init>()V

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

    :goto_2
    new-instance p0, Lrfd;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop
.end method

.method protected final synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lrfd;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Lrfd;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lrfd;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    invoke-direct {v0, p0, p1}, Lrfd;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_3

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
.end method

.method protected final onAttachedToWindow()V
    .locals 3

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->1478a1c7833aac5e360e0ba4b0c0c568m(Lcom/google/android/material/appbar/AppBarLayout;)V

    goto/32 :goto_1e

    nop

    nop

    :goto_1
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2
    const v1, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_3
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->F:Landroidx/wear/ambient/AmbientMode$AmbientController;

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

    :goto_4
    iput-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->F:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->F:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

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
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v1, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    :goto_b
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_c
    iget-object v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->d:Ljava/util/List;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
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

    :goto_f
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

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

    :goto_10
    iget-object v0, v0, Lcom/google/android/material/appbar/AppBarLayout;->d:Ljava/util/List;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_11
    iget-object v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->d:Ljava/util/List;

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_13
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    new-instance v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

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

    :goto_15
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setFitsSystemWindows(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_19
    rem-int v0, v0, v1

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_1a
    iput-object v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->d:Ljava/util/List;

    nop

    nop

    :goto_1b
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0x1c

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1d
    invoke-direct {v1, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getFitsSystemWindows()Z

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_20
    new-instance v2, Ljava/util/ArrayList;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_21
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz v2, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    :goto_23
    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_24
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    :cond_4
    goto/32 :goto_16

    nop

    :goto_25
    if-nez v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_26
    invoke-static {p0}, Ldvu;->l(Landroid/view/View;)V

    :goto_27
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    goto/32 :goto_19

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a:Lrhv;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_2
    iput v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->b:I

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_5
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->z:I

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

    :goto_6
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a:Lrhv;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    const/high16 v1, 0x3f800000    # 1.0f

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

    :goto_9
    iput p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->z:I

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
    iget v0, v0, Lrhv;->b:F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_b
    goto/32 :goto_12

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
    cmpl-float v0, v0, v1

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

    :goto_e
    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_f
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

    :cond_0
    goto/32 :goto_b

    nop

    :goto_10
    if-eqz v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

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
    goto/32 :goto_18

    nop

    nop

    :goto_13
    const/4 v1, 0x2

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

    :goto_14
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    :goto_15
    rem-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_16
    iget-boolean v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->E:Z

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_17
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x3

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

    nop

    nop

    :goto_1a
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    instance-of v1, v0, Lcom/google/android/material/appbar/AppBarLayout;

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

    :goto_1c
    iget v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->b:I

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1d
    invoke-virtual {v0, p1}, Lrhv;->e(Landroid/content/res/Configuration;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-eqz v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1f
    const v1, 0x18

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    if-ne v0, v1, :cond_4

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_21
    if-nez v1, :cond_5

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

    :cond_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onDetachedFromWindow()V
    .locals 3

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    instance-of v2, v0, Lcom/google/android/material/appbar/AppBarLayout;

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

    :goto_3
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_4
    goto/32 :goto_f

    nop

    nop

    :goto_5
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    const v0, 0xe

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-nez v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_4

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

    nop

    :goto_9
    iget-object v0, v0, Lcom/google/android/material/appbar/AppBarLayout;->d:Ljava/util/List;

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

    :goto_a
    add-int v0, v0, v1

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

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_e
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    goto/32 :goto_b

    nop

    nop

    :goto_10
    check-cast v0, Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    :goto_12
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-nez v0, :cond_3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->F:Landroidx/wear/ambient/AmbientMode$AmbientController;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onLayout(ZIIII)V
    .locals 8

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v3}, Landroid/view/View;->getFitsSystemWindows()Z

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2
    if-lt v1, p1, :cond_0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    :goto_3
    if-lt v0, p1, :cond_1

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
    goto/32 :goto_37

    nop

    nop

    nop

    :goto_4
    move v1, v0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_6
    add-int/lit8 v2, v2, 0x1

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

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->f()V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v3, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    :goto_9
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v4

    nop

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

    nop

    :goto_b
    move v2, v0

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_d
    move v5, p4

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

    :goto_e
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

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

    :goto_f
    invoke-static {v2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->g(Landroid/view/View;)Ltjo;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_10
    goto :goto_c

    nop

    nop

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
    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v2}, Ltjo;->R()V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Ldwy;->d()I

    move-result p1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_16
    return-void

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_5

    nop

    nop

    :goto_19
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1a
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1b
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->1a36313b7ed15ba14e0acb4da569b8b7m()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1c
    invoke-direct/range {v2 .. v7}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->b1051a9d8893542362ad09051775f8f6m(IIIIZ)V

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v0, 0x7

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

    :goto_1f
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_20
    if-nez p1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_23
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    :goto_24
    if-lt v2, v1, :cond_4

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    :goto_25
    add-int/lit8 v1, v1, 0x1

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

    :goto_26
    const/4 v7, 0x0

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildCount()I

    move-result v1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    add-int v0, v0, v1

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

    nop

    :goto_29
    move v3, p2

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_2a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildCount()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const v1, 0xc

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_2e
    move-object v2, p0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_2f
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_30
    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->g(Landroid/view/View;)Ltjo;

    move-result-object p2

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_31
    move v4, p3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_32
    if-lt v4, p1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {p2}, Ltjo;->Q()V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_34
    move v6, p5

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_35
    if-eqz v4, :cond_6

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

    :cond_6
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e:Ldwy;

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p2

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

    :goto_38
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getChildCount()I

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_39
    sget-object v4, Ldwd;->a:[I

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 9

    goto/32 :goto_25

    nop

    nop

    :goto_0
    iput p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->D:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    if-nez p2, :cond_0

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :cond_0
    :goto_2
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p2, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_1
    goto/32 :goto_54

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_5
    iget v1, p2, Lrhv;->k:F

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_6
    iput v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->B:I

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    add-float/2addr v0, p2

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-nez p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v4, 0x0

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

    :goto_b
    invoke-static {p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h(Landroid/view/View;)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_c
    iget v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->D:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_d
    return-void

    nop

    :goto_e
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_f
    if-nez p2, :cond_3

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_2d

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMeasuredHeight()I

    move-result p2

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_11
    move-object v3, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_12
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->e:Ldwy;

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

    nop

    :goto_13
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setLetterSpacing(F)V

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const v1, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_15
    goto/16 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_34

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    goto/32 :goto_1d

    nop

    nop

    :goto_18
    invoke-static {p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h(Landroid/view/View;)I

    move-result p1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-nez v0, :cond_4

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

    :cond_4
    goto/32 :goto_22

    nop

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
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a:Lrhv;

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

    :goto_1d
    iget v1, p2, Lrhv;->D:F

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p2

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

    nop

    :goto_1f
    const/high16 v2, 0x40000000    # 2.0f

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_21
    if-eq p2, p0, :cond_5

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

    :cond_5
    goto/32 :goto_46

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0}, Ldwy;->d()I

    move-result v0

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

    :goto_23
    iget-object v1, p2, Lrhv;->r:Landroid/graphics/Typeface;

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_24
    if-lez v0, :cond_6

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1a

    nop

    :goto_25
    const v0, 0x16

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_26
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_27
    add-int/lit8 v3, v3, -0x1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p2, Lrhv;->A:Landroid/text/TextPaint;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_29
    mul-int/2addr p2, v3

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2a
    neg-float v0, v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_2b
    iget p2, p2, Lrhv;->E:I

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_2c
    iget-object p1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->h:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_2d
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->a:Lrhv;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_2e
    iget-object p2, p2, Lrhv;->A:Landroid/text/TextPaint;

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    :goto_2f
    const/4 v8, 0x1

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_30
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_31
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setMinimumHeight(I)V

    :goto_32
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct/range {v3 .. v8}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->b1051a9d8893542362ad09051775f8f6m(IIIIZ)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_34
    iput v1, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->D:I

    nop

    nop

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_2c

    nop

    nop

    :goto_36
    if-gtz v0, :cond_7

    nop

    goto/32 :goto_52

    nop

    nop

    :cond_7
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_37
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_38
    add-int/2addr p2, v0

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    nop

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

    :goto_3a
    if-nez p1, :cond_8

    nop

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

    :cond_8
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_3b
    add-int/2addr p2, v0

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    if-gt p2, v0, :cond_9

    nop

    nop

    goto/32 :goto_35

    nop

    :cond_9
    goto/32 :goto_3d

    nop

    nop

    :goto_3d
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->1a36313b7ed15ba14e0acb4da569b8b7m()V

    goto/32 :goto_50

    nop

    nop

    nop

    :goto_3e
    move v0, v1

    nop

    :goto_3f
    goto/32 :goto_1f

    nop

    nop

    :goto_40
    iget-object p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->i:Landroid/view/View;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_42
    invoke-direct {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->51550bab6b6440a4fd45f825c221b363m()V

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :goto_44
    iget-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->E:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_45
    iget v3, p2, Lrhv;->n:I

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    :goto_46
    goto :goto_4c

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_48
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_49
    goto/32 :goto_1b

    nop

    nop

    :goto_4a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_18

    nop

    nop

    :goto_4d
    iget-object v0, p2, Lrhv;->A:Landroid/text/TextPaint;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_4e
    invoke-virtual {p2}, Landroid/text/TextPaint;->descent()F

    move-result p2

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_4f
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMeasuredHeight()I

    move-result v7

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_50
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMeasuredWidth()I

    move-result v6

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_51
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    :goto_52
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_53
    if-gt v3, v0, :cond_a

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

    nop

    :cond_a
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_54
    iget-boolean p2, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->C:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_55
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {p0}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getMeasuredHeight()I

    move-result p2

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_3f

    nop

    nop

    nop

    :goto_58
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->setMinimumHeight(I)V

    goto/32 :goto_4b

    nop

    nop
.end method

.method protected final onSizeChanged(IIII)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-direct {p0, p3, p1, p2}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->3fd9578e124c68aa49885b22b61b4ec8m(Landroid/graphics/drawable/Drawable;II)V

    :goto_3
    goto/32 :goto_1

    nop

    nop

    :goto_4
    iget-object p3, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    if-nez p3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setVisibility(I)V
    .locals 2

    goto/32 :goto_5

    nop

    nop

    :goto_0
    move p1, v1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    nop

    nop

    goto/32 :goto_17

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

    goto/32 :goto_12

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

    :goto_4
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1b

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    if-ne v0, p1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_2
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/graphics/drawable/Drawable;

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

    :goto_f
    goto/16 :goto_1

    nop

    :goto_10
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    :goto_12
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_14
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_4

    nop

    nop

    :goto_15
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_17
    if-ne v0, p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_18
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eqz p1, :cond_5

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1d
    const v1, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v1, 0x0

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

    :goto_1f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop
.end method

.method protected final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    goto/32 :goto_8

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x1

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

    :goto_2
    iget-object v0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->r:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

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
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-ne p1, v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_4

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

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

    :goto_a
    if-eq p1, p0, :cond_2

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    :goto_b
    iget-object p0, p0, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->c:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return p0

    nop

    nop

    nop

    nop
.end method
