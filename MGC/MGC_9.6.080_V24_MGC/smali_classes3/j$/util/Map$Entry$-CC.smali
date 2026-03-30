.class public final synthetic Lj$/util/Map$Entry$-CC;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static comparingByValue(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TV;>;)",
            "Ljava/util/Comparator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lj$/util/c;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lj$/util/c;-><init>(ILjava/lang/Object;)V

    return-object v0
.end method
