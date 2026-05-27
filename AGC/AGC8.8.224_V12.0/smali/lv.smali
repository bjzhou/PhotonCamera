.class public abstract Llv;
.super Ljava/lang/Object;


# instance fields
.field private final a:Ljava/util/ArrayList;

.field public h:J

.field public i:J

.field public j:J

.field public k:J

.field public l:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Llv;->l:Landroidx/wear/ambient/AmbientMode$AmbientController;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Llv;->a:Ljava/util/ArrayList;

    const-wide/16 v0, 0x78

    iput-wide v0, p0, Llv;->h:J

    iput-wide v0, p0, Llv;->i:J

    const-wide/16 v0, 0xfa

    iput-wide v0, p0, Llv;->j:J

    iput-wide v0, p0, Llv;->k:J

    return-void
.end method

.method public static o(Lmo;)V
    .locals 2

    iget v0, p0, Lmo;->j:I

    invoke-virtual {p0}, Lmo;->s()Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    and-int/lit8 v0, v0, 0x4

    if-nez v0, :cond_1

    iget v0, p0, Lmo;->d:I

    invoke-virtual {p0}, Lmo;->a()I

    :cond_1
    return-void
.end method

.method public static final t()Laev;
    .locals 1

    new-instance v0, Laev;

    invoke-direct {v0}, Laev;-><init>()V

    return-object v0
.end method

.method public static final u(Lmo;)Laev;
    .locals 1

    invoke-static {}, Llv;->t()Laev;

    move-result-object v0

    invoke-virtual {v0, p0}, Laev;->d(Lmo;)V

    return-object v0
.end method


# virtual methods
.method public abstract b(Lmo;)V
.end method

.method public abstract c()V
.end method

.method public abstract d()V
.end method

.method public g(Lmo;Ljava/util/List;)Z
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract h()Z
.end method

.method public final l(Lmo;)V
    .locals 8

    iget-object v0, p0, Llv;->l:Landroidx/wear/ambient/AmbientMode$AmbientController;

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lmo;->m(Z)V

    iget-object v2, p1, Lmo;->h:Lmo;

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iget-object v2, p1, Lmo;->i:Lmo;

    if-nez v2, :cond_0

    iput-object v3, p1, Lmo;->h:Lmo;

    :cond_0
    iput-object v3, p1, Lmo;->i:Lmo;

    iget v2, p1, Lmo;->j:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, v0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    iget-object v3, p1, Lmo;->a:Landroid/view/View;

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView;->ae()V

    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView;->h:Ljw;

    iget-object v5, v4, Ljw;->c:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v5, v3}, Landroidx/wear/ambient/AmbientMode$AmbientController;->j(Landroid/view/View;)I

    move-result v5

    const/4 v6, -0x1

    const/4 v7, 0x0

    if-ne v5, v6, :cond_2

    invoke-virtual {v4, v3}, Ljw;->l(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget-object v6, v4, Ljw;->a:Ljv;

    invoke-virtual {v6, v5}, Ljv;->f(I)Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, v4, Ljw;->a:Ljv;

    invoke-virtual {v6, v5}, Ljv;->g(I)Z

    invoke-virtual {v4, v3}, Ljw;->l(Landroid/view/View;)V

    iget-object v4, v4, Ljw;->c:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-virtual {v4, v5}, Landroidx/wear/ambient/AmbientMode$AmbientController;->m(I)V

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_4

    invoke-static {v3}, Landroid/support/v7/widget/RecyclerView;->h(Landroid/view/View;)Lmo;

    move-result-object v3

    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    invoke-virtual {v4, v3}, Lmd;->m(Lmo;)V

    iget-object v4, v2, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    invoke-virtual {v4, v3}, Lmd;->k(Lmo;)V

    :cond_4
    xor-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->af(Z)V

    if-nez v1, :cond_5

    invoke-virtual {p1}, Lmo;->w()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v0, v0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    iget-object p1, p1, Lmo;->a:Landroid/view/View;

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1, v7}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    return-void

    :cond_5
    :goto_1
    return-void
.end method

.method public final m()V
    .locals 3

    iget-object v0, p0, Llv;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Llv;->a:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Llu;

    invoke-interface {v2}, Llu;->a()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Llv;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public n(Lmo;)Z
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public abstract p(Lmo;Laev;Laev;)Z
.end method

.method public abstract q(Lmo;Lmo;Laev;Laev;)Z
.end method

.method public abstract r(Lmo;Laev;Laev;)Z
.end method

.method public abstract s(Lmo;Laev;Laev;)Z
.end method
