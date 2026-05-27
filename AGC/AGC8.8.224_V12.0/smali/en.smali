.class public final Len;
.super Lagb;


# instance fields
.field final synthetic a:Lbe;


# direct methods
.method public constructor <init>(Lbe;[B)V
    .locals 0

    iput-object p1, p0, Len;->a:Lbe;

    invoke-direct {p0}, Lagb;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    iget-object v0, p0, Len;->a:Lbe;

    iget-object v0, v0, Lbe;->a:Ljava/lang/Object;

    check-cast v0, Lfd;

    iget-object v0, v0, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p0, Len;->a:Lbe;

    iget-object v0, v0, Lbe;->a:Ljava/lang/Object;

    check-cast v0, Lfd;

    iget-object v0, v0, Lfd;->K:Lbkb;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lbkb;->q(Laga;)V

    iget-object v0, p0, Len;->a:Lbe;

    iget-object v0, v0, Lbe;->a:Ljava/lang/Object;

    check-cast v0, Lfd;

    iput-object v1, v0, Lfd;->K:Lbkb;

    return-void
.end method

.method public final b()V
    .locals 2

    iget-object v0, p0, Len;->a:Lbe;

    iget-object v0, v0, Lbe;->a:Ljava/lang/Object;

    check-cast v0, Lfd;

    iget-object v0, v0, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    return-void
.end method
