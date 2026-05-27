.class final Lnmj;
.super Lnml;


# direct methods
.method public constructor <init>(Lnou;Ljava/lang/Class;Lnno;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnml;-><init>(Lnou;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic g(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lnno;

    invoke-interface {p1, p2}, Lnno;->a(Ljava/lang/Object;)Lnou;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-object p1
.end method

.method public final synthetic h(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lnou;

    invoke-virtual {p0, p1}, Lnnb;->f(Lnou;)Z

    return-void
.end method
