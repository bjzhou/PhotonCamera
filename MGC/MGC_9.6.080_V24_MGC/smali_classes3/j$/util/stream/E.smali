.class final Lj$/util/stream/E;
.super Lj$/util/stream/m1;
.source "SourceFile"


# instance fields
.field final synthetic b:Lj$/util/stream/y;


# direct methods
.method constructor <init>(Lj$/util/stream/y;Lj$/util/stream/r1;)V
    .locals 0

    iput-object p1, p0, Lj$/util/stream/E;->b:Lj$/util/stream/y;

    invoke-direct {p0, p2}, Lj$/util/stream/m1;-><init>(Lj$/util/stream/r1;)V

    return-void
.end method


# virtual methods
.method public final accept(J)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/E;->b:Lj$/util/stream/y;

    iget-object v0, v0, Lj$/util/stream/y;->o:Ljava/lang/Object;

    check-cast v0, Lj$/util/stream/n;

    invoke-interface {v0, p1, p2}, Ljava/util/function/LongFunction;->apply(J)Ljava/lang/Object;

    move-result-object p1

    iget-object p2, p0, Lj$/util/stream/m1;->a:Lj$/util/stream/r1;

    invoke-interface {p2, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    return-void
.end method
