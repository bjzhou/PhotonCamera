.class public final Lddo;
.super Ljava/lang/Object;


# instance fields
.field public final a:J

.field public final b:Ljava/lang/String;

.field public final c:Ljava/lang/Runnable;

.field public final d:Landroid/graphics/drawable/Drawable;

.field public final e:Lmqp;

.field public final f:I

.field public final g:I

.field public final h:Lmqp;

.field public final i:Z

.field public final j:J

.field public final k:I

.field public final l:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;Ljava/lang/Runnable;Landroid/graphics/drawable/Drawable;IILmqp;IILmqp;ZJ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lddo;->a:J

    iput-object p3, p0, Lddo;->b:Ljava/lang/String;

    iput-object p4, p0, Lddo;->c:Ljava/lang/Runnable;

    iput-object p5, p0, Lddo;->d:Landroid/graphics/drawable/Drawable;

    iput p6, p0, Lddo;->k:I

    iput p7, p0, Lddo;->l:I

    iput-object p8, p0, Lddo;->e:Lmqp;

    iput p9, p0, Lddo;->f:I

    iput p10, p0, Lddo;->g:I

    iput-object p11, p0, Lddo;->h:Lmqp;

    iput-boolean p12, p0, Lddo;->i:Z

    iput-wide p13, p0, Lddo;->j:J

    return-void
.end method

