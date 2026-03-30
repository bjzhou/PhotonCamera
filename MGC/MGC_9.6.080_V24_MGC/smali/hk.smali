.class public Lhk;
.super Landroid/widget/CheckBox;
.source "PG"


# instance fields
.field public final a:Lhm;

.field private final b:Lhj;

.field private final c:Lih;

.field private d:Lezz;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m()Lezz;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lhk;->d:Lezz;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    iput-object v0, p0, Lhk;->d:Lezz;

    nop

    :goto_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lezz;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-eqz v0, :cond_0

    nop

    nop

    goto/32 :goto_3

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

    :goto_6
    iget-object v0, p0, Lhk;->d:Lezz;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {v0, p0}, Lezz;-><init>(Landroid/widget/TextView;)V

    goto/32 :goto_2

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

    nop

    nop

    :goto_0
    invoke-static {p0, p1}, Llq;->d(Landroid/view/View;Landroid/content/Context;)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x7f04011a

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p1, p0}, Lhm;-><init>(Landroid/widget/CompoundButton;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p1, p0, Lhk;->c:Lih;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p1, p2, v0}, Lih;->c(Landroid/util/AttributeSet;I)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0}, Lhk;->getContext()Landroid/content/Context;

    move-result-object p1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    new-instance p1, Lhj;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_8
    return-void

    nop

    :goto_9
    iput-object p1, p0, Lhk;->b:Lhj;

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

    :goto_a
    invoke-static {p1}, Lls;->a(Landroid/content/Context;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    new-instance p1, Lhm;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    invoke-direct {p1, p0}, Lhj;-><init>(Landroid/view/View;)V

    goto/32 :goto_9

    nop

    nop

    :goto_d
    invoke-direct {p1, p0}, Lih;-><init>(Landroid/widget/TextView;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {p1, p2, v0}, Lhm;->b(Landroid/util/AttributeSet;I)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_f
    iput-object p1, p0, Lhk;->a:Lhm;

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

    :goto_10
    invoke-direct {p0}, Lhk;->166277962e993c138a6b1f0c9b571cc0m()Lezz;

    move-result-object p0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_11
    invoke-virtual {p1, p2, v0}, Lhj;->b(Landroid/util/AttributeSet;I)V

    goto/32 :goto_13

    nop

    nop

    :goto_12
    invoke-virtual {p0, p2, v0}, Lezz;->p(Landroid/util/AttributeSet;I)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    new-instance p1, Lih;

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 1

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_0
    if-nez v0, :cond_0

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lhk;->c:Lih;

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {p0}, Lih;->a()V

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    iget-object v0, p0, Lhk;->b:Lhj;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    invoke-virtual {v0}, Lhj;->a()V

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_7
    if-nez p0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

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

    :goto_8
    invoke-super {p0}, Landroid/widget/CheckBox;->drawableStateChanged()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop
.end method

.method public final setAllCaps(Z)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Lhk;->166277962e993c138a6b1f0c9b571cc0m()Lezz;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setAllCaps(Z)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Ldzc;->w()V

    goto/32 :goto_0

    nop

    nop
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    :try_start_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p0, p0, Lhk;->b:Lhj;

    nop

    nop

    nop

    nop

    nop

    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Lhj;->e()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_0
    goto/32 :goto_0

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
.end method

.method public final setBackgroundResource(I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setBackgroundResource(I)V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

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

    :goto_3
    iget-object p0, p0, Lhk;->b:Lhj;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, p1}, Lhj;->c(I)V

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public setButtonDrawable(I)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lhk;->getContext()Landroid/content/Context;

    move-result-object v0

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

    :goto_1
    return-void

    nop

    nop

    :goto_2
    invoke-static {v0, p1}, Le;->g(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

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

    :goto_3
    invoke-virtual {p0, p1}, Lhk;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lhk;->a:Lhm;

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

    :goto_2
    invoke-virtual {p0}, Lhm;->c()V

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

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

    :cond_0
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

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

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
    iget-object p0, p0, Lhk;->c:Lih;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0}, Lih;->a()V

    :goto_4
    goto/32 :goto_0

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

    goto/32 :goto_4

    nop

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
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    goto/32 :goto_4

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lih;->a()V

    :goto_1
    goto/32 :goto_3

    nop

    nop

    :goto_2
    if-nez p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

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

    nop

    nop

    :goto_3
    return-void

    nop

    :goto_4
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/CheckBox;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    iget-object p0, p0, Lhk;->c:Lih;

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

.method public final setFilters([Landroid/text/InputFilter;)V
    .locals 0

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

    nop

    nop

    :goto_1
    invoke-static {}, Ldzc;->w()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1}, Landroid/widget/CheckBox;->setFilters([Landroid/text/InputFilter;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0}, Lhk;->166277962e993c138a6b1f0c9b571cc0m()Lezz;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method
