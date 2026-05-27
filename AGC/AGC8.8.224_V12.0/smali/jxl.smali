.class public final Ljxl;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:I

.field public final c:I

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:I

.field public final h:I

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIIIIIIIIIIII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljxl;->a:I

    iput p2, p0, Ljxl;->b:I

    iput p3, p0, Ljxl;->c:I

    iput p4, p0, Ljxl;->d:I

    iput p5, p0, Ljxl;->e:I

    iput p6, p0, Ljxl;->f:I

    iput p7, p0, Ljxl;->g:I

    iput p8, p0, Ljxl;->h:I

    iput p9, p0, Ljxl;->i:I

    iput p10, p0, Ljxl;->j:I

    iput p11, p0, Ljxl;->k:I

    iput p12, p0, Ljxl;->l:I

    iput p13, p0, Ljxl;->m:I

    return-void
.end method

.method public static a(Landroid/media/CamcorderProfile;)Ljxk;
    .locals 2

    new-instance v0, Ljxk;

    invoke-direct {v0}, Ljxk;-><init>()V

    iget v1, p0, Landroid/media/CamcorderProfile;->audioBitRate:I

    invoke-virtual {v0, v1}, Ljxk;->b(I)V

    iget v1, p0, Landroid/media/CamcorderProfile;->audioChannels:I

    invoke-virtual {v0, v1}, Ljxk;->c(I)V

    iget v1, p0, Landroid/media/CamcorderProfile;->audioCodec:I

    invoke-virtual {v0, v1}, Ljxk;->d(I)V

    iget v1, p0, Landroid/media/CamcorderProfile;->audioSampleRate:I

    invoke-virtual {v0, v1}, Ljxk;->e(I)V

    iget v1, p0, Landroid/media/CamcorderProfile;->fileFormat:I

    invoke-virtual {v0, v1}, Ljxk;->f(I)V

    iget v1, p0, Landroid/media/CamcorderProfile;->quality:I

    invoke-virtual {v0, v1}, Ljxk;->g(I)V

    iget v1, p0, Landroid/media/CamcorderProfile;->videoBitRate:I

    invoke-virtual {v0, v1}, Ljxk;->h(I)V

    iget v1, p0, Landroid/media/CamcorderProfile;->videoCodec:I

    invoke-virtual {v0, v1}, Ljxk;->i(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Ljxk;->k(I)V

    invoke-virtual {v0, v1}, Ljxk;->j(I)V

    iget v1, p0, Landroid/media/CamcorderProfile;->videoFrameHeight:I

    invoke-virtual {v0, v1}, Ljxk;->l(I)V

    iget v1, p0, Landroid/media/CamcorderProfile;->videoFrameRate:I

    invoke-virtual {v0, v1}, Ljxk;->m(I)V

    iget p0, p0, Landroid/media/CamcorderProfile;->videoFrameWidth:I

    invoke-virtual {v0, p0}, Ljxk;->n(I)V

    return-object v0
.end method

.method public static b(Ljxl;)Ljxk;
    .locals 2

    new-instance v0, Ljxk;

    invoke-direct {v0}, Ljxk;-><init>()V

    iget v1, p0, Ljxl;->a:I

    invoke-virtual {v0, v1}, Ljxk;->b(I)V

    iget v1, p0, Ljxl;->b:I

    invoke-virtual {v0, v1}, Ljxk;->c(I)V

    iget v1, p0, Ljxl;->c:I

    invoke-virtual {v0, v1}, Ljxk;->d(I)V

    iget v1, p0, Ljxl;->d:I

    invoke-virtual {v0, v1}, Ljxk;->e(I)V

    iget v1, p0, Ljxl;->e:I

    invoke-virtual {v0, v1}, Ljxk;->f(I)V

    iget v1, p0, Ljxl;->f:I

    invoke-virtual {v0, v1}, Ljxk;->g(I)V

    iget v1, p0, Ljxl;->g:I

    invoke-virtual {v0, v1}, Ljxk;->h(I)V

    iget v1, p0, Ljxl;->h:I

    invoke-virtual {v0, v1}, Ljxk;->i(I)V

    iget v1, p0, Ljxl;->i:I

    invoke-virtual {v0, v1}, Ljxk;->k(I)V

    iget v1, p0, Ljxl;->j:I

    invoke-virtual {v0, v1}, Ljxk;->j(I)V

    iget v1, p0, Ljxl;->k:I

    invoke-virtual {v0, v1}, Ljxk;->l(I)V

    iget v1, p0, Ljxl;->l:I

    invoke-virtual {v0, v1}, Ljxk;->m(I)V

    iget p0, p0, Ljxl;->m:I

    invoke-virtual {v0, p0}, Ljxk;->n(I)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljxl;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Ljxl;

    iget v1, p0, Ljxl;->a:I

    iget v3, p1, Ljxl;->a:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Ljxl;->b:I

    iget v3, p1, Ljxl;->b:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Ljxl;->c:I

    iget v3, p1, Ljxl;->c:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Ljxl;->d:I

    iget v3, p1, Ljxl;->d:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Ljxl;->e:I

    iget v3, p1, Ljxl;->e:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Ljxl;->f:I

    iget v3, p1, Ljxl;->f:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Ljxl;->g:I

    iget v3, p1, Ljxl;->g:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Ljxl;->h:I

    iget v3, p1, Ljxl;->h:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Ljxl;->i:I

    iget v3, p1, Ljxl;->i:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Ljxl;->j:I

    iget v3, p1, Ljxl;->j:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Ljxl;->k:I

    iget v3, p1, Ljxl;->k:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Ljxl;->l:I

    iget v3, p1, Ljxl;->l:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Ljxl;->m:I

    iget p1, p1, Ljxl;->m:I

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Ljxl;->a:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget v2, p0, Ljxl;->b:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Ljxl;->c:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Ljxl;->d:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Ljxl;->e:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Ljxl;->f:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Ljxl;->g:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Ljxl;->h:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Ljxl;->i:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Ljxl;->j:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Ljxl;->k:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Ljxl;->l:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v1, p0, Ljxl;->m:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 15

    iget v0, p0, Ljxl;->a:I

    iget v1, p0, Ljxl;->b:I

    iget v2, p0, Ljxl;->c:I

    iget v3, p0, Ljxl;->d:I

    iget v4, p0, Ljxl;->e:I

    iget v5, p0, Ljxl;->f:I

    iget v6, p0, Ljxl;->g:I

    iget v7, p0, Ljxl;->h:I

    iget v8, p0, Ljxl;->i:I

    iget v9, p0, Ljxl;->j:I

    iget v10, p0, Ljxl;->k:I

    iget v11, p0, Ljxl;->l:I

    iget v12, p0, Ljxl;->m:I

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "SimpleCamcorderProfileProxy{audioBitRate="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", audioChannels="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", audioCodec="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", audioSampleRate="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", fileFormat="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", quality="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", videoBitRate="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", videoCodec="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", videoCodecProfile="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", videoCodecLevel="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", videoFrameHeight="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", videoFrameRate="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", videoFrameWidth="

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
