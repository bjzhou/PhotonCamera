.class final Lep;
.super Lagb;


# instance fields
.field final synthetic a:Leq;


# direct methods
.method public constructor <init>(Leq;)V
    .locals 0

    iput-object p1, p0, Lep;->a:Leq;

    invoke-direct {p0}, Lagb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Lep;->a:Leq;

    iget-object v0, v0, Leq;->a:Lfd;

    iget-object v0, v0, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v0, p0, Lep;->a:Leq;

    iget-object v0, v0, Leq;->a:Lfd;

    iget-object v1, v0, Lfd;->q:Landroid/widget/PopupWindow;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/widget/PopupWindow;->dismiss()V

    goto :goto_0

    :cond_0
    iget-object v0, v0, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lep;->a:Leq;

    iget-object v0, v0, Leq;->a:Lfd;

    iget-object v0, v0, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Laff;->c(Landroid/view/View;)V

    :cond_1
    :goto_0
    iget-object v0, p0, Lep;->a:Leq;

    iget-object v0, v0, Leq;->a:Lfd;

    iget-object v0, v0, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->i()V

    iget-object v0, p0, Lep;->a:Leq;

    iget-object v0, v0, Leq;->a:Lfd;

    iget-object v0, v0, Lfd;->K:Lbkb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbkb;->q(Laga;)V

    iget-object v0, p0, Lep;->a:Leq;

    iget-object v0, v0, Leq;->a:Lfd;

    iput-object v1, v0, Lfd;->K:Lbkb;

    iget-object v0, v0, Lfd;->u:Landroid/view/ViewGroup;

    invoke-static {v0}, Laff;->c(Landroid/view/View;)V

    return-void
.end method
