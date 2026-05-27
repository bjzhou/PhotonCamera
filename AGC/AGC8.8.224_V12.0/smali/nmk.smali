.class final Lnmk;
.super Lnml;


# direct methods
.method public constructor <init>(Lnou;Ljava/lang/Class;Lmqi;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lnml;-><init>(Lnou;Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic g(Ljava/lang/Object;Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lmqi;

    invoke-interface {p1, p2}, Lmqi;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final h(Ljava/lang/Object;)V
    .locals 0

    invoke-virtual {p0, p1}, Lnnb;->e(Ljava/lang/Object;)Z

    return-void
.end method
