.class final Lj$/util/stream/f1;
.super Lj$/util/stream/S0;


# instance fields
.field private final m:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lj$/util/stream/c;Ljava/util/Comparator;)V
    .locals 2

    sget v0, Lj$/util/stream/u1;->p:I

    sget v1, Lj$/util/stream/u1;->o:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Lj$/util/stream/S0;-><init>(Lj$/util/stream/c;I)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lj$/util/stream/f1;->m:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final M(Lj$/util/Spliterator;Lj$/util/stream/c;Ljava/util/function/IntFunction;)Lj$/util/stream/O;
    .locals 1

    sget-object v0, Lj$/util/stream/u1;->SORTED:Lj$/util/stream/u1;

    invoke-virtual {p2}, Lj$/util/stream/c;->x()I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-virtual {p2, p1, v0, p3}, Lj$/util/stream/c;->C(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/O;

    move-result-object p1

    invoke-interface {p1, p3}, Lj$/util/stream/O;->n(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lj$/util/stream/f1;->m:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance p2, Lj$/util/stream/S;

    invoke-direct {p2, p1}, Lj$/util/stream/S;-><init>([Ljava/lang/Object;)V

    return-object p2
.end method

.method public final P(ILj$/util/stream/Z0;)Lj$/util/stream/Z0;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lj$/util/stream/u1;->SORTED:Lj$/util/stream/u1;

    invoke-virtual {v0, p1}, Lj$/util/stream/u1;->e(I)Z

    move-result v0

    sget-object v0, Lj$/util/stream/u1;->SIZED:Lj$/util/stream/u1;

    invoke-virtual {v0, p1}, Lj$/util/stream/u1;->e(I)Z

    move-result p1

    if-eqz p1, :cond_0

    new-instance p1, Lj$/util/stream/h1;

    iget-object v0, p0, Lj$/util/stream/f1;->m:Ljava/util/Comparator;

    invoke-direct {p1, p2, v0}, Lj$/util/stream/h1;-><init>(Lj$/util/stream/Z0;Ljava/util/Comparator;)V

    return-object p1

    :cond_0
    new-instance p1, Lj$/util/stream/g1;

    iget-object v0, p0, Lj$/util/stream/f1;->m:Ljava/util/Comparator;

    invoke-direct {p1, p2, v0}, Lj$/util/stream/g1;-><init>(Lj$/util/stream/Z0;Ljava/util/Comparator;)V

    return-object p1
.end method
