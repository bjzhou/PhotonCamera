.class public final Lmlq;
.super Ljs;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    const v0, 0x1010084

    const/4 v1, 0x0

    invoke-static {p1, p2, v0, v1}, Lmls;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2, v0}, Ljs;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    invoke-virtual {p0}, Lmlq;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lmlq;->c(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lmlr;->b:[I

    invoke-virtual {v2, p2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    filled-new-array {v4, v5}, [I

    move-result-object v4

    invoke-static {p1, v3, v4}, Lmlq;->a(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I

    move-result p1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v3, -0x1

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object p1, Lmlr;->b:[I

    invoke-virtual {v2, p2, p1, v0, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1, v1, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-eq p2, v3, :cond_1

    invoke-direct {p0, v2, p2}, Lmlq;->b(Landroid/content/res/Resources$Theme;I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private static varargs a(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    const/4 v2, -0x1

    :goto_0
    const/4 v3, 0x2

    if-ge v0, v3, :cond_0

    if-gez v2, :cond_0

    aget v2, p2, v0

    invoke-static {p0, p1, v2, v1}, Lljr;->r(Landroid/content/Context;Landroid/content/res/TypedArray;II)I

    move-result v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private final b(Landroid/content/res/Resources$Theme;I)V
    .locals 2

    sget-object v0, Lmlr;->a:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p0}, Lmlq;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    invoke-static {p2, p1, v0}, Lmlq;->a(Landroid/content/Context;Landroid/content/res/TypedArray;[I)I

    move-result p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    if-ltz p2, :cond_0

    invoke-static {p0, p2}, Labm;->e(Landroid/widget/TextView;I)V

    :cond_0
    return-void
.end method

.method private static c(Landroid/content/Context;)Z
    .locals 2

    const v0, 0x7f040664

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lljr;->x(Landroid/content/Context;IZ)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public final setTextAppearance(Landroid/content/Context;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Ljs;->setTextAppearance(Landroid/content/Context;I)V

    invoke-static {p1}, Lmlq;->c(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lmlq;->b(Landroid/content/res/Resources$Theme;I)V

    :cond_0
    return-void
.end method
