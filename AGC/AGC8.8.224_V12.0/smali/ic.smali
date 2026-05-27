.class public final Lic;
.super Lgm;


# instance fields
.field g:Lia;

.field public h:I

.field public i:Lib;

.field public j:Lhy;

.field public k:Lfvc;

.field final l:Lfc;

.field private m:Z

.field private n:Z

.field private o:I

.field private p:I

.field private q:Z

.field private final r:Landroid/util/SparseBooleanArray;

.field private s:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lgm;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/util/SparseBooleanArray;

    invoke-direct {p1}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object p1, p0, Lic;->r:Landroid/util/SparseBooleanArray;

    new-instance p1, Lfc;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Lfc;-><init>(Lic;I)V

    iput-object p1, p0, Lic;->l:Lfc;

    return-void
.end method


# virtual methods
.method public final a(Lgy;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    invoke-virtual {p1}, Lgy;->getActionView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lgy;->m()Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_2

    :cond_1
    :goto_0
    instance-of v0, p2, Lhk;

    if-eqz v0, :cond_2

    check-cast p2, Lhk;

    goto :goto_1

    :cond_2
    iget-object p2, p0, Lgm;->d:Landroid/view/LayoutInflater;

    const v0, 0x7f0e0002

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lhk;

    :goto_1
    invoke-interface {p2, p1}, Lhk;->f(Lgy;)V

    iget-object v0, p0, Lic;->f:Lhl;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    move-object v2, p2

    check-cast v2, Landroid/support/v7/view/menu/ActionMenuItemView;

    iput-object v0, v2, Landroid/support/v7/view/menu/ActionMenuItemView;->b:Lgv;

    iget-object v0, p0, Lic;->s:Landroidx/wear/ambient/AmbientMode$AmbientController;

    if-nez v0, :cond_3

    new-instance v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Lic;)V

    iput-object v0, p0, Lic;->s:Landroidx/wear/ambient/AmbientMode$AmbientController;

    :cond_3
    iget-object v0, p0, Lic;->s:Landroidx/wear/ambient/AmbientMode$AmbientController;

    iput-object v0, v2, Landroid/support/v7/view/menu/ActionMenuItemView;->c:Landroidx/wear/ambient/AmbientMode$AmbientController;

    move-object v0, p2

    check-cast v0, Landroid/view/View;

    :goto_2
    const/4 p2, 0x1

    iget-boolean p1, p1, Lgy;->p:Z

    if-eq p2, p1, :cond_4

    goto :goto_3

    :cond_4
    const/16 v1, 0x8

    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    check-cast p3, Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    instance-of p2, p1, Lif;

    if-nez p2, :cond_5

    invoke-static {p1}, Landroid/support/v7/widget/ActionMenuView;->o(Landroid/view/ViewGroup$LayoutParams;)Lif;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-object v0
.end method

