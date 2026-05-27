.class final Lj$/util/stream/O0;
.super Lj$/util/stream/N0;

# interfaces
.implements Lj$/util/stream/M0;


# instance fields
.field b:J


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lj$/util/stream/N0;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/F;->b()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/F;->g()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final accept(Ljava/lang/Object;)V
    .locals 4

    iget-wide v0, p0, Lj$/util/stream/O0;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/stream/O0;->b:J

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic f()V
    .locals 0

    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 2

    iget-wide v0, p0, Lj$/util/stream/O0;->b:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public final h(J)V
    .locals 0

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lj$/util/stream/O0;->b:J

    return-void
.end method

.method public final l(Lj$/util/stream/M0;)V
    .locals 4

    check-cast p1, Lj$/util/stream/O0;

    iget-wide v0, p0, Lj$/util/stream/O0;->b:J

    iget-wide v2, p1, Lj$/util/stream/O0;->b:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lj$/util/stream/O0;->b:J

    return-void
.end method

.method public final bridge synthetic m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
