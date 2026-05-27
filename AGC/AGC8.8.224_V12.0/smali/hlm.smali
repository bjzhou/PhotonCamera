.class public final Lhlm;
.super Landroid/support/v7/widget/RecyclerView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lhlm;->setFocusable(Z)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lhlm;->setOverScrollMode(I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/RecyclerView;->as()V

    invoke-virtual {p0}, Lhlm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070615

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p0, v0, p1, p1, p1}, Lhlm;->setPaddingRelative(IIII)V

    new-instance p1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lhlm;->getContext()Landroid/content/Context;

    invoke-direct {p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>()V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->aa(Lly;)V

    new-instance p1, Lhlj;

    invoke-virtual {p0}, Lhlm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, v0}, Lhlj;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->av(Ler;)V

    new-instance p1, Lhll;

    invoke-virtual {p0}, Lhlm;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p1, v0}, Lhll;-><init>(Landroid/content/res/Resources;)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/RecyclerView;->Y(Lls;)V

    return-void
.end method
