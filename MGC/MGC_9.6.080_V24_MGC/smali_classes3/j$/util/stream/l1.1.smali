.class public abstract Lj$/util/stream/l1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/p1;


# instance fields
.field protected final a:Lj$/util/stream/r1;


# direct methods
.method public constructor <init>(Lj$/util/stream/r1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lj$/util/stream/l1;->a:Lj$/util/stream/r1;

    return-void
.end method


# virtual methods
.method public final synthetic accept(D)V
    .locals 0

    invoke-static {}, Lj$/util/stream/M;->a()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/M;->l()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/M;->h(Lj$/util/stream/p1;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method public final j()V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/l1;->a:Lj$/util/stream/r1;

    invoke-interface {v0}, Lj$/util/stream/r1;->j()V

    return-void
.end method

.method public k(J)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/l1;->a:Lj$/util/stream/r1;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/r1;->k(J)V

    return-void
.end method

.method public final synthetic l(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/M;->g(Lj$/util/stream/p1;Ljava/lang/Integer;)V

    return-void
.end method

.method public final n()Z
    .locals 1

    iget-object v0, p0, Lj$/util/stream/l1;->a:Lj$/util/stream/r1;

    invoke-interface {v0}, Lj$/util/stream/r1;->n()Z

    move-result v0

    return v0
.end method
