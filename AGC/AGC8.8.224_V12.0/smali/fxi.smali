.class final Lfxi;
.super Ljava/lang/Object;

# interfaces
.implements Lfyy;


# instance fields
.field private final a:Ljava/util/Map;

.field private final b:Ljava/util/Map;

.field private final c:Lfxr;


# direct methods
.method public constructor <init>(Lfxr;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfxi;->c:Lfxr;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lfxi;->a:Ljava/util/Map;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lfxi;->b:Ljava/util/Map;

    return-void
.end method

.method private final b()V
    .locals 2

    iget-object v0, p0, Lfxi;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkpb;

    invoke-interface {v1}, Lkpb;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lfxi;->b:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkpb;

    invoke-interface {v1}, Lkpb;->close()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private static final c(JLjava/util/Map;)V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v4, v2, p0

    if-gez v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpb;

    invoke-interface {v3}, Lkpb;->close()V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p0

    const/4 p1, 0x0

    :goto_1
    if-ge p1, p0, :cond_2

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-interface {p2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public final a(Lkpb;Lnou;)V
    .locals 4

    iget-object v0, p0, Lfxi;->b:Ljava/util/Map;

    invoke-interface {p1}, Lkpb;->d()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    new-instance v2, Lfws;

    invoke-direct {v2, p1}, Lfws;-><init>(Lkpb;)V

    sget-object p1, Lfwr;->a:Lfwq;

    iget-object v3, v2, Lfws;->a:Ljava/util/Map;

    invoke-interface {v3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p1, p0, Lfxi;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lmpx;->a:Lmpx;

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lfxi;->b:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const-wide/16 v0, 0x0

    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkpb;

    invoke-interface {v2}, Lkpb;->d()J

    move-result-wide v2

    if-eqz p2, :cond_1

    cmp-long p2, v2, v0

    if-lez p2, :cond_2

    :cond_1
    move-wide v0, v2

    :cond_2
    const/4 p2, 0x1

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    sget-object p1, Lmpx;->a:Lmpx;

    goto :goto_1

    :cond_4
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    :goto_1
    invoke-virtual {p1}, Lmqp;->g()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    iget-object p2, p0, Lfxi;->b:Ljava/util/Map;

    invoke-static {v0, v1, p2}, Lfxi;->c(JLjava/util/Map;)V

    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object v0, p0, Lfxi;->a:Ljava/util/Map;

    invoke-static {p1, p2, v0}, Lfxi;->c(JLjava/util/Map;)V

    :cond_5
    return-void
.end method

.method public final close()V
    .locals 10

    :try_start_0
    new-instance v0, Lkdf;

    invoke-direct {v0}, Lkdf;-><init>()V

    invoke-static {v0}, Lnsy;->A(Ljava/lang/Throwable;)Lnou;

    move-result-object v0

    iget-object v1, p0, Lfxi;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v3, v2

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lfxi;->b:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move-object v3, v2

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lfws;

    if-eqz v3, :cond_2

    invoke-virtual {v4}, Lkoy;->d()J

    move-result-wide v5

    invoke-virtual {v3}, Lkoy;->d()J

    move-result-wide v7

    cmp-long v9, v5, v7

    if-lez v9, :cond_1

    :cond_2
    move-object v3, v4

    goto :goto_0

    :cond_3
    :goto_1
    if-eqz v3, :cond_4

    iget-object v0, p0, Lfxi;->b:Ljava/util/Map;

    invoke-virtual {v3}, Lkoy;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3}, Lfws;->k()Lnou;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {v3}, Lkoy;->d()J

    move-result-wide v1

    iget-object v4, p0, Lfxi;->a:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lkpb;

    if-eqz v2, :cond_5

    iget-object v1, p0, Lfxi;->a:Ljava/util/Map;

    invoke-interface {v2}, Lkpb;->d()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    :goto_2
    iget-object v1, p0, Lfxi;->c:Lfxr;

    invoke-static {v3}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v3

    invoke-static {v2}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-virtual {v2}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkpb;

    invoke-interface {v2}, Lkpb;->close()V

    :cond_6
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    sget-object v2, Lgqi;->a:Lgqi;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lgqi;->c:Lgqi;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lgqi;->b:Lgqi;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v2, Lgqi;->e:Lgqi;

    invoke-interface {v5, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-object v2, v1, Lfxr;->e:Lfym;

    iget-object v2, v2, Lfym;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v2, v1, Lfxr;->d:Lfxs;

    iget-object v2, v2, Lfxs;->b:Lgqh;

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkpb;

    invoke-static {v3}, Lgqr;->a(Lkpb;)Lgqq;

    move-result-object v3

    iput-object v0, v3, Lgqq;->d:Lnou;

    iget-object v0, v1, Lfxr;->b:Lkab;

    iput-object v0, v3, Lgqq;->c:Lkab;

    iget-object v0, v1, Lfxr;->d:Lfxs;

    iget-object v0, v0, Lfxs;->c:Landroid/graphics/Rect;

    iput-object v0, v3, Lgqq;->e:Landroid/graphics/Rect;

    iget-object v0, v1, Lfxr;->a:Lgxl;

    invoke-interface {v0}, Lgxl;->d()J

    move-result-wide v6

    invoke-virtual {v3, v6, v7}, Lgqq;->b(J)V

    invoke-virtual {v3}, Lgqq;->a()Lgqr;

    move-result-object v3

    iget-object v0, v1, Lfxr;->d:Lfxs;

    iget-object v4, v0, Lfxs;->d:Ljava/util/concurrent/Executor;

    iget-object v6, v1, Lfxr;->a:Lgxl;

    iget-object v0, v1, Lfxr;->c:Lgqm;

    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object v7

    invoke-virtual/range {v2 .. v7}, Lgqh;->d(Lgqr;Ljava/util/concurrent/Executor;Ljava/util/Set;Lgxl;Lmqp;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    :cond_7
    new-instance v0, Ldog;

    const-string v2, "received an image, but it did not have any image data!"

    invoke-direct {v0, v2}, Ldog;-><init>(Ljava/lang/String;)V

    sget-object v2, Lfxs;->a:Lnak;

    invoke-virtual {v2}, Lnaf;->b()Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const/16 v3, 0x9d8

    invoke-interface {v2, v3}, Lnah;->G(I)Lnaz;

    move-result-object v2

    check-cast v2, Lnah;

    const-string v3, "%s"

    invoke-virtual {v0}, Ldog;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lnah;->r(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v2, v1, Lfxr;->a:Lgxl;

    sget-object v3, Ligh;->a:Ligf;

    invoke-interface {v2, v3, v0}, Lgxl;->B(Ligf;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_3
    :try_start_4
    iget-object v0, v1, Lfxr;->e:Lfym;

    invoke-virtual {v0}, Lfym;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    invoke-direct {p0}, Lfxi;->b()V

    return-void

    :catchall_0
    move-exception v0

    :try_start_5
    iget-object v1, v1, Lfxr;->e:Lfym;

    invoke-virtual {v1}, Lfym;->close()V

    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v0

    invoke-direct {p0}, Lfxi;->b()V

    goto :goto_5

    :goto_4
    throw v0

    :goto_5
    goto :goto_4
.end method
