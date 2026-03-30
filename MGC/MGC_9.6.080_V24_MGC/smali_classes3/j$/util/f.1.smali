.class Lj$/util/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Collection;
.implements Ljava/io/Serializable;
.implements Lj$/util/Collection;


# static fields
.field private static final serialVersionUID:J = 0x2a61f84d099c99b5L


# instance fields
.field final a:Ljava/util/Collection;

.field final b:Ljava/io/Serializable;


# direct methods
.method constructor <init>(Ljava/util/Collection;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lj$/util/f;->a:Ljava/util/Collection;

    iput-object p0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    return-void
.end method

.method constructor <init>(Ljava/util/Collection;Ljava/io/Serializable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lj$/util/f;->a:Ljava/util/Collection;

    iput-object p2, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final add(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

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

.method public final addAll(Ljava/util/Collection;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

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

.method public final clear()V
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final contains(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

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

.method public final containsAll(Ljava/util/Collection;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

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

.method public final forEach(Ljava/util/function/Consumer;)V
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Collection;

    invoke-static {v1, p1}, Lj$/util/Collection$-EL;->forEach(Ljava/util/Collection;Ljava/util/function/Consumer;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public final isEmpty()Z
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

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

.method public final iterator()Ljava/util/Iterator;
    .locals 1

    iget-object v0, p0, Lj$/util/f;->a:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public final parallelStream()Lj$/util/stream/Stream;
    .locals 1

    iget-object v0, p0, Lj$/util/f;->a:Ljava/util/Collection;

    invoke-static {v0}, Lj$/util/Collection$-EL;->a(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final remove(Ljava/lang/Object;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

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

.method public final removeAll(Ljava/util/Collection;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

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

.method public final removeIf(Ljava/util/function/Predicate;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Collection;

    invoke-static {v1, p1}, Lj$/util/Collection$-EL;->removeIf(Ljava/util/Collection;Ljava/util/function/Predicate;)Z

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

.method public final retainAll(Ljava/util/Collection;)Z
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

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

.method public final size()I
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

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

.method public final spliterator()Lj$/util/Spliterator;
    .locals 1

    iget-object v0, p0, Lj$/util/f;->a:Ljava/util/Collection;

    invoke-static {v0}, Lj$/util/Collection$-EL;->b(Ljava/util/Collection;)Lj$/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method public final stream()Lj$/util/stream/Stream;
    .locals 1

    iget-object v0, p0, Lj$/util/f;->a:Ljava/util/Collection;

    invoke-static {v0}, Lj$/util/Collection$-EL;->stream(Ljava/util/Collection;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->toArray()[Ljava/lang/Object;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final synthetic toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/Collection$-CC;->$default$toArray(Ljava/util/Collection;Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

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

.method public final toString()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lj$/util/f;->b:Ljava/io/Serializable;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj$/util/f;->a:Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
