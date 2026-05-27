.class public final Lgls;
.super Ljava/lang/Object;

# interfaces
.implements Lglt;


# instance fields
.field public a:Lkgq;

.field private final b:Ljuf;

.field private final c:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Map;Ljvs;Lbkb;[B[B[B[B)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p4, Ljuf;

    invoke-direct {p4}, Ljuf;-><init>()V

    iput-object p4, p0, Lgls;->b:Ljuf;

    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    iput-object p4, p0, Lgls;->c:Ljava/util/Set;

    new-instance p5, Ljava/util/HashMap;

    invoke-direct {p5}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p6

    invoke-interface {p6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p6

    :goto_0
    invoke-interface {p6}, Ljava/util/Iterator;->hasNext()Z

    move-result p7

    if-eqz p7, :cond_5

    invoke-interface {p6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p7

    check-cast p7, Lgml;

    invoke-interface {p1, p7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkgq;

    sget-object v1, Lgml;->d:Lgml;

    invoke-virtual {p7, v1}, Lgml;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object p7, Ldhg;->a:Ljava/lang/String;

    goto :goto_2

    :cond_0
    sget-object v1, Lgml;->f:Lgml;

    invoke-virtual {p7, v1}, Lgml;->equals(Ljava/lang/Object;)Z

    move-result p7

    if-eqz p7, :cond_1

    sget-object p7, Ldhg;->b:Ljava/lang/String;

    goto :goto_2

    :cond_1
    iget-object p7, v0, Lkgq;->c:Lmwn;

    invoke-interface {p7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p7

    :cond_2
    invoke-interface {p7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    invoke-interface {p7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkfj;

    invoke-interface {v1}, Lkfj;->a()I

    move-result v3

    const/16 v4, 0x25

    if-ne v3, v4, :cond_2

    invoke-interface {v1}, Lkfj;->c()Lkll;

    move-result-object p7

    goto :goto_1

    :cond_3
    move-object p7, v2

    :goto_1
    if-eqz p7, :cond_4

    iget-object p7, p7, Lkll;->a:Ljava/lang/String;

    goto :goto_2

    :cond_4
    move-object p7, v2

    :goto_2
    invoke-virtual {p7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {p5, p7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Lkgq;->a()Ljvs;

    move-result-object p7

    invoke-interface {p4, p7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_5
    iget-object p4, p0, Lgls;->b:Ljuf;

    new-instance p6, Lglr;

    invoke-direct {p6, p0, p5}, Lglr;-><init>(Lgls;Ljava/util/Map;)V

    sget-object p7, Lnnv;->a:Lnnv;

    invoke-interface {p2, p6, p7}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p2

    invoke-virtual {p4, p2}, Ljuf;->d(Lkad;)V

    invoke-interface {p5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    move-object v2, p4

    check-cast v2, Ljava/util/Map$Entry;

    iget-object p4, p0, Lgls;->b:Ljuf;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lkgq;

    invoke-virtual {p5}, Lkgq;->a()Ljvs;

    move-result-object p5

    new-instance p6, Lglh;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p6

    move-object v1, p3

    invoke-direct/range {v0 .. v7}, Lglh;-><init>(Lbkb;Ljava/util/Map$Entry;I[B[B[B[B)V

    sget-object p7, Lnnv;->a:Lnnv;

    invoke-interface {p5, p6, p7}, Ljvs;->a(Lkai;Ljava/util/concurrent/Executor;)Lkad;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljuf;->d(Lkad;)V

    goto :goto_3

    :cond_6
    sget-object p2, Lgml;->c:Lgml;

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkgq;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lgls;->a:Lkgq;

    return-void
.end method


# virtual methods
.method public final bridge synthetic a()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lgls;->d()Lkgq;

    move-result-object v0

    return-object v0
.end method

.method public final b()Ljvs;
    .locals 1

    iget-object v0, p0, Lgls;->c:Ljava/util/Set;

    invoke-static {v0}, Ljvw;->f(Ljava/util/Collection;)Ljvs;

    move-result-object v0

    return-object v0
.end method

.method public final c()V
    .locals 1

    iget-object v0, p0, Lgls;->b:Ljuf;

    invoke-virtual {v0}, Ljuf;->close()V

    return-void
.end method

.method public final declared-synchronized d()Lkgq;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lgls;->a:Lkgq;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
