.class public final Llwq;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:Lluo;

.field public final c:Llun;

.field public final d:Ljava/lang/String;

.field public final e:Lobn;

.field public final f:J

.field public final g:Ljava/lang/String;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Llwz;

.field public final k:J


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Lluo;->a:Lluo;

    const/4 v0, 0x0

    throw v0
.end method

.method public constructor <init>(JLluo;Llun;Ljava/lang/String;Lobn;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Llwz;J)V
    .locals 0

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Llwq;->a:J

    iput-object p3, p0, Llwq;->b:Lluo;

    iput-object p4, p0, Llwq;->c:Llun;

    iput-object p5, p0, Llwq;->d:Ljava/lang/String;

    iput-object p6, p0, Llwq;->e:Lobn;

    iput-wide p7, p0, Llwq;->f:J

    iput-object p9, p0, Llwq;->g:Ljava/lang/String;

    iput-object p10, p0, Llwq;->h:Ljava/lang/String;

    iput-object p11, p0, Llwq;->i:Ljava/lang/String;

    iput-object p12, p0, Llwq;->j:Llwz;

    iput-wide p13, p0, Llwq;->k:J

    return-void
.end method

.method public static synthetic a(Llwq;Ljava/lang/String;Ljava/lang/String;Llwz;I)Llwq;
    .locals 22

    move-object/from16 v0, p0

    move/from16 v1, p4

    and-int/lit8 v2, v1, 0x1

    const-wide/16 v3, 0x0

    if-eqz v2, :cond_0

    iget-wide v5, v0, Llwq;->a:J

    move-wide v8, v5

    goto :goto_0

    :cond_0
    move-wide v8, v3

    :goto_0
    and-int/lit8 v2, v1, 0x2

    const/4 v5, 0x0

    if-eqz v2, :cond_1

    iget-object v2, v0, Llwq;->b:Lluo;

    move-object v10, v2

    goto :goto_1

    :cond_1
    move-object v10, v5

    :goto_1
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    iget-object v2, v0, Llwq;->c:Llun;

    move-object v11, v2

    goto :goto_2

    :cond_2
    move-object v11, v5

    :goto_2
    and-int/lit8 v2, v1, 0x8

    if-eqz v2, :cond_3

    iget-object v2, v0, Llwq;->d:Ljava/lang/String;

    move-object v12, v2

    goto :goto_3

    :cond_3
    move-object v12, v5

    :goto_3
    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_4

    iget-object v2, v0, Llwq;->e:Lobn;

    move-object v13, v2

    goto :goto_4

    :cond_4
    move-object v13, v5

    :goto_4
    and-int/lit8 v2, v1, 0x20

    if-eqz v2, :cond_5

    iget-wide v3, v0, Llwq;->f:J

    move-wide v14, v3

    goto :goto_5

    :cond_5
    move-wide v14, v3

    :goto_5
    and-int/lit8 v2, v1, 0x40

    if-eqz v2, :cond_6

    iget-object v2, v0, Llwq;->g:Ljava/lang/String;

    move-object/from16 v16, v2

    goto :goto_6

    :cond_6
    move-object/from16 v16, p1

    :goto_6
    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_7

    iget-object v2, v0, Llwq;->h:Ljava/lang/String;

    move-object/from16 v17, v2

    goto :goto_7

    :cond_7
    move-object/from16 v17, p2

    :goto_7
    and-int/lit16 v2, v1, 0x100

    if-eqz v2, :cond_8

    iget-object v2, v0, Llwq;->i:Ljava/lang/String;

    move-object/from16 v18, v2

    goto :goto_8

    :cond_8
    move-object/from16 v18, v5

    :goto_8
    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_9

    iget-object v1, v0, Llwq;->j:Llwz;

    move-object/from16 v19, v1

    goto :goto_9

    :cond_9
    move-object/from16 v19, p3

    :goto_9
    iget-wide v0, v0, Llwq;->k:J

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Llwq;

    move-object v7, v2

    move-wide/from16 v20, v0

    invoke-direct/range {v7 .. v21}, Llwq;-><init>(JLluo;Llun;Ljava/lang/String;Lobn;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Llwz;J)V

    return-object v2
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Llwq;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Llwq;

    iget-wide v3, p0, Llwq;->a:J

    iget-wide v5, p1, Llwq;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_8

    iget-object v1, p0, Llwq;->b:Lluo;

    iget-object v3, p1, Llwq;->b:Lluo;

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Llwq;->c:Llun;

    iget-object v3, p1, Llwq;->c:Llun;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Llwq;->d:Ljava/lang/String;

    iget-object v3, p1, Llwq;->d:Ljava/lang/String;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Llwq;->e:Lobn;

    iget-object v3, p1, Llwq;->e:Lobn;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-wide v3, p0, Llwq;->f:J

    iget-wide v5, p1, Llwq;->f:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Llwq;->g:Ljava/lang/String;

    iget-object v3, p1, Llwq;->g:Ljava/lang/String;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Llwq;->h:Ljava/lang/String;

    iget-object v3, p1, Llwq;->h:Ljava/lang/String;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Llwq;->i:Ljava/lang/String;

    iget-object v3, p1, Llwq;->i:Ljava/lang/String;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    :cond_5
    iget-object v1, p0, Llwq;->j:Llwz;

    iget-object v3, p1, Llwq;->j:Llwz;

    invoke-static {v1, v3}, Lone;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    :cond_6
    iget-wide v3, p0, Llwq;->k:J

    iget-wide v5, p1, Llwq;->k:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_7

    return v2

    :cond_7
    return v0

    :cond_8
    return v2
