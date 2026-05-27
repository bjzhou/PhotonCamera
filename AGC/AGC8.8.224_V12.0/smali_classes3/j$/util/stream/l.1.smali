.class final Lj$/util/stream/l;
.super Lj$/util/stream/S0;


# direct methods
.method constructor <init>(Lj$/util/stream/c;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lj$/util/stream/S0;-><init>(Lj$/util/stream/c;I)V

    return-void
.end method

.method static U(Lj$/util/stream/c;Lj$/util/Spliterator;)Lj$/util/stream/T;
    .locals 5

    new-instance v0, Lj$/util/stream/b;

    const/16 v1, 0x19

    invoke-direct {v0, v1}, Lj$/util/stream/b;-><init>(I)V

    new-instance v1, Lj$/util/stream/b;

    const/16 v2, 0x1a

    invoke-direct {v1, v2}, Lj$/util/stream/b;-><init>(I)V

    new-instance v2, Lj$/util/stream/b;

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Lj$/util/stream/b;-><init>(I)V

    new-instance v3, Lj$/util/stream/I0;

    sget-object v4, Lj$/util/stream/v1;->REFERENCE:Lj$/util/stream/v1;

    invoke-direct {v3, v4, v2, v1, v0}, Lj$/util/stream/I0;-><init>(Lj$/util/stream/v1;Lj$/util/stream/b;Lj$/util/stream/b;Lj$/util/stream/b;)V

    invoke-virtual {v3, p0, p1}, Lj$/util/stream/E0;->c(Lj$/util/stream/F;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Collection;

    new-instance p1, Lj$/util/stream/T;

    invoke-direct {p1, p0}, Lj$/util/stream/T;-><init>(Ljava/util/Collection;)V

    return-object p1
.end method


# virtual methods
.method final M(Lj$/util/Spliterator;Lj$/util/stream/c;Ljava/util/function/IntFunction;)Lj$/util/stream/O;
    .locals 4

    sget-object v0, Lj$/util/stream/u1;->DISTINCT:Lj$/util/stream/u1;

    invoke-virtual {p2}, Lj$/util/stream/c;->x()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/u1;->e(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p2, p1, v1, p3}, Lj$/util/stream/c;->C(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/O;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object p3, Lj$/util/stream/u1;->ORDERED:Lj$/util/stream/u1;

    invoke-virtual {p2}, Lj$/util/stream/c;->x()I

    move-result v0

    invoke-virtual {p3, v0}, Lj$/util/stream/u1;->e(I)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-static {p2, p1}, Lj$/util/stream/l;->U(Lj$/util/stream/c;Lj$/util/Spliterator;)Lj$/util/stream/T;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance p3, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p3, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Lj$/util/concurrent/ConcurrentHashMap;-><init>()V

    new-instance v2, Lj$/util/stream/i;

    invoke-direct {v2, v1, p3, v0}, Lj$/util/stream/i;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    new-instance v3, Lj$/util/stream/q;

    invoke-direct {v3, v2, v1}, Lj$/util/stream/q;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-virtual {v3, p2, p1}, Lj$/util/stream/r;->c(Lj$/util/stream/F;Lj$/util/Spliterator;)Ljava/lang/Object;

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
    new-instance p2, Lj$/util/stream/T;

    invoke-direct {p2, p1}, Lj$/util/stream/T;-><init>(Ljava/util/Collection;)V

    return-object p2
.end method

.method final N(Lj$/util/stream/c;Lj$/util/Spliterator;)Lj$/util/Spliterator;
    .locals 2

    sget-object v0, Lj$/util/stream/u1;->DISTINCT:Lj$/util/stream/u1;

    invoke-virtual {p1}, Lj$/util/stream/c;->x()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/u1;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1, p2}, Lj$/util/stream/c;->T(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    :cond_0
    sget-object v0, Lj$/util/stream/u1;->ORDERED:Lj$/util/stream/u1;

    invoke-virtual {p1}, Lj$/util/stream/c;->x()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/u1;->e(I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p1, p2}, Lj$/util/stream/l;->U(Lj$/util/stream/c;Lj$/util/Spliterator;)Lj$/util/stream/T;

    move-result-object p1

    invoke-virtual {p1}, Lj$/util/stream/T;->spliterator()Lj$/util/Spliterator;

    move-result-object p1

    return-object p1

    :cond_1
    new-instance v0, Lj$/util/stream/C1;

    invoke-virtual {p1, p2}, Lj$/util/stream/c;->T(Lj$/util/Spliterator;)Lj$/util/Spliterator;

    move-result-object p1

    invoke-direct {v0, p1}, Lj$/util/stream/C1;-><init>(Lj$/util/Spliterator;)V

    return-object v0
.end method

.method final P(ILj$/util/stream/Z0;)Lj$/util/stream/Z0;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lj$/util/stream/u1;->DISTINCT:Lj$/util/stream/u1;

    invoke-virtual {v0, p1}, Lj$/util/stream/u1;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p2

    :cond_0
    sget-object v0, Lj$/util/stream/u1;->SORTED:Lj$/util/stream/u1;

    invoke-virtual {v0, p1}, Lj$/util/stream/u1;->e(I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Lj$/util/stream/j;

    invoke-direct {p1, p2}, Lj$/util/stream/j;-><init>(Lj$/util/stream/Z0;)V

    return-object p1

    :cond_1
    new-instance p1, Lj$/util/stream/k;

    invoke-direct {p1, p2}, Lj$/util/stream/k;-><init>(Lj$/util/stream/Z0;)V

    return-object p1
.end method
