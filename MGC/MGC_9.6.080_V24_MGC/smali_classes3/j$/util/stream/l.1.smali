.class final Lj$/util/stream/l;
.super Lj$/util/stream/j1;
.source "SourceFile"


# direct methods
.method static B(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/stream/d0;
    .locals 7

    new-instance v4, Lj$/util/stream/f;

    const/16 v0, 0x1b

    invoke-direct {v4, v0}, Lj$/util/stream/f;-><init>(I)V

    new-instance v3, Lj$/util/stream/f;

    const/16 v0, 0x1c

    invoke-direct {v3, v0}, Lj$/util/stream/f;-><init>(I)V

    new-instance v2, Lj$/util/stream/f;

    const/16 v0, 0x1d

    invoke-direct {v2, v0}, Lj$/util/stream/f;-><init>(I)V

    new-instance v6, Lj$/util/stream/T0;

    sget-object v1, Lj$/util/stream/N1;->REFERENCE:Lj$/util/stream/N1;

    const/4 v5, 0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/T0;-><init>(Lj$/util/stream/N1;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/function/Supplier;I)V

    invoke-virtual {v6, p0, p1}, Lj$/util/stream/M;->c(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    new-instance p1, Lj$/util/stream/d0;

    invoke-direct {p1, p0}, Lj$/util/stream/d0;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method


# virtual methods
.method final r(Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/Z;
    .locals 4

    sget-object v0, Lj$/util/stream/M1;->DISTINCT:Lj$/util/stream/M1;

    invoke-virtual {p1}, Lj$/util/stream/b;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/M1;->s(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2, v1, p3}, Lj$/util/stream/b;->e(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/Z;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p3, Lj$/util/stream/M1;->ORDERED:Lj$/util/stream/M1;

    invoke-virtual {p1}, Lj$/util/stream/b;->m()I

    move-result v0

    invoke-virtual {p3, v0}, Lj$/util/stream/M1;->s(I)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p1, p2}, Lj$/util/stream/l;->B(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/stream/d0;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v2, Lj$/util/stream/H;

    const/4 v3, 0x2

    invoke-direct {v2, v3, p3, v0}, Lj$/util/stream/H;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lj$/util/stream/t;

    invoke-direct {v3, v2, v1}, Lj$/util/stream/t;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-virtual {v3, p1, p2}, Lj$/util/stream/t;->c(Lj$/util/stream/b;Lj$/util/Spliterator;)Ljava/lang/Object;

    invoke-virtual {v0}, Lj$/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/util/HashSet;

    invoke-direct {p2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-object p1, p2

    :cond_2
    new-instance p2, Lj$/util/stream/d0;

    invoke-direct {p2, p1}, Lj$/util/stream/d0;-><init>(Ljava/util/Collection;)V

    return-object p2
.end method

.method final s(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    sget-object v0, Lj$/util/stream/M1;->DISTINCT:Lj$/util/stream/M1;

    invoke-virtual {p1}, Lj$/util/stream/b;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/M1;->s(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lj$/util/stream/b;->A(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lj$/util/stream/M1;->ORDERED:Lj$/util/stream/M1;

    invoke-virtual {p1}, Lj$/util/stream/b;->m()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/M1;->s(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lj$/util/stream/l;->B(Lj$/util/stream/b;Lj$/util/Spliterator;)Lj$/util/stream/d0;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/stream/d0;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lj$/util/stream/V1;

    invoke-virtual {p1, p2}, Lj$/util/stream/b;->A(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/util/stream/V1;-><init>(Lj$/util/Spliterator;)V

    return-object v0
.end method

.method final u(ILj$/util/stream/r1;)Lj$/util/stream/r1;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lj$/util/stream/M1;->DISTINCT:Lj$/util/stream/M1;

    invoke-virtual {v0, p1}, Lj$/util/stream/M1;->s(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lj$/util/stream/M1;->SORTED:Lj$/util/stream/M1;

    invoke-virtual {v0, p1}, Lj$/util/stream/M1;->s(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lj$/util/stream/j;

    invoke-direct {p1, p2}, Lj$/util/stream/j;-><init>(Lj$/util/stream/r1;)V

    return-object p1

    :cond_1
    new-instance p1, Lj$/util/stream/k;

    invoke-direct {p1, p2}, Lj$/util/stream/k;-><init>(Lj$/util/stream/r1;)V

    return-object p1
.end method
