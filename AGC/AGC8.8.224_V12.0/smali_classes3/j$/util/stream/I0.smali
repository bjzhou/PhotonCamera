.class final Lj$/util/stream/I0;
.super Lj$/util/stream/E0;


# instance fields
.field final synthetic h:Ljava/util/function/BiConsumer;

.field final synthetic i:Ljava/util/function/BiConsumer;

.field final synthetic j:Ljava/util/function/Supplier;


# direct methods
.method constructor <init>(Lj$/util/stream/v1;Lj$/util/stream/b;Lj$/util/stream/b;Lj$/util/stream/b;)V
    .locals 0

    iput-object p2, p0, Lj$/util/stream/I0;->h:Ljava/util/function/BiConsumer;

    iput-object p3, p0, Lj$/util/stream/I0;->i:Ljava/util/function/BiConsumer;

    iput-object p4, p0, Lj$/util/stream/I0;->j:Ljava/util/function/Supplier;

    invoke-direct {p0, p1}, Lj$/util/stream/E0;-><init>(Lj$/util/stream/v1;)V

    return-void
.end method


# virtual methods
.method public final p()Lj$/util/stream/M0;
    .locals 4

    new-instance v0, Lj$/util/stream/J0;

    iget-object v1, p0, Lj$/util/stream/I0;->h:Ljava/util/function/BiConsumer;

    iget-object v2, p0, Lj$/util/stream/I0;->j:Ljava/util/function/Supplier;

    iget-object v3, p0, Lj$/util/stream/I0;->i:Ljava/util/function/BiConsumer;

    invoke-direct {v0, v2, v3, v1}, Lj$/util/stream/J0;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)V

    return-object v0
.end method
