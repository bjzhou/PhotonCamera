.class public abstract Lopq;
.super Lokp;

# interfaces
.implements Lokw;


# static fields
.field public static final b:Lokq;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lokq;

    sget-object v1, Lokw;->a:Lokv;

    sget-object v2, Lawu;->h:Lawu;

    invoke-direct {v0, v1, v2}, Lokq;-><init>(Loky;Lomk;)V

    sput-object v0, Lopq;->b:Lokq;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    sget-object v0, Lokw;->a:Lokv;

    invoke-direct {p0, v0}, Lokp;-><init>(Loky;)V

    return-void
.end method


# virtual methods
.method public final b(Loku;)V
    .locals 3

    check-cast p1, Lowh;

    iget-object v0, p1, Lowh;->e:Loop;

    :cond_0
    iget-object v1, v0, Loop;->a:Ljava/lang/Object;

    sget-object v2, Lowi;->b:Loxb;

    if-eq v1, v2, :cond_0

    iget-object p1, p1, Lowh;->e:Loop;

    iget-object p1, p1, Loop;->a:Ljava/lang/Object;

    instance-of v0, p1, Lopa;

    if-eqz v0, :cond_1

    check-cast p1, Lopa;

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lopa;->v()V

    :cond_2
    return-void
.end method

.method public final cL(Loku;)Loku;
    .locals 1

    new-instance v0, Lowh;

    invoke-direct {v0, p0, p1}, Lowh;-><init>(Lopq;Loku;)V

    return-object v0
.end method

.method public abstract d(Lola;Ljava/lang/Runnable;)V
.end method

.method public e(Lola;)Z
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p1, 0x1

    return p1
.end method

.method public final get(Loky;)Lokx;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lokq;

    if-eqz v0, :cond_0

    check-cast p1, Lokq;

    invoke-interface {p0}, Lokw;->getKey()Loky;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokq;->b(Loky;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Lokq;->a(Lokx;)Lokx;

    move-result-object p1

    instance-of v0, p1, Lokx;

    if-eqz v0, :cond_1

    return-object p1

    :cond_0
    sget-object v0, Lokw;->a:Lokv;

    if-ne v0, p1, :cond_1

    return-object p0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public final minusKey(Loky;)Lola;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Lokq;

    if-eqz v0, :cond_0

    check-cast p1, Lokq;

    invoke-interface {p0}, Lokw;->getKey()Loky;

    move-result-object v0

    invoke-virtual {p1, v0}, Lokq;->b(Loky;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1, p0}, Lokq;->a(Lokx;)Lokx;

    move-result-object p1

    if-eqz p1, :cond_1

    :goto_0
    sget-object p1, Lolb;->a:Lolb;

    return-object p1

    :cond_0
    sget-object v0, Lokw;->a:Lokv;

    if-ne v0, p1, :cond_1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lopx;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0}, Lopx;->b(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
