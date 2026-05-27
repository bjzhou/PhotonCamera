.class public final Lebv;
.super Ljava/lang/Object;

# interfaces
.implements Lebu;


# instance fields
.field private final a:Ljava/util/Set;

.field private final b:Lkbc;


# direct methods
.method public constructor <init>(Ljava/util/Set;Lkbc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-interface {p1}, Ljava/util/Set;->size()I

    iput-object p1, p0, Lebv;->a:Ljava/util/Set;

    iput-object p2, p0, Lebv;->b:Lkbc;

    return-void
.end method


# virtual methods
.method public final d(Lgxy;)V
    .locals 5

    iget-object v0, p0, Lebv;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lebu;

    iget-object v2, p0, Lebv;->b:Lkbc;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "abort#"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lebu;->d(Lgxy;)V

    iget-object v1, p0, Lebv;->b:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(Leea;Lkeb;)V
    .locals 6

    iget-object v0, p0, Lebv;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lebu;

    iget-object v2, p0, Lebv;->b:Lkbc;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "addPayload#"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {p2}, Lkeb;->a()Lkeb;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-interface {v1, p1, v2}, Lebu;->e(Leea;Lkeb;)V

    goto :goto_1

    :cond_0
    invoke-interface {p2}, Lkeb;->b()Lkeg;

    new-instance v2, Lear;

    invoke-interface {p2}, Lkeb;->b()Lkeg;

    move-result-object v3

    invoke-interface {p2}, Lkeb;->j()Lkgq;

    move-result-object v4

    invoke-interface {p2}, Lkeb;->c()Lkou;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lear;-><init>(Lkeg;Lkgq;Lkou;)V

    invoke-interface {v1, p1, v2}, Lebu;->e(Leea;Lkeb;)V

    :goto_1
    iget-object v1, p0, Lebv;->b:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public final f(Leea;Lcom/google/googlex/gcam/BurstSpec;Lkou;)V
    .locals 5

    iget-object v0, p0, Lebv;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lebu;

    iget-object v2, p0, Lebv;->b:Lkbc;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "begin#"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {v1, p1, p2, p3}, Lebu;->f(Leea;Lcom/google/googlex/gcam/BurstSpec;Lkou;)V

    iget-object v1, p0, Lebv;->b:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g(Lgxy;)V
    .locals 5

    iget-object v0, p0, Lebv;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lebu;

    iget-object v2, p0, Lebv;->b:Lkbc;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "start#"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lebu;->g(Lgxy;)V

    iget-object v1, p0, Lebv;->b:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final h(Leea;)V
    .locals 5

    iget-object v0, p0, Lebv;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lebu;

    iget-object v2, p0, Lebv;->b:Lkbc;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "endPayload#"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lebu;->h(Leea;)V

    iget-object v1, p0, Lebv;->b:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final i(Leea;)V
    .locals 5

    iget-object v0, p0, Lebv;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lebu;

    iget-object v2, p0, Lebv;->b:Lkbc;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "endZslPayload#"

    invoke-virtual {v4, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {v1, p1}, Lebu;->i(Leea;)V

    iget-object v1, p0, Lebv;->b:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    goto :goto_0

    :cond_0
    return-void
.end method
