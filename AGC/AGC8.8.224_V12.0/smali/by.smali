.class final Lby;
.super Lce;

# interfaces
.implements Laca;
.implements Lacb;
.implements Ldi;
.implements Ldj;
.implements Lalw;
.implements Lps;
.implements Lqb;
.implements Laqn;
.implements Lct;
.implements Laep;


# instance fields
.field final synthetic a:Lbz;


# direct methods
.method public constructor <init>(Lbz;)V
    .locals 1

    iput-object p1, p0, Lby;->a:Lbz;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1, p1, v0}, Lce;-><init>(Landroid/app/Activity;Landroid/content/Context;Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public final a(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lby;->a:Lbz;

    invoke-virtual {v0, p1}, Lbz;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public final b()Z
    .locals 1

    iget-object v0, p0, Lby;->a:Lbz;

    invoke-virtual {v0}, Lbz;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final c()Lqa;
    .locals 1

    iget-object v0, p0, Lby;->a:Lbz;

    iget-object v0, v0, Lpl;->h:Lqa;

    return-object v0
.end method

.method public final d(Laea;)V
    .locals 1

    iget-object v0, p0, Lby;->a:Lbz;

    invoke-virtual {v0, p1}, Lpl;->d(Laea;)V

    return-void
.end method

.method public final e()V
    .locals 1

    iget-object v0, p0, Lby;->a:Lbz;

    invoke-virtual {v0}, Lbz;->invalidateOptionsMenu()V

    return-void
.end method

.method public final f(Laea;)V
    .locals 1

    iget-object v0, p0, Lby;->a:Lbz;

    invoke-virtual {v0, p1}, Lpl;->f(Laea;)V

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final getLifecycle()Laks;
    .locals 1

    iget-object v0, p0, Lby;->a:Lbz;

    iget-object v0, v0, Lbz;->d:Laks;

    return-object v0
.end method

.method public final getSavedStateRegistry()Laqm;
    .locals 1

    iget-object v0, p0, Lby;->a:Lbz;

    invoke-virtual {v0}, Lpl;->getSavedStateRegistry()Laqm;

    move-result-object v0

    return-object v0
.end method

.method public final getViewModelStore$ar$class_merging$ar$class_merging()Lbkb;
    .locals 1

    iget-object v0, p0, Lby;->a:Lbz;

    invoke-virtual {v0}, Lpl;->getViewModelStore$ar$class_merging$ar$class_merging()Lbkb;

    move-result-object v0

    return-object v0
.end method
