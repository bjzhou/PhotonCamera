.class public final Llur;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lnyy;

.field public final b:Ljava/util/Collection;

.field public final c:Ljava/util/Collection;

.field public final d:Lodt;

.field public final e:Ljava/lang/Throwable;

.field public final f:Lllj;


# direct methods
.method public constructor <init>(Lllj;Lnyy;Ljava/util/Collection;Ljava/util/Collection;Lodt;Ljava/lang/Throwable;[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llur;->f:Lllj;

    iput-object p2, p0, Llur;->a:Lnyy;

    iput-object p3, p0, Llur;->b:Ljava/util/Collection;

    iput-object p4, p0, Llur;->c:Ljava/util/Collection;

    iput-object p5, p0, Llur;->d:Lodt;

    iput-object p6, p0, Llur;->e:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Llur;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Llur;

    iget-object v1, p0, Llur;->f:Lllj;

    iget-object v3, p1, Llur;->f:Lllj;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Llur;->a:Lnyy;

    iget-object v3, p1, Llur;->a:Lnyy;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Llur;->b:Ljava/util/Collection;

    iget-object v3, p1, Llur;->b:Ljava/util/Collection;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Llur;->c:Ljava/util/Collection;

    iget-object v3, p1, Llur;->c:Ljava/util/Collection;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Llur;->d:Lodt;

    iget-object v3, p1, Llur;->d:Lodt;

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Llur;->e:Ljava/lang/Throwable;

    iget-object p1, p1, Llur;->e:Ljava/lang/Throwable;

    invoke-static {v1, p1}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Llur;->f:Lllj;

    invoke-virtual {v0}, Lllj;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Llur;->a:Lnyy;

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

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Llur;->b:Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Llur;->c:Ljava/util/Collection;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Llur;->d:Lodt;

    invoke-virtual {v1}, Lodt;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Llur;->e:Ljava/lang/Throwable;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->hashCode()I

    move-result v1

    :goto_2
    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget-object v0, p0, Llur;->f:Lllj;

    iget-object v1, p0, Llur;->a:Lnyy;

    iget-object v2, p0, Llur;->b:Ljava/util/Collection;

    iget-object v3, p0, Llur;->c:Ljava/util/Collection;

    iget-object v4, p0, Llur;->d:Lodt;

    iget-object v5, p0, Llur;->e:Ljava/lang/Throwable;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "F250LogEvent(f250LogAction="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", logEpochTimestamp="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", resources="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", annotachments="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", f250LogReason="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", errorThrowable="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
