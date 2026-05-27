.class public final Lfp;
.super Lfx;

# interfaces
.implements Lgu;


# instance fields
.field public final a:Lgw;

.field public b:Lfw;

.field final synthetic c:Lfq;

.field private final f:Landroid/content/Context;

.field private g:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lfq;Landroid/content/Context;Lfw;)V
    .locals 0

    iput-object p1, p0, Lfp;->c:Lfq;

    invoke-direct {p0}, Lfx;-><init>()V

    iput-object p2, p0, Lfp;->f:Landroid/content/Context;

    iput-object p3, p0, Lfp;->b:Lfw;

    new-instance p1, Lgw;

    invoke-direct {p1, p2}, Lgw;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1}, Lgw;->D()V

    iput-object p1, p0, Lfp;->a:Lgw;

    iput-object p0, p1, Lgw;->b:Lgu;

    return-void
.end method


# virtual methods
.method public final D(Lgw;)V
    .locals 0

    iget-object p1, p0, Lfp;->b:Lfw;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lfp;->g()V

    iget-object p1, p0, Lfp;->c:Lfq;

    iget-object p1, p1, Lfq;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {p1}, Landroid/support/v7/widget/ActionBarContextView;->n()V

    return-void
.end method

.method public final H(Lgw;Landroid/view/MenuItem;)Z
    .locals 0

    iget-object p1, p0, Lfp;->b:Lfw;

    if-eqz p1, :cond_0

    invoke-interface {p1, p0, p2}, Lfw;->b(Lfx;Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final a()Landroid/view/Menu;
    .locals 1

    iget-object v0, p0, Lfp;->a:Lgw;

    return-object v0
.end method

.method public final b()Landroid/view/MenuInflater;
    .locals 2

    new-instance v0, Lgd;

    iget-object v1, p0, Lfp;->f:Landroid/content/Context;

    invoke-direct {v0, v1}, Lgd;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public final c()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lfp;->g:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public final d()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lfp;->c:Lfq;

    iget-object v0, v0, Lfq;->e:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->h:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final e()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lfp;->c:Lfq;

    iget-object v0, v0, Lfq;->e:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v0, v0, Landroid/support/v7/widget/ActionBarContextView;->g:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final f()V
    .locals 3

    iget-object v0, p0, Lfp;->c:Lfq;

    iget-object v1, v0, Lfq;->g:Lfp;

    if-eq v1, p0, :cond_0

    return-void

    :cond_0
    iget-boolean v1, v0, Lfq;->l:Z

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lfq;->y(ZZ)Z

    move-result v1

    if-nez v1, :cond_1

    iput-object p0, v0, Lfq;->h:Lfx;

    iget-object v1, p0, Lfp;->b:Lfw;

    iput-object v1, v0, Lfq;->i:Lfw;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lfp;->b:Lfw;

    invoke-interface {v0, p0}, Lfw;->a(Lfx;)V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lfp;->b:Lfw;

    iget-object v1, p0, Lfp;->c:Lfq;

    invoke-virtual {v1, v2}, Lfq;->v(Z)V

    iget-object v1, p0, Lfp;->c:Lfq;

    iget-object v1, v1, Lfq;->e:Landroid/support/v7/widget/ActionBarContextView;

    iget-object v2, v1, Landroid/support/v7/widget/ActionBarContextView;->i:Landroid/view/View;

    if-nez v2, :cond_2

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->i()V

    :cond_2
    iget-object v1, p0, Lfp;->c:Lfq;

    iget-object v2, v1, Lfq;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    iget-boolean v1, v1, Lfq;->n:Z

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/ActionBarOverlayLayout;->k(Z)V

    iget-object v1, p0, Lfp;->c:Lfq;

    iput-object v0, v1, Lfq;->g:Lfp;

    return-void
.end method

.method public final g()V
    .locals 2

    iget-object v0, p0, Lfp;->c:Lfq;

    iget-object v0, v0, Lfq;->g:Lfp;

    if-eq v0, p0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lfp;->a:Lgw;

    invoke-virtual {v0}, Lgw;->s()V

    :try_start_0
    iget-object v0, p0, Lfp;->b:Lfw;

    iget-object v1, p0, Lfp;->a:Lgw;

    invoke-interface {v0, p0, v1}, Lfw;->d(Lfx;Landroid/view/Menu;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lfp;->a:Lgw;

    invoke-virtual {v0}, Lgw;->r()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lfp;->a:Lgw;

    invoke-virtual {v1}, Lgw;->r()V

    throw v0
.end method

.method public final h(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lfp;->c:Lfq;

    iget-object v0, v0, Lfq;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->j(Landroid/view/View;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lfp;->g:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public final i(I)V
    .locals 1

    iget-object v0, p0, Lfp;->c:Lfq;

    iget-object v0, v0, Lfq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfp;->j(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final j(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lfp;->c:Lfq;

    iget-object v0, v0, Lfq;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->k(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final k(I)V
    .locals 1

    iget-object v0, p0, Lfp;->c:Lfq;

    iget-object v0, v0, Lfq;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lfp;->l(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final l(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lfp;->c:Lfq;

    iget-object v0, v0, Lfq;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->l(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final m(Z)V
    .locals 1

    iput-boolean p1, p0, Lfx;->e:Z

    iget-object v0, p0, Lfp;->c:Lfq;

    iget-object v0, v0, Lfq;->e:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ActionBarContextView;->m(Z)V

    return-void
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Lfp;->c:Lfq;

    iget-object v0, v0, Lfq;->e:Landroid/support/v7/widget/ActionBarContextView;

    iget-boolean v0, v0, Landroid/support/v7/widget/ActionBarContextView;->j:Z

    return v0
.end method
