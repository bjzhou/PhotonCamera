.class final Lj$/util/stream/x0;
.super Lj$/util/stream/z0;

# interfaces
.implements Lj$/util/stream/Y0;


# instance fields
.field private final h:[J


# direct methods
.method constructor <init>(Lj$/util/Spliterator;Lj$/util/stream/F;[J)V
    .locals 1

    array-length v0, p3

    invoke-direct {p0, v0, p1, p2}, Lj$/util/stream/z0;-><init>(ILj$/util/Spliterator;Lj$/util/stream/F;)V

    iput-object p3, p0, Lj$/util/stream/x0;->h:[J

    return-void
.end method

.method constructor <init>(Lj$/util/stream/x0;Lj$/util/Spliterator;JJ)V
    .locals 9

    iget-object v0, p1, Lj$/util/stream/x0;->h:[J

    array-length v8, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lj$/util/stream/z0;-><init>(Lj$/util/stream/z0;Lj$/util/Spliterator;JJI)V

    iget-object p1, p1, Lj$/util/stream/x0;->h:[J

    iput-object p1, p0, Lj$/util/stream/x0;->h:[J

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 3

    iget v0, p0, Lj$/util/stream/z0;->f:I

    iget v1, p0, Lj$/util/stream/z0;->g:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lj$/util/stream/x0;->h:[J

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lj$/util/stream/z0;->f:I

    aput-wide p1, v1, v0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    iget p2, p0, Lj$/util/stream/z0;->f:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/F;->f(Lj$/util/stream/Y0;Ljava/lang/Object;)V

    return-void
.end method

.method public final andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/function/g;

    invoke-direct {v0, p0, p1}, Lj$/util/function/g;-><init>(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)V

    return-object v0
.end method

.method final b(Lj$/util/Spliterator;JJ)Lj$/util/stream/z0;
    .locals 8

    new-instance v7, Lj$/util/stream/x0;

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-wide v3, p2

    move-wide v5, p4

    invoke-direct/range {v0 .. v6}, Lj$/util/stream/x0;-><init>(Lj$/util/stream/x0;Lj$/util/Spliterator;JJ)V

    return-object v7
.end method

.method public final synthetic s(Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/F;->e(Lj$/util/stream/Y0;Ljava/lang/Long;)V

    return-void
.end method
