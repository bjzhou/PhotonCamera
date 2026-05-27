.class public Liv;
.super Landroid/widget/RadioButton;


# instance fields
.field private final a:Lim;

.field private final b:Lij;

.field private final c:Ljp;

.field private d:Laie;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-static {p1}, Lnh;->a(Landroid/content/Context;)V

    const v0, 0x7f040546

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Liv;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p0, p1}, Lnf;->d(Landroid/view/View;Landroid/content/Context;)V

    new-instance p1, Lim;

    invoke-direct {p1, p0}, Lim;-><init>(Landroid/widget/CompoundButton;)V

    iput-object p1, p0, Liv;->a:Lim;

    invoke-virtual {p1, p2, v0}, Lim;->b(Landroid/util/AttributeSet;I)V

    new-instance p1, Lij;

    invoke-direct {p1, p0}, Lij;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Liv;->b:Lij;

    invoke-virtual {p1, p2, v0}, Lij;->d(Landroid/util/AttributeSet;I)V

    new-instance p1, Ljp;

    invoke-direct {p1, p0}, Ljp;-><init>(Landroid/widget/TextView;)V

    iput-object p1, p0, Liv;->c:Ljp;

    invoke-virtual {p1, p2, v0}, Ljp;->b(Landroid/util/AttributeSet;I)V

    invoke-direct {p0}, Liv;->a()Laie;

    move-result-object p1

    invoke-virtual {p1, p2, v0}, Laie;->n(Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private final a()Laie;
    .locals 1

    iget-object v0, p0, Liv;->d:Laie;

    if-nez v0, :cond_0

    new-instance v0, Laie;

    invoke-direct {v0, p0}, Laie;-><init>(Landroid/widget/TextView;)V

    iput-object v0, p0, Liv;->d:Laie;

    :cond_0
    iget-object v0, p0, Liv;->d:Laie;

    return-object v0
.end method


# virtual methods
.method protected final drawableStateChanged()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RadioButton;->drawableStateChanged()V

    iget-object v0, p0, Liv;->b:Lij;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lij;->c()V

    :cond_0
    iget-object v0, p0, Liv;->c:Ljp;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljp;->a()V

    :cond_1
    return-void
.end method

.method public final getCompoundPaddingLeft()I
    .locals 1

    invoke-super {p0}, Landroid/widget/RadioButton;->getCompoundPaddingLeft()I

    move-result v0

    return v0
.end method

.method public final setAllCaps(Z)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setAllCaps(Z)V

    invoke-direct {p0}, Liv;->a()Laie;

    invoke-static {}, Lajf;->d()V

    return-void
.end method

.method public final setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Liv;->b:Lij;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lij;->i()V

    :cond_0
    return-void
.end method

.method public final setBackgroundResource(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setBackgroundResource(I)V

    iget-object v0, p0, Liv;->b:Lij;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lij;->e(I)V

    :cond_0
    return-void
.end method

.method public final setButtonDrawable(I)V
    .locals 1

    invoke-virtual {p0}, Liv;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lfs;->a(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Liv;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final setButtonDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setButtonDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Liv;->a:Lim;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lim;->c()V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RadioButton;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Liv;->c:Ljp;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljp;->a()V

    :cond_0
    return-void
.end method

.method public final setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RadioButton;->setCompoundDrawablesRelative(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Liv;->c:Ljp;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljp;->a()V

    :cond_0
    return-void
.end method

.method public final setFilters([Landroid/text/InputFilter;)V
    .locals 0

    invoke-direct {p0}, Liv;->a()Laie;

    invoke-static {}, Lajf;->d()V

    invoke-super {p0, p1}, Landroid/widget/RadioButton;->setFilters([Landroid/text/InputFilter;)V

    return-void
.end method
