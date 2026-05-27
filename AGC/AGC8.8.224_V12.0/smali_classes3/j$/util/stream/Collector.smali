.class public interface abstract Lj$/util/stream/Collector;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj$/util/stream/Collector$Characteristics;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract a()Ljava/util/function/BiConsumer;
.end method

.method public abstract b()Ljava/util/function/BinaryOperator;
.end method

.method public abstract c()Ljava/util/function/Supplier;
.end method

.method public abstract characteristics()Ljava/util/Set;
.end method

.method public abstract d()Ljava/util/function/Function;
.end method
