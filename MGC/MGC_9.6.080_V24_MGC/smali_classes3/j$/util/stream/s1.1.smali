.class final Lj$/util/stream/s1;
.super Lj$/util/stream/n1;
.source "SourceFile"


# instance fields
.field b:J

.field c:J

.field final synthetic d:Lj$/util/stream/t1;


# direct methods
.method constructor <init>(Lj$/util/stream/t1;Lj$/util/stream/r1;)V
    .locals 3

    iput-object p1, p0, Lj$/util/stream/s1;->d:Lj$/util/stream/t1;

    invoke-direct {p0, p2}, Lj$/util/stream/n1;-><init>(Lj$/util/stream/r1;)V

    iget-wide v0, p1, Lj$/util/stream/t1;->n:J

    iput-wide v0, p0, Lj$/util/stream/s1;->b:J

    iget-wide p1, p1, Lj$/util/stream/t1;->o:J

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    goto :goto_0

    :cond_0
    const-wide p1, 0x7fffffffffffffffL

    :goto_0
    iput-wide p1, p0, Lj$/util/stream/s1;->c:J

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 7

    iget-wide v0, p0, Lj$/util/stream/s1;->b:J

    const-wide/16 v2, 0x1

    const-wide/16 v4, 0x0

    cmp-long v6, v0, v4

    if-nez v6, :cond_0

    iget-wide v0, p0, Lj$/util/stream/s1;->c:J

    cmp-long v6, v0, v4

    if-lez v6, :cond_1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/stream/s1;->c:J

    iget-object v0, p0, Lj$/util/stream/n1;->a:Lj$/util/stream/r1;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    sub-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/stream/s1;->b:J

    :cond_1
    :goto_0
    return-void
.end method

.method public final k(J)V
    .locals 9

    iget-object v0, p0, Lj$/util/stream/s1;->d:Lj$/util/stream/t1;

    iget-wide v0, v0, Lj$/util/stream/t1;->n:J

    iget-wide v2, p0, Lj$/util/stream/s1;->c:J

    const-wide/16 v4, 0x0

    const-wide/16 v6, -0x1

    cmp-long v8, p1, v4

    if-ltz v8, :cond_0

    sub-long/2addr p1, v0

    invoke-static {p1, p2, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    invoke-static {v6, v7, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    :cond_0
    iget-object p1, p0, Lj$/util/stream/n1;->a:Lj$/util/stream/r1;

    invoke-interface {p1, v6, v7}, Lj$/util/stream/r1;->k(J)V

    return-void
.end method

.method public final n()Z
    .locals 5

    iget-wide v0, p0, Lj$/util/stream/s1;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v0, p0, Lj$/util/stream/n1;->a:Lj$/util/stream/r1;

    invoke-interface {v0}, Lj$/util/stream/r1;->n()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
