.class public final Lkuz;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lkvj;

.field public final b:Ljava/util/List;

.field public final c:Lkvb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkvj;Ljava/util/List;Lkvb;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkuz;->a:Lkvj;

    iput-object p2, p0, Lkuz;->b:Ljava/util/List;

    iput-object p3, p0, Lkuz;->c:Lkvb;

    return-void
.end method

.method public static a()Lnoc;
    .locals 2

    new-instance v0, Lnoc;

    invoke-direct {v0}, Lnoc;-><init>()V

    sget-object v1, Lkvb;->b:Lkvb;

    invoke-virtual {v0, v1}, Lnoc;->c(Lkvb;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lkuz;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lkuz;

    iget-object v1, p0, Lkuz;->a:Lkvj;

    iget-object v3, p1, Lkuz;->a:Lkvj;

    invoke-virtual {v1, v3}, Lnws;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkuz;->b:Ljava/util/List;

    iget-object v3, p1, Lkuz;->b:Ljava/util/List;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkuz;->c:Lkvb;

    iget-object p1, p1, Lkuz;->c:Lkvb;

    invoke-virtual {v1, p1}, Lnws;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Lkuz;->a:Lkvj;

    invoke-virtual {v0}, Lnws;->ac()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lnws;->L()I

    move-result v0

    goto :goto_1

    :cond_0
    iget v1, v0, Lnws;->aG:I

    if-nez v1, :cond_1

    invoke-virtual {v0}, Lnws;->L()I

    move-result v1

    iput v1, v0, Lnws;->aG:I

    goto :goto_0

    :cond_1
    :goto_0
    move v0, v1

    :goto_1
    iget-object v1, p0, Lkuz;->b:Ljava/util/List;

    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    iget-object v1, p0, Lkuz;->c:Lkvb;

    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {v1}, Lnws;->L()I

    move-result v1

    goto :goto_2

    :cond_2
    iget v3, v1, Lnws;->aG:I

    if-nez v3, :cond_3

    invoke-virtual {v1}, Lnws;->L()I

    move-result v3

    iput v3, v1, Lnws;->aG:I

    :cond_3
    move v1, v3

    :goto_2
    mul-int v0, v0, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-object v0, p0, Lkuz;->a:Lkvj;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lkuz;->b:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lkuz;->c:Lkvb;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LinkPresentationResult{linkDataResult="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", linkChipResult="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", linkChipResultMetadata="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
