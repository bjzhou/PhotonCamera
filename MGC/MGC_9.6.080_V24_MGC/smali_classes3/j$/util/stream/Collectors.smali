.class public final Lj$/util/stream/Collectors;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final a:Ljava/util/Set;

.field static final b:Ljava/util/Set;

.field static final c:Ljava/util/Set;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-object v0, Lj$/util/stream/Collector$Characteristics;->CONCURRENT:Lj$/util/stream/Collector$Characteristics;

    sget-object v1, Lj$/util/stream/Collector$Characteristics;->UNORDERED:Lj$/util/stream/Collector$Characteristics;

    sget-object v2, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    invoke-static {v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/util/stream/Collectors;->b:Ljava/util/Set;

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lj$/util/stream/Collectors;->c:Ljava/util/Set;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    return-void
.end method

.method static a([DD)V
    .locals 6

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    sub-double/2addr p1, v1

    const/4 v1, 0x0

    aget-wide v2, p0, v1

    add-double v4, v2, p1

    sub-double v2, v4, v2

    sub-double/2addr v2, p1

    aput-wide v2, p0, v0

    aput-wide v4, p0, v1

    return-void
.end method

.method public static b()Lj$/util/stream/Collector;
    .locals 7

    new-instance v6, Lj$/util/stream/i;

    new-instance v1, Lj$/util/stream/f;

    const/16 v0, 0x13

    invoke-direct {v1, v0}, Lj$/util/stream/f;-><init>(I)V

    new-instance v2, Lj$/util/stream/f;

    const/16 v0, 0x14

    invoke-direct {v2, v0}, Lj$/util/stream/f;-><init>(I)V

    new-instance v3, Lj$/util/stream/f;

    const/4 v0, 0x1

    invoke-direct {v3, v0}, Lj$/util/stream/f;-><init>(I)V

    new-instance v4, Lj$/util/stream/f;

    const/4 v0, 0x2

    invoke-direct {v4, v0}, Lj$/util/stream/f;-><init>(I)V

    sget-object v5, Lj$/util/stream/Collectors;->c:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/i;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static groupingBy(Ljava/util/function/Function;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    invoke-static {}, Lj$/util/stream/Collectors;->toList()Lj$/util/stream/Collector;

    move-result-object v0

    new-instance v2, Lj$/util/stream/f;

    const/16 v1, 0x1a

    invoke-direct {v2, v1}, Lj$/util/stream/f;-><init>(I)V

    invoke-interface {v0}, Lj$/util/stream/Collector;->supplier()Ljava/util/function/Supplier;

    move-result-object v1

    invoke-interface {v0}, Lj$/util/stream/Collector;->accumulator()Ljava/util/function/BiConsumer;

    move-result-object v3

    new-instance v4, Lj$/util/stream/h;

    invoke-direct {v4, p0, v1, v3}, Lj$/util/stream/h;-><init>(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;)V

    invoke-interface {v0}, Lj$/util/stream/Collector;->a()Ljava/util/function/BinaryOperator;

    move-result-object p0

    new-instance v5, Lj$/util/stream/a;

    const/4 v1, 0x3

    invoke-direct {v5, v1, p0}, Lj$/util/stream/a;-><init>(ILjava/lang/Object;)V

    invoke-interface {v0}, Lj$/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object p0

    sget-object v1, Lj$/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Lj$/util/stream/Collector$Characteristics;

    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Lj$/util/stream/i;

    sget-object v0, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    invoke-direct {p0, v2, v4, v5, v0}, Lj$/util/stream/i;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lj$/util/stream/Collector;->finisher()Ljava/util/function/Function;

    move-result-object p0

    new-instance v0, Lj$/util/stream/g;

    invoke-direct {v0, p0}, Lj$/util/stream/g;-><init>(Ljava/util/function/Function;)V

    new-instance p0, Lj$/util/stream/i;

    sget-object v6, Lj$/util/stream/Collectors;->c:Ljava/util/Set;

    move-object v1, p0

    move-object v3, v4

    move-object v4, v5

    move-object v5, v0

    invoke-direct/range {v1 .. v6}, Lj$/util/stream/i;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    :goto_0
    return-object p0
.end method

.method public static joining(Ljava/lang/CharSequence;)Lj$/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Lj$/util/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v6, Lj$/util/stream/i;

    new-instance v1, Lj$/util/stream/a;

    const/4 v0, 0x2

    invoke-direct {v1, v0, p0}, Lj$/util/stream/a;-><init>(ILjava/lang/Object;)V

    new-instance v2, Lj$/util/stream/f;

    const/16 p0, 0x17

    invoke-direct {v2, p0}, Lj$/util/stream/f;-><init>(I)V

    new-instance v3, Lj$/util/stream/f;

    const/16 p0, 0x18

    invoke-direct {v3, p0}, Lj$/util/stream/f;-><init>(I)V

    new-instance v4, Lj$/util/stream/f;

    const/16 p0, 0x19

    invoke-direct {v4, p0}, Lj$/util/stream/f;-><init>(I)V

    sget-object v5, Lj$/util/stream/Collectors;->c:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lj$/util/stream/i;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static toCollection(Ljava/util/function/Supplier;)Lj$/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "TT;>;>(",
            "Ljava/util/function/Supplier<",
            "TC;>;)",
            "Lj$/util/stream/Collector<",
            "TT;*TC;>;"
        }
    .end annotation

    new-instance v0, Lj$/util/stream/i;

    new-instance v1, Lj$/util/stream/f;

    const/16 v2, 0x12

    invoke-direct {v1, v2}, Lj$/util/stream/f;-><init>(I)V

    new-instance v2, Lj$/util/stream/f;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lj$/util/stream/f;-><init>(I)V

    sget-object v3, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    invoke-direct {v0, p0, v1, v2, v3}, Lj$/util/stream/i;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toList()Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lj$/util/stream/i;

    new-instance v1, Lj$/util/stream/f;

    const/16 v2, 0x13

    invoke-direct {v1, v2}, Lj$/util/stream/f;-><init>(I)V

    new-instance v2, Lj$/util/stream/f;

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Lj$/util/stream/f;-><init>(I)V

    new-instance v3, Lj$/util/stream/f;

    const/4 v4, 0x3

    invoke-direct {v3, v4}, Lj$/util/stream/f;-><init>(I)V

    sget-object v4, Lj$/util/stream/Collectors;->a:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/stream/i;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toSet()Lj$/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lj$/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    new-instance v0, Lj$/util/stream/i;

    new-instance v1, Lj$/util/stream/f;

    const/16 v2, 0x15

    invoke-direct {v1, v2}, Lj$/util/stream/f;-><init>(I)V

    new-instance v2, Lj$/util/stream/f;

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Lj$/util/stream/f;-><init>(I)V

    new-instance v3, Lj$/util/stream/f;

    const/4 v4, 0x5

    invoke-direct {v3, v4}, Lj$/util/stream/f;-><init>(I)V

    sget-object v4, Lj$/util/stream/Collectors;->b:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Lj$/util/stream/i;-><init>(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method
