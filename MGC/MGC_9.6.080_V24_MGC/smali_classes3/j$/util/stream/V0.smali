.class final Lj$/util/stream/V0;
.super Lj$/util/stream/M;
.source "SourceFile"


# instance fields
.field final synthetic h:Ljava/util/function/BinaryOperator;

.field final synthetic i:Ljava/util/function/BiConsumer;

.field final synthetic j:Ljava/util/function/Supplier;

.field final synthetic k:Lj$/util/stream/Collector;


# direct methods
.method constructor <init>(Lj$/util/stream/N1;Ljava/util/function/BinaryOperator;Ljava/util/function/BiConsumer;Ljava/util/function/Supplier;Lj$/util/stream/Collector;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lj$/util/stream/V0;->h:Ljava/util/function/BinaryOperator;

    iput-object p3, p0, Lj$/util/stream/V0;->i:Ljava/util/function/BiConsumer;

    iput-object p4, p0, Lj$/util/stream/V0;->j:Ljava/util/function/Supplier;

    iput-object p5, p0, Lj$/util/stream/V0;->k:Lj$/util/stream/Collector;

    return-void
.end method


# virtual methods
.method public final K()Lj$/util/stream/b1;
    .locals 4

    new-instance v0, Lj$/util/stream/W0;

    iget-object v1, p0, Lj$/util/stream/V0;->j:Ljava/util/function/Supplier;

    iget-object v2, p0, Lj$/util/stream/V0;->i:Ljava/util/function/BiConsumer;

    iget-object v3, p0, Lj$/util/stream/V0;->h:Ljava/util/function/BinaryOperator;

    invoke-direct {v0, v1, v2, v3}, Lj$/util/stream/W0;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;)V

    return-object v0
.end method

.method public final d()I
    .locals 2

    iget-object v0, p0, Lj$/util/stream/V0;->k:Lj$/util/stream/Collector;

    invoke-interface {v0}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lj$/util/stream/M1;->q:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
