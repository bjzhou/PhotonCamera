.class abstract Lj$/util/stream/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected a:I

.field protected b:I

.field protected c:[J


# virtual methods
.method public abstract clear()V
.end method

.method public final count()J
    .locals 4

    iget v0, p0, Lj$/util/stream/d;->b:I

    if-nez v0, :cond_0

    iget v0, p0, Lj$/util/stream/d;->a:I

    int-to-long v0, v0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj$/util/stream/d;->c:[J

    aget-wide v0, v1, v0

    iget v2, p0, Lj$/util/stream/d;->a:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    :goto_0
    return-wide v0
.end method
