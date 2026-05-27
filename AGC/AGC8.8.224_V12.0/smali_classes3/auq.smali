.class public final Lauq;
.super Lath;


# instance fields
.field public final synthetic a:Landroidx/viewpager2/widget/ViewPager2;

.field public b:Lej;

.field private final c:Lahc;

.field private final d:Lahc;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 1

    iput-object p1, p0, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Lath;-><init>()V

    new-instance p1, Lauo;

    const/4 v0, 0x1

    invoke-direct {p1, p0, v0}, Lauo;-><init>(Lauq;I)V

    iput-object p1, p0, Lauq;->c:Lahc;

    new-instance p1, Lauo;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lauo;-><init>(Lauq;I)V

    iput-object p1, p0, Lauq;->d:Lahc;

    return-void
.end method


# virtual methods
.method public final d(I)Z
    .locals 1

    const/16 v0, 0x2000

    if-eq p1, v0, :cond_1

    const/16 v0, 0x1000

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final e(I)V
    .locals 2

    iget-object v0, p0, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget-boolean v1, v0, Landroidx/viewpager2/widget/ViewPager2;->g:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroidx/viewpager2/widget/ViewPager2;->e(IZ)V

    :cond_0
    return-void
.end method

.method public final f()V
    .locals 8

    iget-object v0, p0, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    const v1, 0x1020048

    invoke-static {v0, v1}, Lafq;->f(Landroid/view/View;I)V

    const v2, 0x1020049

    invoke-static {v0, v2}, Lafq;->f(Landroid/view/View;I)V

    const v3, 0x1020046

    invoke-static {v0, v3}, Lafq;->f(Landroid/view/View;I)V

    const v4, 0x1020047

    invoke-static {v0, v4}, Lafq;->f(Landroid/view/View;I)V

    iget-object v5, p0, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v5}, Landroidx/viewpager2/widget/ViewPager2;->b()Lls;

    move-result-object v5

    if-nez v5, :cond_0

    return-void

    :cond_0
    iget-object v5, p0, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v5}, Landroidx/viewpager2/widget/ViewPager2;->b()Lls;

    move-result-object v5

    invoke-virtual {v5}, Lls;->a()I

    move-result v5

    if-nez v5, :cond_1

    return-void

    :cond_1
    iget-object v6, p0, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget-boolean v7, v6, Landroidx/viewpager2/widget/ViewPager2;->g:Z

    if-nez v7, :cond_2

    return-void

    :cond_2
    invoke-virtual {v6}, Landroidx/viewpager2/widget/ViewPager2;->a()I

    move-result v6

    const/4 v7, 0x0

    if-nez v6, :cond_6

    iget-object v3, p0, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {v3}, Landroidx/viewpager2/widget/ViewPager2;->g()Z

    move-result v3

    const/4 v4, 0x1

    if-eq v4, v3, :cond_3

    const v6, 0x1020049

    goto :goto_0

    :cond_3
    const v6, 0x1020048

    :goto_0
    if-eq v4, v3, :cond_4

    goto :goto_1

    :cond_4
    const v1, 0x1020049

    :goto_1
    iget-object v2, p0, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget v2, v2, Landroidx/viewpager2/widget/ViewPager2;->b:I

    add-int/lit8 v5, v5, -0x1

    if-ge v2, v5, :cond_5

    new-instance v2, Lagr;

    invoke-direct {v2, v6, v7}, Lagr;-><init>(ILjava/lang/CharSequence;)V

    iget-object v3, p0, Lauq;->c:Lahc;

    invoke-static {v0, v2, v3}, Lafq;->i(Landroid/view/View;Lagr;Lahc;)V

    :cond_5
    iget-object v2, p0, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget v2, v2, Landroidx/viewpager2/widget/ViewPager2;->b:I

    if-lez v2, :cond_8

    new-instance v2, Lagr;

    invoke-direct {v2, v1, v7}, Lagr;-><init>(ILjava/lang/CharSequence;)V

    iget-object v1, p0, Lauq;->d:Lahc;

    invoke-static {v0, v2, v1}, Lafq;->i(Landroid/view/View;Lagr;Lahc;)V

    return-void

    :cond_6
    iget-object v1, p0, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget v1, v1, Landroidx/viewpager2/widget/ViewPager2;->b:I

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_7

    new-instance v1, Lagr;

    invoke-direct {v1, v4, v7}, Lagr;-><init>(ILjava/lang/CharSequence;)V

    iget-object v2, p0, Lauq;->c:Lahc;

    invoke-static {v0, v1, v2}, Lafq;->i(Landroid/view/View;Lagr;Lahc;)V

    :cond_7
    iget-object v1, p0, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget v1, v1, Landroidx/viewpager2/widget/ViewPager2;->b:I

    if-lez v1, :cond_8

    new-instance v1, Lagr;

    invoke-direct {v1, v3, v7}, Lagr;-><init>(ILjava/lang/CharSequence;)V

    iget-object v2, p0, Lauq;->d:Lahc;

    invoke-static {v0, v1, v2}, Lafq;->i(Landroid/view/View;Lagr;Lahc;)V

    return-void

    :cond_8
    return-void
.end method
