.class public final Lelt;
.super Landroid/support/v7/widget/LinearLayoutManager;
.source "PG"


# instance fields
.field final synthetic a:Landroidx/viewpager2/widget/ViewPager2;


# direct methods
.method public constructor <init>(Landroidx/viewpager2/widget/ViewPager2;)V
    .locals 0

    goto/32 :goto_1

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
    iput-object p1, p0, Lelt;->a:Landroidx/viewpager2/widget/ViewPager2;

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
    invoke-direct {p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method protected final P(Lky;[I)V
    .locals 3

    goto/32 :goto_5

    nop

    nop

    :goto_0
    if-eqz p1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0}, Landroidx/viewpager2/widget/ViewPager2;->a()I

    move-result p1

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

    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    aput p0, p2, p1

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    goto/32 :goto_10

    nop

    nop

    :goto_5
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    goto/32 :goto_2

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_9
    goto :goto_11

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aput p0, p2, p0

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/LinearLayoutManager;->P(Lky;[I)V

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_d
    const/4 v2, -0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    :goto_11
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_13
    const v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v0, p0, Lelt;->a:Landroidx/viewpager2/widget/ViewPager2;

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_15
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    :goto_16
    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_1c

    nop

    nop

    :goto_18
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 p1, 0x1

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

    :goto_1a
    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_1f

    nop

    nop

    :goto_1d
    iget-object p0, v0, Landroidx/viewpager2/widget/ViewPager2;->e:Landroid/support/v7/widget/RecyclerView;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1e
    if-eq v1, v2, :cond_2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_18

    nop

    nop

    :goto_20
    iget v1, v0, Landroidx/viewpager2/widget/ViewPager2;->h:I

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final bb(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;Landroid/graphics/Rect;ZZ)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final n(Lkq;Lky;Landroid/view/View;Ldxb;)V
    .locals 1

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/16 :goto_e

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_2
    move p0, p2

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0}, Landroidx/viewpager2/widget/ViewPager2;->a()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1, v0, p0, v0, p2}, Lfdn;->af(IIIIZ)Lfdn;

    move-result-object p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p0, p0, Lelw;->a:Landroidx/viewpager2/widget/ViewPager2;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p1}, Landroidx/viewpager2/widget/ViewPager2;->a()I

    move-result p1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    if-eq p1, v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_9
    invoke-static {p3}, Landroid/support/v7/widget/LinearLayoutManager;->bh(Landroid/view/View;)I

    move-result p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_a
    iget-object p0, p0, Landroidx/viewpager2/widget/ViewPager2;->j:Ldwc;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_b
    invoke-static {p3}, Landroid/support/v7/widget/LinearLayoutManager;->bh(Landroid/view/View;)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p0, Lelw;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    move p1, p2

    nop

    nop

    :goto_e
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_f
    iget-object p1, p0, Lelw;->a:Landroidx/viewpager2/widget/ViewPager2;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    invoke-virtual {p4, p0}, Ldxb;->o(Ljava/lang/Object;)V

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return-void

    nop

    :goto_13
    iget-object p0, p0, Lelt;->a:Landroidx/viewpager2/widget/ViewPager2;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_16
    if-eqz p0, :cond_1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    nop

    :goto_17
    const/4 p2, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop
.end method
