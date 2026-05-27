.class abstract Lj$/util/stream/i0;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/stream/O;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public c(I)Lj$/util/stream/O;
    .locals 0

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public final count()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public final k(Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public final n(Ljava/util/function/IntFunction;)[Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/Object;

    return-object p1
.end method

.method public synthetic q(JJLjava/util/function/IntFunction;)Lj$/util/stream/O;
    .locals 0

    invoke-static/range {p0 .. p5}, Lj$/util/stream/F;->r(Lj$/util/stream/O;JJLjava/util/function/IntFunction;)Lj$/util/stream/O;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic u()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final y(ILjava/lang/Object;)V
    .locals 0

    return-void
.end method
