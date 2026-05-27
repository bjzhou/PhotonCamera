.class final Lopo;
.super Lonf;

# interfaces
.implements Lomo;


# instance fields
.field final synthetic a:Lonk;

.field final synthetic b:Z


# direct methods
.method public constructor <init>(Lonk;Z)V
    .locals 0

    iput-object p1, p0, Lopo;->a:Lonk;

    iput-boolean p2, p0, Lopo;->b:Z

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lonf;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Lola;

    check-cast p2, Lokx;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p2, Lopm;

    if-nez v0, :cond_0

    invoke-interface {p1, p2}, Lola;->plus(Lola;)Lola;

    move-result-object p1

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lopo;->a:Lonk;

    iget-object v0, v0, Lonk;->a:Ljava/lang/Object;

    check-cast v0, Lola;

    invoke-interface {p2}, Lokx;->getKey()Loky;

    move-result-object v1

    invoke-interface {v0, v1}, Lola;->get(Loky;)Lokx;

    move-result-object v0

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lopo;->b:Z

    if-eqz v0, :cond_1

    check-cast p2, Lopm;

    invoke-interface {p2}, Lopm;->a()Lopm;

    move-result-object p2

    goto :goto_0

    :cond_1
    check-cast p2, Lopm;

    :goto_0
    invoke-interface {p1, p2}, Lola;->plus(Lola;)Lola;

    move-result-object p1

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lopo;->a:Lonk;

    iget-object v1, v0, Lonk;->a:Ljava/lang/Object;

    check-cast v1, Lola;

    invoke-interface {p2}, Lokx;->getKey()Loky;

    move-result-object v2

    invoke-interface {v1, v2}, Lola;->minusKey(Loky;)Lola;

    move-result-object v1

    iput-object v1, v0, Lonk;->a:Ljava/lang/Object;

    check-cast p2, Lopm;

    invoke-interface {p2}, Lopm;->b()Lola;

    move-result-object p2

    invoke-interface {p1, p2}, Lola;->plus(Lola;)Lola;

    move-result-object p1

    :goto_1
    return-object p1
.end method
