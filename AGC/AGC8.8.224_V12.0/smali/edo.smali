.class public final Ledo;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lcom/google/googlex/gcam/InterleavedImageU8;

.field public final b:Leej;

.field public final c:Landroid/hardware/HardwareBuffer;

.field public final d:Lcom/google/googlex/gcam/ShotMetadata;

.field public final e:Lkab;

.field public final f:Lkou;

.field public final g:J

.field public final h:Lnou;

.field public final i:Ldrb;

.field public final j:Lcom/google/googlex/gcam/InterleavedImageU8;

.field public final k:Lgtk;

.field public final l:Lcom/google/googlex/gcam/ShotParams;

.field public final m:Lebb;

.field public final n:Lgkr;

.field public final o:Lgxb;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/google/googlex/gcam/InterleavedImageU8;Leej;Landroid/hardware/HardwareBuffer;Lcom/google/googlex/gcam/ShotMetadata;Lkab;Lkou;JLebb;Lgxb;Lnou;Lgkr;Ldrb;Lcom/google/googlex/gcam/InterleavedImageU8;Lgtk;Lcom/google/googlex/gcam/ShotParams;[B[B[B[B[B)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Ledo;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    move-object v1, p2

    iput-object v1, v0, Ledo;->b:Leej;

    move-object v1, p3

    iput-object v1, v0, Ledo;->c:Landroid/hardware/HardwareBuffer;

    move-object v1, p4

    iput-object v1, v0, Ledo;->d:Lcom/google/googlex/gcam/ShotMetadata;

    move-object v1, p5

    iput-object v1, v0, Ledo;->e:Lkab;

    move-object v1, p6

    iput-object v1, v0, Ledo;->f:Lkou;

    move-wide v1, p7

    iput-wide v1, v0, Ledo;->g:J

    move-object v1, p9

    iput-object v1, v0, Ledo;->m:Lebb;

    move-object v1, p10

    iput-object v1, v0, Ledo;->o:Lgxb;

    move-object v1, p11

    iput-object v1, v0, Ledo;->h:Lnou;

    move-object v1, p12

    iput-object v1, v0, Ledo;->n:Lgkr;

    move-object/from16 v1, p13

    iput-object v1, v0, Ledo;->i:Ldrb;

    move-object/from16 v1, p14

    iput-object v1, v0, Ledo;->j:Lcom/google/googlex/gcam/InterleavedImageU8;

    move-object/from16 v1, p15

    iput-object v1, v0, Ledo;->k:Lgtk;

    move-object/from16 v1, p16

    iput-object v1, v0, Ledo;->l:Lcom/google/googlex/gcam/ShotParams;

    return-void
.end method

.method public static a()Ledn;
    .locals 1

    new-instance v0, Ledn;

    invoke-direct {v0}, Ledn;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final b()Ledn;
    .locals 1

    new-instance v0, Ledn;

    invoke-direct {v0, p0}, Ledn;-><init>(Ledo;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ledo;

    const/4 v2, 0x0

    if-eqz v1, :cond_b

    check-cast p1, Ledo;

    iget-object v1, p0, Ledo;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    if-nez v1, :cond_1

    iget-object v1, p1, Ledo;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    if-nez v1, :cond_a

    goto :goto_0

    :cond_1
    iget-object v3, p1, Ledo;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_0
    iget-object v1, p0, Ledo;->b:Leej;

    if-nez v1, :cond_2

    iget-object v1, p1, Ledo;->b:Leej;

    if-nez v1, :cond_a

    goto :goto_1

    :cond_2
    iget-object v3, p1, Ledo;->b:Leej;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_1
    iget-object v1, p0, Ledo;->c:Landroid/hardware/HardwareBuffer;

    if-nez v1, :cond_3

    iget-object v1, p1, Ledo;->c:Landroid/hardware/HardwareBuffer;

    if-nez v1, :cond_a

    goto :goto_2

    :cond_3
    iget-object v3, p1, Ledo;->c:Landroid/hardware/HardwareBuffer;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_2
    iget-object v1, p0, Ledo;->d:Lcom/google/googlex/gcam/ShotMetadata;

    iget-object v3, p1, Ledo;->d:Lcom/google/googlex/gcam/ShotMetadata;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Ledo;->e:Lkab;

    iget-object v3, p1, Ledo;->e:Lkab;

    invoke-virtual {v1, v3}, Lkab;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Ledo;->f:Lkou;

    iget-object v3, p1, Ledo;->f:Lkou;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-wide v3, p0, Ledo;->g:J

    iget-wide v5, p1, Ledo;->g:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_a

    iget-object v1, p0, Ledo;->m:Lebb;

    iget-object v3, p1, Ledo;->m:Lebb;

    invoke-virtual {v1, v3}, Lebb;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Ledo;->o:Lgxb;

    if-nez v1, :cond_4

    iget-object v1, p1, Ledo;->o:Lgxb;

    if-nez v1, :cond_a

    goto :goto_3

    :cond_4
    iget-object v3, p1, Ledo;->o:Lgxb;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_3
    iget-object v1, p0, Ledo;->h:Lnou;

    iget-object v3, p1, Ledo;->h:Lnou;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Ledo;->n:Lgkr;

    iget-object v3, p1, Ledo;->n:Lgkr;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, p0, Ledo;->i:Ldrb;

    if-nez v1, :cond_5

    iget-object v1, p1, Ledo;->i:Ldrb;

    if-nez v1, :cond_a

    goto :goto_4

    :cond_5
    iget-object v3, p1, Ledo;->i:Ldrb;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_4
    iget-object v1, p0, Ledo;->j:Lcom/google/googlex/gcam/InterleavedImageU8;

    if-nez v1, :cond_6

    iget-object v1, p1, Ledo;->j:Lcom/google/googlex/gcam/InterleavedImageU8;

    if-nez v1, :cond_a

    goto :goto_5

    :cond_6
    iget-object v3, p1, Ledo;->j:Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_5
    iget-object v1, p0, Ledo;->k:Lgtk;

    if-nez v1, :cond_7

    iget-object v1, p1, Ledo;->k:Lgtk;

    if-nez v1, :cond_a

    goto :goto_6

    :cond_7
    iget-object v3, p1, Ledo;->k:Lgtk;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_6
    iget-object v1, p0, Ledo;->l:Lcom/google/googlex/gcam/ShotParams;

    iget-object p1, p1, Ledo;->l:Lcom/google/googlex/gcam/ShotParams;

    if-nez v1, :cond_8

    if-nez p1, :cond_a

    goto :goto_7

    :cond_8
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_9

    goto :goto_8

    :cond_9
    :goto_7
    return v0

    :cond_a
    :goto_8
    return v2

    :cond_b
    return v2
.end method

.method public final hashCode()I
    .locals 8

    iget-object v0, p0, Ledo;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Ledo;->b:Leej;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_1
    const v3, 0xf4243

    xor-int/2addr v0, v3

    iget-object v4, p0, Ledo;->c:Landroid/hardware/HardwareBuffer;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_2
    mul-int v0, v0, v3

    xor-int/2addr v0, v2

    mul-int v0, v0, v3

    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    iget-object v2, p0, Ledo;->d:Lcom/google/googlex/gcam/ShotMetadata;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v3

    iget-object v2, p0, Ledo;->e:Lkab;

    invoke-virtual {v2}, Lkab;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v3

    iget-object v2, p0, Ledo;->f:Lkou;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v3

    iget-wide v4, p0, Ledo;->g:J

    const/16 v2, 0x20

    ushr-long v6, v4, v2

    xor-long/2addr v4, v6

    long-to-int v2, v4

    xor-int/2addr v0, v2

    mul-int v0, v0, v3

    iget-object v2, p0, Ledo;->m:Lebb;

    invoke-virtual {v2}, Lebb;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v3

    iget-object v2, p0, Ledo;->o:Lgxb;

    if-nez v2, :cond_3

    const/4 v2, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_3
    xor-int/2addr v0, v2

    mul-int v0, v0, v3

    iget-object v2, p0, Ledo;->h:Lnou;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v3

    iget-object v2, p0, Ledo;->n:Lgkr;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    xor-int/2addr v0, v2

    mul-int v0, v0, v3

    iget-object v2, p0, Ledo;->i:Ldrb;

    if-nez v2, :cond_4

    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_4
    xor-int/2addr v0, v2

    mul-int v0, v0, v3

    iget-object v2, p0, Ledo;->j:Lcom/google/googlex/gcam/InterleavedImageU8;

    if-nez v2, :cond_5

    const/4 v2, 0x0

    goto :goto_5

    :cond_5
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_5
    xor-int/2addr v0, v2

    mul-int v0, v0, v3

    iget-object v2, p0, Ledo;->k:Lgtk;

    if-nez v2, :cond_6

    const/4 v2, 0x0

    goto :goto_6

    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :goto_6
    xor-int/2addr v0, v2

    mul-int v0, v0, v3

    iget-object v2, p0, Ledo;->l:Lcom/google/googlex/gcam/ShotParams;

    if-nez v2, :cond_7

    goto :goto_7

    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_7
    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Ledo;->a:Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Ledo;->b:Leej;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Ledo;->c:Landroid/hardware/HardwareBuffer;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Ledo;->d:Lcom/google/googlex/gcam/ShotMetadata;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Ledo;->e:Lkab;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Ledo;->f:Lkou;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-wide v7, v0, Ledo;->g:J

    iget-object v9, v0, Ledo;->m:Lebb;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Ledo;->o:Lgxb;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Ledo;->h:Lnou;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Ledo;->n:Lgkr;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-object v13, v0, Ledo;->i:Ldrb;

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    iget-object v14, v0, Ledo;->j:Lcom/google/googlex/gcam/InterleavedImageU8;

    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    iget-object v15, v0, Ledo;->k:Lgtk;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object/from16 v16, v15

    iget-object v15, v0, Ledo;->l:Lcom/google/googlex/gcam/ShotParams;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v15

    const-string v15, "PostprocessingImage{rgbImage="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", yuvImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rgbHwBufferImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shotMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", orientation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", metadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timestampNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", gcaShotSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", portraitShotParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mergedPdData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pictureTakerParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", faceMetadata="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", warpedSegmentationMaskImage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", rectifaceWarpfield="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", shotParams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
