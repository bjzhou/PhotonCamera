.class public final synthetic Lifa;
.super Ljava/lang/Object;

# interfaces
.implements Liez;


# static fields
.field public static final synthetic a:Lifa;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lifa;

    invoke-direct {v0}, Lifa;-><init>()V

    sput-object v0, Lifa;->a:Lifa;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    check-cast p1, Lifr;

    check-cast p2, Lifr;

    sget-object v0, Life;->a:Landroid/view/animation/Interpolator;

    iget-object p1, p1, Lifr;->v:Liem;

    iget-object p1, p2, Lifr;->v:Liem;

    return-void
.end method

.method public final synthetic andThen(Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;
    .locals 0

    invoke-static {p0, p1}, Lj$/util/function/BiConsumer$-CC;->$default$andThen(Ljava/util/function/BiConsumer;Ljava/util/function/BiConsumer;)Ljava/util/function/BiConsumer;

    move-result-object p1

    return-object p1
.end method
