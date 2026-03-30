.class abstract Lgf;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lgm;
.implements Lgi;


# instance fields
.field public g:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

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

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method protected static v(Landroid/widget/ListAdapter;)Lfu;
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_1
    check-cast p0, Lfu;

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
    return-object p0

    nop

    nop

    :goto_3
    check-cast p0, Landroid/widget/HeaderViewListAdapter;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    :goto_5
    check-cast p0, Lfu;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_6
    instance-of v0, p0, Landroid/widget/HeaderViewListAdapter;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method protected static w(Lfx;)Z
    .locals 5

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lfx;->size()I

    move-result v0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    move v2, v1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    :goto_4
    invoke-virtual {p0, v2}, Lfx;->getItem(I)Landroid/view/MenuItem;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_6
    return v1

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    :goto_8
    const v1, 0x16

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-interface {v3}, Landroid/view/MenuItem;->isVisible()Z

    move-result v4

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_a
    if-lt v2, v0, :cond_0

    nop

    goto/32 :goto_19

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

    nop

    :goto_b
    if-nez v4, :cond_1

    nop

    goto/32 :goto_14

    nop

    :cond_1
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    invoke-interface {v3}, Landroid/view/MenuItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    add-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-nez v3, :cond_2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/4 v1, 0x0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    :goto_11
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    :goto_13
    goto :goto_19

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_5

    nop

    nop

    :goto_15
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_16
    const v0, 0x1b

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_6

    nop

    nop
.end method

.method protected static x(Landroid/widget/ListAdapter;Landroid/content/Context;I)I
    .locals 11

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_0
    return p2

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    invoke-direct {v7, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    :goto_3
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_5
    if-ne v9, v6, :cond_0

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_7
    new-instance v7, Landroid/widget/FrameLayout;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_8
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_9
    if-gt v6, v5, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return v5

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_c
    move-object v8, v7

    nop

    :goto_d
    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_e
    move v6, v5

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    move v5, v0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

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

    :goto_11
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v8, v1, v2}, Landroid/view/View;->measure(II)V

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_13
    move v6, v10

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    move-object v7, v4

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_16
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_17
    const v1, 0x12

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_19
    invoke-interface {p0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1a
    move v5, v6

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lt v0, v3, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/16 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_25

    nop

    nop

    :goto_21
    if-lez v0, :cond_3

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_3
    goto/32 :goto_1f

    nop

    :goto_22
    move v10, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_23
    invoke-interface {p0, v0, v8, v7}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_24
    if-eqz v7, :cond_4

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_26
    if-ne v9, v6, :cond_5

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_22

    nop

    nop

    :goto_27
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_28
    goto/16 :goto_d

    nop

    :goto_29
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    move-object v8, v4

    nop

    nop

    nop

    nop

    :goto_2b
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    if-ge v6, p2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_6
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-interface {p0, v0}, Landroid/widget/ListAdapter;->getItemViewType(I)I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    move v10, v6

    nop

    nop

    :goto_2f
    goto/32 :goto_5

    nop

    nop

    nop
.end method


# virtual methods
.method public final b(Landroid/content/Context;Lfx;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop
.end method

.method public final g(Lfz;)Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(Lfz;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

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
.end method

.method public abstract j(Lfx;)V
.end method

.method public abstract l(Landroid/view/View;)V
.end method

.method public abstract m(Z)V
.end method

.method public abstract n(I)V
.end method

.method public abstract o(I)V
.end method

.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p2, p2, Lfu;->a:Lfx;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lgf;->t()Z

    move-result p4

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

    nop

    :goto_2
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object p1

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    goto :goto_f

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_6
    check-cast p1, Landroid/widget/ListAdapter;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-ne p3, p4, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    :goto_8
    const/4 p3, 0x4

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 p3, 0x1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-static {p1}, Lgf;->v(Landroid/widget/ListAdapter;)Lfu;

    move-result-object p2

    nop

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

    :goto_b
    invoke-virtual {p2, p1, p0, p3}, Lfx;->A(Landroid/view/MenuItem;Lgi;I)Z

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    :goto_d
    check-cast p1, Landroid/view/MenuItem;

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

    :goto_e
    const/4 p3, 0x0

    nop

    nop

    :goto_f
    goto/32 :goto_b

    nop

    nop

    nop
.end method

.method public abstract p(Landroid/widget/PopupWindow$OnDismissListener;)V
.end method

.method public abstract q(Z)V
.end method

.method public abstract r(I)V
.end method

.method protected t()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop
.end method
