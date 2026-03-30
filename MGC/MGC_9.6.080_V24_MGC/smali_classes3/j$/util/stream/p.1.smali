.class final Lj$/util/stream/p;
.super Lj$/util/stream/r;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/p1;


# static fields
.field static final c:Lj$/util/stream/o;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    new-instance v6, Lj$/util/stream/o;

    sget-object v7, Lj$/util/stream/N1;->INT_VALUE:Lj$/util/stream/N1;

    invoke-static {}, Lj$/util/OptionalInt;->empty()Lj$/util/OptionalInt;

    move-result-object v3

    new-instance v4, Lj$/util/stream/n;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Lj$/util/stream/n;-><init>(I)V

    new-instance v5, Lj$/util/stream/f;

    const/16 v0, 0x8

    invoke-direct {v5, v0}, Lj$/util/stream/f;-><init>(I)V

    const/4 v1, 0x1

    move-object v0, v6

    move-object v2, v7

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/o;-><init>(ZLj$/util/stream/N1;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    sput-object v6, Lj$/util/stream/p;->c:Lj$/util/stream/o;

    new-instance v0, Lj$/util/stream/o;

    invoke-static {}, Lj$/util/OptionalInt;->empty()Lj$/util/OptionalInt;

    move-result-object v3

    new-instance v4, Lj$/util/stream/n;

    const/4 v1, 0x2

    invoke-direct {v4, v1}, Lj$/util/stream/n;-><init>(I)V

    new-instance v5, Lj$/util/stream/f;

    const/16 v1, 0x8

    invoke-direct {v5, v1}, Lj$/util/stream/f;-><init>(I)V

    const/4 v1, 0x0

    move-object v2, v7

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/o;-><init>(ZLj$/util/stream/N1;Ljava/lang/Object;Ljava/util/function/Predicate;Ljava/util/function/Supplier;)V

    return-void
.end method


# virtual methods
.method public final accept(I)V
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Lj$/util/stream/r;->accept(Ljava/lang/Object;)V

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/IntConsumer$-CC;->$default$andThen(Ljava/util/function/IntConsumer;Ljava/util/function/IntConsumer;)Ljava/util/function/IntConsumer;

    move-result-object p1

    return-object p1
.end method

.method public final get()Ljava/lang/Object;
    .locals 1

    iget-boolean v0, p0, Lj$/util/stream/r;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj$/util/stream/r;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lj$/util/OptionalInt;->of(I)Lj$/util/OptionalInt;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
