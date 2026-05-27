.class final Lcom/agc/glide/load/engine/DataCacheKey;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/agc/glide/load/Key;


# instance fields
.field private final signature:Lcom/agc/glide/load/Key;

.field private final sourceKey:Lcom/agc/glide/load/Key;


# direct methods
.method public constructor <init>(Lcom/agc/glide/load/Key;Lcom/agc/glide/load/Key;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/agc/glide/load/engine/DataCacheKey;->sourceKey:Lcom/agc/glide/load/Key;

    iput-object p2, p0, Lcom/agc/glide/load/engine/DataCacheKey;->signature:Lcom/agc/glide/load/Key;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lcom/agc/glide/load/engine/DataCacheKey;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/agc/glide/load/engine/DataCacheKey;

    iget-object v0, p0, Lcom/agc/glide/load/engine/DataCacheKey;->sourceKey:Lcom/agc/glide/load/Key;

    iget-object v2, p1, Lcom/agc/glide/load/engine/DataCacheKey;->sourceKey:Lcom/agc/glide/load/Key;

    invoke-interface {v0, v2}, Lcom/agc/glide/load/Key;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/agc/glide/load/engine/DataCacheKey;->signature:Lcom/agc/glide/load/Key;

    iget-object p1, p1, Lcom/agc/glide/load/engine/DataCacheKey;->signature:Lcom/agc/glide/load/Key;

    invoke-interface {v0, p1}, Lcom/agc/glide/load/Key;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getSourceKey()Lcom/agc/glide/load/Key;
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/DataCacheKey;->sourceKey:Lcom/agc/glide/load/Key;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/agc/glide/load/engine/DataCacheKey;->sourceKey:Lcom/agc/glide/load/Key;

    invoke-interface {v0}, Lcom/agc/glide/load/Key;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/agc/glide/load/engine/DataCacheKey;->signature:Lcom/agc/glide/load/Key;

    invoke-interface {v1}, Lcom/agc/glide/load/Key;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DataCacheKey{sourceKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/load/engine/DataCacheKey;->sourceKey:Lcom/agc/glide/load/Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", signature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/agc/glide/load/engine/DataCacheKey;->signature:Lcom/agc/glide/load/Key;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateDiskCacheKey(Ljava/security/MessageDigest;)V
    .locals 1

    iget-object v0, p0, Lcom/agc/glide/load/engine/DataCacheKey;->sourceKey:Lcom/agc/glide/load/Key;

    invoke-interface {v0, p1}, Lcom/agc/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    iget-object v0, p0, Lcom/agc/glide/load/engine/DataCacheKey;->signature:Lcom/agc/glide/load/Key;

    invoke-interface {v0, p1}, Lcom/agc/glide/load/Key;->updateDiskCacheKey(Ljava/security/MessageDigest;)V

    return-void
.end method
