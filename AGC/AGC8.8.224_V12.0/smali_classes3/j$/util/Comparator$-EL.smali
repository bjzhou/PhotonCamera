.class public final synthetic Lj$/util/Comparator$-EL;
.super Ljava/lang/Object;


# direct methods
.method public static reversed(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;)Ljava/util/Comparator;
    .locals 1

    invoke-static {p1}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/d;

    invoke-direct {v0, p0, p1}, Lj$/util/d;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    return-object v0
.end method
