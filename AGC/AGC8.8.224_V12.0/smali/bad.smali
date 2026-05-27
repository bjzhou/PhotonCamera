.class public final Lbad;
.super Ljava/lang/Object;

# interfaces
.implements Lbac;
.implements Lbah;


# instance fields
.field public final a:Lbab;

.field public final b:Ljava/lang/Object;

.field private final c:[Lbai;


# direct methods
.method public constructor <init>(Lbbc;Lbab;)V
    .locals 3

    const/4 v0, 0x7

    new-array v0, v0, [Lbai;

    new-instance v1, Lbaf;

    iget-object v2, p1, Lbbc;->a:Ljava/lang/Object;

    check-cast v2, Lbav;

    invoke-direct {v1, v2}, Lbaf;-><init>(Lbav;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lbag;

    iget-object v2, p1, Lbbc;->b:Ljava/lang/Object;

    check-cast v2, Lbaq;

    invoke-direct {v1, v2}, Lbag;-><init>(Lbaq;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lban;

    iget-object v2, p1, Lbbc;->d:Ljava/lang/Object;

    check-cast v2, Lbav;

    invoke-direct {v1, v2}, Lban;-><init>(Lbav;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lbaj;

    iget-object v2, p1, Lbbc;->c:Ljava/lang/Object;

    check-cast v2, Lbav;

    invoke-direct {v1, v2}, Lbaj;-><init>(Lbav;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lbam;

    iget-object v2, p1, Lbbc;->c:Ljava/lang/Object;

    check-cast v2, Lbav;

    invoke-direct {v1, v2}, Lbam;-><init>(Lbav;)V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lbal;

    iget-object v2, p1, Lbbc;->c:Ljava/lang/Object;

    check-cast v2, Lbav;

    invoke-direct {v1, v2}, Lbal;-><init>(Lbav;)V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lbak;

    iget-object p1, p1, Lbbc;->c:Ljava/lang/Object;

    check-cast p1, Lbav;

    invoke-direct {v1, p1}, Lbak;-><init>(Lbav;)V

    const/4 p1, 0x6

    aput-object v1, v0, p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbad;->a:Lbab;

    iput-object v0, p0, Lbad;->c:[Lbai;

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbad;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Iterable;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lbad;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbad;->c:[Lbai;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x7

    if-ge v3, v4, :cond_0

    aget-object v4, v1, v3

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Lbai;->d(Lbah;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lbad;->c:[Lbai;

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_7

    aget-object v5, v1, v3

    iget-object v6, v5, Lbai;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, v5, Lbai;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, v5, Lbai;->b:Ljava/util/List;

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_1
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    move-object v9, v8

    check-cast v9, Lbcj;

    invoke-virtual {v5, v9}, Lbai;->b(Lbcj;)Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v6, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget-object v6, v5, Lbai;->b:Ljava/util/List;

    iget-object v7, v5, Lbai;->c:Ljava/util/List;

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lbcj;

    iget-object v8, v8, Lbcj;->a:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_3
    iget-object v6, v5, Lbai;->b:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, v5, Lbai;->a:Lbav;

    invoke-virtual {v6, v5}, Lbav;->f(Lazz;)V

    goto :goto_4

    :cond_4
    iget-object v6, v5, Lbai;->a:Lbav;

    iget-object v7, v6, Lbav;->b:Ljava/lang/Object;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v8, v6, Lbav;->c:Ljava/util/LinkedHashSet;

    invoke-virtual {v8, v5}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget-object v8, v6, Lbav;->c:Ljava/util/LinkedHashSet;

    invoke-virtual {v8}, Ljava/util/LinkedHashSet;->size()I

    move-result v8

    const/4 v9, 0x1

    if-ne v8, v9, :cond_5

    invoke-virtual {v6}, Lbav;->b()Ljava/lang/Object;

    move-result-object v8

    iput-object v8, v6, Lbav;->d:Ljava/lang/Object;

    invoke-static {}, Laxq;->a()Laxq;

    sget v8, Lbaw;->a:I

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": initial state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v6, Lbav;->d:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lbav;->d()V

    :cond_5
    iget-object v6, v6, Lbav;->d:Ljava/lang/Object;

    invoke-interface {v5, v6}, Lazz;->a(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_6
    :try_start_2
    monitor-exit v7

    :goto_4
    iget-object v6, v5, Lbai;->e:Lbah;

    iget-object v7, v5, Lbai;->d:Ljava/lang/Object;

    invoke-virtual {v5, v6, v7}, Lbai;->e(Lbah;Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v7

    throw p1

    :cond_7
    iget-object p1, p0, Lbad;->c:[Lbai;

    :goto_5
    if-ge v2, v4, :cond_8

    aget-object v1, p1, v2

    invoke-virtual {v1, p0}, Lbai;->d(Lbah;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_8
    monitor-exit v0

    return-void

    :catchall_1
    move-exception p1

    monitor-exit v0

    goto :goto_7

    :goto_6
    throw p1

    :goto_7
    goto :goto_6
.end method

.method public final b()V
    .locals 5

    iget-object v0, p0, Lbad;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbad;->c:[Lbai;

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x7

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    iget-object v4, v3, Lbai;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, v3, Lbai;->b:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    iget-object v4, v3, Lbai;->a:Lbav;

    invoke-virtual {v4, v3}, Lbav;->f(Lazz;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    goto :goto_2

    :goto_1
    throw v1

    :goto_2
    goto :goto_1
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 6

    iget-object v0, p0, Lbad;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lbad;->c:[Lbai;

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    const/4 v4, 0x7

    if-ge v3, v4, :cond_1

    aget-object v4, v1, v3

    iget-object v5, v4, Lbai;->d:Ljava/lang/Object;

    if-eqz v5, :cond_0

    invoke-virtual {v4, v5}, Lbai;->c(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    iget-object v5, v4, Lbai;->c:Ljava/util/List;

    invoke-interface {v5, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_1
    if-eqz v4, :cond_2

    invoke-static {}, Laxq;->a()Laxq;

    sget p1, Lbae;->a:I

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-nez v4, :cond_3

    const/4 v2, 0x1

    goto :goto_2

    :cond_3
    :goto_2
    monitor-exit v0

    return v2

    :catchall_0
    move-exception p1

    monitor-exit v0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method
