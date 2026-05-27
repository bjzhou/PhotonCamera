.class public final Lmlg;
.super Landroid/widget/LinearLayout;


# instance fields
.field public a:Landroid/widget/TextView;

.field public b:Landroid/widget/ImageView;

.field public final c:Landroid/graphics/drawable/Drawable;

.field final synthetic d:Lcom/google/android/material/tabs/TabLayout;

.field private e:Lmle;

.field private f:I


# direct methods
.method public constructor <init>(Lcom/google/android/material/tabs/TabLayout;Landroid/content/Context;)V
    .locals 9

    iput-object p1, p0, Lmlg;->d:Lcom/google/android/material/tabs/TabLayout;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    iput v0, p0, Lmlg;->f:I

    iget v1, p1, Lcom/google/android/material/tabs/TabLayout;->o:I

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {p2, v1}, Lfs;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    iput-object p2, p0, Lmlg;->c:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lmlg;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lmlg;->c:Landroid/graphics/drawable/Drawable;

    :cond_1
    :goto_0
    new-instance p2, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {p2}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v3, p1, Lcom/google/android/material/tabs/TabLayout;->k:Landroid/content/res/ColorStateList;

    const/4 v4, 0x1

    if-eqz v3, :cond_4

    new-instance v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v3}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const v5, 0x3727c5ac    # 1.0E-5f

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    const/4 v5, -0x1

    invoke-virtual {v3, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v5, p1, Lcom/google/android/material/tabs/TabLayout;->k:Landroid/content/res/ColorStateList;

    sget-object v6, Lmjt;->a:[I

    const/4 v6, 0x3

    new-array v6, v6, [[I

    sget-object v7, Lmjt;->d:[I

    aput-object v7, v6, v1

    sget-object v1, Lmjt;->c:[I

    invoke-static {v5, v1}, Lmjt;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v1

    sget-object v7, Lmjt;->b:[I

    aput-object v7, v6, v4

    invoke-static {v5, v7}, Lmjt;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v7

    sget-object v8, Landroid/util/StateSet;->NOTHING:[I

    aput-object v8, v6, v0

    sget-object v0, Lmjt;->a:[I

    invoke-static {v5, v0}, Lmjt;->a(Landroid/content/res/ColorStateList;[I)I

    move-result v0

    filled-new-array {v1, v7, v0}, [I

    move-result-object v0

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v6, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v0, Landroid/graphics/drawable/RippleDrawable;

    iget-boolean v5, p1, Lcom/google/android/material/tabs/TabLayout;->x:Z

    if-ne v4, v5, :cond_2

    move-object p2, v2

    :cond_2
    if-ne v4, v5, :cond_3

    goto :goto_1

    :cond_3
    move-object v2, v3

    :goto_1
    invoke-direct {v0, v1, p2, v2}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    move-object p2, v0

    :cond_4
    invoke-static {p0, p2}, Lafb;->m(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout;->invalidate()V

    iget p2, p1, Lcom/google/android/material/tabs/TabLayout;->c:I

    iget v0, p1, Lcom/google/android/material/tabs/TabLayout;->d:I

    iget v1, p1, Lcom/google/android/material/tabs/TabLayout;->e:I

    iget v2, p1, Lcom/google/android/material/tabs/TabLayout;->f:I

    invoke-static {p0, p2, v0, v1, v2}, Lafc;->j(Landroid/view/View;IIII)V

    const/16 p2, 0x11

    invoke-virtual {p0, p2}, Lmlg;->setGravity(I)V

    iget-boolean p1, p1, Lcom/google/android/material/tabs/TabLayout;->u:Z

    xor-int/2addr p1, v4

    invoke-virtual {p0, p1}, Lmlg;->setOrientation(I)V

    invoke-virtual {p0, v4}, Lmlg;->setClickable(Z)V

    invoke-virtual {p0}, Lmlg;->getContext()Landroid/content/Context;

    move-result-object p1

    const/16 p2, 0x3ea

    invoke-static {p1, p2}, Laey;->b(Landroid/content/Context;I)Landroid/view/PointerIcon;

    move-result-object p1

    invoke-static {p0, p1}, Lafj;->d(Landroid/view/View;Landroid/view/PointerIcon;)V

    return-void
.end method

.method private static final d(Landroid/view/View;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lhcl;

    const/16 v1, 0x8

    invoke-direct {v0, p0, v1}, Lhcl;-><init>(Landroid/view/View;I)V

    invoke-virtual {p0, v0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method


# virtual methods
.method public final a(Lmle;)V
    .locals 1

    iget-object v0, p0, Lmlg;->e:Lmle;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Lmlg;->e:Lmle;

    invoke-virtual {p0}, Lmlg;->b()V

    :cond_0
    return-void
.end method

.method final b()V
    .locals 4

    invoke-virtual {p0}, Lmlg;->c()V

    iget-object v0, p0, Lmlg;->e:Lmle;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, v0, Lmle;->g:Lcom/google/android/material/tabs/TabLayout;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->a()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    iget v0, v0, Lmle;->d:I

    if-ne v2, v0, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab not attached to a TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lmlg;->setSelected(Z)V

    return-void
.end method

.method public final c()V
    .locals 11

    iget-object v0, p0, Lmlg;->e:Lmle;

    iget-object v1, p0, Lmlg;->b:Landroid/widget/ImageView;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lmlg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0e0041

    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lmlg;->b:Landroid/widget/ImageView;

    invoke-virtual {p0, v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    :cond_0
    iget-object v1, p0, Lmlg;->a:Landroid/widget/TextView;

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lmlg;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0e0042

    invoke-virtual {v1, v3, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lmlg;->a:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v1, p0, Lmlg;->a:Landroid/widget/TextView;

    invoke-static {v1}, Lahq;->a(Landroid/widget/TextView;)I

    move-result v1

    iput v1, p0, Lmlg;->f:I

    :cond_1
    iget-object v1, p0, Lmlg;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lmlg;->d:Lcom/google/android/material/tabs/TabLayout;

    iget v3, v3, Lcom/google/android/material/tabs/TabLayout;->g:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    invoke-virtual {p0}, Lmlg;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lmlg;->d:Lcom/google/android/material/tabs/TabLayout;

    iget v1, v1, Lcom/google/android/material/tabs/TabLayout;->i:I

    const/4 v3, -0x1

    if-eq v1, v3, :cond_2

    iget-object v3, p0, Lmlg;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lmlg;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lmlg;->d:Lcom/google/android/material/tabs/TabLayout;

    iget v3, v3, Lcom/google/android/material/tabs/TabLayout;->h:I

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    :goto_0
    iget-object v1, p0, Lmlg;->d:Lcom/google/android/material/tabs/TabLayout;

    iget-object v1, v1, Lcom/google/android/material/tabs/TabLayout;->j:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_3

    iget-object v3, p0, Lmlg;->a:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_3
    iget-object v1, p0, Lmlg;->a:Landroid/widget/TextView;

    iget-object v3, p0, Lmlg;->b:Landroid/widget/ImageView;

    iget-object v4, p0, Lmlg;->e:Lmle;

    const/4 v5, 0x0

    if-eqz v4, :cond_4

    iget-object v4, v4, Lmle;->b:Ljava/lang/CharSequence;

    goto :goto_1

    :cond_4
    move-object v4, v5

    :goto_1
    const/16 v6, 0x8

    if-eqz v3, :cond_5

    invoke-virtual {v3, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    const/4 v8, 0x1

    xor-int/2addr v7, v8

    if-eqz v1, :cond_9

    if-eqz v7, :cond_6

    iget-object v9, p0, Lmlg;->e:Lmle;

    iget v9, v9, Lmle;->f:I

    const/4 v9, 0x1

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    :goto_2
    if-eq v8, v7, :cond_7

    move-object v10, v5

    goto :goto_3

    :cond_7
    move-object v10, v4

    :goto_3
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eq v8, v9, :cond_8

    const/16 v10, 0x8

    goto :goto_4

    :cond_8
    const/4 v10, 0x0

    :goto_4
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v7, :cond_a

    invoke-virtual {p0, v2}, Lmlg;->setVisibility(I)V

    goto :goto_5

    :cond_9
    const/4 v9, 0x0

    :cond_a
    :goto_5
    if-eqz v3, :cond_d

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v9, :cond_b

    invoke-virtual {v3}, Landroid/widget/ImageView;->getVisibility()I

    move-result v9

    if-nez v9, :cond_b

    invoke-virtual {p0}, Lmlg;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9, v6}, Lljr;->A(Landroid/content/Context;I)F

    move-result v6

    float-to-int v6, v6

    goto :goto_6

    :cond_b
    const/4 v6, 0x0

    :goto_6
    iget-object v9, p0, Lmlg;->d:Lcom/google/android/material/tabs/TabLayout;

    iget-boolean v9, v9, Lcom/google/android/material/tabs/TabLayout;->u:Z

    if-eqz v9, :cond_c

    invoke-static {v1}, Laeo;->b(Landroid/view/ViewGroup$MarginLayoutParams;)I

    move-result v9

    if-eq v6, v9, :cond_d

    invoke-static {v1, v6}, Laeo;->f(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestLayout()V

    goto :goto_7

    :cond_c
    iget v9, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    if-eq v6, v9, :cond_d

    iput v6, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {v1, v2}, Laeo;->f(Landroid/view/ViewGroup$MarginLayoutParams;I)V

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v3}, Landroid/widget/ImageView;->requestLayout()V

    :cond_d
    :goto_7
    iget-object v1, p0, Lmlg;->e:Lmle;

    if-eqz v1, :cond_e

    iget-object v5, v1, Lmle;->c:Ljava/lang/CharSequence;

    goto :goto_8

    :cond_e
    :goto_8
    if-ne v8, v7, :cond_f

    goto :goto_9

    :cond_f
    move-object v4, v5

    :goto_9
    invoke-static {p0, v4}, Lnt;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lmlg;->b:Landroid/widget/ImageView;

    invoke-static {v1}, Lmlg;->d(Landroid/view/View;)V

    iget-object v1, p0, Lmlg;->a:Landroid/widget/TextView;

    invoke-static {v1}, Lmlg;->d(Landroid/view/View;)V

    if-eqz v0, :cond_10

    iget-object v1, v0, Lmle;->c:Ljava/lang/CharSequence;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_10

    iget-object v0, v0, Lmle;->c:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lmlg;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_10
    return-void
.end method

.method protected final drawableStateChanged()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    invoke-virtual {p0}, Lmlg;->getDrawableState()[I

    move-result-object v0

    iget-object v1, p0, Lmlg;->c:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lmlg;->c:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmlg;->invalidate()V

    iget-object v0, p0, Lmlg;->d:Lcom/google/android/material/tabs/TabLayout;

    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->invalidate()V

    :cond_0
    return-void
.end method

.method public final onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    invoke-static {p1}, Lagt;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Lagt;

    move-result-object p1

    iget-object v0, p0, Lmlg;->e:Lmle;

    iget v0, v0, Lmle;->d:I

    invoke-virtual {p0}, Lmlg;->isSelected()Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v2, v3, v0, v3, v1}, Lbkb;->z(IIIIZ)Lbkb;

    move-result-object v0

    invoke-virtual {p1, v0}, Lagt;->l(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lmlg;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, v2}, Lagt;->j(Z)V

    sget-object v0, Lagr;->e:Lagr;

    invoke-virtual {p1, v0}, Lagt;->t(Lagr;)V

    :cond_0
    invoke-virtual {p0}, Lmlg;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f14024b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Lagt;->a:Landroid/view/accessibility/AccessibilityNodeInfo;

    invoke-static {p1}, Lags;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/os/Bundle;

    move-result-object p1

    const-string v1, "AccessibilityNodeInfo.roleDescription"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 7

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    iget-object v2, p0, Lmlg;->d:Lcom/google/android/material/tabs/TabLayout;

    iget v2, v2, Lcom/google/android/material/tabs/TabLayout;->p:I

    if-lez v2, :cond_1

    if-eqz v1, :cond_0

    if-le v0, v2, :cond_1

    :cond_0
    const/high16 p1, -0x80000000

    invoke-static {v2, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    iget-object v0, p0, Lmlg;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lmlg;->d:Lcom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->m:F

    iget v1, p0, Lmlg;->f:I

    iget-object v2, p0, Lmlg;->b:Landroid/widget/ImageView;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/widget/ImageView;->getVisibility()I

    move-result v2

    if-nez v2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lmlg;->a:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/widget/TextView;->getLineCount()I

    move-result v2

    if-le v2, v3, :cond_3

    iget-object v0, p0, Lmlg;->d:Lcom/google/android/material/tabs/TabLayout;

    iget v0, v0, Lcom/google/android/material/tabs/TabLayout;->n:F

    :cond_3
    :goto_0
    iget-object v2, p0, Lmlg;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getTextSize()F

    move-result v2

    iget-object v4, p0, Lmlg;->a:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getLineCount()I

    move-result v4

    iget-object v5, p0, Lmlg;->a:Landroid/widget/TextView;

    invoke-static {v5}, Lahq;->a(Landroid/widget/TextView;)I

    move-result v5

    cmpl-float v6, v0, v2

    if-nez v6, :cond_4

    if-ltz v5, :cond_6

    if-eq v1, v5, :cond_6

    :cond_4
    iget-object v5, p0, Lmlg;->d:Lcom/google/android/material/tabs/TabLayout;

    iget v5, v5, Lcom/google/android/material/tabs/TabLayout;->t:I

    const/4 v6, 0x0

    if-ne v5, v3, :cond_5

    cmpl-float v2, v0, v2

    if-lez v2, :cond_5

    if-ne v4, v3, :cond_5

    iget-object v2, p0, Lmlg;->a:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2, v6}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v3

    invoke-virtual {v2}, Landroid/text/Layout;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/TextPaint;->getTextSize()F

    move-result v2

    div-float v2, v0, v2

    mul-float v3, v3, v2

    invoke-virtual {p0}, Lmlg;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {p0}, Lmlg;->getPaddingLeft()I

    move-result v4

    sub-int/2addr v2, v4

    invoke-virtual {p0}, Lmlg;->getPaddingRight()I

    move-result v4

    sub-int/2addr v2, v4

    int-to-float v2, v2

    cmpl-float v2, v3, v2

    if-lez v2, :cond_5

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lmlg;->a:Landroid/widget/TextView;

    invoke-virtual {v2, v6, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v0, p0, Lmlg;->a:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMaxLines(I)V

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    return-void

    :cond_6
    :goto_1
    return-void
.end method

.method public final performClick()Z
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->performClick()Z

    move-result v0

    iget-object v1, p0, Lmlg;->e:Lmle;

    if-eqz v1, :cond_1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmlg;->playSoundEffect(I)V

    :cond_0
    iget-object v0, p0, Lmlg;->e:Lmle;

    invoke-virtual {v0}, Lmle;->a()V

    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method public final setSelected(Z)V
    .locals 1

    invoke-virtual {p0}, Lmlg;->isSelected()Z

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setSelected(Z)V

    iget-object v0, p0, Lmlg;->a:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    iget-object v0, p0, Lmlg;->b:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    :cond_1
    return-void
.end method
