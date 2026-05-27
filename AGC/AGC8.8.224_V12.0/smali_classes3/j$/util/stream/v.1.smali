.class final Lj$/util/stream/v;
.super Lj$/util/stream/V0;


# instance fields
.field final synthetic b:Lj$/util/stream/w;


# direct methods
.method constructor <init>(Lj$/util/stream/w;Lj$/util/stream/Z0;)V
    .locals 0

    iput-object p1, p0, Lj$/util/stream/v;->b:Lj$/util/stream/w;

    invoke-direct {p0, p2}, Lj$/util/stream/V0;-><init>(Lj$/util/stream/Z0;)V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/v;->b:Lj$/util/stream/w;

    iget-object v0, v0, Lj$/util/stream/w;->n:Ljava/lang/Object;

    check-cast v0, Ljava/util/function/IntFunction;

    invoke-interface {v0, p1}, Ljava/util/function/IntFunction;->apply(I)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lj$/util/stream/V0;->a:Lj$/util/stream/Z0;

    invoke-interface {v0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
