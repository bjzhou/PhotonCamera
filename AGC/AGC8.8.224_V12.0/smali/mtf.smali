.class public final Lmtf;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lj$/util/stream/Collector;

.field public static final b:Lj$/util/stream/Collector;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-object v0, Ldrk;->h:Ldrk;

    sget-object v1, Lgna;->e:Lgna;

    sget-object v2, Lmte;->a:Lmte;

    sget-object v3, Lifp;->s:Lifp;

    const/4 v4, 0x0

    new-array v5, v4, [Lj$/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v5}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lmtf;->a:Lj$/util/stream/Collector;

    sget-object v0, Ldrk;->i:Ldrk;

    sget-object v1, Lgna;->f:Lgna;

    sget-object v2, Lmte;->c:Lmte;

    sget-object v3, Lifp;->t:Lifp;

    new-array v5, v4, [Lj$/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v5}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    move-result-object v0

    sput-object v0, Lmtf;->b:Lj$/util/stream/Collector;

    sget-object v0, Ldrk;->j:Ldrk;

    sget-object v1, Lgna;->g:Lgna;

    sget-object v2, Lmte;->b:Lmte;

    sget-object v3, Lifp;->r:Lifp;

    new-array v4, v4, [Lj$/util/stream/Collector$Characteristics;

    invoke-static {v0, v1, v2, v3, v4}, Lj$/util/stream/Collector$-CC;->of(Ljava/util/function/Supplier;Ljava/util/function/BiConsumer;Ljava/util/function/BinaryOperator;Ljava/util/function/Function;[Lj$/util/stream/Collector$Characteristics;)Lj$/util/stream/Collector;

    return-void
.end method
