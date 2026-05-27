.class public final Lkgs;
.super Ljava/lang/Object;

# interfaces
.implements Lkke;


# instance fields
.field public final a:Ljava/util/Set;

.field public b:Lkeg;

.field public final c:Lkgq;

.field private final d:Ljava/util/List;

.field private e:Lkou;

.field private f:I

.field private g:Z

.field private h:Z

.field private final i:Ligo;


# direct methods
.method public constructor <init>(Ligo;Lkgq;Ljava/util/Set;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p4, 0x0

    iput-object p4, p0, Lkgs;->e:Lkou;

    const/4 p5, 0x0

    iput-boolean p5, p0, Lkgs;->h:Z

    iput-object p4, p0, Lkgs;->b:Lkeg;

    iput-object p2, p0, Lkgs;->c:Lkgq;

    iput-object p3, p0, Lkgs;->a:Ljava/util/Set;

    iput-object p1, p0, Lkgs;->i:Ligo;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lkgs;->d:Ljava/util/List;

    return-void
.end method

.method public static p(Lkgd;Lkgq;Ljava/util/Set;)Lkgs;
    .locals 8

    invoke-static {p2}, Lmwn;->F(Ljava/util/Collection;)Lmwn;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result v0

    iget-object v1, p1, Lkgq;->c:Lmwn;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Llkj;->x(Z)V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkkf;

    iget-object v2, p1, Lkgq;->c:Lmwn;

    invoke-interface {v1}, Lkkf;->d()Lkfj;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v1}, Lkkf;->d()Lkfj;

    move-result-object v1

    const-string v3, "%s is not present in %s"

    invoke-static {v2, v3, v1, p1}, Llkj;->A(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    :cond_1
    new-instance v7, Lkgs;

    iget-object p0, p0, Lkgd;->a:Ljava/lang/Object;

    invoke-interface {p0}, Loiw;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Ligo;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, v7

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v6}, Lkgs;-><init>(Ligo;Lkgq;Ljava/util/Set;[B[B[B)V

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkkf;

    invoke-interface {p1, v7}, Lkkf;->i(Lkke;)V

    goto :goto_2

    :cond_2
    return-object v7
.end method

.method private final q()Z
    .locals 2

    iget-object v0, p0, Lkgs;->b:Lkeg;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lkgs;->g:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lkgs;->f:I

    iget-object v1, p0, Lkgs;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private final r(Lkfg;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lkgs;->b:Lkeg;

    if-nez v1, :cond_0

    iget-object v2, v0, Lkgs;->i:Ligo;

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v10}, Ligo;->v(Lkfg;ZZLkeg;ZLkou;ZZ)V

    return-void

    :cond_0
    iget-object v11, v0, Lkgs;->i:Ligo;

    iget-boolean v1, v0, Lkgs;->g:Z

    const/4 v2, 0x1

    xor-int/lit8 v16, v1, 0x1

    iget v1, v0, Lkgs;->f:I

    iget-object v3, v0, Lkgs;->a:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    const/16 v18, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    const/16 v18, 0x0

    :goto_0
    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    invoke-direct/range {p0 .. p0}, Lkgs;->q()Z

    move-result v1

    xor-int/lit8 v19, v1, 0x1

    move-object/from16 v12, p1

    invoke-virtual/range {v11 .. v19}, Ligo;->v(Lkfg;ZZLkeg;ZLkou;ZZ)V

    return-void
.end method


# virtual methods
.method public final a(Z)Lkad;
    .locals 8

    iget-object v0, p0, Lkgs;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    iget-object v0, p0, Lkgs;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lkgs;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkkf;

    if-eqz p1, :cond_1

    invoke-interface {v0}, Lkkf;->b()Lkad;

    move-result-object p1

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Lkkf;->a()Lkad;

    move-result-object p1

    :goto_0
    return-object p1

    :cond_2
    new-instance v0, Ljuf;

    invoke-direct {v0}, Ljuf;-><init>()V

    iget-object v3, p0, Lkgs;->a:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :cond_3
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lkkf;

    if-eqz p1, :cond_4

    invoke-interface {v6}, Lkkf;->b()Lkad;

    move-result-object v6

    goto :goto_2

    :cond_4
    invoke-interface {v6}, Lkkf;->a()Lkad;

    move-result-object v6

    :goto_2
    if-eqz v6, :cond_5

    const/4 v7, 0x1

    goto :goto_3

    :cond_5
    const/4 v7, 0x0

    :goto_3
    or-int/2addr v5, v7

    if-eqz v6, :cond_3

    invoke-virtual {v0, v6}, Ljuf;->d(Lkad;)V

    goto :goto_1

    :cond_6
    if-eqz v5, :cond_7

    return-object v0

    :cond_7
    invoke-virtual {v0}, Ljuf;->close()V

    return-object v1
.end method

.method public final b()Lkad;
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lkgs;->a(Z)Lkad;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized c(Lkfj;)Lkkf;
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkgs;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkkf;

    invoke-interface {v1}, Lkkf;->d()Lkfj;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    monitor-exit p0

    return-object v1

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown stream "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " requested for "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_1

    :goto_0
    throw p1

    :goto_1
    goto :goto_0
.end method

.method public final declared-synchronized d()Lkou;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkgs;->e:Lkou;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized e(Lkfj;)Lkpb;
    .locals 2

    monitor-enter p0

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget v0, p0, Lkgs;->f:I

    iget-object v1, p0, Lkgs;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-boolean v0, p0, Lkgs;->h:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p0, p1}, Lkgs;->c(Lkfj;)Lkkf;

    move-result-object p1

    invoke-interface {p1}, Lkkf;->h()Lkpb;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit p0

    return-object p1

    :cond_1
    :goto_0
    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    const/4 p1, 0x0

    return-object p1

    :catchall_0
    move-exception p1

    :try_start_4
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkgs;->h:Z

    if-nez v0, :cond_2

    invoke-direct {p0}, Lkgs;->q()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lkgs;->h:Z

    iget-object v0, p0, Lkgs;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfg;

    invoke-direct {p0, v1}, Lkgs;->r(Lkfg;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lkgs;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_2
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method final g()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lkgs;->a(Z)Lkad;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lkad;->close()V

    :cond_0
    return-void
.end method

.method public final declared-synchronized h()V
    .locals 11

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lkgs;->f:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lkgs;->f:I

    iget-object v2, p0, Lkgs;->a:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    if-gt v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v1}, Llkj;->x(Z)V

    iget v0, p0, Lkgs;->f:I

    iget-object v1, p0, Lkgs;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-ne v0, v1, :cond_2

    invoke-direct {p0}, Lkgs;->q()Z

    move-result v0

    iget-object v1, p0, Lkgs;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lkfg;

    iget-object v2, p0, Lkgs;->i:Ligo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v10, v0

    invoke-virtual/range {v2 .. v10}, Ligo;->v(Lkfg;ZZLkeg;ZLkou;ZZ)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v0, p0, Lkgs;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw v0

    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized i(Lkeg;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkgs;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    :try_start_1
    invoke-static {v0}, Llkj;->x(Z)V

    iget-object v1, p0, Lkgs;->b:Lkeg;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    new-array v3, v2, [Ljava/lang/Object;

    const-string v4, "FrameId should only be set once"

    invoke-static {v1, v4, v3}, Llkj;->z(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lkgs;->e:Lkou;

    if-nez v1, :cond_2

    const/4 v1, 0x1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    :goto_1
    new-array v2, v2, [Ljava/lang/Object;

    const-string v3, "setFrameId must ALWAYS come before setMetadata."

    invoke-static {v1, v3, v2}, Llkj;->z(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v1, p0, Lkgs;->g:Z

    xor-int/2addr v0, v1

    const-string v1, "Metadata was already set for frame %s!"

    invoke-static {v0, v1, p1}, Llkj;->y(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-object p1, p0, Lkgs;->b:Lkeg;

    iget-object v0, p0, Lkgs;->a:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkkf;

    invoke-interface {v1, p1}, Lkkf;->j(Lkeg;)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lkgs;->q()Z

    move-result p1

    iget-object v0, p0, Lkgs;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_3
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lkfg;

    iget-object v0, p0, Lkgs;->i:Ligo;

    const/4 v2, 0x0

    const/4 v3, 0x1

    iget-object v4, p0, Lkgs;->b:Lkeg;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move v8, p1

    invoke-virtual/range {v0 .. v8}, Ligo;->v(Lkfg;ZZLkeg;ZLkou;ZZ)V

    goto :goto_3

    :cond_4
    if-eqz p1, :cond_5

    iget-object p1, p0, Lkgs;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_5
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public final declared-synchronized j(Lkou;)V
    .locals 13

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkgs;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    :try_start_1
    iget-object v2, p0, Lkgs;->b:Lkeg;

    if-eqz v2, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    new-array v0, v0, [Ljava/lang/Object;

    const-string v3, "setFrameId must ALWAYS come before setMetadata."

    invoke-static {v2, v3, v0}, Llkj;->z(ZLjava/lang/String;[Ljava/lang/Object;)V

    iget-boolean v0, p0, Lkgs;->g:Z

    xor-int/2addr v0, v1

    iget-object v2, p0, Lkgs;->b:Lkeg;

    const-string v3, "Metadata was already set for frame %s!"

    invoke-static {v0, v3, v2}, Llkj;->y(ZLjava/lang/String;Ljava/lang/Object;)V

    iput-boolean v1, p0, Lkgs;->g:Z

    iput-object p1, p0, Lkgs;->e:Lkou;

    invoke-direct {p0}, Lkgs;->q()Z

    move-result p1

    iget-object v0, p0, Lkgs;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lkfg;

    iget-object v4, p0, Lkgs;->i:Ligo;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    iget-object v10, p0, Lkgs;->e:Lkou;

    const/4 v11, 0x0

    move v12, p1

    invoke-virtual/range {v4 .. v12}, Ligo;->v(Lkfg;ZZLkeg;ZLkou;ZZ)V

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_4

    iget-object p1, p0, Lkgs;->d:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final declared-synchronized k()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lkgs;->q()Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lkgs;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized l()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkgs;->b:Lkeg;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lkgs;->k()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized m()Z
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lkgs;->f:I

    iget-object v1, p0, Lkgs;->a:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    invoke-virtual {p0}, Lkgs;->k()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized n()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lkgs;->g:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lkgs;->k()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    monitor-exit p0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized o(Lkfg;)V
    .locals 10

    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lkgs;->q()Z

    move-result v8

    iget-boolean v0, p0, Lkgs;->h:Z

    if-eqz v0, :cond_1

    if-eqz v8, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lkgs;->r(Lkfg;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :goto_0
    if-nez v8, :cond_2

    :try_start_1
    iget-object v0, p0, Lkgs;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    iget-object v0, p0, Lkgs;->i:Ligo;

    iget-object v4, p0, Lkgs;->b:Lkeg;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v4, :cond_3

    const/4 v3, 0x1

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    iget-boolean v5, p0, Lkgs;->g:Z

    iget-object v6, p0, Lkgs;->e:Lkou;

    iget v7, p0, Lkgs;->f:I

    iget-object v9, p0, Lkgs;->a:Ljava/util/Set;

    invoke-interface {v9}, Ljava/util/Set;->size()I

    move-result v9

    if-ne v7, v9, :cond_4

    const/4 v7, 0x1

    goto :goto_2

    :cond_4
    const/4 v7, 0x0

    :goto_2
    const/4 v2, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Ligo;->v(Lkfg;ZZLkeg;ZLkou;ZZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized toString()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lkgs;->b:Lkeg;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-wide v0, v0, Lkeg;->c:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Frame-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
