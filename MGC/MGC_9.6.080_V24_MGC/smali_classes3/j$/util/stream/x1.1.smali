.class final Lj$/util/stream/x1;
.super Lj$/util/stream/j1;
.source "SourceFile"


# instance fields
.field private final n:Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lj$/util/stream/k1;Ljava/util/Comparator;)V
    .locals 2

    sget v0, Lj$/util/stream/M1;->p:I

    sget v1, Lj$/util/stream/M1;->o:I

    or-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lj$/util/stream/j1;-><init>(Lj$/util/stream/b;II)V

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p2, p0, Lj$/util/stream/x1;->n:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final r(Lj$/util/stream/b;Lj$/util/Spliterator;Ljava/util/function/IntFunction;)Lj$/util/stream/Z;
    .locals 1

    sget-object v0, Lj$/util/stream/M1;->SORTED:Lj$/util/stream/M1;

    invoke-virtual {p1}, Lj$/util/stream/b;->m()I

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0, p3}, Lj$/util/stream/b;->e(Lj$/util/Spliterator;ZLjava/util/function/IntFunction;)Lj$/util/stream/Z;

    move-result-object p1

    invoke-interface {p1, p3}, Lj$/util/stream/Z;->o(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lj$/util/stream/x1;->n:Ljava/util/Comparator;

    invoke-static {p1, p2}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    new-instance p2, Lj$/util/stream/c0;

    invoke-direct {p2, p1}, Lj$/util/stream/c0;-><init>([Ljava/lang/Object;)V

    return-object p2
.end method

.method public final u(ILj$/util/stream/r1;)Lj$/util/stream/r1;
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v0, Lj$/util/stream/M1;->SORTED:Lj$/util/stream/M1;

    invoke-virtual {v0, p1}, Lj$/util/stream/M1;->s(I)Z

    sget-object v0, Lj$/util/stream/M1;->SIZED:Lj$/util/stream/M1;

    invoke-virtual {v0, p1}, Lj$/util/stream/M1;->s(I)Z

    move-result p1

    iget-object v0, p0, Lj$/util/stream/x1;->n:Ljava/util/Comparator;

    if-eqz p1, :cond_0

    new-instance p1, Lj$/util/stream/z1;

    invoke-direct {p1, p2, v0}, Lj$/util/stream/w1;-><init>(Lj$/util/stream/r1;Ljava/util/Comparator;)V

    return-object p1

    :cond_0
    new-instance p1, Lj$/util/stream/y1;

    invoke-direct {p1, p2, v0}, Lj$/util/stream/w1;-><init>(Lj$/util/stream/r1;Ljava/util/Comparator;)V

    return-object p1
.end method
