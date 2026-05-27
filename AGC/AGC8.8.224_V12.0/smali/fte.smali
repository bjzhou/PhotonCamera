.class public final Lfte;
.super Ljava/lang/Object;


# instance fields
.field public final a:I

.field public final b:Lftf;

.field public final c:I

.field public final d:Lklv;

.field public final e:[B

.field public final f:Ljuf;

.field public final g:Ljwb;

.field public final h:Z

.field public final i:Z

.field public final j:Lmqp;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ILftf;ILklv;[BLjuf;Ljwb;ZZLmqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lfte;->a:I

    iput-object p2, p0, Lfte;->b:Lftf;

    iput p3, p0, Lfte;->c:I

    iput-object p4, p0, Lfte;->d:Lklv;

    iput-object p5, p0, Lfte;->e:[B

    iput-object p6, p0, Lfte;->f:Ljuf;

    iput-object p7, p0, Lfte;->g:Ljwb;

    iput-boolean p8, p0, Lfte;->h:Z

    iput-boolean p9, p0, Lfte;->i:Z

    iput-object p10, p0, Lfte;->j:Lmqp;

    return-void
.end method

.method public static a()Lftd;
    .locals 3

    new-instance v0, Lftd;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lftd;-><init>([B)V

    sget-object v1, Lkab;->a:Lkab;

    iget v1, v1, Lkab;->e:I

    invoke-virtual {v0, v1}, Lftd;->g(I)V

    new-instance v1, Lftc;

    invoke-direct {v1}, Lftc;-><init>()V

    invoke-virtual {v0, v1}, Lftd;->b(Lftf;)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lftd;->e(I)V

    sget-object v1, Lklv;->b:Lklv;

    invoke-virtual {v0, v1}, Lftd;->c(Lklv;)V

    const/4 v1, 0x0

    new-array v2, v1, [B

    iput-object v2, v0, Lftd;->a:[B

    new-instance v2, Ljuf;

    invoke-direct {v2}, Ljuf;-><init>()V

    iput-object v2, v0, Lftd;->b:Ljuf;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v2}, Ljwa;->a(Ljava/lang/Object;)Ljwb;

    move-result-object v2

    invoke-virtual {v0, v2}, Lftd;->h(Ljwb;)V

    invoke-virtual {v0, v1}, Lftd;->d(Z)V

    invoke-virtual {v0, v1}, Lftd;->f(Z)V

    sget-object v1, Lmpx;->a:Lmpx;

    iput-object v1, v0, Lftd;->c:Lmqp;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfte;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lfte;

    iget v1, p0, Lfte;->a:I

    iget v3, p1, Lfte;->a:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lfte;->b:Lftf;

    iget-object v3, p1, Lfte;->b:Lftf;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, p0, Lfte;->c:I

    iget v3, p1, Lfte;->c:I

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lfte;->d:Lklv;

    iget-object v3, p1, Lfte;->d:Lklv;

    invoke-virtual {v1, v3}, Lklv;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lfte;->e:[B

    instance-of v3, p1, Lfte;

    if-eqz v3, :cond_1

    iget-object v3, p1, Lfte;->e:[B

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lfte;->e:[B

    :goto_0
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lfte;->f:Ljuf;

    iget-object v3, p1, Lfte;->f:Ljuf;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lfte;->g:Ljwb;

    iget-object v3, p1, Lfte;->g:Ljwb;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-boolean v1, p0, Lfte;->h:Z

    iget-boolean v3, p1, Lfte;->h:Z

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Lfte;->i:Z

    iget-boolean v3, p1, Lfte;->i:Z

    if-ne v1, v3, :cond_2

    iget-object v1, p0, Lfte;->j:Lmqp;

    iget-object p1, p1, Lfte;->j:Lmqp;

    invoke-virtual {v1, p1}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    :cond_2
    return v2
.end method

.method public final hashCode()I
    .locals 7

    iget v0, p0, Lfte;->a:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Lfte;->b:Lftf;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lfte;->c:I

    xor-int/2addr v0, v2

    iget-object v2, p0, Lfte;->d:Lklv;

    invoke-virtual {v2}, Lklv;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lfte;->e:[B

    invoke-static {v2}, Ljava/util/Arrays;->hashCode([B)I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lfte;->f:Ljuf;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Lfte;->g:Ljwb;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-boolean v2, p0, Lfte;->h:Z

    const/16 v3, 0x4d5

    const/16 v4, 0x4cf

    const/4 v5, 0x1

    if-eq v5, v2, :cond_0

    const/16 v2, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v2, 0x4cf

    :goto_0
    iget-boolean v6, p0, Lfte;->i:Z

    if-eq v5, v6, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x4cf

    :goto_1
    iget-object v4, p0, Lfte;->j:Lmqp;

    invoke-virtual {v4}, Lmqp;->hashCode()I

    move-result v4

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    xor-int/2addr v0, v4

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    iget v0, p0, Lfte;->a:I

    iget-object v1, p0, Lfte;->b:Lftf;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lfte;->c:I

    iget-object v3, p0, Lfte;->d:Lklv;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lfte;->e:[B

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lfte;->f:Ljuf;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lfte;->g:Ljwb;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-boolean v7, p0, Lfte;->h:Z

    iget-boolean v8, p0, Lfte;->i:Z

    iget-object v9, p0, Lfte;->j:Lmqp;

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "PhotoCaptureParameters{orientation="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", callback="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", heading="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", facing="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sensorEepromInfo="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", shotLifetime="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", selfieFlashFired="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", generateDngEnabled="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", longPress="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mergedCropOverride="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
