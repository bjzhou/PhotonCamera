.class public Landroidx/constraintlayout/widget/Barrier;
.super Lzk;


# instance fields
.field public a:I

.field public b:Lyj;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lzk;-><init>(Landroid/content/Context;)V

    const/16 p1, 0x8

    invoke-super {p0, p1}, Lzk;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lzk;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x8

    invoke-super {p0, p1}, Lzk;->setVisibility(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lzk;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x8

    invoke-super {p0, p1}, Lzk;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/util/AttributeSet;)V
    .locals 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Lzk;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Laad;->b:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    invoke-virtual {v1, v3}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v4

    const/16 v5, 0x23

    if-ne v4, v5, :cond_0

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lzk;->f:Ljava/lang/String;

    iget-object v4, p0, Lzk;->f:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lzk;->e(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const/16 v5, 0x24

    if-ne v4, v5, :cond_1

    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lzk;->g:Ljava/lang/String;

    iget-object v4, p0, Lzk;->g:Ljava/lang/String;

    invoke-virtual {p0, v4}, Lzk;->f(Ljava/lang/String;)V

    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    new-instance v1, Lyj;

    invoke-direct {v1}, Lyj;-><init>()V

    iput-object v1, p0, Landroidx/constraintlayout/widget/Barrier;->b:Lyj;

    if-eqz p1, :cond_8

    invoke-virtual {p0}, Landroidx/constraintlayout/widget/Barrier;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Laad;->b:[I

    invoke-virtual {v1, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_7

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v3

    const/16 v4, 0x1a

    if-ne v3, v4, :cond_4

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, p0, Landroidx/constraintlayout/widget/Barrier;->a:I

    goto :goto_3

    :cond_4
    const/16 v4, 0x19

    if-ne v3, v4, :cond_5

    iget-object v3, p0, Landroidx/constraintlayout/widget/Barrier;->b:Lyj;

    const/4 v5, 0x1

    invoke-virtual {p1, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, v3, Lyj;->b:Z

    goto :goto_3

    :cond_5
    const/16 v4, 0x1b

    if-ne v3, v4, :cond_6

    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iget-object v4, p0, Landroidx/constraintlayout/widget/Barrier;->b:Lyj;

    iput v3, v4, Lyj;->c:I

    :cond_6
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_7
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    :cond_8
    iget-object p1, p0, Landroidx/constraintlayout/widget/Barrier;->b:Lyj;

    iput-object p1, p0, Landroidx/constraintlayout/widget/Barrier;->i:Lyr;

    invoke-virtual {p0}, Lzk;->h()V

    return-void
.end method

.method public final b(Lyn;Z)V
    .locals 5

    iget v0, p0, Landroidx/constraintlayout/widget/Barrier;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x5

    if-eqz p2, :cond_1

    if-ne v0, v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    if-ne v0, v3, :cond_3

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_2

    :goto_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    if-ne v0, v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    :goto_1
    instance-of p2, p1, Lyj;

    if-eqz p2, :cond_4

    check-cast p1, Lyj;

    iput v0, p1, Lyj;->a:I

    :cond_4
    return-void
.end method

.method public final c(I)V
    .locals 1

    iget-object v0, p0, Landroidx/constraintlayout/widget/Barrier;->b:Lyj;

    iput p1, v0, Lyj;->c:I

    return-void
.end method
