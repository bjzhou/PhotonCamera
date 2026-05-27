.class public final Lotd;
.super Lost;

# interfaces
.implements Lopu;
.implements Lotj;


# direct methods
.method public constructor <init>(Lola;Loss;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0, p1, p2}, Lost;-><init>(Lola;Loss;)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic db(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lojk;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p0, Lost;->b:Loss;

    invoke-static {p1}, Lolp;->K(Lotj;)V

    return-void
.end method

.method protected final j(Ljava/lang/Throwable;Z)V
    .locals 1

    iget-object v0, p0, Lost;->b:Loss;

    invoke-interface {v0, p1}, Loss;->x(Ljava/lang/Throwable;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    iget-object p2, p0, Loor;->a:Lola;

    invoke-static {p2, p1}, Lonm;->k(Lola;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
