.class public final Lmjn;
.super Liv;


# static fields
.field private static final a:[[I


# instance fields
.field private b:Landroid/content/res/ColorStateList;

.field private c:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [[I

    const v1, 0x101009e

    const v2, 0x10100a0

    filled-new-array {v1, v2}, [I

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v0, v4

    const v3, -0x10100a0

    filled-new-array {v1, v3}, [I

    move-result-object v1

    const/4 v4, 0x1

    aput-object v1, v0, v4

    const v1, -0x101009e

    filled-new-array {v1, v2}, [I

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v0, v4

    const/4 v2, 0x3

    filled-new-array {v1, v3}, [I

    move-result-object v1

    aput-object v1, v0, v2

    sput-object v0, Lmjn;->a:[[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const v0, 0x7f040546

    const v1, 0x7f1507cc

    invoke-static {p1, p2, v0, v1}, Lmls;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Liv;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-virtual {p0}, Lmjn;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v2, Lmjo;->a:[I

    const v3, 0x7f040546

    const v4, 0x7f1507cc

    const/4 v6, 0x0

    new-array v5, v6, [I

    move-object v0, p1

    move-object v1, p2

    invoke-static/range {v0 .. v5}, Lmie;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-virtual {p2, v6}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1, p2, v6}, Lljr;->s(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {p0, p1}, Lahg;->c(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    :cond_0
    const/4 p1, 0x1

    invoke-virtual {p2, p1, v6}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Lmjn;->c:Z

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected final onAttachedToWindow()V
    .locals 7

    invoke-super {p0}, Liv;->onAttachedToWindow()V

    iget-boolean v0, p0, Lmjn;->c:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Lahg;->a(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lmjn;->c:Z

    iget-object v0, p0, Lmjn;->b:Landroid/content/res/ColorStateList;

    if-nez v0, :cond_0

    const v0, 0x7f04015e

    invoke-static {p0, v0}, Lkwp;->l(Landroid/view/View;I)I

    move-result v0

    const v1, 0x7f040181

    invoke-static {p0, v1}, Lkwp;->l(Landroid/view/View;I)I

    move-result v1

    const v2, 0x7f0401ae

    invoke-static {p0, v2}, Lkwp;->l(Landroid/view/View;I)I

    move-result v2

    sget-object v3, Lmjn;->a:[[I

    array-length v4, v3

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v2, v0, v4}, Lkwp;->n(IIF)I

    move-result v0

    const v4, 0x3f0a3d71    # 0.54f

    invoke-static {v2, v1, v4}, Lkwp;->n(IIF)I

    move-result v4

    const v5, 0x3ec28f5c    # 0.38f

    invoke-static {v2, v1, v5}, Lkwp;->n(IIF)I

    move-result v6

    invoke-static {v2, v1, v5}, Lkwp;->n(IIF)I

    move-result v1

    filled-new-array {v0, v4, v6, v1}, [I

    move-result-object v0

    new-instance v1, Landroid/content/res/ColorStateList;

    invoke-direct {v1, v3, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    iput-object v1, p0, Lmjn;->b:Landroid/content/res/ColorStateList;

    :cond_0
    iget-object v0, p0, Lmjn;->b:Landroid/content/res/ColorStateList;

    invoke-static {p0, v0}, Lahg;->c(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V

    :cond_1
    return-void
.end method
