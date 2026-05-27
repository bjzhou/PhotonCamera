.class public final Lgl;
.super Lkq;


# instance fields
.field final synthetic a:Landroid/support/v7/view/menu/ActionMenuItemView;


# direct methods
.method public constructor <init>(Landroid/support/v7/view/menu/ActionMenuItemView;)V
    .locals 0

    iput-object p1, p0, Lgl;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    invoke-direct {p0, p1}, Lkq;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final a()Lhn;
    .locals 2

    iget-object v0, p0, Lgl;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    iget-object v0, v0, Landroid/support/v7/view/menu/ActionMenuItemView;->c:Landroidx/wear/ambient/AmbientMode$AmbientController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, v0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v0, Lic;

    iget-object v0, v0, Lic;->j:Lhy;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lhh;->a()Lhf;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v1
.end method

.method public final b()Z
    .locals 3

    iget-object v0, p0, Lgl;->a:Landroid/support/v7/view/menu/ActionMenuItemView;

    iget-object v1, v0, Landroid/support/v7/view/menu/ActionMenuItemView;->b:Lgv;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/support/v7/view/menu/ActionMenuItemView;->a:Lgy;

    invoke-interface {v1, v0}, Lgv;->b(Lgy;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lgl;->a()Lhn;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lhn;->u()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    return v2
.end method
