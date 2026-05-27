.class public Lpm;
.super Landroid/app/Dialog;

# interfaces
.implements Lakv;
.implements Lps;
.implements Laqn;


# instance fields
.field private final a:Lpr;

.field private b:Laks;

.field private final c:Lbza;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    invoke-static {p0}, Laff;->d(Laqn;)Lbza;

    move-result-object p1

    iput-object p1, p0, Lpm;->c:Lbza;

    new-instance p1, Lpr;

    new-instance p2, Lnk;

    const/16 v0, 0x8

    invoke-direct {p2, p0, v0}, Lnk;-><init>(Lpm;I)V

    invoke-direct {p1, p2}, Lpr;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lpm;->a:Lpr;

    return-void
.end method

.method private final a()V
    .locals 1

    invoke-virtual {p0}, Lpm;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Laci;->c(Landroid/view/View;Lakv;)V

    invoke-virtual {p0}, Lpm;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lgg;->c(Landroid/view/View;Lps;)V

    invoke-virtual {p0}, Lpm;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, p0}, Lafh;->A(Landroid/view/View;Laqn;)V

    return-void
.end method

.method private final b()Laks;
    .locals 1

    iget-object v0, p0, Lpm;->b:Laks;

    if-nez v0, :cond_0

    new-instance v0, Laks;

    invoke-direct {v0, p0}, Laks;-><init>(Lakv;)V

    iput-object v0, p0, Lpm;->b:Laks;

    :cond_0
    return-object v0
.end method

.method public static final e(Lpm;)V
    .locals 0

    invoke-super {p0}, Landroid/app/Dialog;->onBackPressed()V

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lpm;->a()V

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public final getLifecycle()Laks;
    .locals 1

    invoke-direct {p0}, Lpm;->b()Laks;

    move-result-object v0

    return-object v0
.end method

.method public final getSavedStateRegistry()Laqm;
    .locals 1

    iget-object v0, p0, Lpm;->c:Lbza;

    iget-object v0, v0, Lbza;->b:Ljava/lang/Object;

    check-cast v0, Laqm;

    return-object v0
.end method

.method public final onBackPressed()V
    .locals 1

    iget-object v0, p0, Lpm;->a:Lpr;

    invoke-virtual {v0}, Lpr;->b()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lpm;->a:Lpr;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x21

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lpm;->getOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v0, v1}, Lpr;->c(Landroid/window/OnBackInvokedDispatcher;)V

    iget-object v0, p0, Lpm;->c:Lbza;

    invoke-virtual {v0, p1}, Lbza;->h(Landroid/os/Bundle;)V

    :goto_0
    invoke-direct {p0}, Lpm;->b()Laks;

    move-result-object p1

    sget-object v0, Lakq;->ON_CREATE:Lakq;

    invoke-virtual {p1, v0}, Laks;->b(Lakq;)V

    return-void
.end method

.method public final onSaveInstanceState()Landroid/os/Bundle;
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, p0, Lpm;->c:Lbza;

    invoke-virtual {v1, v0}, Lbza;->i(Landroid/os/Bundle;)V

    return-object v0
.end method

.method protected onStart()V
    .locals 2

    invoke-super {p0}, Landroid/app/Dialog;->onStart()V

    invoke-direct {p0}, Lpm;->b()Laks;

    move-result-object v0

    sget-object v1, Lakq;->ON_RESUME:Lakq;

    invoke-virtual {v0, v1}, Laks;->b(Lakq;)V

    return-void
.end method

.method protected onStop()V
    .locals 2

    invoke-direct {p0}, Lpm;->b()Laks;

    move-result-object v0

    sget-object v1, Lakq;->ON_DESTROY:Lakq;

    invoke-virtual {v0, v1}, Laks;->b(Lakq;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lpm;->b:Laks;

    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    return-void
.end method

.method public setContentView(I)V
    .locals 0

    invoke-direct {p0}, Lpm;->a()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lpm;->a()V

    invoke-super {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Lpm;->a()V

    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
