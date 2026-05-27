.class final Ledc;
.super Ljava/lang/Object;


# instance fields
.field public final a:Leej;

.field public final b:Lcom/google/googlex/gcam/InterleavedImageU8;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Leej;Lcom/google/googlex/gcam/InterleavedImageU8;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ledc;->a:Leej;

    iput-object p2, p0, Ledc;->b:Lcom/google/googlex/gcam/InterleavedImageU8;

    return-void
.end method


# virtual methods
.method final a()Lkaf;
    .locals 3

    iget-object v0, p0, Ledc;->a:Leej;

    if-nez v0, :cond_1

    iget-object v0, p0, Ledc;->b:Lcom/google/googlex/gcam/InterleavedImageU8;

    if-eqz v0, :cond_0

    new-instance v1, Lkaf;

    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedImageU8;->c()I

    move-result v2

    invoke-virtual {v0}, Lcom/google/googlex/gcam/InterleavedImageU8;->b()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lkaf;-><init>(II)V

    return-object v1

    :cond_0
    new-instance v0, Lkaf;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lkaf;-><init>(II)V

    return-object v0

    :cond_1
    new-instance v1, Lkaf;

    invoke-virtual {v0}, Leej;->c()I

    move-result v2

    invoke-virtual {v0}, Leej;->b()I

    move-result v0

    invoke-direct {v1, v2, v0}, Lkaf;-><init>(II)V

    return-object v1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ledc;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    check-cast p1, Ledc;

    iget-object v1, p0, Ledc;->a:Leej;

    if-nez v1, :cond_1

    iget-object v1, p1, Ledc;->a:Leej;

    if-nez v1, :cond_4

    goto :goto_0

    :cond_1
    iget-object v3, p1, Ledc;->a:Leej;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :goto_0
    iget-object v1, p0, Ledc;->b:Lcom/google/googlex/gcam/InterleavedImageU8;

    iget-object p1, p1, Ledc;->b:Lcom/google/googlex/gcam/InterleavedImageU8;

    if-nez v1, :cond_2

    if-nez p1, :cond_4

    goto :goto_1

    :cond_2
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    :goto_1
    return v0

    :cond_4
    :goto_2
    return v2

    :cond_5
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Ledc;->a:Leej;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Ledc;->b:Lcom/google/googlex/gcam/InterleavedImageU8;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_1
    const v2, 0xf4243

    xor-int/2addr v0, v2

    mul-int v0, v0, v2

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Ledc;->a:Leej;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ledc;->b:Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pixels{yuv="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", rgb="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
