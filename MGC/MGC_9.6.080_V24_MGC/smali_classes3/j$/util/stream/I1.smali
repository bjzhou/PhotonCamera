.class abstract Lj$/util/stream/I1;
.super Lj$/util/stream/d;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lj$/lang/a;


# instance fields
.field d:Ljava/lang/Object;

.field e:[Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lj$/util/stream/I1;->c(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/I1;->d:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method protected abstract A()[Ljava/lang/Object;
.end method

.method protected final B()V
    .locals 6

    iget v0, p0, Lj$/util/stream/d;->a:I

    iget-object v1, p0, Lj$/util/stream/I1;->d:Ljava/lang/Object;

    invoke-virtual {p0, v1}, Lj$/util/stream/I1;->w(Ljava/lang/Object;)I

    move-result v1

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lj$/util/stream/I1;->e:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lj$/util/stream/I1;->A()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lj$/util/stream/I1;->e:[Ljava/lang/Object;

    const/16 v2, 0x8

    new-array v2, v2, [J

    iput-object v2, p0, Lj$/util/stream/d;->c:[J

    iget-object v2, p0, Lj$/util/stream/I1;->d:Ljava/lang/Object;

    aput-object v2, v0, v1

    :cond_0
    iget v0, p0, Lj$/util/stream/d;->b:I

    add-int/lit8 v2, v0, 0x1

    iget-object v3, p0, Lj$/util/stream/I1;->e:[Ljava/lang/Object;

    array-length v4, v3

    if-ge v2, v4, :cond_1

    aget-object v2, v3, v2

    if-nez v2, :cond_3

    :cond_1
    if-nez v0, :cond_2

    iget-object v0, p0, Lj$/util/stream/I1;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lj$/util/stream/I1;->w(Ljava/lang/Object;)I

    move-result v0

    int-to-long v2, v0

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lj$/util/stream/d;->c:[J

    aget-wide v4, v2, v0

    aget-object v0, v3, v0

    invoke-virtual {p0, v0}, Lj$/util/stream/I1;->w(Ljava/lang/Object;)I

    move-result v0

    int-to-long v2, v0

    add-long/2addr v2, v4

    :goto_0
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lj$/util/stream/I1;->y(J)V

    :cond_3
    iput v1, p0, Lj$/util/stream/d;->a:I

    iget v0, p0, Lj$/util/stream/d;->b:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj$/util/stream/d;->b:I

    iget-object v1, p0, Lj$/util/stream/I1;->e:[Ljava/lang/Object;

    aget-object v0, v1, v0

    iput-object v0, p0, Lj$/util/stream/I1;->d:Ljava/lang/Object;

    :cond_4
    return-void
.end method

.method public abstract c(I)Ljava/lang/Object;
.end method

.method public final clear()V
    .locals 2

    iget-object v0, p0, Lj$/util/stream/I1;->e:[Ljava/lang/Object;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    aget-object v0, v0, v1

    iput-object v0, p0, Lj$/util/stream/I1;->d:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-object v0, p0, Lj$/util/stream/I1;->e:[Ljava/lang/Object;

    iput-object v0, p0, Lj$/util/stream/d;->c:[J

    :cond_0
    iput v1, p0, Lj$/util/stream/d;->a:I

    iput v1, p0, Lj$/util/stream/d;->b:I

    return-void
.end method

.method public d()Ljava/lang/Object;
    .locals 5

    invoke-virtual {p0}, Lj$/util/stream/d;->count()J

    move-result-wide v0

    const-wide/32 v2, 0x7ffffff7

    cmp-long v4, v0, v2

    if-gez v4, :cond_0

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lj$/util/stream/I1;->c(I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lj$/util/stream/I1;->t(ILjava/lang/Object;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Stream size exceeds max array size"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public e(Ljava/lang/Object;)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lj$/util/stream/d;->b:I

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lj$/util/stream/I1;->e:[Ljava/lang/Object;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lj$/util/stream/I1;->w(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {p0, v2, v0, v3, p1}, Lj$/util/stream/I1;->v(Ljava/lang/Object;IILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj$/util/stream/I1;->d:Ljava/lang/Object;

    iget v2, p0, Lj$/util/stream/d;->a:I

    invoke-virtual {p0, v1, v0, v2, p1}, Lj$/util/stream/I1;->v(Ljava/lang/Object;IILjava/lang/Object;)V

    return-void
.end method

.method public t(ILjava/lang/Object;)V
    .locals 7

    int-to-long v0, p1

    invoke-virtual {p0}, Lj$/util/stream/d;->count()J

    move-result-wide v2

    add-long/2addr v2, v0

    invoke-virtual {p0, p2}, Lj$/util/stream/I1;->w(Ljava/lang/Object;)I

    move-result v4

    int-to-long v4, v4

    cmp-long v6, v2, v4

    if-gtz v6, :cond_3

    cmp-long v4, v2, v0

    if-ltz v4, :cond_3

    iget v0, p0, Lj$/util/stream/d;->b:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/I1;->d:Ljava/lang/Object;

    iget v2, p0, Lj$/util/stream/d;->a:I

    invoke-static {v0, v1, p2, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v2, p0, Lj$/util/stream/d;->b:I

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lj$/util/stream/I1;->e:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lj$/util/stream/I1;->w(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v2, v1, p2, p1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lj$/util/stream/I1;->e:[Ljava/lang/Object;

    aget-object v2, v2, v0

    invoke-virtual {p0, v2}, Lj$/util/stream/I1;->w(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr p1, v2

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lj$/util/stream/d;->a:I

    if-lez v0, :cond_2

    iget-object v2, p0, Lj$/util/stream/I1;->d:Ljava/lang/Object;

    invoke-static {v2, v1, p2, p1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_2
    :goto_1
    return-void

    :cond_3
    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    const-string p2, "does not fit"

    invoke-direct {p1, p2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected abstract v(Ljava/lang/Object;IILjava/lang/Object;)V
.end method

.method protected abstract w(Ljava/lang/Object;)I
.end method

.method protected final x(J)I
    .locals 6

    iget v0, p0, Lj$/util/stream/d;->b:I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    iget v0, p0, Lj$/util/stream/d;->a:I

    int-to-long v2, v0

    cmp-long v0, p1, v2

    if-gez v0, :cond_0

    return v1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {p0}, Lj$/util/stream/d;->count()J

    move-result-wide v2

    cmp-long v0, p1, v2

    if-gez v0, :cond_4

    :goto_0
    iget v0, p0, Lj$/util/stream/d;->b:I

    if-gt v1, v0, :cond_3

    iget-object v0, p0, Lj$/util/stream/d;->c:[J

    aget-wide v2, v0, v1

    iget-object v0, p0, Lj$/util/stream/I1;->e:[Ljava/lang/Object;

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lj$/util/stream/I1;->w(Ljava/lang/Object;)I

    move-result v0

    int-to-long v4, v0

    add-long/2addr v2, v4

    cmp-long v0, p1, v2

    if-gez v0, :cond_2

    return v1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected final y(J)V
    .locals 11

    iget v0, p0, Lj$/util/stream/d;->b:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/I1;->d:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Lj$/util/stream/I1;->w(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj$/util/stream/d;->c:[J

    aget-wide v2, v1, v0

    iget-object v1, p0, Lj$/util/stream/I1;->e:[Ljava/lang/Object;

    aget-object v0, v1, v0

    invoke-virtual {p0, v0}, Lj$/util/stream/I1;->w(Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    add-long/2addr v0, v2

    :goto_0
    cmp-long v2, p1, v0

    if-lez v2, :cond_5

    iget-object v2, p0, Lj$/util/stream/I1;->e:[Ljava/lang/Object;

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lj$/util/stream/I1;->A()[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lj$/util/stream/I1;->e:[Ljava/lang/Object;

    const/16 v3, 0x8

    new-array v3, v3, [J

    iput-object v3, p0, Lj$/util/stream/d;->c:[J

    const/4 v3, 0x0

    iget-object v4, p0, Lj$/util/stream/I1;->d:Ljava/lang/Object;

    aput-object v4, v2, v3

    :cond_1
    iget v2, p0, Lj$/util/stream/d;->b:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    :goto_1
    cmp-long v4, p1, v0

    if-lez v4, :cond_5

    iget-object v4, p0, Lj$/util/stream/I1;->e:[Ljava/lang/Object;

    array-length v5, v4

    if-lt v2, v5, :cond_2

    array-length v5, v4

    mul-int/lit8 v5, v5, 0x2

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v4

    iput-object v4, p0, Lj$/util/stream/I1;->e:[Ljava/lang/Object;

    iget-object v4, p0, Lj$/util/stream/d;->c:[J

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v4

    iput-object v4, p0, Lj$/util/stream/d;->c:[J

    :cond_2
    if-eqz v2, :cond_4

    if-ne v2, v3, :cond_3

    goto :goto_2

    :cond_3
    add-int/lit8 v4, v2, 0x3

    const/16 v5, 0x1e

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v4, 0x4

    :goto_3
    shl-int v4, v3, v4

    iget-object v5, p0, Lj$/util/stream/I1;->e:[Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lj$/util/stream/I1;->c(I)Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v5, v2

    iget-object v5, p0, Lj$/util/stream/d;->c:[J

    add-int/lit8 v6, v2, -0x1

    aget-wide v7, v5, v6

    iget-object v9, p0, Lj$/util/stream/I1;->e:[Ljava/lang/Object;

    aget-object v6, v9, v6

    invoke-virtual {p0, v6}, Lj$/util/stream/I1;->w(Ljava/lang/Object;)I

    move-result v6

    int-to-long v9, v6

    add-long/2addr v7, v9

    aput-wide v7, v5, v2

    int-to-long v4, v4

    add-long/2addr v0, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method
