.class public final Lev;
.super Lgj;


# instance fields
.field public a:Z

.field public b:Z

.field final synthetic c:Lfd;

.field public d:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field private f:Z


# direct methods
.method public constructor <init>(Lfd;Landroid/view/Window$Callback;)V
    .locals 0

    iput-object p1, p0, Lev;->c:Lfd;

    invoke-direct {p0, p2}, Lgj;-><init>(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/Window$Callback;)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    iput-boolean v0, p0, Lev;->f:Z

    invoke-interface {p1}, Landroid/view/Window$Callback;->onContentChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v1, p0, Lev;->f:Z

    return-void

    :catchall_0
    move-exception p1

    iput-boolean v1, p0, Lev;->f:Z

    throw p1
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lev;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgj;->e:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_0
    iget-object v0, p0, Lev;->c:Lfd;

    invoke-virtual {v0, p1}, Lfd;->F(Landroid/view/KeyEvent;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-super {p0, p1}, Lgj;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return p1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public final dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 5

    invoke-super {p0, p1}, Lgj;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_3

    iget-object v0, p0, Lev;->c:Lfd;

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v2

    invoke-virtual {v0}, Lfd;->b()Ldy;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-virtual {v3, v2, p1}, Ldy;->n(ILandroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_0
    iget-object v2, v0, Lfd;->B:Lfb;

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v3

    invoke-virtual {v0, v2, v3, p1}, Lfd;->N(Lfb;ILandroid/view/KeyEvent;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object p1, v0, Lfd;->B:Lfb;

    if-eqz p1, :cond_3

    iput-boolean v1, p1, Lfb;->l:Z

    goto :goto_0

    :cond_1
    iget-object v2, v0, Lfd;->B:Lfb;

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-virtual {v0, v3}, Lfd;->M(I)Lfb;

    move-result-object v2

    invoke-virtual {v0, v2, p1}, Lfd;->I(Lfb;Landroid/view/KeyEvent;)Z

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    invoke-virtual {v0, v2, v4, p1}, Lfd;->N(Lfb;ILandroid/view/KeyEvent;)Z

    move-result p1

    iput-boolean v3, v2, Lfb;->k:Z

    if-nez p1, :cond_3

    :cond_2
    return v3

    :cond_3
    :goto_0
    return v1
.end method

.method public final onContentChanged()V
    .locals 1

    iget-boolean v0, p0, Lev;->f:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgj;->e:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    :cond_0
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_1

    instance-of p1, p2, Lgw;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lgj;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public final onCreatePanelView(I)Landroid/view/View;
    .locals 2

    iget-object v0, p0, Lev;->d:Landroidx/wear/ambient/AmbientMode$AmbientController;

    if-eqz v0, :cond_2

    if-nez p1, :cond_0

    new-instance p1, Landroid/view/View;

    iget-object v0, v0, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v0, Lfk;

    iget-object v0, v0, Lfk;->a:Ljy;

    invoke-interface {v0}, Ljy;->b()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    move v0, p1

    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    return-object p1

    :cond_1
    move p1, v0

    :cond_2
    invoke-super {p0, p1}, Lgj;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final onMenuOpened(ILandroid/view/Menu;)Z
    .locals 2

    invoke-super {p0, p1, p2}, Lgj;->onMenuOpened(ILandroid/view/Menu;)Z

    iget-object p2, p0, Lev;->c:Lfd;

    const/16 v0, 0x6c

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p2}, Lfd;->b()Ldy;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ldy;->d(Z)V

    :cond_0
    return v1
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    iget-boolean v0, p0, Lev;->b:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lgj;->e:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2}, Lgj;->onPanelClosed(ILandroid/view/Menu;)V

    iget-object p2, p0, Lev;->c:Lfd;

    const/16 v0, 0x6c

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Lfd;->b()Ldy;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, v1}, Ldy;->d(Z)V

    return-void

    :cond_1
    if-nez p1, :cond_2

    invoke-virtual {p2, v1}, Lfd;->M(I)Lfb;

    move-result-object p1

    iget-boolean v0, p1, Lfb;->m:Z

    if-eqz v0, :cond_2

    invoke-virtual {p2, p1, v1}, Lfd;->y(Lfb;Z)V

    return-void

    :cond_2
    return-void
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 5

    instance-of v0, p3, Lgw;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lgw;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    if-nez p1, :cond_2

    if-eqz v0, :cond_1

    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    return v1

    :cond_2
    :goto_1
    const/4 v2, 0x1

    if-eqz v0, :cond_3

    iput-boolean v2, v0, Lgw;->i:Z

    :cond_3
    iget-object v3, p0, Lev;->d:Landroidx/wear/ambient/AmbientMode$AmbientController;

    if-eqz v3, :cond_5

    if-nez p1, :cond_5

    iget-object p1, v3, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast p1, Lfk;

    iget-boolean v4, p1, Lfk;->c:Z

    if-nez v4, :cond_4

    iget-object p1, p1, Lfk;->a:Ljy;

    invoke-interface {p1}, Ljy;->j()V

    iget-object p1, v3, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast p1, Lfk;

    iput-boolean v2, p1, Lfk;->c:Z

    const/4 p1, 0x0

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    :cond_5
    :goto_2
    invoke-super {p0, p1, p2, p3}, Lgj;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    if-eqz v0, :cond_6

    iput-boolean v1, v0, Lgw;->i:Z

    :cond_6
    return p1
