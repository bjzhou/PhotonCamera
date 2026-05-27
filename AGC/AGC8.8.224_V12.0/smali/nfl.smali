.class final Lnfl;
.super Lnfn;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lnfn;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/function/BiFunction;)Lj$/util/Optional;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {}, Lj$/util/Optional;->empty()Lj$/util/Optional;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    const-string v0, "empty()"

    return-object v0
.end method
