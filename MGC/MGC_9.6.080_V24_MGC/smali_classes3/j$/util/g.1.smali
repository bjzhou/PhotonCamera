.class Lj$/util/g;
.super Lj$/util/f;
.source "SourceFile"

# interfaces
.implements Ljava/util/List;
.implements Lj$/util/List;


# static fields
.field private static final serialVersionUID:J = -0x6b9c101c7cbbef84L


# instance fields
.field final c:Ljava/util/List;


# direct methods
.method constructor <init>(Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lj$/util/f;-><init>(Ljava/util/Collection;)V

    iput-object p1, p0, Lj$/util/g;->c:Ljava/util/List;

    return-void
.end method

.method constructor <init>(Ljava/util/List;Ljava/io/Serializable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/f;-><init>(Ljava/util/Collection;Ljava/io/Serializable;)V

    iput-object p1, p0, Lj$/util/g;->c:Ljava/util/List;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lj$/util/g;->c:Ljava/util/List;

    instance-of v1, v0, Ljava/util/RandomAccess;

    if-eqz v1, :cond_0

    new-instance v1, Lj$/util/i;

    invoke-direct {v1, v0}, Lj$/util/g;-><init>(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    move-object v1, p0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public final add(ILjava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/g;->c:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final addAll(ILjava/util/Collection;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/g;->c:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/g;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final get(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/g;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/g;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final indexOf(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/g;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final lastIndexOf(Ljava/lang/Object;)I
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/g;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->lastIndexOf(Ljava/lang/Object;)I

    move-result p1

    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final listIterator()Ljava/util/ListIterator;
    .locals 1

    iget-object v0, p0, Lj$/util/g;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public final listIterator(I)Ljava/util/ListIterator;
    .locals 1

    iget-object v0, p0, Lj$/util/g;->c:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->listIterator(I)Ljava/util/ListIterator;

    move-result-object p1

    return-object p1
.end method

.method public final remove(I)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/g;->c:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final replaceAll(Ljava/util/function/UnaryOperator;)V
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/g;->c:Ljava/util/List;

    invoke-static {v1, p1}, Lj$/util/List$-EL;->replaceAll(Ljava/util/List;Ljava/util/function/UnaryOperator;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/g;->c:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final sort(Ljava/util/Comparator;)V
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/g;->c:Ljava/util/List;

    invoke-static {v1, p1}, Lj$/util/List$-EL;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public subList(II)Ljava/util/List;
    .locals 3

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lj$/util/g;

    iget-object v2, p0, Lj$/util/g;->c:Ljava/util/List;

    invoke-interface {v2, p1, p2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    iget-object p2, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    invoke-direct {v1, p1, p2}, Lj$/util/g;-><init>(Ljava/util/List;Ljava/io/Serializable;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