.end method

.method public final onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V
    .locals 2

    iget-object v0, p0, Lev;->c:Lfd;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfd;->M(I)Lfb;

    move-result-object v0

    iget-object v0, v0, Lfb;->h:Lgw;

    if-eqz v0, :cond_0

    invoke-super {p0, p1, v0, p3}, Lgj;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lgj;->onProvideKeyboardShortcuts(Ljava/util/List;Landroid/view/Menu;I)V

    return-void
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public final onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 8

    iget-object v0, p0, Lev;->c:Lfd;

    iget-boolean v1, v0, Lfd;->s:Z

    if-eqz v1, :cond_c

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_4

    :pswitch_0
    new-instance p2, Lfz;

    iget-object v0, v0, Lfd;->i:Landroid/content/Context;

    invoke-direct {p2, v0, p1}, Lfz;-><init>(Landroid/content/Context;Landroid/view/ActionMode$Callback;)V

    iget-object p1, p0, Lev;->c:Lfd;

    iget-object v0, p1, Lfd;->o:Lfx;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lfx;->f()V

    :cond_0
    new-instance v0, Leq;

    invoke-direct {v0, p1, p2}, Leq;-><init>(Lfd;Lfw;)V

    invoke-virtual {p1}, Lfd;->b()Ldy;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ldy;->c(Lfw;)Lfx;

    move-result-object v1

    iput-object v1, p1, Lfd;->o:Lfx;

    :cond_1
    iget-object v1, p1, Lfd;->o:Lfx;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    invoke-virtual {p1}, Lfd;->A()V

    iget-object v1, p1, Lfd;->o:Lfx;

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lfx;->f()V

    :cond_2
    iget-object v1, p1, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v3, 0x0

    if-nez v1, :cond_5

    iget-boolean v1, p1, Lfd;->z:Z

    if-eqz v1, :cond_4

    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    iget-object v4, p1, Lfd;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    const v5, 0x7f04000f

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v5, v1, Landroid/util/TypedValue;->resourceId:I

    if-eqz v5, :cond_3

    iget-object v5, p1, Lfd;->i:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iget v4, v1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v5, v4, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    new-instance v4, Lqi;

    iget-object v7, p1, Lfd;->i:Landroid/content/Context;

    invoke-direct {v4, v7, v3}, Lqi;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v7, v5}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    goto :goto_0

    :cond_3
    iget-object v4, p1, Lfd;->i:Landroid/content/Context;

    :goto_0
    new-instance v5, Landroid/support/v7/widget/ActionBarContextView;

    invoke-direct {v5, v4}, Landroid/support/v7/widget/ActionBarContextView;-><init>(Landroid/content/Context;)V

    iput-object v5, p1, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    new-instance v5, Landroid/widget/PopupWindow;

    const v7, 0x7f04001f

    invoke-direct {v5, v4, v2, v7}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v5, p1, Lfd;->q:Landroid/widget/PopupWindow;

    iget-object v5, p1, Lfd;->q:Landroid/widget/PopupWindow;

    const/4 v7, 0x2

    invoke-static {v5, v7}, Lahp;->c(Landroid/widget/PopupWindow;I)V

    iget-object v5, p1, Lfd;->q:Landroid/widget/PopupWindow;

    iget-object v7, p1, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    iget-object v5, p1, Lfd;->q:Landroid/widget/PopupWindow;

    const/4 v7, -0x1

    invoke-virtual {v5, v7}, Landroid/widget/PopupWindow;->setWidth(I)V

    invoke-virtual {v4}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    const v7, 0x7f040009

    invoke-virtual {v5, v7, v1, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/TypedValue;->complexToDimensionPixelSize(ILandroid/util/DisplayMetrics;)I

    move-result v1

    iget-object v4, p1, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    iput v1, v4, Landroid/support/v7/widget/ActionBarContextView;->e:I

    iget-object v1, p1, Lfd;->q:Landroid/widget/PopupWindow;

    const/4 v4, -0x2

    invoke-virtual {v1, v4}, Landroid/widget/PopupWindow;->setHeight(I)V

    new-instance v1, Lbe;

    const/16 v4, 0x9

    invoke-direct {v1, p1, v4}, Lbe;-><init>(Lfd;I)V

    iput-object v1, p1, Lfd;->r:Ljava/lang/Runnable;

    goto :goto_1

    :cond_4
    iget-object v1, p1, Lfd;->u:Landroid/view/ViewGroup;

    const v4, 0x7f0b004b

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ViewStubCompat;

    if-eqz v1, :cond_5

    invoke-virtual {p1}, Lfd;->s()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    iput-object v4, v1, Landroid/support/v7/widget/ViewStubCompat;->a:Landroid/view/LayoutInflater;

    invoke-virtual {v1}, Landroid/support/v7/widget/ViewStubCompat;->a()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/ActionBarContextView;

    iput-object v1, p1, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    :cond_5
    :goto_1
    iget-object v1, p1, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    if-eqz v1, :cond_9

    invoke-virtual {p1}, Lfd;->A()V

    iget-object v1, p1, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v1}, Landroid/support/v7/widget/ActionBarContextView;->i()V

    new-instance v1, Lfy;

    iget-object v4, p1, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v4}, Landroid/support/v7/widget/ActionBarContextView;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, p1, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    invoke-direct {v1, v4, v5, v0}, Lfy;-><init>(Landroid/content/Context;Landroid/support/v7/widget/ActionBarContextView;Lfw;)V

    iget-object v4, v1, Lfy;->a:Lgw;

    invoke-interface {v0, v1, v4}, Lfw;->c(Lfx;Landroid/view/Menu;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v1}, Lfx;->g()V

    iget-object v0, p1, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->h(Lfx;)V

    iput-object v1, p1, Lfd;->o:Lfx;

    invoke-virtual {p1}, Lfd;->J()Z

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    if-eqz v0, :cond_6

    iget-object v0, p1, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p1, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    invoke-static {v0}, Lafq;->k(Landroid/view/View;)Lbkb;

    move-result-object v0

    invoke-virtual {v0, v1}, Lbkb;->o(F)V

    iput-object v0, p1, Lfd;->K:Lbkb;

    iget-object v0, p1, Lfd;->K:Lbkb;

    new-instance v1, Leo;

    invoke-direct {v1, p1}, Leo;-><init>(Lfd;)V

    invoke-virtual {v0, v1}, Lbkb;->q(Laga;)V

    goto :goto_2

    :cond_6
    iget-object v0, p1, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/ActionBarContextView;->setAlpha(F)V

    iget-object v0, p1, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/ActionBarContextView;->setVisibility(I)V

    iget-object v0, p1, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/View;

    if-eqz v0, :cond_7

    iget-object v0, p1, Lfd;->p:Landroid/support/v7/widget/ActionBarContextView;

    invoke-virtual {v0}, Landroid/support/v7/widget/ActionBarContextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-static {v0}, Laff;->c(Landroid/view/View;)V

    :cond_7
    :goto_2
    iget-object v0, p1, Lfd;->q:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_9

    iget-object v0, p1, Lfd;->j:Landroid/view/Window;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p1, Lfd;->r:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    goto :goto_3

    :cond_8
    iput-object v2, p1, Lfd;->o:Lfx;

    :cond_9
    :goto_3
    invoke-virtual {p1}, Lfd;->E()V

    :cond_a
    invoke-virtual {p1}, Lfd;->E()V

    iget-object p1, p1, Lfd;->o:Lfx;

    if-eqz p1, :cond_b

    invoke-virtual {p2, p1}, Lfz;->e(Lfx;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    :cond_b
    return-object v2

    :cond_c
    :goto_4
    invoke-super {p0, p1, p2}, Lgj;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
