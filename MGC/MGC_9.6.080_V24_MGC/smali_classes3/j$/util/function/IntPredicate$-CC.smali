.class public final synthetic Lj$/util/function/IntPredicate$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$and(Ljava/util/function/IntPredicate;Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/function/f;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lj$/util/function/f;-><init>(Ljava/util/function/IntPredicate;Ljava/util/function/IntPredicate;I)V

    return-object v0
.end method

.method public static $default$negate(Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;
    .locals 1

    new-instance v0, Lj$/desugar/sun/nio/fs/h;

    invoke-direct {v0, p0}, Lj$/desugar/sun/nio/fs/h;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static $default$or(Ljava/util/function/IntPredicate;Ljava/util/function/IntPredicate;)Ljava/util/function/IntPredicate;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/function/f;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lj$/util/function/f;-><init>(Ljava/util/function/IntPredicate;Ljava/util/function/IntPredicate;I)V

    return-object v0
.end method
