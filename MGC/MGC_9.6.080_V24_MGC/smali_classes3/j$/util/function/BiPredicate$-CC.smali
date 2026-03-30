.class public final synthetic Lj$/util/function/BiPredicate$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static $default$and(Ljava/util/function/BiPredicate;Ljava/util/function/BiPredicate;)Ljava/util/function/BiPredicate;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/function/a;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lj$/util/function/a;-><init>(Ljava/util/function/BiPredicate;Ljava/util/function/BiPredicate;I)V

    return-object v0
.end method

.method public static $default$negate(Ljava/util/function/BiPredicate;)Ljava/util/function/BiPredicate;
    .locals 1

    new-instance v0, Lj$/desugar/sun/nio/fs/h;

    invoke-direct {v0, p0}, Lj$/desugar/sun/nio/fs/h;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static $default$or(Ljava/util/function/BiPredicate;Ljava/util/function/BiPredicate;)Ljava/util/function/BiPredicate;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/function/a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lj$/util/function/a;-><init>(Ljava/util/function/BiPredicate;Ljava/util/function/BiPredicate;I)V

    return-object v0
.end method
