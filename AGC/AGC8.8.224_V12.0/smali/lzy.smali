.class public final Llzy;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lnyy;

.field private final b:Lllj;


# direct methods
.method public constructor <init>(Lkrn;Lllj;[B[B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p1}, Lllj;->e(Lkrn;)Lnyy;

    move-result-object p1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Llzy;->b:Lllj;

    iput-object p1, p0, Llzy;->a:Lnyy;

    return-void
.end method

.method public static synthetic c(Llzy;Lodt;Ljava/lang/Throwable;Llux;I)Llur;
    .locals 1

    and-int/lit8 p4, p4, 0x4

    const/4 v0, 0x0

    if-eqz p4, :cond_0

    move-object p3, v0

    :cond_0
    invoke-virtual {p0, p1, p2, p3, v0}, Llzy;->b(Lodt;Ljava/lang/Throwable;Llux;Llwq;)Llur;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic d(Llzy;)Llur;
    .locals 3

    sget-object v0, Lojx;->a:Lojx;

    const/4 v1, 0x0

    const/16 v2, 0xc

    invoke-static {p0, v0, v0, v1, v2}, Llzy;->e(Llzy;Ljava/util/Collection;Ljava/util/Collection;Lodt;I)Llur;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic e(Llzy;Ljava/util/Collection;Ljava/util/Collection;Lodt;I)Llur;
    .locals 1

    and-int/lit8 v0, p4, 0x1

    if-eqz v0, :cond_0

    sget-object p1, Lojx;->a:Lojx;

    :cond_0
    and-int/lit8 v0, p4, 0x2

    if-eqz v0, :cond_1

    sget-object p2, Lojx;->a:Lojx;

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    sget-object p3, Lodt;->b:Lodt;

    :cond_2
    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Llzy;->a(Ljava/util/Collection;Ljava/util/Collection;Lodt;Ljava/lang/Throwable;)Llur;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/util/Collection;Ljava/util/Collection;Lodt;Ljava/lang/Throwable;)Llur;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v9, Llur;

    iget-object v1, p0, Llzy;->b:Lllj;

    iget-object v2, p0, Llzy;->a:Lnyy;

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, v9

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v8}, Llur;-><init>(Lllj;Lnyy;Ljava/util/Collection;Ljava/util/Collection;Lodt;Ljava/lang/Throwable;[B[B)V

    return-object v9
.end method

.method public final b(Lodt;Ljava/lang/Throwable;Llux;Llwq;)Llur;
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-eqz p3, :cond_0

    invoke-static {p3}, Lljr;->ac(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p3

    goto :goto_0

    :cond_0
    sget-object p3, Lojx;->a:Lojx;

    :goto_0
    if-eqz p4, :cond_1

    invoke-static {p4}, Lljr;->ac(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p4

    goto :goto_1

    :cond_1
    sget-object p4, Lojx;->a:Lojx;

    :goto_1
    invoke-virtual {p0, p3, p4, p1, p2}, Llzy;->a(Ljava/util/Collection;Ljava/util/Collection;Lodt;Ljava/lang/Throwable;)Llur;

    move-result-object p1

    return-object p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Llzy;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Llzy;

    iget-object v1, p0, Llzy;->b:Lllj;

    iget-object v3, p1, Llzy;->b:Lllj;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Llzy;->a:Lnyy;

    iget-object p1, p1, Llzy;->a:Lnyy;

    invoke-static {v1, p1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Llzy;->b:Lllj;

    invoke-virtual {v0}, Lllj;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Llzy;->a:Lnyy;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lnws;->L()I

    move-result v1

    goto :goto_1

    :cond_0
    iget v2, v1, Lnws;->aG:I

    if-nez v2, :cond_1

    invoke-virtual {v1}, Lnws;->L()I

    move-result v2

    iput v2, v1, Lnws;->aG:I

    goto :goto_0

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Llzy;->b:Lllj;

    iget-object v1, p0, Llzy;->a:Lnyy;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "F250LogEventStarter(f250LogAction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", logEpochTimestamp="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
