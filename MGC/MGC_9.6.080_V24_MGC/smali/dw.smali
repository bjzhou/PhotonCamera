.class final Ldw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ldvo;


# instance fields
.field final synthetic a:Lej;


# direct methods
.method public constructor <init>(Lej;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Ldw;->a:Lej;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop
.end method


# virtual methods
.method public final a(Landroid/view/View;Ldwy;)Ldwy;
    .locals 13

    goto/32 :goto_2e

    nop

    nop

    :goto_0
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_1
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v7, :cond_0

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p2}, Ldwy;->a()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {v8, v9, v7}, Landroid/view/View;->computeSystemWindowInsets(Landroid/view/WindowInsets;Landroid/graphics/Rect;)Landroid/view/WindowInsets;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_6
    move v6, v5

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    move v1, v5

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v7, p0, Lej;->h:Landroid/content/Context;

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_9
    iget v7, v7, Landroid/graphics/Insets;->bottom:I

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v6, p0, Lej;->I:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget v7, v6, Landroid/graphics/Rect;->top:I

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v6, :cond_1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    :cond_2
    goto/32 :goto_63

    nop

    :goto_f
    goto/16 :goto_91

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v12, -0x1

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_13
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_14
    instance-of v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_15
    iput v9, v7, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

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

    :goto_16
    goto/16 :goto_a2

    nop

    :goto_17
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_19
    new-instance v8, Landroid/view/View;

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

    nop

    :goto_1a
    invoke-static {v9}, Ldvx;->a(Landroid/view/View;)Ldwy;

    move-result-object v9

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    :goto_1b
    if-nez v2, :cond_3

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {p2}, Ldwy;->c()I

    move-result v10

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {p2}, Ldwy;->d()I

    move-result v1

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

    :goto_1e
    move v3, v5

    nop

    nop

    :goto_1f
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_21
    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_8f

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_bf

    nop

    nop

    :goto_24
    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_25
    iget-object v8, p0, Lej;->u:Landroid/view/View;

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

    nop

    :goto_26
    const v10, 0x7f060005

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

    nop

    :goto_27
    iget-object v7, p0, Lej;->I:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    :goto_28
    iget v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v6}, Landroid/support/v7/widget/ActionBarContextView;->isShown()Z

    move-result v6

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    :goto_2a
    invoke-direct {v7, v12, v8, v11}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_2b
    goto/16 :goto_17

    nop

    :goto_2c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iput v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

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

    :goto_2e
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_2f
    if-ne v8, v9, :cond_4

    nop

    goto/32 :goto_91

    nop

    :cond_4
    :goto_30
    goto/32 :goto_af

    nop

    nop

    :goto_31
    iget-object v7, p0, Lej;->u:Landroid/view/View;

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

    nop

    :goto_32
    iget-object v6, p0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_33
    if-nez v7, :cond_5

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_59

    nop

    nop

    nop

    nop

    nop

    :goto_34
    iget-object v6, p0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    nop

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_35
    move v6, v4

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

    :goto_36
    iget-object v7, p0, Lej;->u:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    :goto_37
    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v6}, Landroid/graphics/Insets;->of(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v10

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

    :goto_39
    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    if-eqz v9, :cond_6

    nop

    goto/32 :goto_41

    nop

    :cond_6
    goto/32 :goto_4a

    nop

    nop

    :goto_3b
    iget-object v9, p0, Lej;->t:Landroid/view/ViewGroup;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_3c
    iget v8, v6, Landroid/graphics/Rect;->left:I

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    and-int/lit16 v9, v9, 0x2000

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

    nop

    nop

    :goto_3e
    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v9, v10}, Landroid/view/WindowInsets$Builder;->setSystemWindowInsets(Landroid/graphics/Insets;)Landroid/view/WindowInsets$Builder;

    move-result-object v9

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/16 :goto_94

    nop

    :goto_41
    goto/32 :goto_93

    nop

    nop

    :goto_42
    iget-boolean v7, p0, Lej;->x:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v3}, Ldwq;->a()Ldwy;

    move-result-object p2

    nop

    :goto_44
    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    move v6, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_46
    iget v8, v7, Landroid/graphics/Insets;->left:I

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_47
    goto/16 :goto_9e

    nop

    nop

    :goto_48
    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_49
    if-ne v4, v8, :cond_7

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_5b

    nop

    nop

    :goto_4a
    move v10, v5

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    move v8, v5

    nop

    nop

    nop

    nop

    :goto_4c
    goto/32 :goto_68

    nop

    nop

    nop

    :goto_4d
    iget v9, v7, Landroid/graphics/Insets;->top:I

    nop

    goto/32 :goto_58

    nop

    nop

    :goto_4e
    move v9, v5

    nop

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    iget-object v6, p0, Lej;->H:Landroid/graphics/Rect;

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

    :goto_50
    goto/32 :goto_64

    nop

    :goto_51
    if-nez v8, :cond_8

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_52
    move v8, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    :goto_53
    invoke-virtual {p2}, Ldwy;->a()I

    move-result v11

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

    :goto_54
    invoke-virtual {v8, v9, v12, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_55
    iput v9, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

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

    :goto_56
    iget-object v8, p0, Lej;->t:Landroid/view/ViewGroup;

    nop

    nop

    nop

    nop

    :try_start_0
    const-class v9, Landroid/view/WindowInsets$Builder;

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    :goto_57
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_58
    iget v10, v7, Landroid/graphics/Insets;->right:I

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_59
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

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

    :goto_5a
    new-instance v6, Landroid/graphics/Rect;

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

    :goto_5b
    goto/16 :goto_1f

    nop

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget-object v7, p0, Lej;->u:Landroid/view/View;

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual {v2}, Landroid/support/v7/widget/ActionBarContextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5f
    iput v6, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_60
    iget v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    :goto_61
    move v8, v6

    nop

    nop

    nop

    nop

    nop

    :goto_62
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_63
    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_64
    goto/32 :goto_c2

    nop

    nop

    nop

    :goto_65
    iget-object v2, p0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

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

    :goto_66
    invoke-virtual {v7, v9}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_67
    goto/32 :goto_42

    nop

    nop

    :goto_68
    iget-object p0, p0, Lej;->u:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_69
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    :goto_6a
    iget-object v9, p0, Lej;->h:Landroid/content/Context;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    :goto_6b
    invoke-virtual {v7}, Landroid/view/View;->getWindowSystemUiVisibility()I

    move-result v9

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_6c
    if-nez v6, :cond_9

    nop

    goto/32 :goto_b3

    nop

    :cond_9
    goto/32 :goto_79

    nop

    nop

    nop

    :goto_6d
    iget v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    new-instance v6, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_6f
    invoke-virtual {p2}, Ldwy;->c()I

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_70
    iget v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    :goto_71
    invoke-virtual {p2}, Ldwy;->d()I

    move-result v0

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_72
    if-nez v6, :cond_a

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_34

    nop

    nop

    :goto_73
    invoke-virtual {p2}, Ldwy;->d()I

    move-result v9

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_74
    if-eqz v7, :cond_b

    nop

    goto/32 :goto_62

    nop

    nop

    :cond_b
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_75
    goto :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_76
    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    :goto_77
    if-nez v7, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_78
    invoke-direct {v3, p2}, Ldwp;-><init>(Ldwy;)V

    goto/32 :goto_b0

    nop

    nop

    :goto_79
    iput v5, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_7a
    if-nez v6, :cond_d

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    return-object p0

    nop

    :goto_7c
    goto/32 :goto_50

    nop

    nop

    nop

    nop

    :goto_7d
    invoke-virtual {v9}, Ldwy;->c()I

    move-result v9

    nop

    :goto_7e
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iget-object v7, p0, Lej;->u:Landroid/view/View;

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    nop

    :goto_80
    invoke-virtual {p2}, Ldwy;->b()I

    move-result v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    :goto_81
    if-eqz v9, :cond_e

    nop

    goto/32 :goto_76

    nop

    :cond_e
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    if-eq v11, v8, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :goto_83
    new-instance v9, Landroid/view/WindowInsets$Builder;

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

    :goto_84
    const v10, 0x7f060006

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

    :goto_85
    if-ne v0, v1, :cond_10

    nop

    nop

    goto/32 :goto_44

    nop

    :cond_10
    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    :goto_86
    const/4 v5, 0x0

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_87
    iget-object v9, p0, Lej;->u:Landroid/view/View;

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

    :goto_88
    if-nez v2, :cond_11

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_89
    invoke-virtual {v3, p0}, Ldwq;->c(Ldua;)V

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_8a
    iput-object v8, p0, Lej;->u:Landroid/view/View;

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_8b
    goto/16 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_8d
    iget v11, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    invoke-virtual {v9, v10}, Landroid/content/Context;->getColor(I)I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    :goto_90
    invoke-virtual {v8, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_91
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_92
    invoke-direct {v8, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-virtual {v9}, Ldwy;->b()I

    move-result v10

    nop

    nop

    nop

    nop

    :goto_94
    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_95
    if-gtz v7, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_12
    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_96
    move v8, v4

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    :goto_97
    const/16 v11, 0x33

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_98
    if-ne v11, v6, :cond_13

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :cond_13
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    iget-object v8, p0, Lej;->t:Landroid/view/ViewGroup;

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_9a
    iput v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_9b
    invoke-virtual {p2}, Ldwy;->b()I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    :goto_9c
    check-cast v7, Landroid/view/ViewGroup$MarginLayoutParams;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    move v8, v5

    nop

    nop

    nop

    nop

    nop

    :goto_9e
    goto/32 :goto_51

    nop

    nop

    :goto_9f
    if-eq v11, v7, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_8d

    nop

    nop

    :goto_a0
    invoke-direct {v9}, Landroid/view/WindowInsets$Builder;-><init>()V

    goto/32 :goto_38

    nop

    nop

    :goto_a1
    move v6, v4

    nop

    :goto_a2
    goto/32 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_a3
    invoke-virtual {v7, v3}, Landroid/view/View;->setVisibility(I)V

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    iput-object v6, p0, Lej;->H:Landroid/graphics/Rect;

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_a5
    if-eq v8, v11, :cond_15

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_69

    nop

    nop

    nop

    :goto_a6
    if-nez v9, :cond_16

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :cond_16
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a7
    goto/16 :goto_4c

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-static {p1, p2}, Ldwd;->c(Landroid/view/View;Ldwy;)Ldwy;

    move-result-object p0

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_ab
    if-nez v8, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    if-eq v8, v10, :cond_18

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_18
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_ad
    iput v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

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

    :goto_ae
    invoke-virtual {v9}, Landroid/view/WindowInsets$Builder;->build()Landroid/view/WindowInsets;

    move-result-object v9

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_af
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_b0
    invoke-static {p0, v1, v0, v2}, Ldua;->b(IIII)Ldua;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b1
    invoke-virtual {v6, v2}, Landroid/support/v7/widget/ActionBarContextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_b2
    goto/16 :goto_62

    nop

    nop

    nop

    nop

    :goto_b3
    goto/32 :goto_45

    nop

    nop

    :goto_b4
    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_b5
    if-nez p0, :cond_19

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_b6
    iput v10, v7, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

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

    :goto_b7
    const/16 v3, 0x8

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_b8
    iget-object v2, p0, Lej;->o:Landroid/support/v7/widget/ActionBarContextView;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_ba
    const v1, 0x19

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_bb
    iget-object v6, p0, Lej;->H:Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_bc
    if-eqz v7, :cond_1a

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_bd
    new-instance v3, Ldwp;

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    :goto_be
    invoke-virtual {v6, v8, v9, v10, v7}, Landroid/graphics/Rect;->set(IIII)V

    :catchall_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    iget-object v9, p0, Lej;->h:Landroid/content/Context;

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

    :goto_c0
    iget-object v7, p0, Lej;->u:Landroid/view/View;

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_c1
    iget v6, v6, Landroid/graphics/Rect;->right:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    :goto_c2
    iget-object p0, p0, Ldw;->a:Lej;

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :goto_c3
    iget v8, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c4
    invoke-virtual {v7}, Landroid/view/WindowInsets;->getSystemWindowInsets()Landroid/graphics/Insets;

    move-result-object v7

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop
.end method
