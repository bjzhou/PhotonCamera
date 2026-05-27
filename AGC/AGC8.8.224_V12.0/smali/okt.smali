.class public final Lokt;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Lola;


# instance fields
.field private final a:Lola;

.field private final b:Lokx;


# direct methods
.method public constructor <init>(Lola;Lokx;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lokt;->a:Lola;

    iput-object p2, p0, Lokt;->b:Lokx;

    return-void
.end method

.method private final a()I
    .locals 3

    const/4 v0, 0x2

    move-object v1, p0

    :goto_0
    iget-object v1, v1, Lokt;->a:Lola;

    instance-of v2, v1, Lokt;

    if-eqz v2, :cond_0

    check-cast v1, Lokt;

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-nez v1, :cond_1

    return v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private final b(Lokx;)Z
    .locals 1

    invoke-interface {p1}, Lokx;->getKey()Loky;

    move-result-object v0

    invoke-virtual {p0, v0}, Lokt;->get(Loky;)Lokx;

    move-result-object v0

    invoke-static {v0, p1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private final writeReplace()Ljava/lang/Object;
    .locals 5

    invoke-direct {p0}, Lokt;->a()I

    move-result v0

    new-array v1, v0, [Lola;

    new-instance v2, Lonj;

    invoke-direct {v2}, Lonj;-><init>()V

    sget-object v3, Lojk;->a:Lojk;

    new-instance v4, Loks;

    invoke-direct {v4, v1, v2}, Loks;-><init>([Lola;Lonj;)V

    invoke-virtual {p0, v3, v4}, Lokt;->fold(Ljava/lang/Object;Lomo;)Ljava/lang/Object;

    iget v2, v2, Lonj;->a:I

    if-ne v2, v0, :cond_0

    new-instance v0, Lokr;

    invoke-direct {v0, v1}, Lokr;-><init>([Lola;)V

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Check failed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-eq p0, p1, :cond_4

    instance-of v1, p1, Lokt;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Lokt;

    invoke-direct {p1}, Lokt;->a()I

    move-result v1

    invoke-direct {p0}, Lokt;->a()I

    move-result v3

    if-ne v1, v3, :cond_3

    move-object v1, p0

    :goto_0
    iget-object v3, v1, Lokt;->b:Lokx;

    invoke-direct {p1, v3}, Lokt;->b(Lokx;)Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    iget-object v1, v1, Lokt;->a:Lola;

    instance-of v3, v1, Lokt;

    if-eqz v3, :cond_2

    check-cast v1, Lokt;

    goto :goto_0

    :cond_2
    check-cast v1, Lokx;

    invoke-direct {p1, v1}, Lokt;->b(Lokx;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_2

    :goto_1
    return v2

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_2
    return v0
.end method

.method public final fold(Ljava/lang/Object;Lomo;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lokt;->a:Lola;

    invoke-interface {v0, p1, p2}, Lola;->fold(Ljava/lang/Object;Lomo;)Ljava/lang/Object;

    move-result-object p1

    iget-object v0, p0, Lokt;->b:Lokx;

    invoke-interface {p2, p1, v0}, Lomo;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final get(Loky;)Lokx;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-object v0, p0

    :goto_0
    iget-object v1, v0, Lokt;->b:Lokx;

    invoke-interface {v1, p1}, Lokx;->get(Loky;)Lokx;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    iget-object v0, v0, Lokt;->a:Lola;

    instance-of v1, v0, Lokt;

    if-eqz v1, :cond_1

    check-cast v0, Lokt;

    goto :goto_0

    :cond_1
    invoke-interface {v0, p1}, Lola;->get(Loky;)Lokx;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lokt;->a:Lola;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    iget-object v1, p0, Lokt;->b:Lokx;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final minusKey(Loky;)Lola;
    .locals 2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lokt;->b:Lokx;

    invoke-interface {v0, p1}, Lokx;->get(Loky;)Lokx;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lokt;->a:Lola;

    return-object p1

    :cond_0
    iget-object v0, p0, Lokt;->a:Lola;

    invoke-interface {v0, p1}, Lola;->minusKey(Loky;)Lola;

    move-result-object p1

    iget-object v0, p0, Lokt;->a:Lola;

    if-eq p1, v0, :cond_2

    sget-object v0, Lolb;->a:Lolb;

    if-ne p1, v0, :cond_1

    iget-object p1, p0, Lokt;->b:Lokx;

    goto :goto_0

    :cond_1
    new-instance v0, Lokt;

    iget-object v1, p0, Lokt;->b:Lokx;

    invoke-direct {v0, p1, v1}, Lokt;-><init>(Lola;Lokx;)V

    move-object p1, v0

    goto :goto_0

    :cond_2
    move-object p1, p0

    :goto_0
    return-object p1
.end method

.method public final plus(Lola;)Lola;
    .locals 0

    invoke-static {p0, p1}, Lljr;->K(Lola;Lola;)Lola;

    move-result-object p1

    return-object p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x5b

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ""

    sget-object v2, Lokz;->b:Lokz;

    invoke-virtual {p0, v1, v2}, Lokt;->fold(Ljava/lang/Object;Lomo;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
