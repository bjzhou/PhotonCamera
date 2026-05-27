.class final Lcll;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:J

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:F

.field public final g:Locj;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JJIIIFLocj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcll;->a:J

    iput-wide p3, p0, Lcll;->b:J

    iput p5, p0, Lcll;->c:I

    iput p6, p0, Lcll;->d:I

    iput p7, p0, Lcll;->e:I

    iput p8, p0, Lcll;->f:F

    if-eqz p9, :cond_0

    iput-object p9, p0, Lcll;->g:Locj;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null frameMetadata"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcll;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lcll;

    iget-wide v3, p0, Lcll;->a:J

    iget-wide v5, p1, Lcll;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lcll;->b:J

    iget-wide v5, p1, Lcll;->b:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lcll;->c:I

    iget v3, p1, Lcll;->c:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcll;->d:I

    iget v3, p1, Lcll;->d:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcll;->e:I

    iget v3, p1, Lcll;->e:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lcll;->f:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v3, p1, Lcll;->f:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lcll;->g:Locj;

    iget-object p1, p1, Lcll;->g:Locj;

    invoke-virtual {v1, p1}, Lnws;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 7

    iget-wide v0, p0, Lcll;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    iget-wide v3, p0, Lcll;->b:J

    ushr-long v5, v3, v2

    xor-long/2addr v3, v5

    long-to-int v1, v0

    const v0, 0xf4243

    xor-int/2addr v1, v0

    mul-int v1, v1, v0

    long-to-int v2, v3

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    iget v2, p0, Lcll;->c:I

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    iget v2, p0, Lcll;->d:I

    xor-int/2addr v1, v2

    mul-int v1, v1, v0

    iget v2, p0, Lcll;->e:I

    xor-int/2addr v1, v2

    iget v2, p0, Lcll;->f:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    mul-int v1, v1, v0

    xor-int/2addr v1, v2

    iget-object v2, p0, Lcll;->g:Locj;

    invoke-virtual {v2}, Lnws;->ac()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lnws;->L()I

    move-result v2

    goto :goto_1

    :cond_0
    iget v3, v2, Lnws;->aG:I

    if-nez v3, :cond_1

    invoke-virtual {v2}, Lnws;->L()I

    move-result v3

    iput v3, v2, Lnws;->aG:I

    goto :goto_0

    :cond_1
    :goto_0
    move v2, v3

    :goto_1
    mul-int v1, v1, v0

    xor-int v0, v1, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 11

    iget-wide v0, p0, Lcll;->a:J

    iget-wide v2, p0, Lcll;->b:J

    iget v4, p0, Lcll;->c:I

    iget v5, p0, Lcll;->d:I

    iget v6, p0, Lcll;->e:I

    iget v7, p0, Lcll;->f:F

    iget-object v8, p0, Lcll;->g:Locj;

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "CaptureReport{durationSinceLastCaptureMs="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", durationFromCandidatetoSavingMs="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", candidateFramesDiscarded="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", framesAnalyzedBeforeCandidate="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", framesAnalyzedAfterCandidate="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", analysisScore="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", frameMetadata="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
