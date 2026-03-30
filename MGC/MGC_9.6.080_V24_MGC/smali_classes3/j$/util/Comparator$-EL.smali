.class public final synthetic Lj$/util/Comparator$-EL;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static reversed(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 0

    invoke-static {p0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object p0

    return-object p0
.end method

.method public static thenComparing(Ljava/util/Comparator;Ljava/util/function/Function;)Ljava/util/Comparator;
    .locals 2

    invoke-static {p1}, Lj$/util/Comparator$-CC;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lj$/util/d;-><init>(Ljava/util/Comparator;Ljava/lang/Object;I)V

    return-object v0
.end method
