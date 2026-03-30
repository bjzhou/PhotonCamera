.class public interface abstract Lj$/util/stream/IntStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lj$/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lj$/util/stream/BaseStream<",
        "Ljava/lang/Integer;",
        "Lj$/util/stream/IntStream;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract boxed()Lj$/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lj$/util/stream/Stream<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract filter(Ljava/util/function/IntPredicate;)Lj$/util/stream/IntStream;
.end method

.method public abstract findFirst()Lj$/util/OptionalInt;
.end method

.method public abstract map(Ljava/util/function/IntUnaryOperator;)Lj$/util/stream/IntStream;
.end method

.method public abstract mapToObj(Ljava/util/function/IntFunction;)Lj$/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/IntFunction<",
            "+TU;>;)",
            "Lj$/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract min()Lj$/util/OptionalInt;
.end method
