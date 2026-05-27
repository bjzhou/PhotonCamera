.class public final synthetic Lmte;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BinaryOperator;


# static fields
.field public static final synthetic a:Lmte;

.field public static final synthetic b:Lmte;

.field public static final synthetic c:Lmte;


# instance fields
.field private final synthetic d:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lmte;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lmte;-><init>(I)V

    sput-object v0, Lmte;->c:Lmte;

    new-instance v0, Lmte;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lmte;-><init>(I)V

    sput-object v0, Lmte;->b:Lmte;

    new-instance v0, Lmte;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lmte;-><init>(I)V

    sput-object v0, Lmte;->a:Lmte;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lmte;->d:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/BiFunction;
    .locals 1

    iget v0, p0, Lmte;->d:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p0, p1}, Lj$/util/function/BiFunction$-CC;->$default$andThen(Ljava/util/function/BiFunction;Ljava/util/function/Function;)Ljava/util/function/BiFunction;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget v0, p0, Lmte;->d:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Lmwl;

    check-cast p2, Lmwl;

    invoke-virtual {p1, p2}, Lmwl;->i(Lmwl;)V

    return-object p1

    :pswitch_0
    check-cast p1, Llhz;

    check-cast p2, Llhz;

    iget-object p2, p2, Llhz;->a:Ljava/lang/Object;

    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmym;

    invoke-virtual {p1, v0}, Llhz;->e(Lmym;)V

    goto :goto_0

    :cond_0
    return-object p1

    :pswitch_1
    check-cast p1, Lmvq;

    check-cast p2, Lmvq;

    iget-object v0, p2, Lmvq;->a:[Ljava/lang/Object;

    iget p2, p2, Lmvq;->b:I

    invoke-virtual {p1, v0, p2}, Lmvl;->b([Ljava/lang/Object;I)V

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
