.class public final Ldbc;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:Lklv;

.field public final e:Lika;

.field public final f:Z

.field public final g:I

.field public final h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIILklv;IILika;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ldbc;->a:I

    iput p2, p0, Ldbc;->b:I

    iput p3, p0, Ldbc;->c:I

    iput-object p4, p0, Ldbc;->d:Lklv;

    iput p5, p0, Ldbc;->g:I

    iput p6, p0, Ldbc;->h:I

    iput-object p7, p0, Ldbc;->e:Lika;

    iput-boolean p8, p0, Ldbc;->f:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ldbc;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    check-cast p1, Ldbc;

    iget v1, p0, Ldbc;->a:I

    iget v3, p1, Ldbc;->a:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Ldbc;->b:I

    iget v3, p1, Ldbc;->b:I

    if-ne v1, v3, :cond_3

    iget v1, p0, Ldbc;->c:I

    iget v3, p1, Ldbc;->c:I

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Ldbc;->d:Lklv;

    iget-object v3, p1, Ldbc;->d:Lklv;

    invoke-virtual {v1, v3}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget v1, p0, Ldbc;->g:I

    iget v3, p1, Ldbc;->g:I

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_3

    iget v1, p0, Ldbc;->h:I

    iget v3, p1, Ldbc;->h:I

    if-eqz v1, :cond_1

    if-ne v1, v3, :cond_3

    iget-object v1, p0, Ldbc;->e:Lika;

    iget-object v3, p1, Ldbc;->e:Lika;

    invoke-virtual {v1, v3}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Ldbc;->f:Z

    iget-boolean p1, p1, Ldbc;->f:Z

    if-ne v1, p1, :cond_3

    return v0

    :cond_1
    throw v4

    :cond_2
    throw v4

    :cond_3
    return v2

    :cond_4
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Ldbc;->a:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget v2, p0, Ldbc;->b:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Ldbc;->c:I

    xor-int/2addr v0, v2

    iget-object v2, p0, Ldbc;->d:Lklv;

    invoke-virtual {v2}, Lklv;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget v2, p0, Ldbc;->g:I

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Ldbc;->h:I

    if-eqz v2, :cond_1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Ldbc;->e:Lika;

    invoke-virtual {v2}, Lika;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Ldbc;->f:Z

    if-eq v1, v2, :cond_0

    const/16 v1, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v1, 0x4cf

    :goto_0
    xor-int/2addr v0, v1

    return v0

    :cond_1
    throw v3

    :cond_2
    throw v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget v0, p0, Ldbc;->a:I

    iget v1, p0, Ldbc;->b:I

    iget v2, p0, Ldbc;->c:I

    iget-object v3, p0, Ldbc;->d:Lklv;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget v4, p0, Ldbc;->g:I

    invoke-static {v4}, Ldiu;->d(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Ldbc;->h:I

    invoke-static {v5}, Ldiu;->e(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Ldbc;->e:Lika;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Ldbc;->f:Z

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "VideoCaptureSessionMetadata{creationLatencyMs="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sessionDurationMs="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", numRecordedSessions="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", cameraFacing="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sessionState="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sessionSource="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mode="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", actionOnUserEdu="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
