.class public final Lkeq;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lkll;

.field public final b:Lkez;

.field public final c:Lkfd;

.field public final d:Lkfd;

.field public final e:Lkfd;

.field public final f:Lkfd;

.field public final g:Lmvv;

.field public final h:Lmwn;

.field public final i:Lkdd;

.field public final j:Lkdy;

.field public final k:J

.field public final l:I

.field public final m:Lmwn;

.field public final n:Lkfg;

.field private final o:Lkfd;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lkll;Lkez;Lkfd;Lkfd;Lkfd;Lkfd;Lkfd;Lkfg;Lmvv;Lmwn;Lkdd;Lkdy;JILmwn;[B[B)V
    .locals 3

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lkeq;->a:Lkll;

    move-object v1, p2

    iput-object v1, v0, Lkeq;->b:Lkez;

    move-object v1, p3

    iput-object v1, v0, Lkeq;->c:Lkfd;

    move-object v1, p4

    iput-object v1, v0, Lkeq;->d:Lkfd;

    move-object v1, p5

    iput-object v1, v0, Lkeq;->o:Lkfd;

    move-object v1, p6

    iput-object v1, v0, Lkeq;->e:Lkfd;

    move-object v1, p7

    iput-object v1, v0, Lkeq;->f:Lkfd;

    move-object v1, p8

    iput-object v1, v0, Lkeq;->n:Lkfg;

    move-object v1, p9

    iput-object v1, v0, Lkeq;->g:Lmvv;

    move-object v1, p10

    iput-object v1, v0, Lkeq;->h:Lmwn;

    move-object v1, p11

    iput-object v1, v0, Lkeq;->i:Lkdd;

    move-object v1, p12

    iput-object v1, v0, Lkeq;->j:Lkdy;

    move-wide/from16 v1, p13

    iput-wide v1, v0, Lkeq;->k:J

    move/from16 v1, p15

    iput v1, v0, Lkeq;->l:I

    move-object/from16 v1, p16

    iput-object v1, v0, Lkeq;->m:Lmwn;

    return-void
.end method

.method public static a()Lkep;
    .locals 4

    new-instance v0, Lkep;

    invoke-direct {v0}, Lkep;-><init>()V

    sget-object v1, Lkez;->a:Lkez;

    invoke-virtual {v0, v1}, Lkep;->g(Lkez;)V

    new-instance v1, Lkfd;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lkfd;-><init>(I)V

    invoke-virtual {v0, v1}, Lkep;->j(Lkfd;)V

    new-instance v1, Lkfd;

    const/4 v3, 0x2

    invoke-direct {v1, v3}, Lkfd;-><init>(I)V

    iput-object v1, v0, Lkep;->a:Lkfd;

    new-instance v1, Lkfd;

    const/4 v3, -0x1

    invoke-direct {v1, v3}, Lkfd;-><init>(I)V

    iput-object v1, v0, Lkep;->b:Lkfd;

    new-instance v1, Lkfd;

    invoke-direct {v1, v2}, Lkfd;-><init>(I)V

    iput-object v1, v0, Lkep;->c:Lkfd;

    new-instance v1, Lkfd;

    const/4 v2, 0x5

    invoke-direct {v1, v2}, Lkfd;-><init>(I)V

    invoke-virtual {v0, v1}, Lkep;->i(Lkfd;)V

    sget-object v1, Lkel;->a:Lkfg;

    invoke-virtual {v0, v1}, Lkep;->k(Lkfg;)V

    new-instance v1, Lkey;

    invoke-direct {v1}, Lkey;-><init>()V

    invoke-virtual {v0, v1}, Lkep;->e(Lkdy;)V

    const-wide v1, 0x2d1c6feb268L

    iput-wide v1, v0, Lkep;->d:J

    iget-byte v1, v0, Lkep;->f:B

    const/16 v2, 0x3c

    iput v2, v0, Lkep;->e:I

    or-int/lit8 v1, v1, 0x3

    int-to-byte v1, v1

    iput-byte v1, v0, Lkep;->f:B

    sget-object v1, Lmza;->a:Lmza;

    invoke-virtual {v0, v1}, Lkep;->h(Lmwn;)V

    iget-byte v1, v0, Lkep;->f:B

    or-int/lit8 v1, v1, 0xc

    int-to-byte v1, v1

    iput-byte v1, v0, Lkep;->f:B

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lkeq;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lkeq;

    iget-object v1, p0, Lkeq;->a:Lkll;

    iget-object v3, p1, Lkeq;->a:Lkll;

    invoke-virtual {v1, v3}, Lkll;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkeq;->b:Lkez;

    iget-object v3, p1, Lkeq;->b:Lkez;

    invoke-virtual {v1, v3}, Lkez;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkeq;->c:Lkfd;

    iget-object v3, p1, Lkeq;->c:Lkfd;

    invoke-virtual {v1, v3}, Lkfd;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkeq;->d:Lkfd;

    iget-object v3, p1, Lkeq;->d:Lkfd;

    invoke-virtual {v1, v3}, Lkfd;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkeq;->o:Lkfd;

    iget-object v3, p1, Lkeq;->o:Lkfd;

    invoke-virtual {v1, v3}, Lkfd;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkeq;->e:Lkfd;

    iget-object v3, p1, Lkeq;->e:Lkfd;

    invoke-virtual {v1, v3}, Lkfd;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkeq;->f:Lkfd;

    iget-object v3, p1, Lkeq;->f:Lkfd;

    invoke-virtual {v1, v3}, Lkfd;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkeq;->n:Lkfg;

    iget-object v3, p1, Lkeq;->n:Lkfg;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkeq;->g:Lmvv;

    iget-object v3, p1, Lkeq;->g:Lmvv;

    invoke-static {v1, v3}, Llyh;->I(Ljava/util/List;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkeq;->h:Lmwn;

    iget-object v3, p1, Lkeq;->h:Lmwn;

    invoke-virtual {v1, v3}, Lmwn;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkeq;->i:Lkdd;

    iget-object v3, p1, Lkeq;->i:Lkdd;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lkeq;->j:Lkdy;

    iget-object v3, p1, Lkeq;->j:Lkdy;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-wide v3, p0, Lkeq;->k:J

    iget-wide v5, p1, Lkeq;->k:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_1

    iget v1, p0, Lkeq;->l:I

    iget v3, p1, Lkeq;->l:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lkeq;->m:Lmwn;

    iget-object p1, p1, Lkeq;->m:Lmwn;

    invoke-virtual {v1, p1}, Lmwn;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 6

    iget-object v0, p0, Lkeq;->a:Lkll;

    iget v0, v0, Lkll;->b:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lkeq;->b:Lkez;

    invoke-virtual {v2}, Lkez;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lkeq;->c:Lkfd;

    invoke-virtual {v2}, Lkfd;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lkeq;->d:Lkfd;

    invoke-virtual {v2}, Lkfd;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lkeq;->o:Lkfd;

    invoke-virtual {v2}, Lkfd;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lkeq;->e:Lkfd;

    invoke-virtual {v2}, Lkfd;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lkeq;->f:Lkfd;

    invoke-virtual {v2}, Lkfd;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lkeq;->n:Lkfg;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lkeq;->g:Lmvv;

    invoke-virtual {v2}, Lmvv;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lkeq;->h:Lmwn;

    invoke-virtual {v2}, Lmwn;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lkeq;->i:Lkdd;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lkeq;->j:Lkdy;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-wide v2, p0, Lkeq;->k:J

    const/16 v4, 0x20

    ushr-long v4, v2, v4

    xor-long/2addr v2, v4

    mul-int v0, v0, v1

    long-to-int v3, v2

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    iget v2, p0, Lkeq;->l:I

    xor-int/2addr v0, v2

    iget-object v2, p0, Lkeq;->m:Lmwn;

    invoke-virtual {v2}, Lmwn;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    xor-int/lit16 v0, v0, 0x4d5

    mul-int v0, v0, v1

    xor-int/lit16 v0, v0, 0x4d5

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    iget-object v1, v0, Lkeq;->a:Lkll;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Lkeq;->b:Lkez;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Lkeq;->c:Lkfd;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Lkeq;->d:Lkfd;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lkeq;->o:Lkfd;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, v0, Lkeq;->e:Lkfd;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, v0, Lkeq;->f:Lkfd;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, v0, Lkeq;->n:Lkfg;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget-object v9, v0, Lkeq;->g:Lmvv;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    iget-object v10, v0, Lkeq;->h:Lmwn;

    invoke-static {v10}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    iget-object v11, v0, Lkeq;->i:Lkdd;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget-object v12, v0, Lkeq;->j:Lkdy;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    iget-wide v13, v0, Lkeq;->k:J

    iget v15, v0, Lkeq;->l:I

    move/from16 v16, v15

    iget-object v15, v0, Lkeq;->m:Lmwn;

    invoke-static {v15}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v15

    const-string v15, "FrameServerConfig{cameraId="

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", operatingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", template="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", captureTemplate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", reprocessingTemplate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", repeatingTemplate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", repeatingCaptureTemplate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", frameListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", streams="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", sessionParameters="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fatalErrorHandler="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cameraDeviceErrorListener="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", result3ATimeoutNs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", result3ATimeoutFrameCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", quirks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", autoResume=false, useCameraPipe=false}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
