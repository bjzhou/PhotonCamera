.class final Lj$/util/stream/K0;
.super Lj$/util/stream/E0;


# direct methods
.method constructor <init>(Lj$/util/stream/v1;)V
    .locals 0

    invoke-direct {p0, p1}, Lj$/util/stream/E0;-><init>(Lj$/util/stream/v1;)V

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 1

    sget v0, Lj$/util/stream/u1;->q:I

    return v0
.end method

.method public final c(Lj$/util/stream/F;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lj$/util/stream/u1;->SIZED:Lj$/util/stream/u1;

    invoke-virtual {p1}, Lj$/util/stream/F;->x()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/u1;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lj$/util/stream/E0;->c(Lj$/util/stream/F;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :goto_0
    return-object p1
.end method

.method public final d(Lj$/util/stream/F;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 2

    sget-object v0, Lj$/util/stream/u1;->SIZED:Lj$/util/stream/u1;

    invoke-virtual {p1}, Lj$/util/stream/F;->x()I

    move-result v1

    invoke-virtual {v0, v1}, Lj$/util/stream/u1;->e(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Lj$/util/Spliterator;->getExactSizeIfKnown()J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-super {p0, p1, p2}, Lj$/util/stream/E0;->d(Lj$/util/stream/F;Lj$/util/Spliterator;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    :goto_0
    return-object p1
.end method

.method public final p()Lj$/util/stream/M0;
    .locals 1

    new-instance v0, Lj$/util/stream/O0;

    invoke-direct {v0}, Lj$/util/stream/O0;-><init>()V

    return-object v0
.end method
