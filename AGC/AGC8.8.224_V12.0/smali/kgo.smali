.class public final Lkgo;
.super Ljava/lang/Object;

# interfaces
.implements Lker;


# instance fields
.field public final a:Lkhd;

.field public final b:Lkbc;

.field public final c:Ldja;


# direct methods
.method public constructor <init>(Ldja;Lkbc;Lkhd;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkgo;->c:Ldja;

    iput-object p2, p0, Lkgo;->b:Lkbc;

    iput-object p3, p0, Lkgo;->a:Lkhd;

    return-void
.end method

.method public static final k(Ljava/util/List;)V
    .locals 2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkgs;

    invoke-virtual {v1}, Lkgs;->g()V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static final l(Ljava/util/List;)Ljava/util/List;
    .locals 3

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfz;

    instance-of v2, v1, Lkfz;

    invoke-static {v2}, Lmoz;->e(Z)V

    iget-object v1, v1, Lkfz;->c:Ljava/util/Set;

    invoke-static {v1}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public final a()Lkdz;
    .locals 1

    iget-object v0, p0, Lkgo;->a:Lkhd;

    invoke-virtual {v0}, Lkhd;->a()Lkdz;

    move-result-object v0

    return-object v0
.end method

.method public final b()Lkem;
    .locals 1

    iget-object v0, p0, Lkgo;->a:Lkhd;

    invoke-virtual {v0}, Lkhd;->b()Lkfy;

    move-result-object v0

    return-object v0
.end method

.method public final c()Lkem;
    .locals 1

    iget-object v0, p0, Lkgo;->a:Lkhd;

    invoke-virtual {v0}, Lkhd;->b()Lkfy;

    move-result-object v0

    return-object v0
.end method

.method public final close()V
    .locals 1

    iget-object v0, p0, Lkgo;->a:Lkhd;

    invoke-virtual {v0}, Lkhd;->close()V

    return-void
.end method

.method public final d(Lkea;)Lnou;
    .locals 2

    iget-object v0, p0, Lkgo;->a:Lkhd;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lkhd;->e(Lkea;Z)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final e(Ljava/util/List;)Ljava/util/List;
    .locals 10

    iget-object v0, p0, Lkgo;->b:Lkbc;

    const-string v1, "FrameServerSession#submit(burst)"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-static {p1}, Lkgo;->l(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lkgo;->b:Lkbc;

    const-string v3, "allocate"

    invoke-interface {v2, v3}, Lkbc;->e(Ljava/lang/String;)V

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    iget-object v3, p0, Lkgo;->c:Ldja;

    invoke-virtual {v3, v2}, Ldja;->v(Ljava/util/Set;)Lnou;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v2, 0x1

    :try_start_0
    iget-object v3, p0, Lkgo;->b:Lkbc;

    const-string v4, "await"

    invoke-interface {v3, v4}, Lkbc;->g(Ljava/lang/String;)V

    invoke-static {v0}, Lnsy;->x(Ljava/lang/Iterable;)Lnou;

    move-result-object v3

    invoke-interface {v3}, Lnou;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lkdf; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x0

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    goto :goto_1

    :cond_1
    const/4 v4, 0x0

    :goto_1
    invoke-static {v4}, Lmoz;->p(Z)V

    iget-object v4, p0, Lkgo;->b:Lkbc;

    const-string v5, "build_results"

    invoke-interface {v4, v5}, Lkbc;->g(Ljava/lang/String;)V

    new-instance v4, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    :goto_2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    if-ge v6, v5, :cond_3

    invoke-interface {p1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkfz;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Set;

    invoke-interface {v5}, Ljava/util/Set;->size()I

    move-result v7

    invoke-static {v7}, Lmwa;->j(I)Lmvw;

    move-result-object v7

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lkgs;

    invoke-static {v8}, Lkhn;->l(Lkgs;)Lkeb;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v8, v8, Lkgs;->c:Lkgq;

    invoke-virtual {v7, v8, v9}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    new-instance v5, Lkgn;

    invoke-virtual {v7}, Lmvw;->b()Lmwa;

    move-result-object v7

    invoke-direct {v5, v7}, Lkgn;-><init>(Lmwa;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lkdf; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    :cond_3
    :try_start_2
    iget-object v1, p0, Lkgo;->b:Lkbc;

    const-string v5, "submit"

    invoke-interface {v1, v5}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v1, p0, Lkgo;->a:Lkhd;

    invoke-virtual {v1, p1, v3}, Lkhd;->h(Ljava/util/List;Ljava/util/List;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lkdf; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lkgo;->b:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    iget-object p1, p0, Lkgo;->b:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-object v4

    :catch_0
    move-exception p1

    goto :goto_4

    :catch_1
    move-exception p1

    goto :goto_4

    :catch_2
    move-exception p1

    :goto_4
    move-object v1, v4

    goto :goto_6

    :catch_3
    move-exception p1

    goto :goto_6

    :catch_4
    move-exception p1

    goto :goto_6

    :catch_5
    move-exception p1

    goto :goto_6

    :catchall_0
    move-exception p1

    goto :goto_a

    :catch_6
    move-exception p1

    goto :goto_5

    :catch_7
    move-exception p1

    goto :goto_5

    :catch_8
    move-exception p1

    :goto_5
    const/4 v3, 0x0

    :goto_6
    :try_start_3
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnou;

    invoke-interface {v4, v2}, Lnou;->cancel(Z)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Lnou;->isDone()Z

    move-result v5

    if-eqz v5, :cond_4

    :cond_5
    invoke-static {v4}, Ljvd;->r(Lnou;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Set;

    if-eqz v4, :cond_4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkgs;

    invoke-virtual {v5}, Lkgs;->g()V

    goto :goto_7

    :cond_6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkgn;

    invoke-virtual {v1}, Lkgn;->close()V

    goto :goto_8

    :cond_7
    if-nez v3, :cond_8

    goto :goto_9

    :cond_8
    invoke-static {v3}, Lkgo;->k(Ljava/util/List;)V

    :goto_9
    new-instance v0, Lkdf;

    invoke-direct {v0, p1}, Lkdf;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_a
    iget-object v0, p0, Lkgo;->b:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, p0, Lkgo;->b:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    goto :goto_c

    :goto_b
    throw p1

    :goto_c
    goto :goto_b
.end method

.method public final f(Lkfz;)Lkgn;
    .locals 8

    iget-object v0, p0, Lkgo;->b:Lkbc;

    const-string v1, "FrameServerSession#submit(single)"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lkgo;->b:Lkbc;

    const-string v1, "allocate"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lmoz;->e(Z)V

    iget-object v1, p1, Lkfz;->c:Ljava/util/Set;

    iget-object v2, p0, Lkgo;->c:Ldja;

    invoke-virtual {v2, v1}, Ldja;->v(Ljava/util/Set;)Lnou;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lkgo;->b:Lkbc;

    const-string v4, "await"

    invoke-interface {v3, v4}, Lkbc;->g(Ljava/lang/String;)V

    invoke-interface {v1}, Lnou;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Set;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lkdf; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v4

    invoke-static {v4}, Lmwa;->j(I)Lmvw;

    move-result-object v4

    iget-object v5, p0, Lkgo;->b:Lkbc;

    const-string v6, "build_results"

    invoke-interface {v5, v6}, Lkbc;->g(Ljava/lang/String;)V

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkgs;

    invoke-static {v6}, Lkhn;->l(Lkgs;)Lkeb;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v6, Lkgs;->c:Lkgq;

    invoke-virtual {v4, v6, v7}, Lmvw;->e(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    new-instance v5, Lkgn;

    invoke-virtual {v4}, Lmvw;->b()Lmwa;

    move-result-object v4

    invoke-direct {v5, v4}, Lkgn;-><init>(Lmwa;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Lkdf; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, p0, Lkgo;->b:Lkbc;

    const-string v4, "submit"

    invoke-interface {v2, v4}, Lkbc;->g(Ljava/lang/String;)V

    iget-object v2, p0, Lkgo;->a:Lkhd;

    invoke-virtual {v2, p1, v3}, Lkhd;->j(Lkfz;Ljava/util/Set;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lkdf; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lkgo;->b:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    iget-object p1, p0, Lkgo;->b:Lkbc;

    invoke-interface {p1}, Lkbc;->f()V

    return-object v5

    :catch_0
    move-exception p1

    goto :goto_1

    :catch_1
    move-exception p1

    goto :goto_1

    :catch_2
    move-exception p1

    :goto_1
    move-object v2, v3

    goto :goto_4

    :catch_3
    move-exception p1

    goto :goto_2

    :catch_4
    move-exception p1

    goto :goto_2

    :catch_5
    move-exception p1

    :goto_2
    move-object v5, v2

    move-object v2, v3

    goto :goto_4

    :catchall_0
    move-exception p1

    goto :goto_7

    :catch_6
    move-exception p1

    goto :goto_3

    :catch_7
    move-exception p1

    goto :goto_3

    :catch_8
    move-exception p1

    :goto_3
    move-object v5, v2

    :goto_4
    :try_start_3
    invoke-interface {v1, v0}, Lnou;->cancel(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Lnou;->isDone()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {v1}, Ljvd;->r(Lnou;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkgs;

    invoke-virtual {v1}, Lkgs;->g()V

    goto :goto_5

    :cond_2
    if-eqz v5, :cond_3

    invoke-virtual {v5}, Lkgn;->close()V

    :cond_3
    if-eqz v2, :cond_4

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkgs;

    invoke-virtual {v1}, Lkgs;->g()V

    goto :goto_6

    :cond_4
    new-instance v0, Lkdf;

    invoke-direct {v0, p1}, Lkdf;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_7
    iget-object v0, p0, Lkgo;->b:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    iget-object v0, p0, Lkgo;->b:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    goto :goto_9

    :goto_8
    throw p1

    :goto_9
    goto :goto_8
.end method

.method public final g(Lkfz;)V
    .locals 1

    iget-object v0, p0, Lkgo;->a:Lkhd;

    invoke-virtual {v0, p1}, Lkhd;->i(Lkfz;)V

    return-void
.end method

.method public final h(Lkea;)Lnou;
    .locals 1

    iget-object v0, p0, Lkgo;->a:Lkhd;

    invoke-virtual {v0, p1}, Lkhd;->k(Lkea;)Lnou;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lkea;)V
    .locals 1

    iget-object v0, p0, Lkgo;->a:Lkhd;

    invoke-virtual {v0, p1}, Lkhd;->m(Lkea;)V

    return-void
.end method

.method public final j(Ljava/util/Set;Lkfg;)V
    .locals 1

    iget-object v0, p0, Lkgo;->a:Lkhd;

    invoke-virtual {v0, p1, p2}, Lkhd;->n(Ljava/util/Set;Lkfg;)V

    return-void
.end method
