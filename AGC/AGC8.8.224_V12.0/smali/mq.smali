.class public Lmq;
.super Laei;


# instance fields
.field final a:Landroid/support/v7/widget/RecyclerView;

.field public final b:Lmp;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    invoke-direct {p0}, Laei;-><init>()V

    iput-object p1, p0, Lmq;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p0}, Lmq;->j()Laei;

    move-result-object p1

    if-eqz p1, :cond_0

    instance-of v0, p1, Lmp;

    if-eqz v0, :cond_0

    check-cast p1, Lmp;

    iput-object p1, p0, Lmq;->b:Lmp;

    return-void

    :cond_0
    new-instance p1, Lmp;

    invoke-direct {p1, p0}, Lmp;-><init>(Lmq;)V

    iput-object p1, p0, Lmq;->b:Lmp;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    invoke-super {p0, p1, p2}, Laei;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    instance-of v0, p1, Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lmq;->k()Z

    move-result v0

    if-nez v0, :cond_0

    check-cast p1, Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Lly;->Q(Landroid/view/accessibility/AccessibilityEvent;)V

    :cond_0
    return-void
.end method

.method public b(Landroid/view/View;Lagt;)V
    .locals 2

    invoke-super {p0, p1, p2}, Laei;->b(Landroid/view/View;Lagt;)V

    invoke-virtual {p0}, Lmq;->k()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lmq;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz p1, :cond_0

    iget-object v0, p1, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, v0, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    invoke-virtual {p1, v1, v0, p2}, Lly;->m(Lmd;Lml;Lagt;)V

    :cond_0
    return-void
.end method

.method public h(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1

    invoke-super {p0, p1, p2, p3}, Laei;->h(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-virtual {p0}, Lmq;->k()Z

    move-result p1

    if-nez p1, :cond_1

    iget-object p1, p0, Lmq;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz p1, :cond_1

    iget-object p3, p1, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p3, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    iget-object p3, p3, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    invoke-virtual {p1, p2}, Lly;->bs(I)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public j()Laei;
    .locals 1

    iget-object v0, p0, Lmq;->b:Lmp;

    return-object v0
.end method

.method final k()Z
    .locals 1

    iget-object v0, p0, Lmq;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->al()Z

    move-result v0

    return v0
.end method
