.class public final Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;
.super Lnzc;
.source "PG"


# instance fields
.field private A:Landroid/widget/FrameLayout;

.field private B:Landroid/view/View;

.field private C:Landroid/widget/ImageView;

.field private D:Ljava/lang/CharSequence;

.field private E:I

.field private F:Landroid/content/res/ColorStateList;

.field private G:I

.field private H:I

.field private I:I

.field private J:I

.field private K:Landroid/graphics/drawable/Drawable;

.field private L:Landroid/graphics/drawable/Drawable;

.field private M:Landroid/graphics/drawable/Drawable;

.field private N:Landroid/graphics/drawable/Drawable;

.field private O:I

.field private P:Z

.field private Q:Z

.field private R:Landroid/transition/Transition;

.field private S:Z

.field private final T:I

.field public s:Landroid/widget/CompoundButton;

.field public t:Z

.field private final u:I

.field private final v:Ldso;

.field private final w:Landroid/view/ViewTreeObserver$OnPreDrawListener;

.field private x:Lnzf;

.field private y:Landroid/widget/TextView;

.field private z:Landroid/widget/TextView;


# direct methods
.method private final 132cd3b981019b59dc42653eea0b34b4m()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->7dd154808b1c676d3d63f3a63e9edabfm(Landroid/view/View;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->z:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->7dd154808b1c676d3d63f3a63e9edabfm(Landroid/view/View;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->6a76c551e4658c5f4308c862164e4dd9m()V

    goto/32 :goto_5

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
.end method

.method private final 430f03c2ea70bd28108d593eca0c7c30m(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 3

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

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
    iget-object v2, v0, Lnzg;->b:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_3
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_4
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityEvent;->setChecked(Z)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_8
    iget-object v1, v0, Lnzg;->a:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getContentChangeTypes()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_a
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

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

    :goto_b
    if-ne v1, v2, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_c
    iget-object v1, v0, Lnzg;->c:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

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

    :goto_f
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_10
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_11
    iget-boolean p0, p0, Lnzc;->p:Z

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_13
    const v0, 0x1d

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    :goto_16
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_17
    if-gtz v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_18
    iget-object v0, v0, Lnzg;->c:Ljava/lang/CharSequence;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-gtz v1, :cond_3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, v0, Lnzg;->b:Ljava/lang/CharSequence;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    const v1, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_1d
    const/16 v2, 0x40

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1e
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->d116db4599d9ddc8c35e61366a4f4967m()Lnzg;

    move-result-object v0

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
.end method

.method private final 6a76c551e4658c5f4308c862164e4dd9m()V
    .locals 6

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->z:Landroid/widget/TextView;

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

    nop

    nop

    :goto_1
    if-eq v0, v5, :cond_0

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->v:Ldso;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->v:Ldso;

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->v:Ldso;

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

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->v:Ldso;

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n()Z

    move-result v0

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v5, 0x8

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, p0}, Ldso;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v4, 0x7f0b0196

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->o:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_d
    invoke-virtual {v0, v2, v1}, Ldso;->f(II)V

    :goto_e
    goto/32 :goto_7

    nop

    nop

    :goto_f
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->x:Lnzf;

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

    :goto_10
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->v:Ldso;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_11
    goto/16 :goto_47

    nop

    :goto_12
    goto/32 :goto_46

    nop

    nop

    :goto_13
    invoke-virtual {v0, v2, v1, v4, v3}, Ldso;->i(IIII)V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_e

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_17
    invoke-virtual {v1, v2, v3, v0, v3}, Ldso;->i(IIII)V

    :goto_18
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v3, 0x7f0b0460

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

    :goto_1a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    :cond_1
    goto/32 :goto_42

    nop

    :goto_1b
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->v:Ldso;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    :goto_1c
    if-eq v0, v5, :cond_2

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_1d
    if-eqz v0, :cond_3

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

    :cond_3
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0, v4, v3}, Ldso;->s(II)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const v0, 0x7f0b04c9

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {v0, v3, v5}, Ldso;->r(II)V

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_23
    iget v5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->I:I

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_24
    add-int v0, v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_25
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

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

    nop

    :goto_26
    invoke-virtual {v0, p0}, Ldso;->g(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v1, 0x7

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->v:Ldso;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_2a
    if-eq v0, v5, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0, v3, v5}, Ldso;->r(II)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2c
    const v1, 0x1e

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

    :goto_2d
    const v0, 0xc

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2f
    const v2, 0x7f0b0540

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

    :goto_30
    if-nez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    :cond_5
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    iget v5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->J:I

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_32
    iget v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->I:I

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_33
    iget v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->J:I

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_34
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->z:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->v:Ldso;

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const v2, 0x7f0b053f

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_37
    return-void

    nop

    nop

    :goto_38
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_39
    invoke-virtual {v1, v2, v3, v0, v3}, Ldso;->i(IIII)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v0, v4, v3}, Ldso;->s(II)V

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v0, :cond_6

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

    :cond_6
    goto/32 :goto_34

    nop

    nop

    :goto_3c
    const/4 v3, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_3d
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->v:Ldso;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->v:Ldso;

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

    :goto_3f
    if-eqz v0, :cond_7

    nop

    goto/32 :goto_12

    nop

    :cond_7
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const/4 v3, 0x4

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_20

    nop

    nop

    :goto_43
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_44
    const/4 v3, 0x3

    nop

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

    nop

    :goto_45
    sget-object v5, Lnzf;->a:Lnzf;

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

    nop

    :goto_46
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_48
    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->S:Z

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 7dd154808b1c676d3d63f3a63e9edabfm(Landroid/view/View;)V
    .locals 2

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1c

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    :goto_3
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_2

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

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
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_8
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_9
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_1

    nop

    nop

    nop

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
    goto :goto_12

    nop

    :goto_d
    goto/32 :goto_11

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
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_10
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    :goto_11
    const/4 p0, 0x0

    nop

    nop

    :goto_12
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->o:Landroid/widget/ImageView;

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

    :goto_15
    const v1, 0x7f0708f8

    nop

    nop

    nop

    goto/32 :goto_6

    nop

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

    nop

    :goto_17
    const v0, 0x3

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

    :goto_18
    invoke-virtual {v1}, Landroid/widget/ImageView;->getVisibility()I

    move-result v1

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

    :goto_19
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_1d
    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->S:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method private final 86d5c0c77e4f72baec1b0d5a6810921fm()V
    .locals 3

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->C:Landroid/widget/ImageView;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->C:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_5
    if-eqz v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->s:Landroid/widget/CompoundButton;

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_7
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    :goto_9
    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_d

    nop

    nop

    :goto_a
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->B:Landroid/view/View;

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
    const/4 v2, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->s:Landroid/widget/CompoundButton;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->D:Ljava/lang/CharSequence;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->m()Ljava/lang/CharSequence;

    move-result-object v0

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    :goto_14
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->d543f409229584e2e064495967092514m()V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v0, 0xe

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

    :goto_17
    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setImportantForAccessibility(I)V

    :goto_18
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_4

    nop

    nop

    :goto_1a
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->A:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1b
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->A:Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_1c
    goto/32 :goto_21

    nop

    :goto_1d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1e
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {v1, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->m()Ljava/lang/CharSequence;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    goto/32 :goto_0

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

    goto/32 :goto_1

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

    nop

    :goto_0
    const v0, 0x7f0407b9

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

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

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 12

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->P:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_1
    invoke-virtual {p1, v8, v6}, Ldso;->s(II)V

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->R:Landroid/transition/Transition;

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

    :goto_3
    invoke-direct {v0, p0, v1}, Lnze;-><init>(Landroid/view/ViewGroup;I)V

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    check-cast v7, Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p1, v3}, Ldso;->b(I)Ldsj;

    move-result-object v3

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->132cd3b981019b59dc42653eea0b34b4m()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, v6}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->ccb4c19b7dbd16be9d2a43125797659dm(I)I

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->7dd154808b1c676d3d63f3a63e9edabfm(Landroid/view/View;)V

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v5, 0x2

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {p0, v8}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->findViewById(I)Landroid/view/View;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1}, Ldso;-><init>()V

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_c
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->7dd154808b1c676d3d63f3a63e9edabfm(Landroid/view/View;)V

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, v3}, Landroid/transition/TransitionInflater;->inflateTransition(I)Landroid/transition/Transition;

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

    :goto_f
    iput-object v7, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

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

    :goto_10
    iput v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->J:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_11
    if-ne v0, v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n()Z

    move-result v8

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_13
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_14
    invoke-static {p1}, Landroid/transition/TransitionInflater;->from(Landroid/content/Context;)Landroid/transition/TransitionInflater;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_15
    const v8, 0x7f0b0196

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_16
    iput v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->O:I

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_17
    invoke-virtual {p1, v7}, Ldso;->q(I)V

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_18
    sget-object v3, Lnyy;->b:[I

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

    :goto_19
    goto/16 :goto_45

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_44

    nop

    nop

    :goto_1b
    const v1, 0x13

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p1, v3, v9, v8, v9}, Ldso;->i(IIII)V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_1d
    const v4, 0x7f150614

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_1e
    invoke-direct {p0, v6}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->ccb4c19b7dbd16be9d2a43125797659dm(I)I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_1f
    invoke-virtual {p1, p0}, Ldso;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    :goto_20
    goto/32 :goto_3e

    nop

    nop

    :goto_21
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getContext()Landroid/content/Context;

    move-result-object v2

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

    nop

    :goto_23
    invoke-virtual {p1, p0}, Ldso;->g(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_26
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_27
    const v3, 0x7f0b0540

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

    :goto_28
    throw p0

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    const/high16 v3, 0x7f170000

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const v6, 0x7f070a1f

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_2c
    iput-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->S:Z

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    check-cast v8, Landroid/widget/TextView;

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

    :goto_2e
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->v:Ldso;

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

    :goto_2f
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    :goto_30
    iput v5, v3, Ldsk;->Y:I

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_31
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->x:Lnzf;

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_32
    const v6, 0x7f070a1e

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_33
    invoke-virtual {p1, v3, v10, v7, v9}, Ldso;->i(IIII)V

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    move v3, v0

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->w:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_37
    iput-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->o:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto :goto_35

    nop

    nop

    :goto_39
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const v8, 0x7f0b04c6

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :goto_3c
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->A:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    :goto_3d
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const-string p1, "WearChipButton:Transition"

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_3f
    const v8, 0x7f0b0460

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

    :goto_40
    invoke-direct {p0, p1, p2, p3}, Lnzc;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const v7, 0x7f0b0541

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_42
    const/4 v9, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    :goto_43
    iput-object v8, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->z:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_44
    const v3, 0x7f0708fa

    nop

    nop

    nop

    :goto_45
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_46
    sget-object v3, Lnyy;->b:[I

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_47
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_48
    invoke-virtual {p1, v11, v6}, Ldso;->s(II)V

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_49
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_4a
    const v3, 0x7f0b053f

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

    :goto_4b
    if-eqz v8, :cond_1

    nop

    goto/32 :goto_20

    nop

    :cond_1
    goto/32 :goto_23

    nop

    nop

    :goto_4c
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n()Z

    move-result v3

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_4d
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getContext()Landroid/content/Context;

    move-result-object v3

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

    :goto_4e
    invoke-virtual {v2, p2, v3, p3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    move v3, v5

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

    :goto_50
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_52
    iput v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->u:I

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

    :goto_53
    iput v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->I:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_54
    iget-object v3, v3, Ldsj;->d:Ldsk;

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_55
    iput-object v8, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->B:Landroid/view/View;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_56
    iput-boolean v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->S:Z

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_57
    new-instance v0, Lnze;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_58
    invoke-direct {p2, p0, p0}, Lnzh;-><init>(Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;)V

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {p0, v3}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->findViewById(I)Landroid/view/View;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_5a
    invoke-virtual {p0, v8}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->findViewById(I)Landroid/view/View;

    move-result-object v8

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

    :goto_5b
    check-cast v3, Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_5c
    invoke-virtual {p1, v8, v6}, Ldso;->r(II)V

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {p0, v3}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->findViewById(I)Landroid/view/View;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    :goto_5e
    sget-object v0, Lnzf;->a:Lnzf;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_5f
    invoke-direct {p0, v6}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->ccb4c19b7dbd16be9d2a43125797659dm(I)I

    move-result v6

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_60
    invoke-virtual {p1, p2, v3, p3, v4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getContext()Landroid/content/Context;

    move-result-object p2

    nop

    nop

    nop

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n()Z

    move-result p3

    nop

    nop

    nop

    if-eq v0, p3, :cond_2

    nop

    const p3, 0x7f0c00c4

    nop

    goto :goto_61

    nop

    nop

    :cond_2
    const p3, 0x7f0c00bd

    nop

    nop

    :goto_61
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    nop

    iput p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->G:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getContext()Landroid/content/Context;

    move-result-object p2

    nop

    nop

    nop

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n()Z

    move-result p3

    nop

    nop

    nop

    if-eq v0, p3, :cond_3

    nop

    nop

    const p3, 0x7f0c00c5

    nop

    goto :goto_62

    nop

    nop

    nop

    nop

    nop

    :cond_3
    const p3, 0x7f0c00be

    nop

    nop

    :goto_62
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    nop

    nop

    nop

    nop

    iput p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->H:I

    nop

    const/4 p2, 0x7

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    nop

    nop

    nop

    const/16 v3, 0x8

    nop

    nop

    if-eqz p3, :cond_6

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

    nop

    nop

    if-nez p3, :cond_4

    nop

    nop

    nop

    goto :goto_64

    nop

    nop

    nop

    nop

    :cond_4
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->e94656b6137dd01f26085f984afe853em()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    nop

    if-eqz p3, :cond_5

    nop

    nop

    nop

    nop

    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_63

    nop

    nop

    :cond_5
    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

    nop

    invoke-static {p3, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->6a76c551e4658c5f4308c862164e4dd9m()V

    :goto_63
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->86d5c0c77e4f72baec1b0d5a6810921fm()V

    :cond_6
    :goto_64
    invoke-virtual {p1, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    nop

    if-eqz p2, :cond_7

    nop

    nop

    invoke-virtual {p1, v3, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    nop

    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

    nop

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    iget p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->G:I

    nop

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_7
    const/16 p2, 0x9

    nop

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p3

    nop

    nop

    nop

    nop

    const/4 v4, -0x1

    nop

    nop

    if-eqz p3, :cond_9

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    nop

    nop

    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    if-nez p2, :cond_8

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    :cond_8
    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_9
    const/16 p2, 0xa

    nop

    nop

    nop

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    nop

    nop

    const/4 p3, 0x5

    nop

    nop

    nop

    nop

    if-ltz p2, :cond_d

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Lnzk;->b()[I

    if-ge p2, v5, :cond_d

    nop

    nop

    nop

    nop

    nop

    invoke-static {}, Lnzk;->b()[I

    move-result-object v6

    nop

    nop

    aget p2, v6, p2

    nop

    nop

    nop

    iget-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    nop

    nop

    nop

    nop

    check-cast v6, Ldse;

    nop

    nop

    nop

    nop

    nop

    if-ne p2, v0, :cond_a

    nop

    nop

    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    goto :goto_65

    nop

    nop

    :cond_a
    const/high16 v7, 0x3f000000    # 0.5f

    nop

    :goto_65
    iput v7, v6, Ldse;->G:F

    nop

    nop

    nop

    iget-object v7, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

    nop

    nop

    if-ne p2, v0, :cond_b

    nop

    const v7, 0x800003

    nop

    nop

    goto :goto_66

    nop

    nop

    nop

    :cond_b
    move v7, v0

    nop

    :goto_66
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setGravity(I)V

    iget-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    if-ne p2, v0, :cond_c

    nop

    nop

    nop

    nop

    nop

    move p2, p3

    nop

    nop

    nop

    nop

    nop

    goto :goto_67

    nop

    nop

    nop

    :cond_c
    move p2, v10

    nop

    :goto_67
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setTextAlignment(I)V

    :cond_d
    const/16 p2, 0xb

    nop

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_e

    nop

    iget v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->G:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    nop

    nop

    iput p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->G:I

    nop

    nop

    nop

    iput p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->H:I

    nop

    iget-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

    nop

    nop

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    :cond_e
    const/16 p2, 0xc

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_10

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->e94656b6137dd01f26085f984afe853em()V

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    nop

    nop

    nop

    nop

    nop

    if-eqz v6, :cond_f

    nop

    nop

    nop

    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->z:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    iget v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->G:I

    nop

    nop

    nop

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    goto :goto_68

    nop

    :cond_f
    iget-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->z:Landroid/widget/TextView;

    nop

    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->z:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    invoke-static {v6, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/ContentChangeTransition;->c(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    iget v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->H:I

    nop

    nop

    nop

    invoke-virtual {p2, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    :goto_68
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->6a76c551e4658c5f4308c862164e4dd9m()V

    :cond_10
    const/16 p2, 0xd

    nop

    nop

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    nop

    if-eqz v6, :cond_11

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    nop

    nop

    nop

    iget-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->z:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setTextAppearance(I)V

    :cond_11
    const/16 p2, 0xe

    nop

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    nop

    nop

    nop

    if-eqz v6, :cond_13

    nop

    nop

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    iget-object v6, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->z:Landroid/widget/TextView;

    nop

    nop

    if-nez p2, :cond_12

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    nop

    :cond_12
    invoke-virtual {v6, p2}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_13
    const/16 p2, 0xf

    nop

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    nop

    nop

    nop

    nop

    nop

    if-nez p2, :cond_14

    nop

    nop

    nop

    nop

    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->z:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_14
    const p2, 0x7f070904

    nop

    nop

    nop

    nop

    invoke-direct {p0, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->ccb4c19b7dbd16be9d2a43125797659dm(I)I

    move-result p2

    nop

    nop

    nop

    const/16 v4, 0x12

    nop

    nop

    nop

    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    nop

    if-eqz v6, :cond_15

    nop

    invoke-virtual {p1, v4, p2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    nop

    iget-object v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->o:Landroid/widget/ImageView;

    nop

    nop

    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    iput p2, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    nop

    iput p2, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    nop

    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->o:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    invoke-virtual {p2, v4}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_15
    invoke-virtual {p1, p3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    nop

    nop

    nop

    if-eqz p2, :cond_16

    nop

    nop

    nop

    invoke-virtual {p1, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    nop

    nop

    nop

    nop

    nop

    iput p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->I:I

    nop

    nop

    :cond_16
    invoke-virtual {p1, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    nop

    if-eqz p2, :cond_17

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v10, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    nop

    nop

    iput p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->J:I

    nop

    nop

    :cond_17
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n()Z

    move-result p2

    nop

    nop

    nop

    if-eq v0, p2, :cond_18

    nop

    nop

    move p2, v5

    nop

    nop

    nop

    goto :goto_69

    nop

    nop

    nop

    nop

    :cond_18
    move p2, v0

    nop

    nop

    nop

    nop

    nop

    :goto_69
    const/16 p3, 0x10

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    nop

    nop

    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->z:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    invoke-virtual {p3, p2}, Landroid/widget/TextView;->setMaxLines(I)V

    sget-object p2, Lnzf;->a:Lnzf;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v5, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p3

    nop

    nop

    if-ltz p3, :cond_19

    nop

    nop

    nop

    nop

    invoke-static {}, Lnzf;->values()[Lnzf;

    move-result-object v2

    nop

    nop

    array-length v2, v2

    nop

    nop

    nop

    if-ge p3, v2, :cond_19

    nop

    nop

    nop

    invoke-static {}, Lnzf;->values()[Lnzf;

    move-result-object p2

    nop

    nop

    nop

    aget-object p2, p2, p3

    nop

    nop

    :cond_19
    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->x:Lnzf;

    nop

    if-ne p3, p2, :cond_1a

    nop

    goto/16 :goto_6f

    nop

    nop

    nop

    :cond_1a
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->e94656b6137dd01f26085f984afe853em()V

    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->A:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    invoke-virtual {p3}, Landroid/widget/FrameLayout;->removeAllViews()V

    const/4 p3, 0x0

    nop

    nop

    iput-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->s:Landroid/widget/CompoundButton;

    nop

    nop

    nop

    nop

    nop

    iput-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->C:Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    iput-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->x:Lnzf;

    nop

    nop

    nop

    nop

    nop

    iget v2, p2, Lnzf;->f:I

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1c

    nop

    nop

    nop

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getContext()Landroid/content/Context;

    move-result-object v2

    nop

    nop

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    nop

    iget v4, p2, Lnzf;->f:I

    nop

    nop

    nop

    nop

    nop

    iget-object v5, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->A:Landroid/widget/FrameLayout;

    nop

    invoke-virtual {v2, v4, v5, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    sget-object v2, Lnzf;->e:Lnzf;

    nop

    if-ne p2, v2, :cond_1b

    nop

    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->A:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    const v4, 0x7f0b053e

    nop

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Landroid/widget/ImageView;

    nop

    nop

    nop

    nop

    nop

    iput-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->C:Landroid/widget/ImageView;

    nop

    iget v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->E:I

    nop

    nop

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->C:Landroid/widget/ImageView;

    nop

    nop

    nop

    iget-object v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->F:Landroid/content/res/ColorStateList;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_6a

    nop

    :cond_1b
    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->A:Landroid/widget/FrameLayout;

    nop

    nop

    const v4, 0x7f0b0542

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    nop

    nop

    check-cast v2, Landroid/widget/CompoundButton;

    nop

    nop

    iput-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->s:Landroid/widget/CompoundButton;

    nop

    iget-boolean v2, p0, Lnzc;->p:Z

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->c43d12f4f4da28dd6c943a4effe477b7m(Z)V

    :cond_1c
    :goto_6a
    sget-object v2, Lnzf;->e:Lnzf;

    nop

    if-eq p2, v2, :cond_1e

    nop

    nop

    nop

    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->s:Landroid/widget/CompoundButton;

    nop

    nop

    nop

    if-eqz p2, :cond_1d

    nop

    nop

    nop

    nop

    nop

    goto :goto_6b

    nop

    nop

    nop

    nop

    nop

    :cond_1d
    move p2, v1

    nop

    nop

    nop

    nop

    goto :goto_6c

    nop

    :cond_1e
    :goto_6b
    move p2, v0

    nop

    nop

    nop

    :goto_6c
    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->A:Landroid/widget/FrameLayout;

    nop

    if-eq v0, p2, :cond_1f

    nop

    nop

    nop

    nop

    nop

    goto :goto_6d

    nop

    :cond_1f
    move v3, v1

    nop

    nop

    :goto_6d
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p2, :cond_20

    nop

    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    nop

    nop

    nop

    const v2, 0x7f070909

    nop

    nop

    nop

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    nop

    nop

    nop

    nop

    goto :goto_6e

    nop

    nop

    nop

    :cond_20
    move p2, v1

    nop

    nop

    nop

    :goto_6e
    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

    nop

    invoke-static {v2, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->A(Landroid/widget/TextView;I)V

    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->z:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->A(Landroid/widget/TextView;I)V

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->132cd3b981019b59dc42653eea0b34b4m()V

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->a2d5024664df85075db576b91d9663e9m()V

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->86d5c0c77e4f72baec1b0d5a6810921fm()V

    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->A:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    invoke-virtual {p2, p3}, Landroid/widget/FrameLayout;->setForeground(Landroid/graphics/drawable/Drawable;)V

    :goto_6f
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    nop

    if-eqz p2, :cond_21

    nop

    nop

    nop

    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    nop

    nop

    iput p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->E:I

    nop

    nop

    iget-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->C:Landroid/widget/ImageView;

    nop

    if-eqz p2, :cond_21

    nop

    nop

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->e94656b6137dd01f26085f984afe853em()V

    iget p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->E:I

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_21
    const/16 p2, 0x11

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    nop

    nop

    nop

    nop

    if-eqz p2, :cond_22

    nop

    nop

    nop

    const/16 p2, 0x11

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p2

    nop

    nop

    nop

    iput-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->D:Ljava/lang/CharSequence;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->86d5c0c77e4f72baec1b0d5a6810921fm()V

    :cond_22
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p2

    nop

    if-eqz p2, :cond_23

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    nop

    nop

    iput-object p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->F:Landroid/content/res/ColorStateList;

    nop

    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->x:Lnzf;

    nop

    sget-object v0, Lnzf;->e:Lnzf;

    nop

    nop

    nop

    nop

    nop

    if-ne p3, v0, :cond_23

    nop

    nop

    nop

    iget-object p3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->C:Landroid/widget/ImageView;

    nop

    nop

    nop

    if-eqz p3, :cond_23

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :cond_23
    iget-boolean p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->Q:Z

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v9, p2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    nop

    iput-boolean p2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->Q:Z

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_70
    const/4 v10, 0x4

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    const v6, 0x7f070a1d

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

    :goto_72
    iput-boolean v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->S:Z

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_73
    const v0, 0x17

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

    :goto_74
    iput-object v8, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->A:Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_75
    const v8, 0x7f0b0543

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_76
    invoke-virtual {p0, v7}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->findViewById(I)Landroid/view/View;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_77
    move v3, v6

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v3, v7, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_79
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_7a
    throw p2

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :goto_7b
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->z:Landroid/widget/TextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-super {p0, p2, p3}, Lnzc;->j(Landroid/util/AttributeSet;I)V

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    iput-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->Q:Z

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

    :goto_7e
    invoke-virtual {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->setTransitionName(Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    invoke-virtual {p1, v3}, Ldso;->q(I)V

    goto/32 :goto_17

    nop

    nop

    :goto_80
    const v7, 0x7f0e017e

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    new-instance p2, Lnzh;

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_82
    if-lez v0, :cond_24

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :cond_24
    goto/32 :goto_50

    nop

    :goto_83
    iput v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->T:I

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_84
    const v11, 0x7f0b00ae

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_85
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    :goto_86
    const v6, 0x7f070a1c

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_87
    if-eq v3, v0, :cond_25

    nop

    goto/32 :goto_39

    nop

    nop

    :cond_25
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    :goto_88
    const/4 v3, 0x6

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_89
    const v8, 0x7f0b0544

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    :goto_8a
    invoke-static {p1, p2}, Ldwd;->h(Landroid/view/View;Ldvd;)V

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    invoke-virtual {p1, v7, v10, v11, v10}, Ldso;->i(IIII)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p2

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    invoke-direct {p0, v6}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->ccb4c19b7dbd16be9d2a43125797659dm(I)I

    move-result v6

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    check-cast v8, Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_91
    new-instance p1, Ldso;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_92
    invoke-virtual {p1, v7, v9, v3, v10}, Ldso;->i(IIII)V

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {p1, v8, v6}, Ldso;->r(II)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_94
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_95
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop
.end method

.method private static final A(Landroid/widget/TextView;I)V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    goto/32 :goto_4

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
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    :goto_5
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    :goto_6
    goto/32 :goto_1

    nop

    nop
.end method

.method private final a2d5024664df85075db576b91d9663e9m()V
    .locals 6

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->L:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_1
    move v1, v2

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->M:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    goto/16 :goto_47

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v0, :cond_0

    nop

    goto/32 :goto_31

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

    :goto_7
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->N:Landroid/graphics/drawable/Drawable;

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

    :goto_8
    invoke-static {v5}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->p(Z)I

    move-result v5

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_9
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    move v5, v3

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_d
    move v5, v3

    nop

    :goto_e
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0x3

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_11
    goto/16 :goto_31

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    :goto_13
    if-eqz v1, :cond_1

    nop

    goto/32 :goto_12

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v4, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    :goto_16
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_17
    iget-object v4, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->s:Landroid/widget/CompoundButton;

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_18
    if-nez v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_19
    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1b
    if-eqz v4, :cond_4

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_4
    goto/32 :goto_34

    nop

    nop

    :goto_1c
    if-eqz v1, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_5
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->L:Landroid/graphics/drawable/Drawable;

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

    :goto_1e
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->N:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_1f
    if-eqz v4, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_20
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_22
    move v5, v2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-static {v5}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->p(Z)I

    move-result v5

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

    :goto_24
    move v5, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_25
    if-nez v1, :cond_7

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_7
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-eqz v1, :cond_8

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_27
    move v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    :goto_28
    if-eqz v4, :cond_9

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :cond_9
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_29
    move v4, v3

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2b
    if-eq v1, v2, :cond_a

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_1

    nop

    nop

    :goto_2c
    invoke-virtual {v0, v5}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_2d
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_2e
    if-nez v1, :cond_b

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    move v5, v2

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_30
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :goto_31
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_32
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->M:Landroid/graphics/drawable/Drawable;

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

    :goto_33
    invoke-static {v5}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->p(Z)I

    move-result v5

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v1, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->K:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_c

    nop

    nop

    :goto_37
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_38
    iget v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->O:I

    nop

    goto/32 :goto_3c

    nop

    nop

    :goto_39
    move v5, v3

    nop

    :goto_3a
    goto/32 :goto_33

    nop

    nop

    :goto_3b
    if-nez v4, :cond_d

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_3c
    const/4 v2, 0x1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :goto_3d
    goto/16 :goto_2a

    nop

    nop

    :goto_3e
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto :goto_3a

    nop

    nop

    :goto_40
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto :goto_45

    nop

    nop

    nop

    :goto_42
    goto/32 :goto_44

    nop

    nop

    nop

    :goto_43
    if-lez v0, :cond_e

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_9

    nop

    :goto_44
    move v1, v3

    nop

    :goto_45
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v3, 0x0

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_49
    invoke-static {v2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->p(Z)I

    move-result v0

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    rem-int v0, v0, v1

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
.end method

.method private final c43d12f4f4da28dd6c943a4effe477b7m(Z)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->s:Landroid/widget/CompoundButton;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->d543f409229584e2e064495967092514m()V

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop
.end method

.method private final ccb4c19b7dbd16be9d2a43125797659dm(I)I
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p0

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

    :goto_2
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method private final d116db4599d9ddc8c35e61366a4f4967m()Lnzg;
    .locals 4

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroid/view/View;->getAccessibilityClassName()Ljava/lang/CharSequence;

    move-result-object v0

    nop

    goto/32 :goto_15

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

    nop

    goto/32 :goto_16

    nop

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
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->m()Ljava/lang/CharSequence;

    move-result-object v2

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_4
    if-eqz v3, :cond_1

    nop

    goto/32 :goto_6

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    goto :goto_9

    nop

    :goto_6
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->z:Landroid/widget/TextView;

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const-string p0, ""

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->s:Landroid/widget/CompoundButton;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object v1

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->z:Landroid/widget/TextView;

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

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v0, 0x2

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

    :goto_10
    new-instance v1, Lnzg;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {v1, v0, v2, p0}, Lnzg;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    :cond_2
    goto/32 :goto_11

    nop

    :goto_15
    goto :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

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

    :goto_18
    const/4 v0, 0x0

    nop

    nop

    :goto_19
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    rem-int v0, v0, v1

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

    :goto_1b
    const v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_1c
    invoke-virtual {v3}, Landroid/widget/TextView;->getVisibility()I

    move-result v3

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method private final d543f409229584e2e064495967092514m()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->setStateDescription(Ljava/lang/CharSequence;)V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

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

    :goto_3
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->s:Landroid/widget/CompoundButton;

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

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/widget/CompoundButton;->getStateDescription()Ljava/lang/CharSequence;

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
.end method

.method private final e94656b6137dd01f26085f984afe853em()V
    .locals 2

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v1, 0x8

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_1
    if-eq v0, v1, :cond_0

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

    nop

    :goto_2
    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->Q:Z

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

    :goto_3
    if-nez v0, :cond_1

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

    :cond_1
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    :goto_6
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

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

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->z:Landroid/widget/TextView;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto :goto_6

    nop

    :goto_c
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->t:Z

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0xc

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_f
    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->S:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_10
    const v1, 0x18

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

    :goto_11
    goto/32 :goto_19

    nop

    :goto_12
    goto/32 :goto_2

    nop

    nop

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

    goto/32 :goto_1a

    nop

    nop

    :goto_14
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_16
    if-nez v0, :cond_3

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eq v0, v1, :cond_4

    nop

    goto/32 :goto_c

    nop

    :cond_4
    goto/32 :goto_a

    nop

    nop

    :goto_18
    return-void

    nop

    nop

    :goto_19
    goto/32 :goto_4

    nop

    nop

    :goto_1a
    if-lez v0, :cond_5

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

    :cond_5
    goto/32 :goto_11

    nop

    :goto_1b
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->R:Landroid/transition/Transition;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method private static p(Z)I
    .locals 0

    goto/32 :goto_2

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
    const/16 p0, 0xff

    nop

    nop

    goto/32 :goto_3

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

    :cond_0
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return p0

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final i(Landroid/content/res/ColorStateList;)V
    .locals 3

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_23

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

    :goto_1
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_d

    nop

    nop

    :goto_2
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_e

    nop

    nop

    :goto_3
    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->N:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_4
    goto/32 :goto_21

    nop

    :goto_5
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

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
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-nez v2, :cond_1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_1
    goto/32 :goto_3

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
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v2, :cond_2

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->M:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_e
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->L:Landroid/graphics/drawable/Drawable;

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

    :goto_f
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->N:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

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

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_15
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

    :goto_16
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    goto/32 :goto_10

    nop

    nop

    :goto_17
    if-lez v0, :cond_4

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_20

    nop

    :goto_18
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

    :goto_19
    const v1, 0x1d

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->L:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->K:Landroid/graphics/drawable/Drawable;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    iget-object v2, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->M:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1e
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-eqz v2, :cond_5

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_12

    nop

    nop

    :goto_21
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    :goto_23
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_24
    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_25
    goto/32 :goto_5

    nop

    nop

    nop
.end method

.method public final l(I)V
    .locals 1

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/32 :goto_9

    nop

    nop

    :goto_1
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->o:Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_2

    nop

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

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setDuplicateParentStateEnabled(Z)V

    goto/32 :goto_b

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
    if-nez p1, :cond_0

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->o:Landroid/widget/ImageView;

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

    :goto_7
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->e94656b6137dd01f26085f984afe853em()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/4 v0, 0x1

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

    :goto_9
    iget-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->o:Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->132cd3b981019b59dc42653eea0b34b4m()V

    :goto_c
    goto/32 :goto_4

    nop

    nop

    nop

    nop
.end method

.method public final m()Ljava/lang/CharSequence;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1
    goto :goto_9

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

    nop

    nop

    :goto_3
    return-object p0

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

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

    :goto_7
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_8
    const-string p0, ""

    nop

    nop

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop
.end method

.method final n()Z
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->T:I

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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

    nop

    :goto_2
    return v0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_4
    if-eq p0, v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

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
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onAttachedToWindow()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-super {p0}, Lnzc;->onAttachedToWindow()V

    goto/32 :goto_3

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
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->w:Landroid/view/ViewTreeObserver$OnPreDrawListener;

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getRootView()Landroid/view/View;

    move-result-object v0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method protected final onDetachedFromWindow()V
    .locals 1

    goto/32 :goto_7

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
    iput-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->t:Z

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

    :goto_3
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->w:Landroid/view/ViewTreeObserver$OnPreDrawListener;

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

    nop

    nop

    :goto_4
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

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

    :goto_5
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getRootView()Landroid/view/View;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p0}, Landroid/transition/TransitionManager;->endTransitions(Landroid/view/ViewGroup;)V

    goto/32 :goto_2

    nop

    nop

    :goto_7
    invoke-super {p0}, Lnzc;->onDetachedFromWindow()V

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Lnzc;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->430f03c2ea70bd28108d593eca0c7c30m(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v1, v0, Lnzg;->a:Ljava/lang/CharSequence;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xe

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setChecked(Z)V

    goto/32 :goto_12

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

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    :goto_7
    const v0, 0x1

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

    :goto_8
    iget-boolean p0, p0, Lnzc;->p:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_a
    invoke-virtual {p1, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->d116db4599d9ddc8c35e61366a4f4967m()Lnzg;

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

    nop

    :goto_c
    invoke-virtual {v0}, Lnzg;->a()Ljava/lang/CharSequence;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    iget-boolean v0, p0, Lnzc;->q:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_10
    invoke-super {p0, p1}, Lnzc;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    goto/32 :goto_b

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

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method protected final onMeasure(II)V
    .locals 4

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v3, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->P:Z

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_1
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->v:Ldso;

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-eq v0, v3, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    :cond_0
    goto/32 :goto_36

    nop

    nop

    :goto_3
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_4
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    :cond_1
    goto/32 :goto_e

    nop

    :goto_5
    const v0, 0x7f070a1c

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_6
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_7
    invoke-virtual {v1, v3, v2}, Ldso;->r(II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x7f070a1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, p0}, Ldso;->g(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

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

    :goto_b
    if-ge v1, v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_c
    move v0, v2

    nop

    :goto_d
    goto/32 :goto_14

    nop

    nop

    :goto_e
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getMeasuredHeight()I

    move-result v1

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

    :goto_11
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->v:Ldso;

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v2, v0}, Ldso;->s(II)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->v:Ldso;

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->v:Ldso;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_15
    iget v0, p0, Landroidx/constraintlayout/widget/ConstraintLayout;->d:I

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_17
    goto/32 :goto_f

    nop

    :goto_18
    const/4 v3, 0x1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v2, 0x7f0b00ae

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1a
    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_1b
    invoke-virtual {p0, p1, p2}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->measure(II)V

    :goto_1c
    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1d
    const v1, 0x6

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto :goto_2b

    nop

    nop

    :goto_1f
    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, p0}, Ldso;->c(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    goto/32 :goto_1b

    nop

    nop

    :goto_21
    add-int/2addr v0, v1

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_22
    if-nez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    :cond_3
    goto/32 :goto_b

    nop

    nop

    :goto_23
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->n()Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_24
    if-eqz v0, :cond_4

    nop

    goto/32 :goto_1c

    nop

    :cond_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_25
    iget-boolean v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->P:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_26
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->y:Landroid/widget/TextView;

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

    :goto_27
    return-void

    nop

    :goto_28
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v3, 0x7f0b04c6

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

    :goto_2a
    move v3, v2

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-nez v3, :cond_5

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2d
    if-ne v0, v1, :cond_6

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2f
    invoke-direct {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->ccb4c19b7dbd16be9d2a43125797659dm(I)I

    move-result v0

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_30
    invoke-super {p0, p1, p2}, Lnzc;->onMeasure(II)V

    goto/32 :goto_23

    nop

    nop

    :goto_31
    const v0, 0x1a

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

    nop

    :goto_32
    invoke-direct {p0, v0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->ccb4c19b7dbd16be9d2a43125797659dm(I)I

    move-result v2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_33
    iget-object v1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->z:Landroid/widget/TextView;

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_34
    goto/16 :goto_d

    nop

    nop

    :goto_35
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_36
    goto/16 :goto_1c

    nop

    nop

    nop

    :goto_37
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->430f03c2ea70bd28108d593eca0c7c30m(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Lnzc;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onRtlPropertiesChanged(I)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->O:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    if-ne v0, p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->O:I

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

    :goto_3
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->a2d5024664df85075db576b91d9663e9m()V

    :goto_4
    goto/32 :goto_5

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
.end method

.method public final setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x7f0b0546

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->e94656b6137dd01f26085f984afe853em()V

    goto/32 :goto_12

    nop

    nop

    :goto_3
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

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
    const v0, 0x7f0b053d

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

    :goto_5
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

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

    :goto_6
    const v0, 0x7f0b0545

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->L:Landroid/graphics/drawable/Drawable;

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

    :goto_8
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_9
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_14

    nop

    nop

    :goto_a
    if-ne v0, p1, :cond_1

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop

    :goto_b
    goto :goto_16

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->K:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->N:Landroid/graphics/drawable/Drawable;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->L:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    return-void

    nop

    nop

    nop

    :goto_11
    const v0, 0x7f0b053c

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_12
    invoke-super {p0, p1}, Lnzc;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->M:Landroid/graphics/drawable/Drawable;

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

    :goto_14
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_15
    iput-object p1, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->N:Landroid/graphics/drawable/Drawable;

    nop

    :goto_16
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->K:Landroid/graphics/drawable/Drawable;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_18
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_19
    iput-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->M:Landroid/graphics/drawable/Drawable;

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

    :goto_1a
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-direct {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->a2d5024664df85075db576b91d9663e9m()V

    :goto_1d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setChecked(Z)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->c43d12f4f4da28dd6c943a4effe477b7m(Z)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Lnzc;->setChecked(Z)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method

.method public final setEnabled(Z)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_f

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

    nop

    goto/32 :goto_c

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0xc

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->A:Landroid/widget/FrameLayout;

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

    :goto_5
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->C:Landroid/widget/ImageView;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->A:Landroid/widget/FrameLayout;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0xa

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

    :goto_a
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_14

    nop

    :goto_b
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    :goto_c
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_c

    nop

    nop

    :goto_e
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    goto/32 :goto_15

    nop

    :goto_11
    if-eq v0, v1, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->isEnabled()Z

    move-result v1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-super {p0, p1}, Lnzc;->setEnabled(Z)V

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    sget-object v1, Lnzf;->e:Lnzf;

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
    iget-object p0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->B:Landroid/view/View;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_18
    iget-object v0, p0, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->x:Lnzf;

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_19
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->isEnabled()Z

    move-result v1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {p0, p1}, Landroid/view/View;->setEnabled(Z)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setEnabled(Z)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p0}, Lcom/google/android/clockwork/common/wearable/wearmaterial/button/WearChipButton;->isEnabled()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop
.end method
