.class public final Lig;
.super Ljava/lang/Object;

# interfaces
.implements Lgu;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/ActionMenuView;I)V
    .locals 0

    iput p2, p0, Lig;->b:I

    iput-object p1, p0, Lig;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/support/v7/widget/Toolbar;I)V
    .locals 0

    iput p2, p0, Lig;->b:I

    iput-object p1, p0, Lig;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfk;I)V
    .locals 0

    iput p2, p0, Lig;->b:I

    iput-object p1, p0, Lig;->a:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final D(Lgw;)V
    .locals 4

    iget v0, p0, Lig;->b:I

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lig;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionMenuView;->m()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lig;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->B:Lva;

    invoke-virtual {v0, p1}, Lva;->f(Landroid/view/Menu;)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lig;->a:Ljava/lang/Object;

    check-cast v0, Lfk;

    iget-object v0, v0, Lfk;->a:Ljy;

    invoke-interface {v0}, Ljy;->s()Z

    move-result v0

    const/16 v1, 0x6c

    if-eqz v0, :cond_0

    iget-object v0, p0, Lig;->a:Ljava/lang/Object;

    check-cast v0, Lfk;

    iget-object v0, v0, Lfk;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :cond_0
    iget-object v0, p0, Lig;->a:Ljava/lang/Object;

    check-cast v0, Lfk;

    iget-object v0, v0, Lfk;->b:Landroid/view/Window$Callback;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3, p1}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lig;->a:Ljava/lang/Object;

    check-cast v0, Lfk;

    iget-object v0, v0, Lfk;->b:Landroid/view/Window$Callback;

    invoke-interface {v0, v1, p1}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    :cond_1
    return-void

    :pswitch_1
    iget-object v0, p0, Lig;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v7/widget/ActionMenuView;

    iget-object v0, v0, Landroid/support/v7/widget/ActionMenuView;->d:Lgu;

    if-eqz v0, :cond_2

    invoke-interface {v0, p1}, Lgu;->D(Lgw;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, Lig;->a:Ljava/lang/Object;

    check-cast v0, Landroid/support/v7/widget/Toolbar;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->z:Lgu;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lgu;->D(Lgw;)V

    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final H(Lgw;Landroid/view/MenuItem;)Z
    .locals 3

    iget p1, p0, Lig;->b:I

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :pswitch_0
    return v0

    :pswitch_1
    iget-object p1, p0, Lig;->a:Ljava/lang/Object;

    check-cast p1, Landroid/support/v7/widget/ActionMenuView;

    iget-object p1, p1, Landroid/support/v7/widget/ActionMenuView;->e:Landroidx/wear/ambient/AmbientMode$AmbientController;

    if-eqz p1, :cond_2

    iget-object v1, p1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v1, Landroid/support/v7/widget/Toolbar;

    iget-object v1, v1, Landroid/support/v7/widget/Toolbar;->B:Lva;

    invoke-virtual {v1, p2}, Lva;->g(Landroid/view/MenuItem;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object p1, p1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast p1, Landroid/support/v7/widget/Toolbar;

    iget-object p1, p1, Landroid/support/v7/widget/Toolbar;->C:Landroidx/wear/ambient/AmbientMode$AmbientController;

    if-eqz p1, :cond_2

    iget-object p1, p1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast p1, Lfk;

    iget-object p1, p1, Lfk;->b:Landroid/view/Window$Callback;

    invoke-interface {p1, v0, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return v2

    :cond_2
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
