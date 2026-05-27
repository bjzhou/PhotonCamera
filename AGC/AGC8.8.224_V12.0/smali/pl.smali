.class public Lpl;
.super Ldo;

# interfaces
.implements Lakv;
.implements Lalw;
.implements Lakn;
.implements Laqn;
.implements Lps;
.implements Lqb;
.implements Laca;
.implements Lacb;
.implements Ldi;
.implements Ldj;
.implements Laep;


# instance fields
.field private final a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field private b:Z

.field private c:Z

.field private final d:Lpk;

.field private e:Lbkb;

.field public final f:Lpt;

.field public final g:Lpr;

.field public final h:Lqa;

.field public final i:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final j:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final k:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final l:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final m:Laks;

.field final n:Lbza;

.field final o:Lbza;

.field public final p:Lva;


# direct methods
.method public constructor <init>()V
    .locals 6

    invoke-direct {p0}, Ldo;-><init>()V

    new-instance v0, Lpt;

    invoke-direct {v0}, Lpt;-><init>()V

    iput-object v0, p0, Lpl;->f:Lpt;

    new-instance v0, Lva;

    new-instance v1, Lnk;

    const/4 v2, 0x5

    invoke-direct {v1, p0, v2}, Lnk;-><init>(Lpl;I)V

    invoke-direct {v0, v1}, Lva;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lpl;->p:Lva;

    new-instance v0, Laks;

    invoke-direct {v0, p0}, Laks;-><init>(Lakv;)V

    iput-object v0, p0, Lpl;->m:Laks;

    invoke-static {p0}, Laff;->d(Laqn;)Lbza;

    move-result-object v1

    iput-object v1, p0, Lpl;->n:Lbza;

    new-instance v2, Lpr;

    new-instance v3, Lnk;

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-direct {v3, p0, v4, v5}, Lnk;-><init>(Lpl;I[B)V

    invoke-direct {v2, v3}, Lpr;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lpl;->g:Lpr;

    new-instance v2, Lpk;

    invoke-direct {v2, p0}, Lpk;-><init>(Lpl;)V

    iput-object v2, p0, Lpl;->d:Lpk;

    new-instance v3, Lbza;

    invoke-direct {v3, v2}, Lbza;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object v3, p0, Lpl;->o:Lbza;

    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    new-instance v2, Lqa;

    invoke-direct {v2, p0}, Lqa;-><init>(Lpl;)V

    iput-object v2, p0, Lpl;->h:Lqa;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lpl;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lpl;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lpl;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lpl;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lpl;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lpl;->b:Z

    iput-boolean v2, p0, Lpl;->c:Z

    new-instance v2, Landroidx/activity/ComponentActivity$3;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$3;-><init>(Lpl;)V

    invoke-virtual {v0, v2}, Laks;->a(Laku;)V

    new-instance v2, Landroidx/activity/ComponentActivity$4;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$4;-><init>(Lpl;)V

    invoke-virtual {v0, v2}, Laks;->a(Laku;)V

    new-instance v2, Landroidx/activity/ComponentActivity$5;

    invoke-direct {v2, p0}, Landroidx/activity/ComponentActivity$5;-><init>(Lpl;)V

    invoke-virtual {v0, v2}, Laks;->a(Laku;)V

    invoke-virtual {v1}, Lbza;->g()V

    invoke-static {p0}, Lall;->c(Laqn;)V

    invoke-virtual {p0}, Lpl;->getSavedStateRegistry()Laqm;

    move-result-object v0

    new-instance v1, Lcg;

    const/4 v2, 0x3

    invoke-direct {v1, p0, v2}, Lcg;-><init>(Lpl;I)V

    const-string v2, "android:support:activity-result"

    invoke-virtual {v0, v2, v1}, Laqm;->b(Ljava/lang/String;Laql;)V

    new-instance v0, Leh;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Leh;-><init>(Lpl;I)V

    invoke-virtual {p0, v0}, Lpl;->l(Lpu;)V

    return-void
.end method

.method private a()V
    .locals 2

    invoke-virtual {p0}, Lpl;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Laci;->c(Landroid/view/View;Lakv;)V

    invoke-virtual {p0}, Lpl;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lacj;->b(Landroid/view/View;Lalw;)V

    invoke-virtual {p0}, Lpl;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lafh;->A(Landroid/view/View;Laqn;)V

    invoke-virtual {p0}, Lpl;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {v0, p0}, Lgg;->c(Landroid/view/View;Lps;)V

    invoke-virtual {p0}, Lpl;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const v1, 0x7f0b02bc

    invoke-virtual {v0, v1, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic k(Lpl;)V
    .locals 0

    invoke-super {p0}, Ldo;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-direct {p0}, Lpl;->a()V

    iget-object v0, p0, Lpl;->d:Lpk;

    invoke-virtual {p0}, Lpl;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpk;->a(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Ldo;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final c()Lqa;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final d(Laea;)V
    .locals 1

    iget-object v0, p0, Lpl;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final f(Laea;)V
    .locals 1

    iget-object v0, p0, Lpl;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final getDefaultViewModelCreationExtras()Lalz;
    .locals 3

    new-instance v0, Lamb;

    invoke-direct {v0}, Lamb;-><init>()V

    invoke-virtual {p0}, Lpl;->getApplication()Landroid/app/Application;

    move-result-object v1

    if-eqz v1, :cond_0

    sget-object v1, Lals;->b:Laly;

    invoke-virtual {p0}, Lpl;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lamb;->b(Laly;Ljava/lang/Object;)V

    :cond_0
    sget-object v1, Lall;->a:Laly;

    invoke-virtual {v0, v1, p0}, Lamb;->b(Laly;Ljava/lang/Object;)V

    sget-object v1, Lall;->b:Laly;

    invoke-virtual {v0, v1, p0}, Lamb;->b(Laly;Ljava/lang/Object;)V

    invoke-virtual {p0}, Lpl;->getIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lpl;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_1

    sget-object v1, Lall;->c:Laly;

    invoke-virtual {p0}, Lpl;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lamb;->b(Laly;Ljava/lang/Object;)V

    :cond_1
    return-object v0
.end method

.method public final getLifecycle()Laks;
    .locals 1

    iget-object v0, p0, Lpl;->m:Laks;

    return-object v0
.end method

.method public final getSavedStateRegistry()Laqm;
    .locals 1

    iget-object v0, p0, Lpl;->n:Lbza;

    iget-object v0, v0, Lbza;->b:Ljava/lang/Object;

    check-cast v0, Laqm;

    return-object v0
.end method

.method public final getViewModelStore$ar$class_merging$ar$class_merging()Lbkb;
    .locals 2

    invoke-virtual {p0}, Lpl;->getApplication()Landroid/app/Application;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lpl;->m()V

    iget-object v0, p0, Lpl;->e:Lbkb;

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Your activity is not yet attached to the Application instance. You can\'t request ViewModel before onCreate call."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final l(Lpu;)V
    .locals 2

    iget-object v0, p0, Lpl;->f:Lpt;

    iget-object v1, v0, Lpt;->b:Landroid/content/Context;

    if-eqz v1, :cond_0

    iget-object v1, v0, Lpt;->b:Landroid/content/Context;

    invoke-interface {p1}, Lpu;->a()V

    :cond_0
    iget-object v0, v0, Lpt;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final m()V
    .locals 2

    iget-object v0, p0, Lpl;->e:Lbkb;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lpl;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnaa;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lnaa;->a:Ljava/lang/Object;

    check-cast v0, Lbkb;

    iput-object v0, p0, Lpl;->e:Lbkb;

    :cond_0
    iget-object v0, p0, Lpl;->e:Lbkb;

    if-nez v0, :cond_1

    new-instance v0, Lbkb;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lbkb;-><init>([C[B)V

    iput-object v0, p0, Lpl;->e:Lbkb;

    :cond_1
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lpl;->h:Lqa;

    invoke-virtual {v0, p1, p2, p3}, Lqa;->e(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Ldo;->onActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    iget-object v0, p0, Lpl;->g:Lpr;

    invoke-virtual {v0}, Lpr;->b()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Ldo;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lpl;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laea;

    invoke-interface {v1, p1}, Laea;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lpl;->n:Lbza;

    invoke-virtual {v0, p1}, Lbza;->h(Landroid/os/Bundle;)V

    iget-object v0, p0, Lpl;->f:Lpt;

    iput-object p0, v0, Lpt;->b:Landroid/content/Context;

    iget-object v0, v0, Lpt;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lpu;

    invoke-interface {v1}, Lpu;->a()V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Ldo;->onCreate(Landroid/os/Bundle;)V

    invoke-static {p0}, Lalh;->b(Landroid/app/Activity;)V

    sget p1, Ladg;->a:I

    :try_start_0
    iget-object p1, p0, Lpl;->g:Lpr;

    invoke-static {p0}, Lpj;->a(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Lpr;->c(Landroid/window/OnBackInvokedDispatcher;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public final onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1, p2}, Ldo;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    iget-object p1, p0, Lpl;->p:Lva;

    invoke-virtual {p0}, Lpl;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lva;->e(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1

    invoke-super {p0, p1, p2}, Ldo;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    if-nez p1, :cond_1

    iget-object p1, p0, Lpl;->p:Lva;

    invoke-virtual {p1, p2}, Lva;->g(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public final onMultiWindowModeChanged(Z)V
    .locals 3

    iget-boolean v0, p0, Lpl;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lpl;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laea;

    new-instance v2, Llpg;

    invoke-direct {v2, p1}, Llpg;-><init>(Z)V

    invoke-interface {v1, v2}, Laea;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl;->b:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1, p2}, Ldo;->onMultiWindowModeChanged(ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lpl;->b:Z

    iget-object p2, p0, Lpl;->k:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laea;

    new-instance v1, Llpg;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Llpg;-><init>(Z[B)V

    invoke-interface {v0, v1}, Laea;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lpl;->b:Z

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 2

    invoke-super {p0, p1}, Ldo;->onNewIntent(Landroid/content/Intent;)V

    iget-object v0, p0, Lpl;->j:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laea;

    invoke-interface {v1, p1}, Laea;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final onPanelClosed(ILandroid/view/Menu;)V
    .locals 2

    iget-object v0, p0, Lpl;->p:Lva;

    iget-object v0, v0, Lva;->a:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/wear/ambient/AmbientMode$AmbientController;

    iget-object v1, v1, Landroidx/wear/ambient/AmbientMode$AmbientController;->a:Ljava/lang/Object;

    check-cast v1, Lcq;

    invoke-virtual {v1, p2}, Lcq;->u(Landroid/view/Menu;)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Ldo;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public final onPictureInPictureModeChanged(Z)V
    .locals 3

    iget-boolean v0, p0, Lpl;->c:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lpl;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laea;

    new-instance v2, Llpg;

    invoke-direct {v2, p1}, Llpg;-><init>(Z)V

    invoke-interface {v1, v2}, Laea;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lpl;->c:Z

    const/4 v0, 0x0

    :try_start_0
    invoke-super {p0, p1, p2}, Ldo;->onPictureInPictureModeChanged(ZLandroid/content/res/Configuration;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lpl;->c:Z

    iget-object p2, p0, Lpl;->l:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Laea;

    new-instance v1, Llpg;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Llpg;-><init>(Z[B)V

    invoke-interface {v0, v1}, Laea;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void

    :catchall_0
    move-exception p1

    iput-boolean v0, p0, Lpl;->c:Z

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    invoke-super {p0, p1, p2, p3}, Ldo;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    iget-object p1, p0, Lpl;->p:Lva;

    invoke-virtual {p1, p3}, Lva;->f(Landroid/view/Menu;)V

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lpl;->h:Lqa;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "androidx.activity.result.contract.extra.PERMISSIONS"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, -0x1

    invoke-virtual {v0, p1, v2, v1}, Lqa;->e(IILandroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2, p3}, Ldo;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    :cond_0
    return-void
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lpl;->e:Lbkb;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lpl;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnaa;

    if-eqz v1, :cond_0

    iget-object v0, v1, Lnaa;->a:Ljava/lang/Object;

    :cond_0
    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    :cond_1
    new-instance v2, Lnaa;

    invoke-direct {v2, v1, v1, v1, v1}, Lnaa;-><init>([B[B[B[B)V

    iput-object v0, v2, Lnaa;->a:Ljava/lang/Object;

    return-object v2
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lpl;->m:Laks;

    instance-of v1, v0, Laks;

    if-eqz v1, :cond_0

    sget-object v1, Lakr;->c:Lakr;

    invoke-virtual {v0, v1}, Laks;->d(Lakr;)V

    :cond_0
    invoke-super {p0, p1}, Ldo;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lpl;->n:Lbza;

    invoke-virtual {v0, p1}, Lbza;->i(Landroid/os/Bundle;)V

    return-void
.end method

.method public final onTrimMemory(I)V
    .locals 3

    invoke-super {p0, p1}, Ldo;->onTrimMemory(I)V

    iget-object v0, p0, Lpl;->i:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Laea;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Laea;->a(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final reportFullyDrawn()V
    .locals 4

    :try_start_0
    invoke-static {}, Larh;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "reportFullyDrawn() for ComponentActivity"

    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    :cond_0
    invoke-super {p0}, Ldo;->reportFullyDrawn()V

    iget-object v0, p0, Lpl;->o:Lbza;

    iget-object v1, v0, Lbza;->b:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v2, 0x1

    :try_start_1
    iput-boolean v2, v0, Lbza;->a:Z

    iget-object v2, v0, Lbza;->c:Ljava/lang/Object;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lolz;

    invoke-interface {v3}, Lolz;->a()Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v0, v0, Lbza;->c:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {}, Landroid/os/Trace;->endSection()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {}, Landroid/os/Trace;->endSection()V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method public setContentView(I)V
    .locals 2

    invoke-direct {p0}, Lpl;->a()V

    iget-object v0, p0, Lpl;->d:Lpk;

    invoke-virtual {p0}, Lpl;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpk;->a(Landroid/view/View;)V

    invoke-super {p0, p1}, Ldo;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 2

    invoke-direct {p0}, Lpl;->a()V

    iget-object v0, p0, Lpl;->d:Lpk;

    invoke-virtual {p0}, Lpl;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpk;->a(Landroid/view/View;)V

    invoke-super {p0, p1}, Ldo;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    invoke-direct {p0}, Lpl;->a()V

    iget-object v0, p0, Lpl;->d:Lpk;

    invoke-virtual {p0}, Lpl;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lpk;->a(Landroid/view/View;)V

    invoke-super {p0, p1, p2}, Ldo;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
