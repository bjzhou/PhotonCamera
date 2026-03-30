.class public final Lrez;
.super Ldvd;
.source "PG"


# instance fields
.field final synthetic a:Lcom/google/android/material/appbar/AppBarLayout;

.field final synthetic b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field final synthetic c:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;


# direct methods
.method public constructor <init>(Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;Lcom/google/android/material/appbar/AppBarLayout;Landroidx/coordinatorlayout/widget/CoordinatorLayout;)V
    .locals 0

    goto/32 :goto_2

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
    iput-object p3, p0, Lrez;->b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

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

    :goto_2
    iput-object p2, p0, Lrez;->a:Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Ldvd;-><init>()V

    goto/32 :goto_0

    nop

    nop

    :goto_4
    iput-object p1, p0, Lrez;->c:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final c(Landroid/view/View;Ldxb;)V
    .locals 4

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p2, p0}, Ldxb;->g(Ldxa;)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_24

    nop

    :cond_0
    goto/32 :goto_23

    nop

    :goto_2
    invoke-virtual {v0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_4
    invoke-virtual {p2, v2}, Ldxb;->w(Z)V

    :goto_5
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Lcom/google/android/material/appbar/AppBarLayout;->getChildCount()I

    move-result v1

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_7
    iget-object p1, p0, Lrez;->b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_8
    sget-object v0, Ldxa;->m:Ldxa;

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, -0x1

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {p2, v2}, Ldxb;->w(Z)V

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p2, v0}, Ldxb;->g(Ldxa;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v0, p0, Lrez;->a:Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->b()I

    move-result p0

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

    :goto_11
    iget-object v0, p0, Lrez;->c:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_12
    neg-int p0, p0

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_13
    sget-object p0, Ldxa;->n:Ldxa;

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

    :goto_14
    invoke-virtual {v1}, Lcom/google/android/material/appbar/AppBarLayout;->f()I

    move-result v1

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_15
    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->al(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object p1

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

    :goto_16
    invoke-virtual {p2, v2}, Ldxb;->w(Z)V

    goto/32 :goto_2e

    nop

    nop

    :goto_17
    if-lt v2, v1, :cond_1

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_18
    if-ne v0, v1, :cond_2

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

    :cond_2
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_19
    invoke-virtual {p2, p1}, Ldxb;->l(Ljava/lang/CharSequence;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->f()I

    move-result p1

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

    :goto_1b
    goto/16 :goto_3c

    nop

    :goto_1c
    goto/32 :goto_a

    nop

    nop

    :goto_1d
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_1c

    nop

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1e
    const-class p1, Landroid/widget/ScrollView;

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v3, :cond_4

    nop

    nop

    goto/32 :goto_39

    nop

    :cond_4
    goto/32 :goto_11

    nop

    nop

    :goto_20
    check-cast v3, Lrfb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_21
    iget v3, v3, Lrfb;->a:I

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    iget-object p1, p0, Lrez;->a:Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-nez p1, :cond_5

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

    :cond_5
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const v0, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p2, p0}, Ldxb;->g(Ldxa;)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_28
    const/4 v2, 0x1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_29
    invoke-virtual {v0}, Lrff;->af()I

    move-result v0

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0x9

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

    :goto_2b
    invoke-virtual {p1, v0}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    neg-int v1, v1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_2d
    iget-object v1, p0, Lrez;->a:Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_31
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    add-int/lit8 v2, v2, 0x1

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

    :goto_33
    goto/16 :goto_1c

    nop

    nop

    nop

    :goto_34
    goto/32 :goto_7

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

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_36
    invoke-virtual {v0}, Lrff;->af()I

    move-result v0

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

    :goto_37
    if-nez p0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_3e

    nop

    nop

    :goto_38
    return-void

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-eqz p1, :cond_7

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_3b
    const/4 v2, 0x0

    nop

    :goto_3c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-super {p0, p1, p2}, Ldvd;->c(Landroid/view/View;Ldxb;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_3e
    sget-object p0, Ldxa;->n:Ldxa;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_3f
    if-nez v0, :cond_8

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

    :cond_8
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_40
    iget-object p0, p0, Lrez;->a:Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_41
    iget-object v0, p0, Lrez;->c:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop
.end method

.method public final i(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 9

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    :goto_2
    invoke-virtual/range {v3 .. v8}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->am(Landroidx/coordinatorlayout/widget/CoordinatorLayout;Lcom/google/android/material/appbar/AppBarLayout;Landroid/view/View;I[I)V

    goto/32 :goto_1c

    nop

    nop

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

    goto/32 :goto_1

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

    nop

    :goto_4
    filled-new-array {v2, v2}, [I

    move-result-object v8

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return v2

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_8
    invoke-super {p0, p1, p2, p3}, Ldvd;->i(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p0

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->al(Landroidx/coordinatorlayout/widget/CoordinatorLayout;)Landroid/view/View;

    move-result-object v6

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_a
    invoke-virtual {p0, v1}, Lcom/google/android/material/appbar/AppBarLayout;->i(Z)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v4, p0, Lrez;->b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p0, Lrez;->b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_d
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    iget-object p0, p0, Lrez;->a:Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lrez;->a:Lcom/google/android/material/appbar/AppBarLayout;

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_10
    const/4 v1, 0x1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

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

    :goto_12
    goto/32 :goto_2a

    nop

    nop

    :goto_13
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_14
    const/4 p1, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_15
    iget-object p1, p0, Lrez;->c:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_16
    const/16 v0, 0x1000

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p1}, Lcom/google/android/material/appbar/AppBarLayout;->b()I

    move-result p1

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

    :goto_18
    iget-object p1, p0, Lrez;->a:Lcom/google/android/material/appbar/AppBarLayout;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v6, p1}, Landroid/view/View;->canScrollVertically(I)Z

    move-result p1

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1a
    const/16 v0, 0x2000

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1b
    neg-int v7, p1

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

    nop

    nop

    :goto_1c
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1e
    iget-object v3, p0, Lrez;->c:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object v5, p0, Lrez;->a:Lcom/google/android/material/appbar/AppBarLayout;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_20
    return v1

    nop

    :goto_21
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eq p2, v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_23
    if-nez v7, :cond_2

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p1}, Lrff;->af()I

    move-result p1

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_25
    if-nez p1, :cond_3

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :cond_3
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_26
    add-int v0, v0, v1

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

    :goto_27
    const/4 v2, 0x0

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_28
    const v0, 0x1c

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_29
    return p0

    nop

    :goto_2a
    goto/32 :goto_d

    nop

    nop

    :goto_2b
    if-lez v0, :cond_4

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

    :cond_4
    goto/32 :goto_12

    nop

    :goto_2c
    if-eq p2, v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->i(Z)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop
.end method
