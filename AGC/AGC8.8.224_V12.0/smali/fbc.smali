.class public Lfbc;
.super Lei;


# instance fields
.field private q:I

.field public final x:Lezx;

.field protected final y:Lgoz;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lei;-><init>()V

    new-instance v0, Lezx;

    invoke-direct {v0}, Lezx;-><init>()V

    iput-object v0, p0, Lfbc;->x:Lezx;

    new-instance v0, Lgoz;

    invoke-direct {v0}, Lgoz;-><init>()V

    iput-object v0, p0, Lfbc;->y:Lgoz;

    return-void
.end method

.method private final n()V
    .locals 1

    iget v0, p0, Lfbc;->q:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lfbc;->q:I

    return-void
.end method

.method private final o()V
    .locals 3

    iget v0, p0, Lfbc;->q:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lfbc;->q:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lfbc;->x:Lezx;

    new-instance v1, Lcot;

    const/16 v2, 0xf

    invoke-direct {v1, v2}, Lcot;-><init>(I)V

    invoke-virtual {v0, v1}, Lfak;->b(Ljava/util/function/Consumer;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lfbc;->x:Lezx;

    new-instance v1, Lezv;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lezv;-><init>(I)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfak;->a(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lei;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    iget-object v0, p0, Lfbc;->x:Lezx;

    new-instance v1, Lezr;

    invoke-direct {v1, p1}, Lezr;-><init>(Landroid/view/MotionEvent;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfak;->a(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lei;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public final finish()V
    .locals 2

    iget-object v0, p0, Lfbc;->x:Lezx;

    sget-object v1, Lcot;->r:Lcot;

    invoke-virtual {v0, v1}, Lfak;->b(Ljava/util/function/Consumer;)V

    invoke-super {p0}, Lei;->finish()V

    return-void
.end method

.method public final onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 2

    iget-object v0, p0, Lfbc;->x:Lezx;

    sget-object v1, Lcot;->o:Lcot;

    invoke-virtual {v0, v1}, Lfak;->b(Ljava/util/function/Consumer;)V

    invoke-super {p0, p1}, Lei;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public final onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 2

    iget-object v0, p0, Lfbc;->x:Lezx;

    sget-object v1, Lcot;->q:Lcot;

    invoke-virtual {v0, v1}, Lfak;->b(Ljava/util/function/Consumer;)V

    invoke-super {p0, p1}, Lei;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method protected final onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lfbc;->x:Lezx;

    new-instance v1, Lfai;

    invoke-direct {v1, p1, p2}, Lfai;-><init>(II)V

    invoke-virtual {v0, v1}, Lfak;->b(Ljava/util/function/Consumer;)V

    invoke-super {p0, p1, p2, p3}, Lei;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public final onAttachedToWindow()V
    .locals 2

    iget-object v0, p0, Lfbc;->x:Lezx;

    sget-object v1, Lezq;->a:Lezq;

    invoke-virtual {v0, v1}, Lfak;->d(Lfaj;)V

    iput-object v1, v0, Lezx;->d:Lfaj;

    invoke-super {p0}, Lei;->onAttachedToWindow()V

    return-void
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    iget-object v0, p0, Lfbc;->x:Lezx;

    new-instance v1, Ldcc;

    const/16 v2, 0xe

    invoke-direct {v1, p1, v2}, Ldcc;-><init>(Landroid/content/res/Configuration;I)V

    invoke-virtual {v0, v1}, Lfak;->b(Ljava/util/function/Consumer;)V

    invoke-super {p0, p1}, Lei;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public final onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    iget-object p1, p0, Lfbc;->x:Lezx;

    new-instance v0, Lezv;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lezv;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lfak;->a(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lfbc;->y:Lgoz;

    invoke-virtual {v0}, Lgoz;->f()V

    iget-object v0, p0, Lfbc;->x:Lezx;

    new-instance v1, Lezw;

    const/4 v2, 0x2

    invoke-direct {v1, v0, p1, v2}, Lezw;-><init>(Lfak;Landroid/os/Bundle;I)V

    invoke-virtual {v0, v1}, Lfak;->d(Lfaj;)V

    iput-object v1, v0, Lfak;->h:Lfaj;

    invoke-super {p0, p1}, Lei;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lfbc;->y:Lgoz;

    invoke-virtual {p1}, Lgoz;->e()V

    iget-object p1, p0, Lpl;->g:Lpr;

    new-instance v0, Lfbb;

    invoke-direct {v0, p0}, Lfbb;-><init>(Lfbc;)V

    invoke-virtual {p1, v0}, Lpr;->a(Lpn;)Lph;

    return-void
.end method

.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0

    invoke-super {p0, p1, p2, p3}, Lei;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    iget-object p1, p0, Lfbc;->x:Lezx;

    new-instance p2, Lfah;

    const/4 p3, 0x0

    invoke-direct {p2, p3}, Lfah;-><init>(I)V

    invoke-virtual {p1, p2}, Lfak;->b(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    iget-object v0, p0, Lfbc;->x:Lezx;

    new-instance v1, Lezv;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lezv;-><init>(I)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfak;->a(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lei;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lfbc;->y:Lgoz;

    invoke-virtual {v0}, Lgoz;->h()V

    iget-object v0, p0, Lfbc;->x:Lezx;

    iget-object v1, v0, Lezx;->b:Lfaj;

    invoke-virtual {v0, v1}, Lfak;->c(Lfaj;)V

    iget-object v1, v0, Lezx;->a:Lfaj;

    invoke-virtual {v0, v1}, Lfak;->c(Lfaj;)V

    iget-object v1, v0, Lfak;->k:Lfaj;

    invoke-virtual {v0, v1}, Lfak;->c(Lfaj;)V

    iget-object v1, v0, Lfak;->h:Lfaj;

    invoke-virtual {v0, v1}, Lfak;->c(Lfaj;)V

    sget-object v1, Lfah;->a:Lfah;

    invoke-virtual {v0, v1}, Lfak;->b(Ljava/util/function/Consumer;)V

    invoke-super {p0}, Lei;->onDestroy()V

    iget-object v0, p0, Lfbc;->y:Lgoz;

    invoke-virtual {v0}, Lgoz;->g()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    iget-object v0, p0, Lfbc;->x:Lezx;

    iget-object v1, v0, Lezx;->d:Lfaj;

    invoke-virtual {v0, v1}, Lfak;->c(Lfaj;)V

    sget-object v1, Lcot;->n:Lcot;

    invoke-virtual {v0, v1}, Lfak;->b(Ljava/util/function/Consumer;)V

    invoke-super {p0}, Lei;->onDetachedFromWindow()V

    return-void
.end method

.method public final onGetDirectActions(Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 1

    iget-object p1, p0, Lfbc;->x:Lezx;

    new-instance p2, Lcot;

    const/16 v0, 0x14

    invoke-direct {p2, v0}, Lcot;-><init>(I)V

    invoke-virtual {p1, p2}, Lfak;->b(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lfbc;->x:Lezx;

    new-instance v1, Lezt;

    invoke-direct {v1, p1, p2}, Lezt;-><init>(ILandroid/view/KeyEvent;)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfak;->a(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lei;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    iget-object v0, p0, Lfbc;->x:Lezx;

    new-instance v1, Lezu;

    invoke-direct {v1, p1}, Lezu;-><init>(I)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfak;->a(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1, p2}, Lei;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public final onLowMemory()V
    .locals 2

    iget-object v0, p0, Lfbc;->x:Lezx;

    sget-object v1, Lfah;->b:Lfah;

    invoke-virtual {v0, v1}, Lfak;->b(Ljava/util/function/Consumer;)V

    invoke-super {p0}, Lei;->onLowMemory()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lfbc;->x:Lezx;

    new-instance v1, Ldcc;

    const/16 v2, 0xd

    invoke-direct {v1, p1, v2}, Ldcc;-><init>(Landroid/content/Intent;I)V

    invoke-virtual {v0, v1}, Lfak;->b(Ljava/util/function/Consumer;)V

    invoke-super {p0, p1}, Lei;->onNewIntent(Landroid/content/Intent;)V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    iget-object v0, p0, Lfbc;->x:Lezx;

    new-instance v1, Lezv;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lezv;-><init>(I)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfak;->a(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lei;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method protected onPause()V
    .locals 2

    iget-object v0, p0, Lfbc;->y:Lgoz;

    invoke-virtual {v0}, Lgoz;->j()V

    iget-object v0, p0, Lfbc;->x:Lezx;

    iget-object v1, v0, Lezx;->c:Lfaj;

    invoke-virtual {v0, v1}, Lfak;->c(Lfaj;)V

    iget-object v1, v0, Lfak;->j:Lfaj;

    invoke-virtual {v0, v1}, Lfak;->c(Lfaj;)V

    sget-object v1, Lfah;->d:Lfah;

    invoke-virtual {v0, v1}, Lfak;->b(Ljava/util/function/Consumer;)V

    invoke-super {p0}, Lei;->onPause()V

    iget-object v0, p0, Lfbc;->y:Lgoz;

    invoke-virtual {v0}, Lgoz;->i()V

    return-void
.end method

.method public final onPerformDirectAction(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;Ljava/util/function/Consumer;)V
    .locals 0

    iget-object p1, p0, Lfbc;->x:Lezx;

    new-instance p2, Lcot;

    const/16 p3, 0x10

    invoke-direct {p2, p3}, Lcot;-><init>(I)V

    invoke-virtual {p1, p2}, Lfak;->b(Ljava/util/function/Consumer;)V

    return-void
.end method

.method protected final onPostCreate(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lfbc;->x:Lezx;

    new-instance v1, Lezw;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lezw;-><init>(Lezx;Landroid/os/Bundle;I)V

    invoke-virtual {v0, v1}, Lfak;->d(Lfaj;)V

    iput-object v1, v0, Lezx;->a:Lfaj;

    invoke-super {p0, p1}, Lei;->onPostCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected final onPostResume()V
    .locals 2

    iget-object v0, p0, Lfbc;->x:Lezx;

    sget-object v1, Lezq;->b:Lezq;

    invoke-virtual {v0, v1}, Lfak;->d(Lfaj;)V

    iput-object v1, v0, Lezx;->c:Lfaj;

    invoke-super {p0}, Lei;->onPostResume()V

    return-void
.end method

.method public final onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 3

    iget-object v0, p0, Lfbc;->x:Lezx;

    new-instance v1, Lezv;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lezv;-><init>(I)V

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lfak;->a(Ljava/util/function/BiFunction;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    invoke-super {p0, p1}, Lei;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 2

    iget-object v0, p0, Lfbc;->x:Lezx;

    new-instance v1, Lezs;

    invoke-direct {v1, p1, p2, p3}, Lezs;-><init>(I[Ljava/lang/String;[I)V

    invoke-virtual {v0, v1}, Lfak;->b(Ljava/util/function/Consumer;)V

    invoke-super {p0, p1, p2, p3}, Lei;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method protected final onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    iget-object v0, p0, Lfbc;->x:Lezx;

    new-instance v1, Lezw;

    const/4 v2, 0x1

    invoke-direct {v1, v0, p1, v2}, Lezw;-><init>(Lezx;Landroid/os/Bundle;I)V

    invoke-virtual {v0, v1}, Lfak;->d(Lfaj;)V

    iput-object v1, v0, Lezx;->b:Lfaj;

    invoke-super {p0, p1}, Lei;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onResume()V
    .locals 2

    iget-object v0, p0, Lfbc;->y:Lgoz;

    invoke-virtual {v0}, Lgoz;->l()V

    iget-object v0, p0, Lfbc;->x:Lezx;

    sget-object v1, Lezq;->f:Lezq;

    invoke-virtual {v0, v1}, Lfak;->d(Lfaj;)V

    iput-object v1, v0, Lfak;->j:Lfaj;

    invoke-super {p0}, Lei;->onResume()V

    iget-object v0, p0, Lfbc;->y:Lgoz;

    invoke-virtual {v0}, Lgoz;->k()V

    return-void
.end method

.method protected final onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lfbc;->x:Lezx;

    new-instance v1, Lfag;

    invoke-direct {v1, p1}, Lfag;-><init>(Landroid/os/Bundle;)V

    invoke-virtual {v0, v1}, Lfak;->d(Lfaj;)V

    iput-object v1, v0, Lfak;->k:Lfaj;

    invoke-super {p0, p1}, Lei;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .locals 2

    iget-object v0, p0, Lfbc;->y:Lgoz;

    invoke-virtual {v0}, Lgoz;->n()V

    iget-object v0, p0, Lfbc;->x:Lezx;

    sget-object v1, Lezq;->g:Lezq;

    invoke-virtual {v0, v1}, Lfak;->d(Lfaj;)V

    iput-object v1, v0, Lfak;->i:Lfaj;

    invoke-super {p0}, Lei;->onStart()V

    iget-object v0, p0, Lfbc;->y:Lgoz;

    invoke-virtual {v0}, Lgoz;->m()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    iget-object v0, p0, Lfbc;->y:Lgoz;

    invoke-virtual {v0}, Lgoz;->p()V

    iget-object v0, p0, Lfbc;->x:Lezx;

    iget-object v1, v0, Lfak;->i:Lfaj;

    invoke-virtual {v0, v1}, Lfak;->c(Lfaj;)V

    sget-object v1, Lfah;->c:Lfah;

    invoke-virtual {v0, v1}, Lfak;->b(Ljava/util/function/Consumer;)V

    invoke-super {p0}, Lei;->onStop()V

    iget-object v0, p0, Lfbc;->y:Lgoz;

    invoke-virtual {v0}, Lgoz;->o()V

    return-void
.end method

.method public final onUserInteraction()V
    .locals 2

    iget-object v0, p0, Lfbc;->x:Lezx;

    sget-object v1, Lcot;->m:Lcot;

    invoke-virtual {v0, v1}, Lfak;->b(Ljava/util/function/Consumer;)V

    invoke-super {p0}, Lei;->onUserInteraction()V

    return-void
.end method

.method protected final onUserLeaveHint()V
    .locals 2

    iget-object v0, p0, Lfbc;->x:Lezx;

    sget-object v1, Lcot;->p:Lcot;

    invoke-virtual {v0, v1}, Lfak;->b(Ljava/util/function/Consumer;)V

    invoke-super {p0}, Lei;->onUserLeaveHint()V

    return-void
.end method

.method public final onWindowFocusChanged(Z)V
    .locals 3

    iget-object v0, p0, Lfbc;->x:Lezx;

    new-instance v1, Lhgk;

    const/4 v2, 0x1

    invoke-direct {v1, p1, v2}, Lhgk;-><init>(ZI)V

    invoke-virtual {v0, v1}, Lfak;->b(Ljava/util/function/Consumer;)V

    invoke-super {p0, p1}, Lei;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Lfbc;->o()V

    invoke-super {p0, p1}, Lei;->startActivity(Landroid/content/Intent;)V

    invoke-direct {p0}, Lfbc;->n()V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lfbc;->o()V

    invoke-super {p0, p1, p2}, Lei;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    invoke-direct {p0}, Lfbc;->n()V

    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Lfbc;->o()V

    invoke-super {p0, p1, p2}, Lei;->startActivityForResult(Landroid/content/Intent;I)V

    invoke-direct {p0}, Lfbc;->n()V

    return-void
.end method

.method public final startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lfbc;->o()V

    invoke-super {p0, p1, p2, p3}, Lei;->startActivityForResult(Landroid/content/Intent;ILandroid/os/Bundle;)V

    invoke-direct {p0}, Lfbc;->n()V

    return-void
.end method

.method public final startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V
    .locals 0

    invoke-direct {p0}, Lfbc;->o()V

    invoke-super {p0, p1, p2, p3}, Lei;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;I)V

    invoke-direct {p0}, Lfbc;->n()V

    return-void
.end method

.method public final startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Lfbc;->o()V

    invoke-super {p0, p1, p2, p3, p4}, Lei;->startActivityFromFragment(Landroid/app/Fragment;Landroid/content/Intent;ILandroid/os/Bundle;)V

    invoke-direct {p0}, Lfbc;->n()V

    return-void
.end method
