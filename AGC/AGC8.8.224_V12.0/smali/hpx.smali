.class public final Lhpx;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljws;

.field public final b:Ljwu;

.field public final c:Lmqp;

.field public final d:Lctd;

.field public final e:Lmqp;

.field public final f:Lhpu;

.field public final g:J

.field public final h:J

.field public final i:J

.field public final j:J

.field public final k:I

.field public final l:Ljava/lang/String;

.field public final m:Z

.field public final n:Lgxz;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljws;Ljwu;Lmqp;Lctd;Lmqp;Lhpu;JJJJILjava/lang/String;ZLgxz;)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lhpx;->a:Ljws;

    move-object v1, p2

    iput-object v1, v0, Lhpx;->b:Ljwu;

    move-object v1, p3

    iput-object v1, v0, Lhpx;->c:Lmqp;

    move-object v1, p4

    iput-object v1, v0, Lhpx;->d:Lctd;

    move-object v1, p5

    iput-object v1, v0, Lhpx;->e:Lmqp;

    move-object v1, p6

    iput-object v1, v0, Lhpx;->f:Lhpu;

    move-wide v1, p7

    iput-wide v1, v0, Lhpx;->g:J

    move-wide v1, p9

    iput-wide v1, v0, Lhpx;->h:J

    move-wide v1, p11

    iput-wide v1, v0, Lhpx;->i:J

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lhpx;->j:J

    move/from16 v1, p15

    iput v1, v0, Lhpx;->k:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lhpx;->l:Ljava/lang/String;

    move/from16 v1, p17

    iput-boolean v1, v0, Lhpx;->m:Z

    move-object/from16 v1, p18

    iput-object v1, v0, Lhpx;->n:Lgxz;

    return-void
.end method

.method public static a()Lhpw;
    .locals 3

    new-instance v0, Lhpw;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lhpw;-><init>([B)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lhpw;->j(J)V

    invoke-virtual {v0, v1, v2}, Lhpw;->h(J)V

    invoke-virtual {v0, v1, v2}, Lhpw;->c(J)V

    invoke-virtual {v0, v1, v2}, Lhpw;->d(J)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lhpx;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lhpx;

    iget-object v1, p0, Lhpx;->a:Ljws;

    iget-object v3, p1, Lhpx;->a:Ljws;

    invoke-virtual {v1, v3}, Ljws;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhpx;->b:Ljwu;

    iget-object v3, p1, Lhpx;->b:Ljwu;

    invoke-virtual {v1, v3}, Ljwu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhpx;->c:Lmqp;

    iget-object v3, p1, Lhpx;->c:Lmqp;

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhpx;->d:Lctd;

    iget-object v3, p1, Lhpx;->d:Lctd;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhpx;->e:Lmqp;

    iget-object v3, p1, Lhpx;->e:Lmqp;

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhpx;->f:Lhpu;

    iget-object v3, p1, Lhpx;->f:Lhpu;

    invoke-virtual {v1, v3}, Lhpu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lhpx;->g:J

    iget-wide v5, p1, Lhpx;->g:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lhpx;->h:J

    iget-wide v5, p1, Lhpx;->h:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lhpx;->i:J

    iget-wide v5, p1, Lhpx;->i:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget-wide v3, p0, Lhpx;->j:J

    iget-wide v5, p1, Lhpx;->j:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lhpx;->k:I

    iget v3, p1, Lhpx;->k:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lhpx;->l:Ljava/lang/String;

    iget-object v3, p1, Lhpx;->l:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lhpx;->m:Z

    iget-boolean v3, p1, Lhpx;->m:Z

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lhpx;->n:Lgxz;

    iget-object p1, p1, Lhpx;->n:Lgxz;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 13

    iget-object v0, p0, Lhpx;->a:Ljws;

    invoke-virtual {v0}, Ljws;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lhpx;->b:Ljwu;

    invoke-virtual {v2}, Ljwu;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lhpx;->d:Lctd;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    const v3, 0x79a31aac

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lhpx;->e:Lmqp;

    invoke-virtual {v2}, Lmqp;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lhpx;->f:Lhpu;

    invoke-virtual {v2}, Lhpu;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-wide v2, p0, Lhpx;->g:J

    const/16 v4, 0x20

    ushr-long v5, v2, v4

    xor-long/2addr v2, v5

    iget-wide v5, p0, Lhpx;->h:J

    ushr-long v7, v5, v4

    xor-long/2addr v5, v7

    iget-wide v7, p0, Lhpx;->i:J

    ushr-long v9, v7, v4

    xor-long/2addr v7, v9

    iget-wide v9, p0, Lhpx;->j:J

    ushr-long v11, v9, v4

    xor-long/2addr v9, v11

    mul-int v0, v0, v1

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    long-to-int v2, v5

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    long-to-int v2, v7

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    long-to-int v2, v9

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lhpx;->k:I

    xor-int/2addr v0, v2

    iget-object v2, p0, Lhpx;->l:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lhpx;->m:Z

    if-eq v2, v3, :cond_0

    const/16 v2, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v2, 0x4cf

    :goto_0
    iget-object v3, p0, Lhpx;->n:Lgxz;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v3

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 20

    move-object/from16 v0, p0

    iget-object v1, v0, Lhpx;->a:Ljws;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lhpx;->b:Ljwu;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lhpx;->c:Lmqp;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lhpx;->d:Lctd;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lhpx;->e:Lmqp;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lhpx;->f:Lhpu;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v0, Lhpx;->g:J

    iget-wide v9, v0, Lhpx;->h:J

    iget-wide v11, v0, Lhpx;->i:J

    iget-wide v13, v0, Lhpx;->j:J

    iget v15, v0, Lhpx;->k:I

    move/from16 v16, v15

    iget-object v15, v0, Lhpx;->l:Ljava/lang/String;

    move-object/from16 v17, v15

    iget-boolean v15, v0, Lhpx;->m:Z

    move/from16 v18, v15

    iget-object v15, v0, Lhpx;->n:Lgxz;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v15

    const-string v15, "TimelapseVideoFile{camcorderCaptureRate="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", camcorderVideoResolution="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", videoFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", outputVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", location="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timelapseMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", recordingDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", outputDurationMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", frameCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", frameDropped="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isSecureVideo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", shotInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
