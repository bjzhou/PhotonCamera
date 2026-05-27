.class public abstract Lnfx;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/AutoCloseable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Lj$/util/stream/Stream;)Lnfx;
    .locals 3

    new-instance v0, Lnfq;

    sget-object v1, Lnfo;->b:Lnfo;

    sget-object v2, Lnfo;->a:Lnfo;

    invoke-direct {v0, p0, v1, v2, p0}, Lnfq;-><init>(Lj$/util/stream/Stream;Ljava/util/function/Function;Ljava/util/function/Function;Lj$/util/stream/Stream;)V

    return-object v0
.end method

.method public static e(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;
    .locals 1

    new-instance v0, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v0, p0, p1}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public a()Lj$/util/stream/Stream;
    .locals 1

    sget-object v0, Liew;->f:Liew;

    invoke-virtual {p0, v0}, Lnfx;->b(Ljava/util/function/BiFunction;)Lj$/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public abstract b(Ljava/util/function/BiFunction;)Lj$/util/stream/Stream;
.end method

.method public final c(Ljava/util/function/Predicate;)Lnfx;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lnfp;

    invoke-direct {v0, p1}, Lnfp;-><init>(Ljava/util/function/Predicate;)V

    invoke-virtual {p0}, Lnfx;->a()Lj$/util/stream/Stream;

    move-result-object p1

    new-instance v1, Lgfd;

    const/16 v2, 0x10

    invoke-direct {v1, v0, v2}, Lgfd;-><init>(Ljava/util/function/BiPredicate;I)V

    invoke-interface {p1, v1}, Lj$/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Lj$/util/stream/Stream;

    move-result-object p1

    invoke-static {p1}, Lnfx;->d(Lj$/util/stream/Stream;)Lnfx;

    move-result-object p1

    return-object p1
.end method
