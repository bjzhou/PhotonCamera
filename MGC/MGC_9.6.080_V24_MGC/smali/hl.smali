.class public final Lhl;
.super Landroid/widget/CheckedTextView;
.source "PG"


# instance fields
.field private final a:Lhj;

.field private final b:Lih;

.field private final c:Lpcn;

.field private d:Lezz;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m()Lezz;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p0}, Lezz;-><init>(Landroid/widget/TextView;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lhl;->d:Lezz;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object v0, p0, Lhl;->d:Lezz;

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_6

    nop

    nop

    :goto_6
    iget-object p0, p0, Lhl;->d:Lezz;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    new-instance v0, Lezz;

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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, p2}, Lpcn;->f(Landroid/util/AttributeSet;)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lhl;->getContext()Landroid/content/Context;

    move-result-object p1

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

    :goto_2
    const v0, 0x7f040125

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lhl;->166277962e993c138a6b1f0c9b571cc0m()Lezz;

    move-result-object p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance p1, Lhj;

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

    nop

    :goto_5
    iput-object p1, p0, Lhl;->c:Lpcn;

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
    invoke-virtual {p1, p2, v0}, Lih;->c(Landroid/util/AttributeSet;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p1, Lih;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p1}, Lih;->a()V

    goto/32 :goto_4

    nop

    nop

    :goto_9
    invoke-direct {p1, p0}, Lhj;-><init>(Landroid/view/View;)V

    goto/32 :goto_d

    nop

    nop

    :goto_a
    invoke-static {p1}, Lls;->a(Landroid/content/Context;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1, p0}, Lih;-><init>(Landroid/widget/TextView;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    :goto_d
    iput-object p1, p0, Lhl;->a:Lhj;

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

    nop

    :goto_e
    invoke-direct {p1, p0}, Lpcn;-><init>(Landroid/widget/CheckedTextView;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Lhl;->b:Lih;

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

    :goto_10
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {p0, p2, v0}, Lezz;->p(Landroid/util/AttributeSet;I)V

    goto/32 :goto_c

    nop

    nop

    :goto_12
    new-instance p1, Lpcn;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_13
    invoke-static {p0, p1}, Llq;->d(Landroid/view/View;Landroid/content/Context;)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, p2, v0}, Lhj;->b(Landroid/util/AttributeSet;I)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 1

    goto/32 :goto_9

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lhl;->c:Lpcn;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0}, Lhj;->a()V

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
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

    nop

    :goto_5
    invoke-virtual {p0}, Lpcn;->e()V

    :goto_6
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v0}, Lih;->a()V

    :goto_8
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    invoke-super {p0}, Landroid/widget/CheckedTextView;->drawableStateChanged()V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iget-object v0, p0, Lhl;->b:Lih;

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

    :goto_b
    if-nez p0, :cond_2

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    iget-object v0, p0, Lhl;->a:Lhj;

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
    return-void

    nop

    nop
.end method

.method public final getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-static {p0}, Ldvz;->d(Landroid/view/ActionMode$Callback;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    invoke-super {p0}, Landroid/widget/CheckedTextView;->getCustomSelectionActionModeCallback()Landroid/view/ActionMode$Callback;

    move-result-object p0

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

.method public final onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;

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

    :goto_2
    invoke-static {v0, p1, p0}, Le;->c(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;Landroid/view/View;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setAllCaps(Z)V
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

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setAllCaps(Z)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {}, Ldzc;->w()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lhl;->166277962e993c138a6b1f0c9b571cc0m()Lezz;

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Lhl;->a:Lhj;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

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
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lhj;->e()V

    :goto_5
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setBackgroundResource(I)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0, p1}, Lhj;->c(I)V

    :goto_1
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setBackgroundResource(I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    goto/32 :goto_1

    nop

    :cond_0
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

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lhl;->a:Lhj;

    nop

    nop

    goto/32 :goto_3

    nop

    nop
.end method

.method public final setCheckMarkDrawable(I)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-static {v0, p1}, Le;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lhl;->getContext()Landroid/content/Context;

    move-result-object v0

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

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lhl;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_6

    nop

    nop

    :goto_0
    const/4 p1, 0x0

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

    :goto_1
    iget-boolean p1, p0, Lpcn;->a:Z

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    goto/32 :goto_9

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

    nop

    :goto_3
    return-void

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
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-super {p0, p1}, Landroid/widget/CheckedTextView;->setCheckMarkDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 p1, 0x1

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p0}, Lpcn;->e()V

    :goto_9
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    iput-boolean p1, p0, Lpcn;->a:Z

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

    :goto_b
    iget-object p0, p0, Lhl;->c:Lpcn;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-nez p1, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_d
    iput-boolean p1, p0, Lpcn;->a:Z

    nop

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckedTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_2

    nop

    nop

    :goto_2
    iget-object p0, p0, Lhl;->b:Lih;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Lih;->a()V

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lih;->a()V

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    iget-object p0, p0, Lhl;->b:Lih;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckedTextView;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_2

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

.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/CheckedTextView;->setTextAppearance(Landroid/content/Context;I)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lhl;->b:Lih;

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
    if-nez p0, :cond_0

    nop

    nop

    goto/32 :goto_4

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
    invoke-virtual {p0, p1, p2}, Lih;->d(Landroid/content/Context;I)V

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    nop
.end method
