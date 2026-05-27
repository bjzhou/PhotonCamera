.class public final Loxe;
.super Ljava/lang/Object;

# interfaces
.implements Lort;


# instance fields
.field private final a:Ljava/lang/Object;

.field private final b:Ljava/lang/ThreadLocal;

.field private final c:Loky;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/ThreadLocal;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Loxe;->a:Ljava/lang/Object;

    iput-object p2, p0, Loxe;->b:Ljava/lang/ThreadLocal;

    new-instance p1, Loxf;

    invoke-direct {p1, p2}, Loxf;-><init>(Ljava/lang/ThreadLocal;)V

    iput-object p1, p0, Loxe;->c:Loky;

    return-void
.end method


# virtual methods
.method public final cS(Lola;)Ljava/lang/Object;
    .locals 2

    iget-object p1, p0, Loxe;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {p1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Loxe;->b:Ljava/lang/ThreadLocal;

    iget-object v1, p0, Loxe;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-object p1
.end method

.method public final cT(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Loxe;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final fold(Ljava/lang/Object;Lomo;)Ljava/lang/Object;
    .locals 0

    invoke-static {p0, p1, p2}, Lljr;->G(Lokx;Ljava/lang/Object;Lomo;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Loky;)Lokx;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Loxe;->c:Loky;

    invoke-static {v0, p1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-object p0

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final getKey()Loky;
    .locals 1

    iget-object v0, p0, Loxe;->c:Loky;

    return-object v0
.end method

.method public final minusKey(Loky;)Lola;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Loxe;->c:Loky;

    invoke-static {v0, p1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lolb;->a:Lolb;

    return-object p1

    :cond_0
    return-object p0
.end method

.method public final plus(Lola;)Lola;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Lljr;->J(Lokx;Lola;)Lola;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Loxe;->a:Ljava/lang/Object;

    iget-object v1, p0, Loxe;->b:Ljava/lang/ThreadLocal;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ThreadLocal(value="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", threadLocal = "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