.end method

.method public final hashCode()I
    .locals 5

    iget-wide v0, p0, Llwq;->a:J

    invoke-static {v0, v1}, Lkwp;->u(J)I

    move-result v0

    iget-object v1, p0, Llwq;->b:Lluo;

    invoke-virtual {v1}, Lluo;->hashCode()I

    move-result v1

    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    iget-object v1, p0, Llwq;->c:Llun;

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lluq;->hashCode()I

    move-result v1

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Llwq;->d:Ljava/lang/String;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Llwq;->e:Lobn;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Lnws;->ac()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v1}, Lnws;->L()I

    move-result v1

    goto :goto_2

    :cond_3
    iget v3, v1, Lnws;->aG:I

    if-nez v3, :cond_4

    invoke-virtual {v1}, Lnws;->L()I

    move-result v3

    iput v3, v1, Lnws;->aG:I

    :cond_4
    move v1, v3

    :goto_2
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v3, p0, Llwq;->f:J

    invoke-static {v3, v4}, Lkwp;->u(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Llwq;->g:Ljava/lang/String;

    if-nez v1, :cond_5

    const/4 v1, 0x0

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_3
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Llwq;->h:Ljava/lang/String;

    if-nez v1, :cond_6

    const/4 v1, 0x0

    goto :goto_4

    :cond_6
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_4
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Llwq;->i:Ljava/lang/String;

    if-nez v1, :cond_7

    goto :goto_5

    :cond_7
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    :goto_5
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Llwq;->j:Llwz;

    invoke-virtual {v1}, Llwz;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Llwq;->k:J

    invoke-static {v1, v2}, Lkwp;->u(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    iget-wide v1, v0, Llwq;->a:J

    iget-object v3, v0, Llwq;->b:Lluo;

    iget-object v4, v0, Llwq;->c:Llun;

    iget-object v5, v0, Llwq;->d:Ljava/lang/String;

    iget-object v6, v0, Llwq;->e:Lobn;

    iget-wide v7, v0, Llwq;->f:J

    iget-object v9, v0, Llwq;->g:Ljava/lang/String;

    iget-object v10, v0, Llwq;->h:Ljava/lang/String;

    iget-object v11, v0, Llwq;->i:Ljava/lang/String;

    iget-object v12, v0, Llwq;->j:Llwz;

    iget-wide v13, v0, Llwq;->k:J

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "AnnotachmentEntity(resourceOnDeviceId="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", annotachmentType="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", id="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", contentType="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", provenance="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", onDeviceSize="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", uploadTransferHandle="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", blobstoreId="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", contentHash="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", status="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", onDeviceId="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
