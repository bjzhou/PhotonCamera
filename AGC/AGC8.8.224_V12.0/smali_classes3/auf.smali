.class public final Lauf;
.super Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback$-CC;


# instance fields
.field private final a:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback$-CC;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lauf;->a:Ljava/util/List;

    return-void
.end method

.method private static final e(Ljava/util/ConcurrentModificationException;)V
    .locals 2

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Adding and removing callbacks during dispatch to callbacks is not supported"

    invoke-direct {v0, v1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lauf;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback$-CC;

    invoke-virtual {v1, p1}, Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback$-CC;->a(I)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lauf;->e(Ljava/util/ConcurrentModificationException;)V

    return-void
.end method

.method public final b(IFI)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lauf;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback$-CC;

    invoke-virtual {v1, p1, p2, p3}, Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback$-CC;->b(IFI)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lauf;->e(Ljava/util/ConcurrentModificationException;)V

    return-void
.end method

.method public final c(I)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lauf;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback$-CC;

    invoke-virtual {v1, p1}, Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback$-CC;->c(I)V
    :try_end_0
    .catch Ljava/util/ConcurrentModificationException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_0
    return-void

    :catch_0
    move-exception p1

    invoke-static {p1}, Lauf;->e(Ljava/util/ConcurrentModificationException;)V

    return-void
.end method

.method public final d(Landroidx/wear/ambient/AmbientLifecycleObserverInterface$AmbientLifecycleCallback$-CC;)V
    .locals 1

    iget-object v0, p0, Lauf;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method
