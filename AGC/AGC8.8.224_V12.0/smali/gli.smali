.class public final Lgli;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lkeb;

.field public final synthetic b:Lgue;


# direct methods
.method public constructor <init>(Lgue;Lkeb;[B)V
    .locals 0

    iput-object p1, p0, Lgli;->b:Lgue;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lgli;->a:Lkeb;

    return-void
.end method


# virtual methods
.method public final a()Lkfj;
    .locals 2

    iget-object v0, p0, Lgli;->a:Lkeb;

    invoke-interface {v0}, Lkeb;->j()Lkgq;

    move-result-object v0

    iget-object v0, v0, Lkgq;->c:Lmwn;

    iget-object v1, p0, Lgli;->b:Lgue;

    iget-object v1, v1, Lgue;->k:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, p0, Lgli;->b:Lgue;

    iget-object v0, v0, Lgue;->k:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lgli;->b:Lgue;

    iget-object v1, v1, Lgue;->f:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lgli;->b:Lgue;

    iget-object v0, v0, Lgue;->f:Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lgli;->b:Lgue;

    iget-object v1, v1, Lgue;->g:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lgli;->b:Lgue;

    iget-object v0, v0, Lgue;->g:Ljava/lang/Object;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lgli;->b:Lgue;

    iget-object v1, v1, Lgue;->j:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lgli;->b:Lgue;

    iget-object v0, v0, Lgue;->j:Ljava/lang/Object;

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lgli;->b:Lgue;

    iget-object v1, v1, Lgue;->i:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lgli;->b:Lgue;

    iget-object v0, v0, Lgue;->i:Ljava/lang/Object;

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lgli;->b:Lgue;

    iget-object v1, v1, Lgue;->l:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lgli;->b:Lgue;

    iget-object v0, v0, Lgue;->l:Ljava/lang/Object;

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object v0
.end method

.method public final b()Lkfj;
    .locals 2

    iget-object v0, p0, Lgli;->b:Lgue;

    iget-object v1, v0, Lgue;->f:Ljava/lang/Object;

    if-nez v1, :cond_0

    iget-object v1, v0, Lgue;->g:Ljava/lang/Object;

    if-eqz v1, :cond_4

    :cond_0
    iget-object v1, v0, Lgue;->j:Ljava/lang/Object;

    if-nez v1, :cond_1

    iget-object v0, v0, Lgue;->l:Ljava/lang/Object;

    if-eqz v0, :cond_4

    :cond_1
    iget-object v0, p0, Lgli;->a:Lkeb;

    invoke-interface {v0}, Lkeb;->j()Lkgq;

    move-result-object v0

    iget-object v0, v0, Lkgq;->c:Lmwn;

    iget-object v1, p0, Lgli;->b:Lgue;

    iget-object v1, v1, Lgue;->f:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lgli;->b:Lgue;

    iget-object v1, v1, Lgue;->g:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v1, p0, Lgli;->b:Lgue;

    iget-object v1, v1, Lgue;->j:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v0, p0, Lgli;->b:Lgue;

    iget-object v0, v0, Lgue;->j:Ljava/lang/Object;

    return-object v0

    :cond_3
    iget-object v1, p0, Lgli;->b:Lgue;

    iget-object v1, v1, Lgue;->l:Ljava/lang/Object;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lgli;->b:Lgue;

    iget-object v0, v0, Lgue;->l:Ljava/lang/Object;

    return-object v0

    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Lkfj;)Lkpb;
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lgli;->a:Lkeb;

    invoke-interface {v1, p1}, Lkeb;->d(Lkfj;)Lkpb;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    return-object v0
.end method

.method public final d()Lkpb;
    .locals 1

    iget-object v0, p0, Lgli;->b:Lgue;

    iget-object v0, v0, Lgue;->c:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lgli;->c(Lkfj;)Lkpb;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lgli;->b:Lgue;

    iget-object v0, v0, Lgue;->b:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lgli;->c(Lkfj;)Lkpb;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lkpb;
    .locals 1

    invoke-virtual {p0}, Lgli;->a()Lkfj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgli;->c(Lkfj;)Lkpb;

    move-result-object v0

    return-object v0
.end method

.method public final f()Lkpb;
    .locals 1

    invoke-virtual {p0}, Lgli;->b()Lkfj;

    move-result-object v0

    invoke-virtual {p0, v0}, Lgli;->c(Lkfj;)Lkpb;

    move-result-object v0

    return-object v0
.end method

.method public final g()Lkpb;
    .locals 1

    iget-object v0, p0, Lgli;->b:Lgue;

    iget-object v0, v0, Lgue;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lgli;->c(Lkfj;)Lkpb;

    move-result-object v0

    return-object v0
.end method

.method public final h()Z
    .locals 1

    invoke-virtual {p0}, Lgli;->b()Lkfj;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
