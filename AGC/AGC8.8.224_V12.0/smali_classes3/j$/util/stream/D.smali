.class final Lj$/util/stream/D;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/stream/X1;


# instance fields
.field final a:Lj$/util/stream/C;

.field final b:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(Lj$/util/stream/v1;Lj$/util/stream/C;Lj$/util/stream/i;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lj$/util/stream/D;->a:Lj$/util/stream/C;

    iput-object p3, p0, Lj$/util/stream/D;->b:Ljava/util/function/Supplier;

    return-void
.end method


# virtual methods
.method public final b()I
    .locals 2

    sget v0, Lj$/util/stream/u1;->t:I

    sget v1, Lj$/util/stream/u1;->q:I

    or-int/2addr v0, v1

    return v0
.end method

.method public final c(Lj$/util/stream/F;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 1

    new-instance v0, Lj$/util/stream/E;

    invoke-direct {v0, p0, p1, p2}, Lj$/util/stream/E;-><init>(Lj$/util/stream/D;Lj$/util/stream/F;Lj$/util/Spliterator;)V

    invoke-virtual {v0}, Ljava/util/concurrent/CountedCompleter;->invoke()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public final d(Lj$/util/stream/F;Lj$/util/Spliterator;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj$/util/stream/D;->b:Ljava/util/function/Supplier;

    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lj$/util/stream/B;

    invoke-virtual {p1, p2, v0}, Lj$/util/stream/F;->A(Lj$/util/Spliterator;Lj$/util/stream/Z0;)Lj$/util/stream/Z0;

    iget-boolean p1, v0, Lj$/util/stream/B;->b:Z

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
