.class public final Lfk;
.super Ldy;


# instance fields
.field public final a:Ljy;

.field public final b:Landroid/view/Window$Callback;

.field c:Z

.field public final d:Landroidx/wear/ambient/AmbientMode$AmbientController;

.field private e:Z

.field private f:Z

.field private final g:Ljava/util/ArrayList;

.field private final h:Ljava/lang/Runnable;

.field private final i:Landroidx/wear/ambient/AmbientMode$AmbientController;


# direct methods
.method public constructor <init>(Landroid/support/v7/widget/Toolbar;Ljava/lang/CharSequence;Landroid/view/Window$Callback;)V
    .locals 3

    invoke-direct {p0}, Ldy;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lfk;->g:Ljava/util/ArrayList;

    new-instance v0, Lbe;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lbe;-><init>(Lfk;I)V

    iput-object v0, p0, Lfk;->h:Ljava/lang/Runnable;

    new-instance v0, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {v0, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Lfk;)V

    iput-object v0, p0, Lfk;->i:Landroidx/wear/ambient/AmbientMode$AmbientController;

    new-instance v1, Lns;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lns;-><init>(Landroid/support/v7/widget/Toolbar;Z)V

    iput-object v1, p0, Lfk;->a:Ljy;

    invoke-static {p3}, Labf;->c(Ljava/lang/Object;)V

    iput-object p3, p0, Lfk;->b:Landroid/view/Window$Callback;

    move-object v2, v1

    check-cast v2, Lns;

    iput-object p3, v1, Lns;->d:Landroid/view/Window$Callback;

    iput-object v0, p1, Landroid/support/v7/widget/Toolbar;->C:Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-interface {v1, p2}, Ljy;->n(Ljava/lang/CharSequence;)V

    new-instance p1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    invoke-direct {p1, p0}, Landroidx/wear/ambient/AmbientMode$AmbientController;-><init>(Lfk;)V

    iput-object p1, p0, Lfk;->d:Landroidx/wear/ambient/AmbientMode$AmbientController;

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Lfk;->a:Ljy;

    check-cast v0, Lns;

    iget v0, v0, Lns;->b:I

    return v0
.end method

.method public final b()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lfk;->a:Ljy;

    invoke-interface {v0}, Ljy;->b()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public final d(Z)V
    .locals 2

    iget-boolean v0, p0, Lfk;->f:Z

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lfk;->f:Z

    iget-object p1, p0, Lfk;->g:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lfk;->g:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ldx;

    invoke-interface {v1}, Ldx;->a()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final e()V
    .locals 2

    iget-object v0, p0, Lfk;->a:Ljy;

    check-cast v0, Lns;

    iget-object v0, v0, Lns;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lfk;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public final f(Z)V
    .locals 0

    return-void
.end method

.method public final g(Z)V
    .locals 0

    const/4 p1, 0x4

    invoke-virtual {p0, p1, p1}, Lfk;->w(II)V

    return-void
.end method

.method public final h(Z)V
    .locals 0

    return-void
.end method

.method public final i(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lfk;->a:Ljy;

    invoke-interface {v0, p1}, Ljy;->k(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final j(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lfk;->a:Ljy;

    invoke-interface {v0, p1}, Ljy;->n(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final k()Z
    .locals 1

    iget-object v0, p0, Lfk;->a:Ljy;

    invoke-interface {v0}, Ljy;->q()Z

    move-result v0

    return v0
.end method

.method public final l()Z
    .locals 1

    iget-object v0, p0, Lfk;->a:Ljy;

    invoke-interface {v0}, Ljy;->p()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lfk;->a:Ljy;

    invoke-interface {v0}, Ljy;->c()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final m()Z
    .locals 2

    iget-object v0, p0, Lfk;->a:Ljy;

    check-cast v0, Lns;

    iget-object v0, v0, Lns;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lfk;->h:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lfk;->a:Ljy;

    check-cast v0, Lns;

    iget-object v0, v0, Lns;->a:Landroid/support/v7/widget/Toolbar;

    iget-object v1, p0, Lfk;->h:Ljava/lang/Runnable;

    invoke-static {v0, v1}, Lafb;->i(Landroid/view/View;Ljava/lang/Runnable;)V

    const/4 v0, 0x1

    return v0
.end method

.method public final n(ILandroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p0}, Lfk;->v()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v2

    const/4 v3, 0x1

    if-eq v2, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {v0, p1, p2, v1}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1

    :cond_2
    return v1
.end method

.method public final o(Landroid/view/KeyEvent;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Ldy;->p()Z

    :cond_0
    return v0
.end method

.method public final p()Z
    .locals 1

    iget-object v0, p0, Lfk;->a:Ljy;

    invoke-interface {v0}, Ljy;->t()Z

    move-result v0

    return v0
.end method

.method public final q()V
    .locals 0

    return-void
.end method

.method public final r()V
    .locals 1

    const/4 v0, 0x2

    invoke-virtual {p0, v0, v0}, Lfk;->w(II)V

    return-void
.end method

.method public final s()V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0, v0}, Lfk;->w(II)V

    return-void
.end method

.method public final t()V
    .locals 2

    iget-object v0, p0, Lfk;->a:Ljy;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljy;->h(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final u()V
    .locals 3

    iget-object v0, p0, Lfk;->a:Ljy;

    invoke-interface {v0}, Ljy;->b()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1403ec

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v0, v1}, Ljy;->k(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final v()Landroid/view/Menu;
    .locals 4

    iget-boolean v0, p0, Lfk;->e:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lfk;->a:Ljy;

    new-instance v1, Lfj;

    invoke-direct {v1, p0}, Lfj;-><init>(Lfk;)V

    new-instance v2, Lig;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lig;-><init>(Lfk;I)V

    check-cast v0, Lns;

    iget-object v0, v0, Lns;->a:Landroid/support/v7/widget/Toolbar;

    iput-object v1, v0, Landroid/support/v7/widget/Toolbar;->y:Lhi;

    iput-object v2, v0, Landroid/support/v7/widget/Toolbar;->z:Lgu;

    iget-object v0, v0, Landroid/support/v7/widget/Toolbar;->a:Landroid/support/v7/widget/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/ActionMenuView;->i(Lhi;Lgu;)V

    :cond_0
    iput-boolean v3, p0, Lfk;->e:Z

    :cond_1
    iget-object v0, p0, Lfk;->a:Ljy;

    check-cast v0, Lns;

    iget-object v0, v0, Lns;->a:Landroid/support/v7/widget/Toolbar;

    invoke-virtual {v0}, Landroid/support/v7/widget/Toolbar;->g()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method

.method public final w(II)V
    .locals 3

    iget-object v0, p0, Lfk;->a:Ljy;

    move-object v1, v0

    check-cast v1, Lns;

    iget v1, v1, Lns;->b:I

    xor-int/lit8 v2, p2, -0x1

    and-int/2addr v1, v2

    and-int/2addr p1, p2

    or-int/2addr p1, v1

    invoke-interface {v0, p1}, Ljy;->g(I)V

    return-void
.end method
