.class public final Leg;
.super Lff;

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field public final a:Lee;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-static {p1, p2}, Leg;->a(Landroid/content/Context;I)I

    move-result p2

    invoke-direct {p0, p1, p2}, Lff;-><init>(Landroid/content/Context;I)V

    new-instance p1, Lee;

    invoke-virtual {p0}, Leg;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0}, Leg;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-direct {p1, p2, p0, v0}, Lee;-><init>(Landroid/content/Context;Lff;Landroid/view/Window;)V

    iput-object p1, p0, Leg;->a:Lee;

    return-void
.end method

.method static a(Landroid/content/Context;I)I
    .locals 2

    ushr-int/lit8 v0, p1, 0x18

    if-lez v0, :cond_0

    return p1

    :cond_0
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    const v0, 0x7f040034

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p0, p1, Landroid/util/TypedValue;->resourceId:I

    return p0
.end method


# virtual methods
.method protected final onCreate(Landroid/os/Bundle;)V
    .locals 17

    invoke-super/range {p0 .. p1}, Lff;->onCreate(Landroid/os/Bundle;)V

    move-object/from16 v0, p0

    iget-object v1, v0, Leg;->a:Lee;

    iget v2, v1, Lee;->B:I

    if-nez v2, :cond_0

    iget v2, v1, Lee;->A:I

    goto :goto_0

    :cond_0
    iget v2, v1, Lee;->A:I

    :goto_0
    iget-object v3, v1, Lee;->b:Lff;

    invoke-virtual {v3, v2}, Lpm;->setContentView(I)V

    iget-object v2, v1, Lee;->c:Landroid/view/Window;

    const v3, 0x7f0b0281

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0b03b8

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0b00e5

    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0b009a

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    const v9, 0x7f0b00f7

    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iget-object v9, v1, Lee;->g:Landroid/view/View;

    const/4 v11, 0x0

    if-nez v9, :cond_2

    iget v9, v1, Lee;->h:I

    if-eqz v9, :cond_1

    iget-object v9, v1, Lee;->a:Landroid/content/Context;

    invoke-static {v9}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v9

    iget v12, v1, Lee;->h:I

    invoke-virtual {v9, v12, v2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v9

    goto :goto_1

    :cond_1
    const/4 v9, 0x0

    :cond_2
    :goto_1
    if-eqz v9, :cond_3

    const/4 v13, 0x1

    goto :goto_2

    :cond_3
    const/4 v13, 0x0

    :goto_2
    const/4 v14, -0x1

    const/16 v15, 0x8

    if-eqz v13, :cond_4

    invoke-static {v9}, Lee;->b(Landroid/view/View;)Z

    move-result v16

    if-nez v16, :cond_5

    :cond_4
    iget-object v12, v1, Lee;->c:Landroid/view/Window;

    const/high16 v10, 0x20000

    invoke-virtual {v12, v10, v10}, Landroid/view/Window;->setFlags(II)V

    if-eqz v13, :cond_6

    :cond_5
    iget-object v10, v1, Lee;->c:Landroid/view/Window;

    const v12, 0x7f0b00f6

    invoke-virtual {v10, v12}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout;

    new-instance v12, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v12, v14, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v10, v9, v12}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-boolean v9, v1, Lee;->i:Z

    iget-object v9, v1, Lee;->f:Landroid/widget/ListView;

    if-eqz v9, :cond_7

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Lkw;

    const/4 v10, 0x0

    iput v10, v9, Lkw;->weight:F

    goto :goto_3

    :cond_6
    invoke-virtual {v2, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_7
    :goto_3
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v2, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-static {v3, v4}, Lee;->d(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    invoke-static {v5, v6}, Lee;->d(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v4

    invoke-static {v7, v8}, Lee;->d(Landroid/view/View;Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v5

    iget-object v6, v1, Lee;->c:Landroid/view/Window;

    const v7, 0x7f0b02f0

    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroidx/core/widget/NestedScrollView;

    iput-object v6, v1, Lee;->r:Landroidx/core/widget/NestedScrollView;

    iget-object v6, v1, Lee;->r:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v6, v11}, Landroidx/core/widget/NestedScrollView;->setFocusable(Z)V

    iget-object v6, v1, Lee;->r:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v6, v11}, Landroidx/core/widget/NestedScrollView;->setNestedScrollingEnabled(Z)V

    const v6, 0x102000b

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lee;->w:Landroid/widget/TextView;

    iget-object v6, v1, Lee;->w:Landroid/widget/TextView;

    if-nez v6, :cond_8

    goto :goto_4

    :cond_8
    iget-object v7, v1, Lee;->e:Ljava/lang/CharSequence;

    if-eqz v7, :cond_9

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_9
    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v6, v1, Lee;->r:Landroidx/core/widget/NestedScrollView;

    iget-object v7, v1, Lee;->w:Landroid/widget/TextView;

    invoke-virtual {v6, v7}, Landroidx/core/widget/NestedScrollView;->removeView(Landroid/view/View;)V

    iget-object v6, v1, Lee;->f:Landroid/widget/ListView;

    if-eqz v6, :cond_a

    iget-object v6, v1, Lee;->r:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v6}, Landroidx/core/widget/NestedScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    iget-object v7, v1, Lee;->r:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeViewAt(I)V

    iget-object v8, v1, Lee;->f:Landroid/widget/ListView;

    new-instance v9, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v9, v14, v14}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v6, v8, v7, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v4, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_4
    const v6, 0x1020019

    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Button;

    iput-object v6, v1, Lee;->j:Landroid/widget/Button;

    iget-object v6, v1, Lee;->j:Landroid/widget/Button;

    iget-object v7, v1, Lee;->I:Landroid/view/View$OnClickListener;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v6, v1, Lee;->k:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_b

    iget-object v6, v1, Lee;->j:Landroid/widget/Button;

    invoke-virtual {v6, v15}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v6, 0x0

    goto :goto_5

    :cond_b
    iget-object v6, v1, Lee;->j:Landroid/widget/Button;

    iget-object v7, v1, Lee;->k:Ljava/lang/CharSequence;

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, v1, Lee;->j:Landroid/widget/Button;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setVisibility(I)V

    const/4 v6, 0x1

    :goto_5
    const v7, 0x102001a

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v1, Lee;->m:Landroid/widget/Button;

    iget-object v7, v1, Lee;->m:Landroid/widget/Button;

    iget-object v8, v1, Lee;->I:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v1, Lee;->n:Ljava/lang/CharSequence;

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_c

    iget-object v7, v1, Lee;->m:Landroid/widget/Button;

    invoke-virtual {v7, v15}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    :cond_c
    iget-object v7, v1, Lee;->m:Landroid/widget/Button;

    iget-object v8, v1, Lee;->n:Ljava/lang/CharSequence;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v7, v1, Lee;->m:Landroid/widget/Button;

    invoke-virtual {v7, v11}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v6, v6, 0x2

    :goto_6
    const v7, 0x102001b

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v1, Lee;->p:Landroid/widget/Button;

    iget-object v7, v1, Lee;->p:Landroid/widget/Button;

    iget-object v8, v1, Lee;->I:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v7, v1, Lee;->q:Ljava/lang/CharSequence;

    const/4 v7, 0x0

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_d

    iget-object v8, v1, Lee;->p:Landroid/widget/Button;

    invoke-virtual {v8, v15}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_7

    :cond_d
    iget-object v8, v1, Lee;->p:Landroid/widget/Button;

    iget-object v9, v1, Lee;->q:Ljava/lang/CharSequence;

    invoke-virtual {v8, v7}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, v1, Lee;->p:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setVisibility(I)V

    or-int/lit8 v6, v6, 0x4

    :goto_7
    iget-object v8, v1, Lee;->a:Landroid/content/Context;

    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {v8}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    const v10, 0x7f040032

    const/4 v12, 0x1

    invoke-virtual {v8, v10, v9, v12}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v8, v9, Landroid/util/TypedValue;->data:I

    const/4 v9, 0x2

    if-eqz v8, :cond_10

    if-ne v6, v12, :cond_e

    iget-object v6, v1, Lee;->j:Landroid/widget/Button;

    :goto_8
    invoke-static {v6}, Lee;->c(Landroid/widget/Button;)V

    goto :goto_9

    :cond_e
    if-ne v6, v9, :cond_f

    iget-object v6, v1, Lee;->m:Landroid/widget/Button;

    goto :goto_8

    :cond_f
    const/4 v8, 0x4

    if-ne v6, v8, :cond_10

    iget-object v6, v1, Lee;->p:Landroid/widget/Button;

    goto :goto_8

    :cond_10
    if-nez v6, :cond_11

    invoke-virtual {v5, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_11
    :goto_9
    iget-object v6, v1, Lee;->x:Landroid/view/View;

    const v8, 0x7f0b03a1

    if-eqz v6, :cond_12

    new-instance v6, Landroid/view/ViewGroup$LayoutParams;

    const/4 v10, -0x2

    invoke-direct {v6, v14, v10}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    iget-object v10, v1, Lee;->x:Landroid/view/View;

    invoke-virtual {v3, v10, v11, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    iget-object v6, v1, Lee;->c:Landroid/view/Window;

    invoke-virtual {v6, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/view/View;->setVisibility(I)V

    goto :goto_a

    :cond_12
    iget-object v6, v1, Lee;->c:Landroid/view/Window;

    const v10, 0x1020006

    invoke-virtual {v6, v10}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, v1, Lee;->u:Landroid/widget/ImageView;

    iget-object v6, v1, Lee;->d:Ljava/lang/CharSequence;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_14

    iget-boolean v6, v1, Lee;->G:Z

    if-eqz v6, :cond_14

    iget-object v6, v1, Lee;->c:Landroid/view/Window;

    const v8, 0x7f0b0059

    invoke-virtual {v6, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    iput-object v6, v1, Lee;->v:Landroid/widget/TextView;

    iget-object v6, v1, Lee;->v:Landroid/widget/TextView;

    iget-object v8, v1, Lee;->d:Ljava/lang/CharSequence;

    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget v6, v1, Lee;->s:I

    iget-object v6, v1, Lee;->t:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_13

    iget-object v8, v1, Lee;->u:Landroid/widget/ImageView;

    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_a

    :cond_13
    iget-object v6, v1, Lee;->v:Landroid/widget/TextView;

    iget-object v8, v1, Lee;->u:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v8

    iget-object v10, v1, Lee;->u:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getPaddingTop()I

    move-result v10

    iget-object v12, v1, Lee;->u:Landroid/widget/ImageView;

    invoke-virtual {v12}, Landroid/widget/ImageView;->getPaddingRight()I

    move-result v12

    iget-object v13, v1, Lee;->u:Landroid/widget/ImageView;

    invoke-virtual {v13}, Landroid/widget/ImageView;->getPaddingBottom()I

    move-result v13

    invoke-virtual {v6, v8, v10, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    iget-object v6, v1, Lee;->u:Landroid/widget/ImageView;

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_a

    :cond_14
    iget-object v6, v1, Lee;->c:Landroid/view/Window;

    invoke-virtual {v6, v8}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v15}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, v1, Lee;->u:Landroid/widget/ImageView;

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v15}, Landroid/view/ViewGroup;->setVisibility(I)V

    :goto_a
    if-eqz v2, :cond_15

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v2

    if-eq v2, v15, :cond_15

    const/4 v2, 0x1

    goto :goto_b

    :cond_15
    const/4 v2, 0x0

    :goto_b
    if-eqz v3, :cond_16

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v6

    if-eq v6, v15, :cond_16

    const/4 v12, 0x1

    goto :goto_c

    :cond_16
    const/4 v12, 0x0

    :goto_c
    if-eqz v5, :cond_17

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v5

    if-eq v5, v15, :cond_17

    const/4 v5, 0x1

    goto :goto_d

    :cond_17
    const/4 v5, 0x0

    :goto_d
    if-nez v5, :cond_18

    if-eqz v4, :cond_18

    const v6, 0x7f0b0388

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v6

    if-eqz v6, :cond_18

    invoke-virtual {v6, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_18
    if-eqz v12, :cond_1c

    iget-object v6, v1, Lee;->r:Landroidx/core/widget/NestedScrollView;

    if-eqz v6, :cond_19

    const/4 v8, 0x1

    invoke-virtual {v6, v8}, Landroidx/core/widget/NestedScrollView;->setClipToPadding(Z)V

    :cond_19
    iget-object v6, v1, Lee;->e:Ljava/lang/CharSequence;

    if-nez v6, :cond_1b

    iget-object v6, v1, Lee;->f:Landroid/widget/ListView;

    if-eqz v6, :cond_1a

    goto :goto_e

    :cond_1a
    move-object v10, v7

    goto :goto_f

    :cond_1b
    :goto_e
    const v6, 0x7f0b039f

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v10

    :goto_f
    if-eqz v10, :cond_1d

    invoke-virtual {v10, v11}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    :cond_1c
    if-eqz v4, :cond_1d

    const v3, 0x7f0b0389

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_1d

    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    :cond_1d
    :goto_10
    iget-object v3, v1, Lee;->f:Landroid/widget/ListView;

    instance-of v6, v3, Landroid/support/v7/app/AlertController$RecycleListView;

    if-eqz v6, :cond_21

    if-eqz v5, :cond_1e

    if-nez v12, :cond_21

    const/4 v6, 0x0

    goto :goto_11

    :cond_1e
    move v6, v12

    :goto_11
    check-cast v3, Landroid/support/v7/app/AlertController$RecycleListView;

    invoke-virtual {v3}, Landroid/support/v7/app/AlertController$RecycleListView;->getPaddingLeft()I

    move-result v7

    if-eqz v6, :cond_1f

    invoke-virtual {v3}, Landroid/support/v7/app/AlertController$RecycleListView;->getPaddingTop()I

    move-result v6

    goto :goto_12

    :cond_1f
    iget v6, v3, Landroid/support/v7/app/AlertController$RecycleListView;->a:I

    :goto_12
    invoke-virtual {v3}, Landroid/support/v7/app/AlertController$RecycleListView;->getPaddingRight()I

    move-result v8

    if-eqz v5, :cond_20

    invoke-virtual {v3}, Landroid/support/v7/app/AlertController$RecycleListView;->getPaddingBottom()I

    move-result v10

    goto :goto_13

    :cond_20
    iget v10, v3, Landroid/support/v7/app/AlertController$RecycleListView;->b:I

    :goto_13
    invoke-virtual {v3, v7, v6, v8, v10}, Landroid/support/v7/app/AlertController$RecycleListView;->setPadding(IIII)V

    :cond_21
    if-nez v2, :cond_25

    iget-object v2, v1, Lee;->f:Landroid/widget/ListView;

    if-nez v2, :cond_22

    iget-object v2, v1, Lee;->r:Landroidx/core/widget/NestedScrollView;

    :cond_22
    if-eqz v2, :cond_25

    const/4 v3, 0x1

    if-eq v3, v5, :cond_23

    goto :goto_14

    :cond_23
    const/4 v11, 0x2

    :goto_14
    or-int v3, v12, v11

    iget-object v5, v1, Lee;->c:Landroid/view/Window;

    const v6, 0x7f0b02ef

    invoke-virtual {v5, v6}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, v1, Lee;->c:Landroid/view/Window;

    const v7, 0x7f0b02ee

    invoke-virtual {v6, v7}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v6

    const/4 v7, 0x3

    invoke-static {v2, v3, v7}, Lafi;->d(Landroid/view/View;II)V

    if-eqz v5, :cond_24

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_24
    if-eqz v6, :cond_25

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_25
    iget-object v2, v1, Lee;->f:Landroid/widget/ListView;

    if-eqz v2, :cond_26

    iget-object v3, v1, Lee;->y:Landroid/widget/ListAdapter;

    if-eqz v3, :cond_26

    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget v1, v1, Lee;->z:I

    if-ltz v1, :cond_26

    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Landroid/widget/ListView;->setItemChecked(IZ)V

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setSelection(I)V

    :cond_26
    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Leg;->a:Lee;

    iget-object v0, v0, Lee;->r:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->l(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lff;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Leg;->a:Lee;

    iget-object v0, v0, Lee;->r:Landroidx/core/widget/NestedScrollView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2}, Landroidx/core/widget/NestedScrollView;->l(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lff;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-super {p0, p1}, Lff;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Leg;->a:Lee;

    invoke-virtual {v0, p1}, Lee;->a(Ljava/lang/CharSequence;)V

    return-void
.end method
