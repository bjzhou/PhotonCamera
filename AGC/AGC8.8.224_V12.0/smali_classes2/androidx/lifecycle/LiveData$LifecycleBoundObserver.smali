.class public Landroidx/lifecycle/LiveData$LifecycleBoundObserver;
.super Lalb;

# interfaces
.implements Lakt;


# instance fields
.field final a:Lakv;

.field final synthetic b:Lalc;


# direct methods
.method public constructor <init>(Lalc;Lakv;Lale;)V
    .locals 0

    iput-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->b:Lalc;

    invoke-direct {p0, p1, p3}, Lalb;-><init>(Lalc;Lale;)V

    iput-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Lakv;

    return-void
.end method


# virtual methods
.method public final a(Lakv;Lakq;)V
    .locals 1

    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Lakv;

    invoke-interface {p1}, Lakv;->getLifecycle()Laks;

    move-result-object p1

    iget-object p1, p1, Laks;->a:Lakr;

    sget-object p2, Lakr;->a:Lakr;

    if-eq p1, p2, :cond_1

    const/4 p2, 0x0

    :goto_0
    if-eq p2, p1, :cond_0

    invoke-virtual {p0}, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->f()Z

    move-result p2

    invoke-virtual {p0, p2}, Lalb;->d(Z)V

    iget-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Lakv;

    invoke-interface {p2}, Lakv;->getLifecycle()Laks;

    move-result-object p2

    iget-object p2, p2, Laks;->a:Lakr;

    move-object v0, p2

    move-object p2, p1

    move-object p1, v0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->b:Lalc;

    iget-object p2, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->c:Lale;

    invoke-virtual {p1, p2}, Lalc;->f(Lale;)V

    return-void
.end method

.method public final b()V
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Lakv;

    invoke-interface {v0}, Lakv;->getLifecycle()Laks;

    move-result-object v0

    invoke-virtual {v0, p0}, Laks;->c(Laku;)V

    return-void
.end method

.method public final c(Lakv;)Z
    .locals 1

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Lakv;

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public final f()Z
    .locals 2

    iget-object v0, p0, Landroidx/lifecycle/LiveData$LifecycleBoundObserver;->a:Lakv;

    invoke-interface {v0}, Lakv;->getLifecycle()Laks;

    move-result-object v0

    iget-object v0, v0, Laks;->a:Lakr;

    sget-object v1, Lakr;->d:Lakr;

    invoke-virtual {v0, v1}, Lakr;->a(Lakr;)Z

    move-result v0

    return v0
.end method