.method public final b(Landroid/content/Context;Lgw;)V
    .locals 2

    iput-object p1, p0, Lgm;->b:Landroid/content/Context;

    iget-object v0, p0, Lgm;->b:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    iput-object p2, p0, Lgm;->c:Lgw;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    iget-boolean v0, p0, Lic;->n:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lic;->m:Z

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lic;->o:I

    invoke-static {p1}, Ldq;->c(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lic;->h:I

    iget p1, p0, Lic;->o:I

    iget-boolean v0, p0, Lic;->m:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lic;->g:Lia;

    if-nez v0, :cond_1

    new-instance v0, Lia;

    iget-object v1, p0, Lic;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lia;-><init>(Lic;Landroid/content/Context;)V

    iput-object v0, p0, Lic;->g:Lia;

    const/4 v0, 0x0

    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    iget-object v1, p0, Lic;->g:Lia;

    invoke-virtual {v1, v0, v0}, Lia;->measure(II)V

    :cond_1
    iget-object v0, p0, Lic;->g:Lia;

    invoke-virtual {v0}, Lia;->getMeasuredWidth()I

    move-result v0

    sub-int/2addr p1, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-object v0, p0, Lic;->g:Lia;

    :goto_0
    iput p1, p0, Lic;->p:I

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    return-void
.end method

.method public final c(Lgw;Z)V
    .locals 1

    invoke-virtual {p0}, Lic;->n()V

    iget-object v0, p0, Lgm;->e:Lhi;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lhi;->a(Lgw;Z)V

    :cond_0
    return-void
.end method

.method public final e()Z
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lic;->c:Lgw;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lgw;->f()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    goto :goto_0

    :cond_0
    move-object v1, v2

    const/4 v4, 0x0

    :goto_0
    iget v5, v0, Lic;->h:I

    iget v6, v0, Lic;->p:I

    invoke-static {v3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    iget-object v8, v0, Lic;->f:Lhl;

    check-cast v8, Landroid/view/ViewGroup;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_1
    const/4 v13, 0x1

    if-ge v9, v4, :cond_4

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lgy;

    invoke-virtual {v14}, Lgy;->r()Z

    move-result v15

    if-eqz v15, :cond_1

    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_1
    invoke-virtual {v14}, Lgy;->q()Z

    move-result v15

    if-eqz v15, :cond_2

    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    :cond_2
    const/4 v10, 0x1

    :goto_2
    iget-boolean v13, v0, Lic;->q:Z

    if-eqz v13, :cond_3

    iget-boolean v13, v14, Lgy;->p:Z

    if-eqz v13, :cond_3

    const/4 v5, 0x0

    :cond_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_4
    iget-boolean v9, v0, Lic;->m:Z

    if-eqz v9, :cond_6

    if-nez v10, :cond_5

    add-int/2addr v12, v11

    if-le v12, v5, :cond_6

    :cond_5
    add-int/lit8 v5, v5, -0x1

    :cond_6
    sub-int/2addr v5, v11

    iget-object v9, v0, Lic;->r:Landroid/util/SparseBooleanArray;

    invoke-virtual {v9}, Landroid/util/SparseBooleanArray;->clear()V

    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_3
    if-ge v10, v4, :cond_15

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lgy;

    invoke-virtual {v12}, Lgy;->r()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-virtual {v0, v12, v2, v8}, Lgm;->a(Lgy;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    invoke-virtual {v14, v7, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    move-result v14

    sub-int/2addr v6, v14

    if-nez v11, :cond_7

    move v11, v14

    :cond_7
    iget v14, v12, Lgy;->b:I

    if-eqz v14, :cond_8

    invoke-virtual {v9, v14, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    :cond_8
    invoke-virtual {v12, v13}, Lgy;->k(Z)V

    const/4 v2, 0x0

    goto/16 :goto_9

    :cond_9
    invoke-virtual {v12}, Lgy;->q()Z

    move-result v14

    if-eqz v14, :cond_14

    iget v14, v12, Lgy;->b:I

    invoke-virtual {v9, v14}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v15

    if-gtz v5, :cond_a

    if-eqz v15, :cond_b

    :cond_a
    if-lez v6, :cond_b

    const/16 v16, 0x1

    goto :goto_4

    :cond_b
    const/16 v16, 0x0

    :goto_4
    if-eqz v16, :cond_e

    invoke-virtual {v0, v12, v2, v8}, Lgm;->a(Lgy;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v7, v7}, Landroid/view/View;->measure(II)V

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v3

    sub-int/2addr v6, v3

    if-nez v11, :cond_c

    move v11, v3

    :cond_c
    add-int v3, v6, v11

    if-lez v3, :cond_d

    const/16 v16, 0x1

    goto :goto_5

    :cond_d
    const/16 v16, 0x0

    :goto_5
    move/from16 v3, v16

    goto :goto_6

    :cond_e
    move/from16 v3, v16

    :goto_6
    if-eqz v3, :cond_f

    if-eqz v14, :cond_f

    invoke-virtual {v9, v14, v13}, Landroid/util/SparseBooleanArray;->put(IZ)V

    goto :goto_8

    :cond_f
    if-eqz v15, :cond_12

    const/4 v15, 0x0

    invoke-virtual {v9, v14, v15}, Landroid/util/SparseBooleanArray;->put(IZ)V

    const/4 v15, 0x0

    :goto_7
    if-ge v15, v10, :cond_12

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v2, v16

    check-cast v2, Lgy;

    iget v13, v2, Lgy;->b:I

    if-ne v13, v14, :cond_11

    invoke-virtual {v2}, Lgy;->o()Z

    move-result v13

    if-eqz v13, :cond_10

    add-int/lit8 v5, v5, 0x1

    :cond_10
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Lgy;->k(Z)V

    :cond_11
    add-int/lit8 v15, v15, 0x1

    const/4 v2, 0x0

    const/4 v13, 0x1

    goto :goto_7

    :cond_12
    :goto_8
    if-eqz v3, :cond_13

    add-int/lit8 v5, v5, -0x1

    :cond_13
    invoke-virtual {v12, v3}, Lgy;->k(Z)V

    const/4 v2, 0x0

    goto :goto_9

    :cond_14
    const/4 v2, 0x0

    invoke-virtual {v12, v2}, Lgy;->k(Z)V

    :goto_9
    add-int/lit8 v10, v10, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v13, 0x1

    goto/16 :goto_3

    :cond_15
    const/4 v1, 0x1

    return v1
.end method

.method public final f(Lhq;)Z
    .locals 8

    invoke-virtual {p1}, Lgw;->hasVisibleItems()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    move-object v0, p1

    :goto_0
    iget-object v2, v0, Lhq;->j:Lgw;

    iget-object v3, p0, Lic;->c:Lgw;

    if-eq v2, v3, :cond_0

    move-object v0, v2

    check-cast v0, Lhq;

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lhq;->k:Lgy;

    iget-object v2, p0, Lic;->f:Lhl;

    check-cast v2, Landroid/view/ViewGroup;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    goto :goto_2

    :cond_1
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v4, :cond_3

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    instance-of v7, v6, Lhk;

    if-eqz v7, :cond_2

    move-object v7, v6

    check-cast v7, Lhk;

    invoke-interface {v7}, Lhk;->a()Lgy;

    move-result-object v7

    if-ne v7, v0, :cond_2

    move-object v3, v6

    goto :goto_2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    :goto_2
    if-nez v3, :cond_4

    return v1

    :cond_4
    iget-object v0, p1, Lhq;->k:Lgy;

    invoke-virtual {p1}, Lgw;->size()I

    move-result v0

    const/4 v2, 0x0

    :goto_3
    const/4 v4, 0x1

    if-ge v2, v0, :cond_6

    invoke-virtual {p1, v2}, Lgw;->getItem(I)Landroid/view/MenuItem;

    move-result-object v5

    invoke-interface {v5}, Landroid/view/MenuItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v5

    if-eqz v5, :cond_5

    const/4 v1, 0x1

    goto :goto_4

    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_6
    :goto_4
    new-instance v0, Lhy;

    iget-object v2, p0, Lic;->b:Landroid/content/Context;

    invoke-direct {v0, p0, v2, p1, v3}, Lhy;-><init>(Lic;Landroid/content/Context;Lhq;Landroid/view/View;)V

    iput-object v0, p0, Lic;->j:Lhy;

    invoke-virtual {v0, v1}, Lhh;->d(Z)V

    iget-object v0, p0, Lic;->j:Lhy;

    invoke-virtual {v0}, Lhh;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lgm;->e:Lhi;

    if-eqz v0, :cond_8

    if-nez p1, :cond_7

    iget-object p1, p0, Lgm;->c:Lgw;

    :cond_7
    invoke-interface {v0, p1}, Lhi;->b(Lgw;)Z

    :cond_8
    return v4

    :cond_9
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    return v1
.end method

.method public final i()V
    .locals 11

    iget-object v0, p0, Lgm;->f:Lhl;

    check-cast v0, Landroid/view/ViewGroup;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v3, p0, Lgm;->c:Lgw;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lgw;->k()V

    iget-object v3, p0, Lgm;->c:Lgw;

    invoke-virtual {v3}, Lgw;->f()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v4, :cond_7

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lgy;

    invoke-virtual {v7}, Lgy;->o()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    instance-of v9, v8, Lhk;

    if-eqz v9, :cond_1

    move-object v9, v8

    check-cast v9, Lhk;

    invoke-interface {v9}, Lhk;->a()Lgy;

    move-result-object v9

    goto :goto_1

    :cond_1
    move-object v9, v1

    :goto_1
    invoke-virtual {p0, v7, v8, v0}, Lgm;->a(Lgy;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    if-eq v7, v9, :cond_2

    invoke-virtual {v10, v2}, Landroid/view/View;->setPressed(Z)V

    invoke-virtual {v10}, Landroid/view/View;->jumpDrawablesToCurrentState()V

    :cond_2
    if-eq v10, v8, :cond_4

    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    if-eqz v7, :cond_3

    invoke-virtual {v7, v10}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_3
    iget-object v7, p0, Lgm;->f:Lhl;

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v10, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_4
    add-int/lit8 v6, v6, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_6
    const/4 v6, 0x0

    :cond_7
    :goto_2
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v6, v3, :cond_9

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    iget-object v4, p0, Lic;->g:Lia;

    if-ne v3, v4, :cond_8

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_8
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->removeViewAt(I)V

    goto :goto_2

    :cond_9
    :goto_3
    iget-object v0, p0, Lic;->f:Lhl;

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    iget-object v0, p0, Lic;->c:Lgw;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lgw;->k()V

    iget-object v0, v0, Lgw;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    :goto_4
    if-ge v4, v3, :cond_a

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lgy;

    iget-object v5, v5, Lgy;->o:Laej;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_a
    iget-object v0, p0, Lic;->c:Lgw;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lgw;->e()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_5

    :cond_b
    :goto_5
    iget-boolean v0, p0, Lic;->m:Z

    if-eqz v0, :cond_10

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    if-ne v0, v3, :cond_c

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lgy;

    iget-boolean v0, v0, Lgy;->p:Z

    xor-int/lit8 v2, v0, 0x1

    goto :goto_6

    :cond_c
    if-lez v0, :cond_d

    const/4 v2, 0x1

    :cond_d
    :goto_6
    if-eqz v2, :cond_10

    iget-object v0, p0, Lic;->g:Lia;

    if-nez v0, :cond_e

    new-instance v0, Lia;

    iget-object v1, p0, Lic;->a:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lia;-><init>(Lic;Landroid/content/Context;)V

    iput-object v0, p0, Lic;->g:Lia;

    :cond_e
    iget-object v0, p0, Lic;->g:Lia;

    invoke-virtual {v0}, Lia;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lic;->f:Lhl;

    if-eq v0, v1, :cond_11

    if-eqz v0, :cond_f

    iget-object v1, p0, Lic;->g:Lia;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_f
    iget-object v0, p0, Lic;->f:Lhl;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iget-object v1, p0, Lic;->g:Lia;

    invoke-static {}, Landroid/support/v7/widget/ActionMenuView;->n()Lif;

    move-result-object v2

    iput-boolean v3, v2, Lif;->a:Z

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_7

    :cond_10
    iget-object v0, p0, Lic;->g:Lia;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lia;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget-object v1, p0, Lic;->f:Lhl;

    if-ne v0, v1, :cond_11

    check-cast v1, Landroid/view/ViewGroup;

    iget-object v0, p0, Lic;->g:Lia;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_11
    :goto_7
    iget-object v0, p0, Lic;->f:Lhl;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iget-boolean v1, p0, Lic;->m:Z

    iput-boolean v1, v0, Landroid/support/v7/widget/ActionMenuView;->b:Z

    return-void
.end method

.method public final j(Landroid/support/v7/widget/ActionMenuView;)V
    .locals 1

    iput-object p1, p0, Lic;->f:Lhl;

    iget-object v0, p0, Lic;->c:Lgw;

    iput-object v0, p1, Landroid/support/v7/widget/ActionMenuView;->a:Lgw;

    return-void
.end method

.method public final k()Z
    .locals 3

    iget-object v0, p0, Lic;->k:Lfvc;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-object v2, p0, Lic;->f:Lhl;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    check-cast v2, Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    iput-object v0, p0, Lic;->k:Lfvc;

    return v1

    :cond_1
    :goto_0
    iget-object v0, p0, Lic;->i:Lib;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lhh;->b()V

    return v1

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lic;->i:Lib;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lhh;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 4

    iget-boolean v0, p0, Lic;->m:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lic;->l()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lic;->c:Lgw;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lic;->f:Lhl;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lic;->k:Lfvc;

    if-nez v1, :cond_0

    invoke-virtual {v0}, Lgw;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Lib;

    iget-object v1, p0, Lic;->b:Landroid/content/Context;

    iget-object v2, p0, Lic;->c:Lgw;

    iget-object v3, p0, Lic;->g:Lia;

    invoke-direct {v0, p0, v1, v2, v3}, Lib;-><init>(Lic;Landroid/content/Context;Lgw;Landroid/view/View;)V

    new-instance v1, Lfvc;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v0, v2}, Lfvc;-><init>(Lic;Lib;I)V

    iput-object v1, p0, Lic;->k:Lfvc;

    iget-object v0, p0, Lic;->f:Lhl;

    check-cast v0, Landroid/view/View;

    iget-object v1, p0, Lic;->k:Lfvc;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final n()V
    .locals 0

    invoke-virtual {p0}, Lic;->k()Z

    invoke-virtual {p0}, Lic;->q()V

    return-void
.end method

.method public final o()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lic;->q:Z

    return-void
.end method

.method public final p()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lic;->m:Z

    iput-boolean v0, p0, Lic;->n:Z

    return-void
.end method

.method public final q()V
    .locals 1

    iget-object v0, p0, Lic;->j:Lhy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lhh;->b()V

    :cond_0
    return-void
.end method
