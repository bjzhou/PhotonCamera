.class final Lfn;
.super Lagb;


# instance fields
.field final synthetic a:Lfq;


# direct methods
.method public constructor <init>(Lfq;)V
    .locals 0

    iput-object p1, p0, Lfn;->a:Lfq;

    invoke-direct {p0}, Lagb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    iget-object v0, p0, Lfn;->a:Lfq;

    iget-boolean v1, v0, Lfq;->k:Z

    if-eqz v1, :cond_0

    iget-object v0, v0, Lfq;->f:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    iget-object v0, p0, Lfn;->a:Lfq;

    iget-object v0, v0, Lfq;->c:Landroid/support/v7/widget/ActionBarContainer;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setTranslationY(F)V

    :cond_0
    iget-object v0, p0, Lfn;->a:Lfq;

    iget-object v0, v0, Lfq;->c:Landroid/support/v7/widget/ActionBarContainer;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->setVisibility(I)V

    iget-object v0, p0, Lfn;->a:Lfq;

    iget-object v0, v0, Lfq;->c:Landroid/support/v7/widget/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContainer;->a(Z)V

    iget-object v0, p0, Lfn;->a:Lfq;

    const/4 v1, 0x0

    iput-object v1, v0, Lfq;->m:Lgf;

    iget-object v2, v0, Lfq;->i:Lfw;

    if-eqz v2, :cond_1

    iget-object v3, v0, Lfq;->h:Lfx;

    invoke-interface {v2, v3}, Lfw;->a(Lfx;)V

    iput-object v1, v0, Lfq;->h:Lfx;

    iput-object v1, v0, Lfq;->i:Lfw;

    :cond_1
    iget-object v0, p0, Lfn;->a:Lfq;

    iget-object v0, v0, Lfq;->b:Landroid/support/v7/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_2

    invoke-static {v0}, Laff;->c(Landroid/view/View;)V

    :cond_2
    return-void
.end method
