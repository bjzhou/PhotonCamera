.class public final Lcom/bumptech/glide/manager/LifecycleLifecycle;
.super Ljava/lang/Object;

# interfaces
.implements Lbyn;
.implements Laku;


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Laks;


# direct methods
.method public constructor <init>(Laks;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->a:Ljava/util/Set;

    iput-object p1, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->b:Laks;

    invoke-virtual {p1, p0}, Laks;->a(Laku;)V

    return-void
.end method


# virtual methods
.method public final a(Lbyo;)V
    .locals 2

    iget-object v0, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->b:Laks;

    iget-object v0, v0, Laks;->a:Lakr;

    sget-object v1, Lakr;->a:Lakr;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Lbyo;->g()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->b:Laks;

    iget-object v0, v0, Laks;->a:Lakr;

    sget-object v1, Lakr;->d:Lakr;

    invoke-virtual {v0, v1}, Lakr;->a(Lakr;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lbyo;->h()V

    return-void

    :cond_1
    invoke-interface {p1}, Lbyo;->i()V

    return-void
.end method

.method public final e(Lbyo;)V
    .locals 1

    iget-object v0, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->a:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onDestroy(Lakv;)V
    .locals 2
    .annotation runtime Lalf;
        a = .enum Lakq;->ON_DESTROY:Lakq;
    .end annotation

    iget-object v0, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->a:Ljava/util/Set;

    invoke-static {v0}, Lcaw;->f(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lbyo;

    invoke-interface {v1}, Lbyo;->g()V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Lakv;->getLifecycle()Laks;

    move-result-object p1

    invoke-virtual {p1, p0}, Laks;->c(Laku;)V

    return-void
.end method

.method public onStart(Lakv;)V
    .locals 1
    .annotation runtime Lalf;
        a = .enum Lakq;->ON_START:Lakq;
    .end annotation

    iget-object p1, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->a:Ljava/util/Set;

    invoke-static {p1}, Lcaw;->f(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyo;

    invoke-interface {v0}, Lbyo;->h()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onStop(Lakv;)V
    .locals 1
    .annotation runtime Lalf;
        a = .enum Lakq;->ON_STOP:Lakq;
    .end annotation

    iget-object p1, p0, Lcom/bumptech/glide/manager/LifecycleLifecycle;->a:Ljava/util/Set;

    invoke-static {p1}, Lcaw;->f(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbyo;

    invoke-interface {v0}, Lbyo;->i()V

    goto :goto_0

    :cond_0
    return-void
.end method
