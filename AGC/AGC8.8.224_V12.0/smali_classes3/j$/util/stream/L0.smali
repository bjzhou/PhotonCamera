.class final Lj$/util/stream/L0;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/stream/M0;
.implements Lj$/util/stream/Y0;


# instance fields
.field private a:Z

.field private b:J

.field final synthetic c:Ljava/util/function/LongBinaryOperator;


# direct methods
.method constructor <init>(Ljava/util/function/LongBinaryOperator;)V
    .locals 0

    iput-object p1, p0, Lj$/util/stream/L0;->c:Ljava/util/function/LongBinaryOperator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic accept(I)V
    .locals 0

    invoke-static {}, Lj$/util/stream/F;->b()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final accept(J)V
    .locals 3

    iget-boolean v0, p0, Lj$/util/stream/L0;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj$/util/stream/L0;->a:Z

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lj$/util/stream/L0;->b:J

    iget-object v2, p0, Lj$/util/stream/L0;->c:Ljava/util/function/LongBinaryOperator;

    check-cast v2, Lj$/desugar/sun/nio/fs/n;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    :goto_0
    iput-wide p1, p0, Lj$/util/stream/L0;->b:J

    return-void
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/F;->f(Lj$/util/stream/Y0;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final andThen(Ljava/util/function/LongConsumer;)Ljava/util/function/LongConsumer;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/function/g;

    invoke-direct {v0, p0, p1}, Lj$/util/function/g;-><init>(Ljava/util/function/LongConsumer;Ljava/util/function/LongConsumer;)V

    return-object v0
.end method

.method public final synthetic f()V
    .locals 0

    return-void
.end method

.method public final get()Ljava/lang/Object;
    .locals 2

    iget-boolean v0, p0, Lj$/util/stream/L0;->a:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lj$/util/OptionalLong;->a()Lj$/util/OptionalLong;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lj$/util/stream/L0;->b:J

    invoke-static {v0, v1}, Lj$/util/OptionalLong;->b(J)Lj$/util/OptionalLong;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final h(J)V
    .locals 0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lj$/util/stream/L0;->a:Z

    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lj$/util/stream/L0;->b:J

    return-void
.end method

.method public final l(Lj$/util/stream/M0;)V
    .locals 2

    check-cast p1, Lj$/util/stream/L0;

    iget-boolean v0, p1, Lj$/util/stream/L0;->a:Z

    if-nez v0, :cond_0

    iget-wide v0, p1, Lj$/util/stream/L0;->b:J

    invoke-virtual {p0, v0, v1}, Lj$/util/stream/L0;->accept(J)V

    :cond_0
    return-void
.end method

.method public final synthetic m()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final synthetic s(Ljava/lang/Long;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/F;->e(Lj$/util/stream/Y0;Ljava/lang/Long;)V

    return-void
.end method
