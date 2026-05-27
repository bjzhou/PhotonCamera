.class final Lgx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Lhi;


# instance fields
.field public final a:Lgw;

.field public b:Leg;

.field c:Lgs;


# direct methods
.method public constructor <init>(Lgw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgx;->a:Lgw;

    return-void
.end method


# virtual methods
.method public final a(Lgw;Z)V
    .locals 0

    if-nez p2, :cond_0

    iget-object p2, p0, Lgx;->a:Lgw;

    if-ne p1, p2, :cond_1

    :cond_0
    iget-object p1, p0, Lgx;->b:Leg;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lff;->dismiss()V

    :cond_1
    return-void
.end method

.method public final b(Lgw;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object p1, p0, Lgx;->a:Lgw;

    iget-object v0, p0, Lgx;->c:Lgs;

    invoke-virtual {v0}, Lgs;->a()Landroid/widget/ListAdapter;

    move-result-object v0

    check-cast v0, Lgr;

    invoke-virtual {v0, p2}, Lgr;->a(I)Lgy;

    move-result-object p2

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Lgw;->z(Landroid/view/MenuItem;I)Z

    return-void
.end method

.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object p1, p0, Lgx;->c:Lgs;

    iget-object v0, p0, Lgx;->a:Lgw;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lgs;->c(Lgw;Z)V

    return-void
.end method

.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/16 v0, 0x52

    if-eq p2, v0, :cond_0

    const/4 v0, 0x4

    if-ne p2, v0, :cond_2

    const/4 p2, 0x4

    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object p1, p0, Lgx;->b:Leg;

    invoke-virtual {p1}, Leg;->getWindow()Landroid/view/Window;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object p1

    if-eqz p1, :cond_2

    invoke-virtual {p1, p3, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    return v1

    :cond_1
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lgx;->b:Leg;

    invoke-virtual {v0}, Leg;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/view/View;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p3}, Landroid/view/KeyEvent$DispatcherState;->isTracking(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p2, p0, Lgx;->a:Lgw;

    invoke-virtual {p2, v1}, Lgw;->i(Z)V

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return v1

    :cond_2
    iget-object p1, p0, Lgx;->a:Lgw;

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0}, Lgw;->performShortcut(ILandroid/view/KeyEvent;I)Z

    move-result p1

    return p1
.end method
