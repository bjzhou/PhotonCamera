.class public final Lmgv;
.super Lef;


# instance fields
.field private final b:Landroid/graphics/drawable/Drawable;

.field private final c:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 11

    invoke-static {p1}, Lmgv;->v(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x0

    const v2, 0x7f040033

    const v3, 0x7f1501d2

    invoke-static {p1, v1, v2, v3}, Lmls;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v4

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v5, Lqi;

    invoke-direct {v5, v4, v0}, Lqi;-><init>(Landroid/content/Context;I)V

    move-object v4, v5

    :goto_0
    if-nez p2, :cond_1

    invoke-static {p1}, Lmgv;->v(Landroid/content/Context;)I

    move-result p2

    :cond_1
    invoke-direct {p0, v4, p2}, Lef;-><init>(Landroid/content/Context;I)V

    invoke-virtual {p0}, Lef;->a()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p2

    const/4 v6, 0x0

    sget-object v7, Lmgw;->a:[I

    const v8, 0x7f040033

    const v9, 0x7f1501d2

    const/4 v0, 0x0

    new-array v10, v0, [I

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Lmie;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070466

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v4, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070467

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v6

    const/4 v7, 0x3

    invoke-virtual {v4, v7, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f070465

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    const/4 v8, 0x1

    invoke-virtual {v4, v8, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070464

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    invoke-virtual {v4, v0, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v0

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v4

    if-ne v4, v8, :cond_2

    move v9, v5

    goto :goto_1

    :cond_2
    move v9, v7

    :goto_1
    if-ne v4, v8, :cond_3

    move v5, v7

    :cond_3
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4, v5, v6, v9, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v4, p0, Lmgv;->c:Landroid/graphics/Rect;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    const v4, 0x7f0401ae

    invoke-static {p1, v4, v0}, Lljr;->w(Landroid/content/Context;ILjava/lang/String;)Landroid/util/TypedValue;

    move-result-object v0

    invoke-static {p1, v0}, Lkwp;->o(Landroid/content/Context;Landroid/util/TypedValue;)I

    move-result v0

    new-instance v4, Lmka;

    invoke-static {p1, v1, v2, v3}, Lmkf;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Lmke;

    move-result-object v1

    invoke-virtual {v1}, Lmke;->a()Lmkf;

    move-result-object v1

    invoke-direct {v4, v1}, Lmka;-><init>(Lmkf;)V

    invoke-virtual {v4, p1}, Lmka;->g(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {v4, p1}, Lmka;->i(Landroid/content/res/ColorStateList;)V

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    const v0, 0x1010571

    invoke-virtual {p2, v0, p1, v8}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    invoke-virtual {p0}, Lef;->a()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/util/TypedValue;->getDimension(Landroid/util/DisplayMetrics;)F

    move-result p2

    iget p1, p1, Landroid/util/TypedValue;->type:I

    const/4 v0, 0x5

    if-ne p1, v0, :cond_4

    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_4

    iget-object p1, v4, Lmka;->a:Lmjz;

    iget-object p1, p1, Lmjz;->a:Lmkf;

    invoke-virtual {p1, p2}, Lmkf;->d(F)Lmkf;

    move-result-object p1

    invoke-virtual {v4, p1}, Lmka;->c(Lmkf;)V

    :cond_4
    iput-object v4, p0, Lmgv;->b:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private static v(Landroid/content/Context;)I
    .locals 1

    const v0, 0x7f040440

    invoke-static {p0, v0}, Lljr;->v(Landroid/content/Context;I)Landroid/util/TypedValue;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget p0, p0, Landroid/util/TypedValue;->data:I

    return p0
.end method


# virtual methods
.method public final b()Leg;
    .locals 11

    invoke-super {p0}, Lef;->b()Leg;

    move-result-object v0

    invoke-virtual {v0}, Leg;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lmgv;->b:Landroid/graphics/drawable/Drawable;

    invoke-static {v2}, Lafh;->a(Landroid/view/View;)F

    move-result v4

    check-cast v3, Lmka;

    invoke-virtual {v3, v4}, Lmka;->h(F)V

    iget-object v6, p0, Lmgv;->b:Landroid/graphics/drawable/Drawable;

    iget-object v3, p0, Lmgv;->c:Landroid/graphics/Rect;

    new-instance v4, Landroid/graphics/drawable/InsetDrawable;

    iget v7, v3, Landroid/graphics/Rect;->left:I

    iget v8, v3, Landroid/graphics/Rect;->top:I

    iget v9, v3, Landroid/graphics/Rect;->right:I

    iget v10, v3, Landroid/graphics/Rect;->bottom:I

    move-object v5, v4

    invoke-direct/range {v5 .. v10}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    invoke-virtual {v1, v4}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-instance v1, Lmgu;

    iget-object v3, p0, Lmgv;->c:Landroid/graphics/Rect;

    invoke-direct {v1, v0, v3}, Lmgu;-><init>(Landroid/app/Dialog;Landroid/graphics/Rect;)V

    invoke-virtual {v2, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-object v0
.end method

.method public final k(Z)V
    .locals 1

    iget-object v0, p0, Lef;->a:Leb;

    iput-boolean p1, v0, Leb;->k:Z

    return-void
.end method

.method public final l(I)V
    .locals 2

    iget-object v0, p0, Lef;->a:Leb;

    iget-object v1, v0, Leb;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Leb;->f:Ljava/lang/CharSequence;

    return-void
.end method

.method public final m(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Lef;->e(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final n(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lef;->a:Leb;

    iget-object v1, v0, Leb;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Leb;->i:Ljava/lang/CharSequence;

    iget-object p1, p0, Lef;->a:Leb;

    iput-object p2, p1, Leb;->j:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public final o(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lef;->f(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final p(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 0

    invoke-super {p0, p1}, Lef;->g(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public final q(ILandroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    iget-object v0, p0, Lef;->a:Leb;

    iget-object v1, v0, Leb;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Leb;->g:Ljava/lang/CharSequence;

    iget-object p1, p0, Lef;->a:Leb;

    iput-object p2, p1, Leb;->h:Landroid/content/DialogInterface$OnClickListener;

    return-void
.end method

.method public final r(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    invoke-super {p0, p1, p2}, Lef;->h(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    return-void
.end method

.method public final s(I)V
    .locals 2

    iget-object v0, p0, Lef;->a:Leb;

    iget-object v1, v0, Leb;->a:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, v0, Leb;->d:Ljava/lang/CharSequence;

    return-void
.end method

.method public final t(Ljava/lang/CharSequence;)V
    .locals 0

    invoke-super {p0, p1}, Lef;->i(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final u(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Lef;->j(Landroid/view/View;)V

    return-void
.end method
