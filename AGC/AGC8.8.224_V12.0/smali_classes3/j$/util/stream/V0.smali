.class public abstract Lj$/util/stream/V0;
.super Ljava/lang/Object;

# interfaces
.implements Lj$/util/stream/X0;


# instance fields
.field protected final a:Lj$/util/stream/Z0;


# direct methods
.method public constructor <init>(Lj$/util/stream/Z0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lj$/util/stream/V0;->a:Lj$/util/stream/Z0;

    return-void
.end method


# virtual methods
.method public final synthetic accept(J)V
    .locals 0

    invoke-static {}, Lj$/util/stream/F;->g()V

    const/4 p1, 0x0

    throw p1
.end method

.method public final bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/F;->d(Lj$/util/stream/X0;Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/Consumer;)Ljava/util/function/Consumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/Consumer$-CC;->$default$andThen(Ljava/util/function/Consumer;Ljava/util/function/Consumer;)Ljava/util/function/Consumer;

    move-result-object p1

    return-object p1
.end method

.method public final andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/function/e;

    invoke-direct {v0, p0, p1}, Lj$/util/function/e;-><init>(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)V

    return-object v0
.end method

.method public final f()V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/V0;->a:Lj$/util/stream/Z0;

    invoke-interface {v0}, Lj$/util/stream/Z0;->f()V

    return-void
.end method

.method public final h(J)V
    .locals 1

    iget-object v0, p0, Lj$/util/stream/V0;->a:Lj$/util/stream/Z0;

    invoke-interface {v0, p1, p2}, Lj$/util/stream/Z0;->h(J)V

    return-void
.end method

.method public final synthetic j(Ljava/lang/Integer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/stream/F;->c(Lj$/util/stream/X0;Ljava/lang/Integer;)V

    return-void
.end method

.method public final m()Z
    .locals 1

    iget-object v0, p0, Lj$/util/stream/V0;->a:Lj$/util/stream/Z0;

    invoke-interface {v0}, Lj$/util/stream/Z0;->m()Z

    move-result v0

    return v0
.end method
