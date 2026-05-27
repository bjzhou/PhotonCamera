.class public final Lgt;
.super Landroid/widget/BaseAdapter;


# instance fields
.field public final a:Lgw;

.field public b:Z

.field private c:I

.field private final d:Z

.field private final e:Landroid/view/LayoutInflater;

.field private final f:I


# direct methods
.method public constructor <init>(Lgw;Landroid/view/LayoutInflater;ZI)V
    .locals 1

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lgt;->c:I

    iput-boolean p3, p0, Lgt;->d:Z

    iput-object p2, p0, Lgt;->e:Landroid/view/LayoutInflater;

    iput-object p1, p0, Lgt;->a:Lgw;

    iput p4, p0, Lgt;->f:I

    invoke-virtual {p0}, Lgt;->b()V

    return-void
.end method


# virtual methods
.method public final a(I)Lgy;
    .locals 2

    iget-boolean v0, p0, Lgt;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgt;->a:Lgw;

    invoke-virtual {v0}, Lgw;->e()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgt;->a:Lgw;

    invoke-virtual {v0}, Lgw;->f()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget v1, p0, Lgt;->c:I

    if-ltz v1, :cond_1

    if-lt p1, v1, :cond_1

    add-int/lit8 p1, p1, 0x1

    :cond_1
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lgy;

    return-object p1
.end method

.method final b()V
    .locals 5

    iget-object v0, p0, Lgt;->a:Lgw;

    iget-object v1, v0, Lgw;->h:Lgy;

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Lgw;->e()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lgy;

    if-ne v4, v1, :cond_0

    iput v3, p0, Lgt;->c:I

    return-void

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lgt;->c:I

    return-void
.end method

.method public final getCount()I
    .locals 2

    iget-boolean v0, p0, Lgt;->d:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgt;->a:Lgw;

    invoke-virtual {v0}, Lgw;->e()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lgt;->a:Lgw;

    invoke-virtual {v0}, Lgw;->f()Ljava/util/ArrayList;

    move-result-object v0

    :goto_0
    iget v1, p0, Lgt;->c:I

    if-gez v1, :cond_1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0

    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method public final bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lgt;->a(I)Lgy;

    move-result-object p1

    return-object p1
.end method

.method public final getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    iget-object p2, p0, Lgt;->e:Landroid/view/LayoutInflater;

    iget v1, p0, Lgt;->f:I

    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_0
    invoke-virtual {p0, p1}, Lgt;->a(I)Lgy;

    move-result-object p3

    iget p3, p3, Lgy;->b:I

    add-int/lit8 v1, p1, -0x1

    if-ltz v1, :cond_1

    invoke-virtual {p0, v1}, Lgt;->a(I)Lgy;

    move-result-object v1

    iget v1, v1, Lgy;->b:I

    goto :goto_0

    :cond_1
    move v1, p3

    :goto_0
    move-object v2, p2

    check-cast v2, Landroid/support/v7/view/menu/ListMenuItemView;

    iget-object v3, p0, Lgt;->a:Lgw;

    invoke-virtual {v3}, Lgw;->w()Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-eq p3, v1, :cond_2

    const/4 p3, 0x1

    goto :goto_1

    :cond_2
    const/4 p3, 0x0

    :goto_1
    iget-object v1, v2, Landroid/support/v7/view/menu/ListMenuItemView;->b:Landroid/widget/ImageView;

    if-eqz v1, :cond_4

    iget-boolean v3, v2, Landroid/support/v7/view/menu/ListMenuItemView;->d:Z

    const/16 v5, 0x8

    if-nez v3, :cond_3

    if-eqz p3, :cond_3

    goto :goto_2

    :cond_3
    const/16 v0, 0x8

    :goto_2
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    move-object p3, p2

    check-cast p3, Lhk;

    iget-boolean v0, p0, Lgt;->b:Z

    if-eqz v0, :cond_5

    iput-boolean v4, v2, Landroid/support/v7/view/menu/ListMenuItemView;->e:Z

    iput-boolean v4, v2, Landroid/support/v7/view/menu/ListMenuItemView;->c:Z

    :cond_5
    invoke-virtual {p0, p1}, Lgt;->a(I)Lgy;

    move-result-object p1

    invoke-interface {p3, p1}, Lhk;->f(Lgy;)V

    return-object p2
.end method

.method public final notifyDataSetChanged()V
    .locals 0

    invoke-virtual {p0}, Lgt;->b()V

    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
