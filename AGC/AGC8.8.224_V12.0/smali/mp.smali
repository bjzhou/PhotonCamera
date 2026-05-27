.class public Lmp;
.super Laei;


# instance fields
.field final a:Lmq;

.field public final b:Ljava/util/Map;


# direct methods
.method public constructor <init>(Lmq;)V
    .locals 1

    invoke-direct {p0}, Laei;-><init>()V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lmp;->b:Ljava/util/Map;

    iput-object p1, p0, Lmp;->a:Lmq;

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lmp;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laei;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Laei;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Laei;->a(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public b(Landroid/view/View;Lagt;)V
    .locals 1

    iget-object v0, p0, Lmp;->a:Lmq;

    invoke-virtual {v0}, Lmq;->k()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lmp;->a:Lmq;

    iget-object v0, v0, Lmq;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2}, Lly;->aI(Landroid/view/View;Lagt;)V

    iget-object v0, p0, Lmp;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laei;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Laei;->b(Landroid/view/View;Lagt;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Laei;->b(Landroid/view/View;Lagt;)V

    return-void

    :cond_1
    invoke-super {p0, p1, p2}, Laei;->b(Landroid/view/View;Lagt;)V

    return-void
.end method

.method public final c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lmp;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laei;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Laei;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Laei;->c(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final d(Landroid/view/View;I)V
    .locals 1

    iget-object v0, p0, Lmp;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laei;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Laei;->d(Landroid/view/View;I)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Laei;->d(Landroid/view/View;I)V

    return-void
.end method

.method public final e(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    iget-object v0, p0, Lmp;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laei;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Laei;->e(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Laei;->e(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)V

    return-void
.end method

.method public final f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lmp;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laei;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2}, Laei;->f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Laei;->f(Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public final g(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lmp;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laei;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Laei;->g(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Laei;->g(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public h(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 2

    iget-object v0, p0, Lmp;->a:Lmq;

    invoke-virtual {v0}, Lmq;->k()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lmp;->a:Lmq;

    iget-object v0, v0, Lmq;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmp;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laei;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1, p2, p3}, Laei;->h(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_0
    invoke-super {p0, p1, p2, p3}, Laei;->h(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    :cond_1
    iget-object p1, p0, Lmp;->a:Lmq;

    iget-object p1, p1, Lmq;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->n:Lly;

    iget-object p1, p1, Lly;->q:Landroid/support/v7/widget/RecyclerView;

    iget-object p2, p1, Landroid/support/v7/widget/RecyclerView;->f:Lmd;

    iget-object p1, p1, Landroid/support/v7/widget/RecyclerView;->M:Lml;

    const/4 p1, 0x0

    return p1

    :cond_2
    invoke-super {p0, p1, p2, p3}, Laei;->h(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result p1

    return p1
.end method

.method public final i(Landroid/view/View;)Lbkb;
    .locals 1

    iget-object v0, p0, Lmp;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laei;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Laei;->i(Landroid/view/View;)Lbkb;

    move-result-object p1

    return-object p1

    :cond_0
    invoke-super {p0, p1}, Laei;->i(Landroid/view/View;)Lbkb;

    move-result-object p1

    return-object p1
.end method
