.class final Lj$/util/stream/o0;
.super Lj$/util/stream/q0;

# interfaces
.implements Lj$/util/u;


# direct methods
.method constructor <init>(Lj$/util/stream/L;)V
    .locals 0

    invoke-direct {p0, p1}, Lj$/util/stream/q0;-><init>(Lj$/util/stream/N;)V

    return-void
.end method


# virtual methods
.method public final synthetic forEachRemaining(Ljava/util/function/Consumer;)V
    .locals 0

    invoke-static {p0, p1}, Lj$/util/b;->b(Lj$/util/u;Ljava/util/function/Consumer;)V

    return-void
.end method

.method public final synthetic tryAdvance(Ljava/util/function/Consumer;)Z
    .locals 0

    invoke-static {p0, p1}, Lj$/util/b;->k(Lj$/util/u;Ljava/util/function/Consumer;)Z

    move-result p1

    return p1
.end method