.method static a()Lddn;
    .locals 2

    new-instance v0, Lddn;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lddn;-><init>([B)V

    const/4 v1, 0x1

    iput v1, v0, Lddn;->f:I

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lddn;->b(I)V

    invoke-virtual {v0, v1}, Lddn;->c(I)V

    invoke-virtual {v0, v1}, Lddn;->e(Z)V

    sget-object v1, Lchy;->f:Lchy;

    iput-object v1, v0, Lddn;->b:Ljava/lang/Runnable;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lddo;

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    check-cast p1, Lddo;

    iget-wide v3, p0, Lddo;->a:J

    iget-wide v5, p1, Lddo;->a:J

    cmp-long v1, v3, v5

    if-nez v1, :cond_7

    iget-object v1, p0, Lddo;->b:Ljava/lang/String;

    if-nez v1, :cond_1

    iget-object v1, p1, Lddo;->b:Ljava/lang/String;

    if-nez v1, :cond_7

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lddo;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_0
    iget-object v1, p0, Lddo;->c:Ljava/lang/Runnable;

    if-nez v1, :cond_2

    iget-object v1, p1, Lddo;->c:Ljava/lang/Runnable;

    if-nez v1, :cond_7

    goto :goto_1

    :cond_2
    iget-object v3, p1, Lddo;->c:Ljava/lang/Runnable;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    :goto_1
    iget-object v1, p0, Lddo;->d:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_3

    iget-object v1, p1, Lddo;->d:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_7

    goto :goto_2

    :cond_3
    iget-object v3, p1, Lddo;->d:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    :goto_2
    iget v1, p0, Lddo;->k:I

    iget v3, p1, Lddo;->k:I

    const/4 v4, 0x0

    if-eqz v1, :cond_6

    if-ne v1, v3, :cond_7

    iget v1, p0, Lddo;->l:I

    iget v3, p1, Lddo;->l:I

    if-eqz v1, :cond_5

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lddo;->e:Lmqp;

    iget-object v3, p1, Lddo;->e:Lmqp;

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget v1, p0, Lddo;->f:I

    iget v3, p1, Lddo;->f:I

    if-ne v1, v3, :cond_7

    iget v1, p0, Lddo;->g:I

    iget v3, p1, Lddo;->g:I

    if-ne v1, v3, :cond_7

    iget-object v1, p0, Lddo;->h:Lmqp;

    iget-object v3, p1, Lddo;->h:Lmqp;

    invoke-virtual {v1, v3}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lddo;->i:Z

    iget-boolean v3, p1, Lddo;->i:Z

    if-ne v1, v3, :cond_7

    iget-wide v3, p0, Lddo;->j:J

    iget-wide v5, p1, Lddo;->j:J

    cmp-long p1, v3, v5

    if-nez p1, :cond_7

    return v0

    :cond_5
    throw v4

    :cond_6
    throw v4

    :cond_7
    :goto_3
    return v2

    :cond_8
    return v2
.end method

.method public final hashCode()I
    .locals 6

    iget-wide v0, p0, Lddo;->a:J

    const/16 v2, 0x20

    ushr-long v3, v0, v2

    xor-long/2addr v0, v3

    iget-object v3, p0, Lddo;->b:Ljava/lang/String;

    const/4 v4, 0x0

    if-nez v3, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v3

    :goto_0
    long-to-int v1, v0

    iget-object v0, p0, Lddo;->c:Ljava/lang/Runnable;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_1
    const v5, 0xf4243

    xor-int/2addr v1, v5

    mul-int v1, v1, v5

    xor-int/2addr v1, v3

    iget-object v3, p0, Lddo;->d:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v4

    :goto_2
    mul-int v1, v1, v5

    xor-int/2addr v0, v1

    mul-int v0, v0, v5

    xor-int/2addr v0, v4

    mul-int v0, v0, v5

    iget v1, p0, Lddo;->k:I

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    xor-int/2addr v0, v1

    mul-int v0, v0, v5

    iget v1, p0, Lddo;->l:I

    if-eqz v1, :cond_4

    xor-int/2addr v0, v1

    mul-int v0, v0, v5

    iget-object v1, p0, Lddo;->e:Lmqp;

    invoke-virtual {v1}, Lmqp;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int v0, v0, v5

    iget v1, p0, Lddo;->f:I

    xor-int/2addr v0, v1

    mul-int v0, v0, v5

    iget v1, p0, Lddo;->g:I

    xor-int/2addr v0, v1

    mul-int v0, v0, v5

    iget-object v1, p0, Lddo;->h:Lmqp;

    invoke-virtual {v1}, Lmqp;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int v0, v0, v5

    const/4 v1, 0x1

    iget-boolean v3, p0, Lddo;->i:Z

    if-eq v1, v3, :cond_3

    const/16 v1, 0x4d5

    goto :goto_3

    :cond_3
    const/16 v1, 0x4cf

    :goto_3
    xor-int/2addr v0, v1

    mul-int v0, v0, v5

    iget-wide v3, p0, Lddo;->j:J

    ushr-long v1, v3, v2

    xor-long/2addr v1, v3

    long-to-int v2, v1

    xor-int/2addr v0, v2

    return v0

    :cond_4
    throw v3

    :cond_5
    throw v3
.end method

.method public final toString()Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    iget-wide v1, v0, Lddo;->a:J

    iget-object v3, v0, Lddo;->b:Ljava/lang/String;

    iget-object v4, v0, Lddo;->c:Ljava/lang/Runnable;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lddo;->d:Landroid/graphics/drawable/Drawable;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget v6, v0, Lddo;->k:I

    const-string v7, "null"

    packed-switch v6, :pswitch_data_0

    move-object v6, v7

    goto :goto_0

    :pswitch_0
    const-string v6, "DISMISS"

    goto :goto_0

    :pswitch_1
    const-string v6, "LAUNCH_DRIVE"

    goto :goto_0

    :pswitch_2
    const-string v6, "INTENT"

    goto :goto_0

    :pswitch_3
    const-string v6, "LAUNCH_LENS"

    :goto_0
    iget v8, v0, Lddo;->l:I

    packed-switch v8, :pswitch_data_1

    goto :goto_1

    :pswitch_4
    const-string v7, "SCAN_DOCUMENT"

    goto :goto_1

    :pswitch_5
    const-string v7, "BARCODE"

    goto :goto_1

    :pswitch_6
    const-string v7, "UNKNOWN"

    :goto_1
    iget-object v8, v0, Lddo;->e:Lmqp;

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    iget v9, v0, Lddo;->f:I

    iget v10, v0, Lddo;->g:I

    iget-object v11, v0, Lddo;->h:Lmqp;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    iget-boolean v12, v0, Lddo;->i:Z

    iget-wide v13, v0, Lddo;->j:J

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CameraVisionKitChipResult{id="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", text="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", chipClickAction="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", icon="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", actionType="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", resultType="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", detectedDocumentData="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", barcodeValueFormat="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", barcodeFormat="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", boundingBox="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", gleamingEnabled="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", timestamp="

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch
.end method
