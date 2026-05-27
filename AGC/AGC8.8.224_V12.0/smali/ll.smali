.class public final Lll;
.super Lkm;


# instance fields
.field final c:I

.field final d:I

.field public e:Llh;

.field private f:Landroid/view/MenuItem;


# direct methods
.method public constructor <init>(Landroid/content/Context;Z)V
    .locals 2

    invoke-direct {p0, p1, p2}, Lkm;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    invoke-static {p1}, Llk;->a(Landroid/content/res/Configuration;)I

    move-result p1

    const/4 p2, 0x1

    const/16 v0, 0x15

    const/16 v1, 0x16

    if-ne p1, p2, :cond_0

    iput v0, p0, Lll;->c:I

    iput v1, p0, Lll;->d:I

    return-void

    :cond_0
    iput v1, p0, Lll;->c:I

    iput v0, p0, Lll;->d:I

    return-void
.end method


# virtual methods
.method public final onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lll;->e:Llh;

    if-eqz v1, :cond_7

    invoke-virtual/range {p0 .. p0}, Lll;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    instance-of v2, v1, Landroid/widget/HeaderViewListAdapter;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    check-cast v1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getHeadersCount()I

    move-result v2

    invoke-virtual {v1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object v1

    check-cast v1, Lgt;

    goto :goto_0

    :cond_0
    check-cast v1, Lgt;

    const/4 v2, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    const/16 v5, 0xa

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-eq v4, v5, :cond_1

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    invoke-virtual {v0, v4, v5}, Lll;->pointToPosition(II)I

    move-result v4

    if-eq v4, v6, :cond_1

    sub-int/2addr v4, v2

    if-ltz v4, :cond_1

    invoke-virtual {v1}, Lgt;->getCount()I

    move-result v2

    if-ge v4, v2, :cond_1

    invoke-virtual {v1, v4}, Lgt;->a(I)Lgy;

    move-result-object v2

    move-object v11, v2

    goto :goto_1

    :cond_1
    move-object v11, v7

    :goto_1
    iget-object v2, v0, Lll;->f:Landroid/view/MenuItem;

    if-eq v2, v11, :cond_7

    iget-object v1, v1, Lgt;->a:Lgw;

    if-eqz v2, :cond_2

    iget-object v2, v0, Lll;->e:Llh;

    check-cast v2, Llm;

    iget-object v2, v2, Llm;->a:Llh;

    if-eqz v2, :cond_2

    check-cast v2, Lgp;

    iget-object v2, v2, Lgp;->a:Lgq;

    iget-object v2, v2, Lgq;->a:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_2
    iput-object v11, v0, Lll;->f:Landroid/view/MenuItem;

    if-eqz v11, :cond_7

    iget-object v2, v0, Lll;->e:Llh;

    check-cast v2, Llm;

    iget-object v2, v2, Llm;->a:Llh;

    if-eqz v2, :cond_7

    check-cast v2, Lgp;

    iget-object v4, v2, Lgp;->a:Lgq;

    iget-object v4, v4, Lgq;->a:Landroid/os/Handler;

    invoke-virtual {v4, v7}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v4, v2, Lgp;->a:Lgq;

    iget-object v4, v4, Lgq;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    :goto_2
    if-ge v3, v4, :cond_4

    iget-object v5, v2, Lgp;->a:Lgq;

    iget-object v5, v5, Lgq;->b:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Llpu;

    iget-object v5, v5, Llpu;->c:Ljava/lang/Object;

    if-ne v1, v5, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v3, -0x1

    :goto_3
    if-ne v3, v6, :cond_5

    goto :goto_5

    :cond_5
    add-int/lit8 v3, v3, 0x1

    iget-object v4, v2, Lgp;->a:Lgq;

    iget-object v4, v4, Lgq;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    iget-object v4, v2, Lgp;->a:Lgq;

    iget-object v4, v4, Lgq;->b:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v7, v3

    check-cast v7, Llpu;

    move-object v10, v7

    goto :goto_4

    :cond_6
    move-object v10, v7

    :goto_4
    new-instance v3, Lapv;

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object v8, v3

    move-object v9, v2

    move-object v12, v1

    invoke-direct/range {v8 .. v17}, Lapv;-><init>(Lgp;Llpu;Landroid/view/MenuItem;Lgw;I[B[B[B[B)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    const-wide/16 v6, 0xc8

    add-long/2addr v4, v6

    iget-object v2, v2, Lgp;->a:Lgq;

    iget-object v2, v2, Lgq;->a:Landroid/os/Handler;

    invoke-virtual {v2, v3, v1, v4, v5}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;Ljava/lang/Object;J)Z

    :cond_7
    :goto_5
    invoke-super/range {p0 .. p1}, Lkm;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p0}, Lll;->getSelectedView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/ListMenuItemView;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v2, p0, Lll;->c:I

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Landroid/support/v7/view/menu/ListMenuItemView;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, v0, Landroid/support/v7/view/menu/ListMenuItemView;->a:Lgy;

    invoke-virtual {p1}, Lgy;->hasSubMenu()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lll;->getSelectedItemPosition()I

    move-result p1

    invoke-virtual {p0}, Lll;->getSelectedItemId()J

    move-result-wide v2

    invoke-virtual {p0, v0, p1, v2, v3}, Lll;->performItemClick(Landroid/view/View;IJ)Z

    :cond_0
    return v1

    :cond_1
    if-eqz v0, :cond_3

    iget v0, p0, Lll;->d:I

    if-ne p1, v0, :cond_3

    const/4 p1, -0x1

    invoke-virtual {p0, p1}, Lll;->setSelection(I)V

    invoke-virtual {p0}, Lll;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    instance-of p2, p1, Landroid/widget/HeaderViewListAdapter;

    if-eqz p2, :cond_2

    check-cast p1, Landroid/widget/HeaderViewListAdapter;

    invoke-virtual {p1}, Landroid/widget/HeaderViewListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lgt;

    goto :goto_0

    :cond_2
    check-cast p1, Lgt;

    :goto_0
    iget-object p1, p1, Lgt;->a:Lgw;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lgw;->i(Z)V

    return v1

    :cond_3
    invoke-super {p0, p1, p2}, Lkm;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method
