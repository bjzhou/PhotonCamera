.class public final synthetic Lgna;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/function/BiConsumer;


# static fields
.field public static final synthetic a:Lgna;

.field public static final synthetic b:Lgna;

.field public static final synthetic c:Lgna;

.field public static final synthetic d:Lgna;

.field public static final synthetic e:Lgna;

.field public static final synthetic f:Lgna;

.field public static final synthetic g:Lgna;


# instance fields
.field private final synthetic h:I


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 2

    new-instance v0, Lgna;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Lgna;-><init>(I)V

    sput-object v0, Lgna;->g:Lgna;

    new-instance v0, Lgna;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lgna;-><init>(I)V

    sput-object v0, Lgna;->f:Lgna;

    new-instance v0, Lgna;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lgna;-><init>(I)V

    sput-object v0, Lgna;->e:Lgna;

    new-instance v0, Lgna;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lgna;-><init>(I)V

    sput-object v0, Lgna;->d:Lgna;

    new-instance v0, Lgna;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lgna;-><init>(I)V

    sput-object v0, Lgna;->c:Lgna;

    new-instance v0, Lgna;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lgna;-><init>(I)V

    sput-object v0, Lgna;->b:Lgna;

    new-instance v0, Lgna;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lgna;-><init>(I)V

    sput-object v0, Lgna;->a:Lgna;

    return-void
.end method

.method private synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lgna;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget v0, p0, Lgna;->h:I

    packed-switch v0, :pswitch_data_0

    check-cast p1, Llhz;

    check-cast p2, Lmym;

    invoke-virtual {p1, p2}, Llhz;->e(Lmym;)V

    return-void

    :pswitch_0
    check-cast p1, Lmwl;

    invoke-virtual {p1, p2}, Lmwl;->g(Ljava/lang/Object;)V

    return-void

    :pswitch_1
    check-cast p1, Lmvq;

    invoke-virtual {p1, p2}, Lmvq;->g(Ljava/lang/Object;)V

    return-void

    :pswitch_2
    check-cast p1, Lhrc;

    check-cast p2, Lhrb;

    invoke-interface {p2}, Lhrb;->b()V

    return-void

    :pswitch_3
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Lkpb;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Lkpb;->close()V

    :cond_0
    return-void

    :pswitch_4
    check-cast p1, Lgeh;

    check-cast p2, Ljava/lang/Boolean;

    return-void

    :pswitch_5
    check-cast p1, Ljava/lang/Long;

    check-cast p2, Lkpb;

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lkpb;->close()V

    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 1

    iget v0, p0, Lgna;->h:I

    packed-switch v0, :pswitch_data_0

    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_0
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_1
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_2
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_3
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_4
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_5
    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
