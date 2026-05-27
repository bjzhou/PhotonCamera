.class public final Laun;
.super Landroid/support/v7/widget/LinearLayoutManager;


# instance fields
.field final synthetic a:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    iput-object p1, p0, Laun;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>()V

    return-void
.end method


# virtual methods
.method protected final O(Lml;[I)V
    .locals 3

    iget-object v0, p0, Laun;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget v1, v0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->O(Lml;[I)V

    return-void

    :cond_0
    iget-object p1, v0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->a()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    :goto_0
    const/4 p1, 0x0

    aput p1, p2, p1

    const/4 v0, 0x1

    aput p1, p2, v0

    return-void
.end method

.method public final aY(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final n(Lmd;Lml;Landroid/view/View;Lagt;)V
    .locals 2

    iget-object p1, p0, Laun;->a:Landroidx/viewpager2/widget/ViewPager2;

    iget-object p1, p1, Landroidx/viewpager2/widget/ViewPager2;->j:Lath;

    check-cast p1, Lauq;

    iget-object p2, p1, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p2}, Landroidx/viewpager2/widget/ViewPager2;->a()I

    move-result p2

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    invoke-static {p3}, Landroid/support/v7/widget/LinearLayoutManager;->be(Landroid/view/View;)I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iget-object p1, p1, Lauq;->a:Landroidx/viewpager2/widget/ViewPager2;

    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->a()I

    move-result p1

    if-nez p1, :cond_1

    invoke-static {p3}, Landroid/support/v7/widget/LinearLayoutManager;->be(Landroid/view/View;)I

    move-result p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-static {p2, v1, p1, v1, v0}, Lbkb;->z(IIIIZ)Lbkb;

    move-result-object p1

    invoke-virtual {p4, p1}, Lagt;->l(Ljava/lang/Object;)V

    return-void
.end method
