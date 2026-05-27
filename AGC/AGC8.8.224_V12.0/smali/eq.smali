.class final Leq;
.super Ljava/lang/Object;

# interfaces
.implements Lfw;


# instance fields
.field final synthetic a:Lfd;

.field private final b:Lfw;


# direct methods
.method public constructor <init>(Lfd;Lfw;)V
    .locals 0

    iput-object p1, p0, Leq;->a:Lfd;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Leq;->b:Lfw;

    return-void
.end method


# virtual methods
.method public final a(Lfx;)V
    .locals 2

    iget-object v0, p0, Leq;->b:Lfw;

    check-cast v0, Lfz;

    iget-object v1, v0, Lfz;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, p1}, Lfz;->e(Lfx;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-interface {v1, p1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    iget-object p1, p0, Leq;->a:Lfd;

    iget-object v0, p1, Lfd;->q:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lfd;->j:Landroid/view/Window;

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iget-object v0, p0, Leq;->a:Lfd;

    iget-object v0, v0, Lfd;->r:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    iget-object p1, p0, Leq;->a:Lfd;

    iget-object v0, p1, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lfd;->A()V

    iget-object p1, p0, Leq;->a:Lfd;

    iget-object v0, p1, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v0}, Lafq;->k(Landroid/view/View;)Lbkb;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbkb;->o(F)V

    iput-object v0, p1, Lfd;->K:Lbkb;

    iget-object p1, p0, Leq;->a:Lfd;

    iget-object p1, p1, Lfd;->K:Lbkb;

    new-instance v0, Lep;

    invoke-direct {v0, p0}, Lep;-><init>(Leq;)V

    invoke-virtual {p1, v0}, Lbkb;->q(Laga;)V

    :cond_1
    iget-object p1, p0, Leq;->a:Lfd;

    const/4 v0, 0x0

    iput-object v0, p1, Lfd;->o:Lfx;

    iget-object p1, p1, Lfd;->u:Landroid/view/ViewGroup;

    invoke-static {p1}, Laff;->c(Landroid/view/View;)V

    iget-object p1, p0, Leq;->a:Lfd;

    invoke-virtual {p1}, Lfd;->E()V

    return-void
.end method

.method public final b(Lfx;Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Leq;->b:Lfw;

    check-cast v0, Lfz;

    iget-object v1, v0, Lfz;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, p1}, Lfz;->e(Lfx;)Landroid/view/ActionMode;

    move-result-object p1

    new-instance v2, Lhe;

    iget-object v0, v0, Lfz;->b:Landroid/content/Context;

    invoke-direct {v2, v0, p2}, Lhe;-><init>(Landroid/content/Context;Ladd;)V

    invoke-interface {v1, p1, v2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public final c(Lfx;Landroid/view/Menu;)Z
    .locals 2

    iget-object v0, p0, Leq;->b:Lfw;

    check-cast v0, Lfz;

    iget-object v1, v0, Lfz;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, p1}, Lfz;->e(Lfx;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-virtual {v0, p2}, Lfz;->f(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final d(Lfx;Landroid/view/Menu;)V
    .locals 2

    iget-object v0, p0, Leq;->a:Lfd;

    iget-object v0, v0, Lfd;->u:Landroid/view/ViewGroup;

    invoke-static {v0}, Laff;->c(Landroid/view/View;)V

    iget-object v0, p0, Leq;->b:Lfw;

    check-cast v0, Lfz;

    iget-object v1, v0, Lfz;->a:Landroid/view/ActionMode$Callback;

    invoke-virtual {v0, p1}, Lfz;->e(Lfx;)Landroid/view/ActionMode;

    move-result-object p1

    invoke-virtual {v0, p2}, Lfz;->f(Landroid/view/Menu;)Landroid/view/Menu;

    move-result-object p2

    invoke-interface {v1, p1, p2}, Landroid/view/ActionMode$Callback;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    return-void
.end method
