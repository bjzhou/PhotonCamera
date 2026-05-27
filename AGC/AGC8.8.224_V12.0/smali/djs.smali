.class public final Ldjs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Iterable;


# static fields
.field private static final a:Lnak;


# instance fields
.field private final b:Ljava/util/TreeSet;

.field private final c:Ljava/util/Map;

.field private final d:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/data/NavigableFilmstripData"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Ldjs;->a:Lnak;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lcpy;->l:Lcpy;

    invoke-static {v1}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    sget-object v2, Lcpy;->m:Lcpy;

    invoke-static {v1, v2}, Lj$/util/Comparator$-EL;->thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-static {v1}, Lj$/util/Comparator$-EL;->reversed(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    iput-object v0, p0, Ldjs;->b:Ljava/util/TreeSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldjs;->c:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Ldjs;->d:Ljava/util/Map;

    return-void
.end method

.method private final declared-synchronized l(Lche;)Lmqp;
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lche;->d()Lgxy;

    move-result-object v0

    invoke-interface {p1}, Lche;->c()Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_1

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    const/4 v4, 0x1

    :goto_0
    const-string v5, "At least one of shotId or Uri should be set: %s"

    invoke-static {v4, v5, p1}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    if-eqz v0, :cond_2

    iget-object p1, p0, Ldjs;->c:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lchd;

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    iget-object v0, p0, Ldjs;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchd;

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    if-ne p1, v0, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    :goto_2
    const-string v1, "Maps out of sync, byUri:%s, byShotId: %s"

    invoke-static {v2, v1, v0, p1}, Lmoz;->t(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_4
    if-eqz p1, :cond_5

    :try_start_1
    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_5
    if-eqz v0, :cond_6

    :try_start_2
    invoke-static {v0}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_3
    monitor-exit p0

    return-object p1

    :cond_6
    :try_start_3
    sget-object p1, Lmpx;->a:Lmpx;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method private final declared-synchronized m(Lchd;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lchd;->b()Lche;

    move-result-object p1

    invoke-direct {p0, p1}, Ldjs;->l(Lche;)Lmqp;

    move-result-object p1

    invoke-virtual {p1}, Lmqp;->g()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lchd;

    invoke-interface {p1}, Lchd;->b()Lche;

    move-result-object v0

    invoke-interface {v0}, Lche;->d()Lgxy;

    move-result-object v0

    invoke-interface {p1}, Lchd;->b()Lche;

    move-result-object v1

    invoke-interface {v1}, Lche;->c()Landroid/net/Uri;

    move-result-object v1

    if-eqz v0, :cond_1

    iget-object v2, p0, Ldjs;->c:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_1
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v1, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Ldjs;->d:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchd;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_2
    iget-object v0, p0, Ldjs;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Ldjs;->b:Ljava/util/TreeSet;

    const-string v2, "Couldn\'t remove %s from filmstripItems=%s"

    invoke-static {v0, v2, p1, v1}, Lmoz;->t(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final declared-synchronized a()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldjs;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->size()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()Lchd;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldjs;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldjs;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method final declared-synchronized c(Landroid/net/Uri;)Lchd;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldjs;->d:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lchd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized d(Lgxy;)Lchd;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldjs;->c:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lchd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method final declared-synchronized e(Lchd;)Lchd;
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lchd;->b()Lche;

    move-result-object v0

    invoke-direct {p0, v0}, Ldjs;->l(Lche;)Lmqp;

    move-result-object v0

    invoke-virtual {v0}, Lmqp;->g()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lchd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :cond_0
    :try_start_1
    invoke-virtual {p0, p1}, Ldjs;->k(Lchd;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized f()Lchd;
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldjs;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ldjs;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchd;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    :cond_0
    monitor-exit p0

    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized g(Ljava/util/Collection;)V
    .locals 11

    monitor-enter p0

    :try_start_0
    move-object v0, p1

    check-cast v0, Lmyu;

    iget v0, v0, Lmyu;->c:I

    iget-object v0, p0, Ldjs;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Ldjs;->b:Ljava/util/TreeSet;

    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v1

    const-string v2, "addAll must be called on an empty list. filmstripItems contains: %s"

    invoke-static {v0, v2, v1}, Lmoz;->r(ZLjava/lang/String;I)V

    iget-object v0, p0, Ldjs;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Ldjs;->d:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const-string v2, "addAll must be called on an empty list. uriFilmstripItemMap contains: %s"

    invoke-static {v0, v2, v1}, Lmoz;->r(ZLjava/lang/String;I)V

    iget-object v0, p0, Ldjs;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    iget-object v1, p0, Ldjs;->c:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    const-string v2, "addAll must be called on an empty list. shotToFilmStripMap contains: %s"

    invoke-static {v0, v2, v1}, Lmoz;->r(ZLjava/lang/String;I)V

    iget-object v0, p0, Ldjs;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->addAll(Ljava/util/Collection;)Z

    check-cast p1, Lmvv;

    invoke-virtual {p1}, Lmvv;->s()Lnad;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lchd;

    invoke-interface {v0}, Lchd;->b()Lche;

    move-result-object v1

    invoke-interface {v1}, Lche;->d()Lgxy;

    move-result-object v1

    invoke-interface {v0}, Lchd;->b()Lche;

    move-result-object v2

    invoke-interface {v2}, Lche;->c()Landroid/net/Uri;

    move-result-object v2

    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x3

    const/4 v7, 0x1

    if-nez v3, :cond_1

    iget-object v3, p0, Ldjs;->d:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    xor-int/2addr v3, v7

    sget-object v8, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v2, v9, v5

    iget-object v10, p0, Ldjs;->d:Ljava/util/Map;

    invoke-interface {v10, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    aput-object v10, v9, v7

    aput-object v0, v9, v4

    const-string v10, "Multiple entries for uri: %s. %s & %s"

    invoke-static {v8, v10, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v3, p0, Ldjs;->d:Ljava/util/Map;

    invoke-interface {v3, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-eqz v1, :cond_0

    iget-object v2, p0, Ldjs;->c:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    xor-int/2addr v2, v7

    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v5

    iget-object v5, p0, Ldjs;->c:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v6, v7

    aput-object v0, v6, v4

    const-string v4, "Multiple entries for shotId: %s. %s & %s"

    invoke-static {v3, v4, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v2, p0, Ldjs;->c:Ljava/util/Map;

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method final declared-synchronized h()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldjs;->c:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Ldjs;->d:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Ldjs;->b:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized i(Landroid/net/Uri;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0, p1}, Ldjs;->c(Landroid/net/Uri;)Lchd;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Ldjs;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Uri %s not found in filmstrip"

    const/16 v2, 0x3b1

    invoke-static {v0, v1, p1, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-direct {p0, v0}, Ldjs;->m(Lchd;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized iterator()Ljava/util/Iterator;
    .locals 2

    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/util/TreeSet;

    iget-object v1, p0, Ldjs;->b:Ljava/util/TreeSet;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/SortedSet;)V

    invoke-virtual {v0}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

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

.method final declared-synchronized j(Lchd;)V
    .locals 0

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, p1}, Ldjs;->m(Lchd;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final declared-synchronized k(Lchd;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Lchd;->b()Lche;

    move-result-object v0

    invoke-interface {v0}, Lche;->d()Lgxy;

    move-result-object v1

    invoke-interface {v0}, Lche;->c()Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v1, :cond_1

    sget-object v4, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    :goto_0
    const-string v4, "At least one of shotId or Uri should be set: %s"

    invoke-static {v3, v4, p1}, Lmoz;->s(ZLjava/lang/String;Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Ldjs;->l(Lche;)Lmqp;

    move-result-object v3

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lchd;

    iget-object v4, p0, Ldjs;->b:Ljava/util/TreeSet;

    invoke-virtual {v4, p1}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    invoke-interface {p1, v0}, Lchd;->f(Lche;)V

    :cond_2
    if-eqz v1, :cond_3

    iget-object v0, p0, Ldjs;->c:Ljava/util/Map;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    sget-object v0, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Ldjs;->d:Ljava/util/Map;

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    iget-object v0, p0, Ldjs;->b:Ljava/util/TreeSet;

    invoke-virtual {v0, p1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {v3}, Lmqp;->g()Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
