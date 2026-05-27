.class final Ldrw;
.super Lcom/google/android/apps/camera/faceobfuscation/api/FaceToObfuscate;


# instance fields
.field private final a:I

.field private final b:F

.field private final c:Landroid/graphics/RectF;

.field private final d:Landroid/graphics/PointF;

.field private final e:Landroid/graphics/PointF;

.field private final f:F


# direct methods
.method public constructor <init>(IFLandroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/apps/camera/faceobfuscation/api/FaceToObfuscate;-><init>()V

    iput p1, p0, Ldrw;->a:I

    iput p2, p0, Ldrw;->b:F

    iput-object p3, p0, Ldrw;->c:Landroid/graphics/RectF;

    iput-object p4, p0, Ldrw;->d:Landroid/graphics/PointF;

    iput-object p5, p0, Ldrw;->e:Landroid/graphics/PointF;

    iput p6, p0, Ldrw;->f:F

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Ldrw;->b:F

    return v0
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Ldrw;->a:I

    return v0
.end method

.method public bounds()Landroid/graphics/RectF;
    .locals 1

    iget-object v0, p0, Ldrw;->c:Landroid/graphics/RectF;

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/google/android/apps/camera/faceobfuscation/api/FaceToObfuscate;

    const/4 v2, 0x0

    if-eqz v1, :cond_6

    check-cast p1, Lcom/google/android/apps/camera/faceobfuscation/api/FaceToObfuscate;

    iget v1, p0, Ldrw;->a:I

    invoke-virtual {p1}, Lcom/google/android/apps/camera/faceobfuscation/api/FaceToObfuscate;->b()I

    move-result v3

    if-ne v1, v3, :cond_5

    iget v1, p0, Ldrw;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/apps/camera/faceobfuscation/api/FaceToObfuscate;->a()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_5

    iget-object v1, p0, Ldrw;->c:Landroid/graphics/RectF;

    invoke-virtual {p1}, Lcom/google/android/apps/camera/faceobfuscation/api/FaceToObfuscate;->bounds()Landroid/graphics/RectF;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/RectF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Ldrw;->d:Landroid/graphics/PointF;

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/google/android/apps/camera/faceobfuscation/api/FaceToObfuscate;->leftEye()Landroid/graphics/PointF;

    move-result-object v1

    if-nez v1, :cond_5

    :goto_0
    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/google/android/apps/camera/faceobfuscation/api/FaceToObfuscate;->leftEye()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_0

    :goto_1
    iget-object v1, p0, Ldrw;->e:Landroid/graphics/PointF;

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/android/apps/camera/faceobfuscation/api/FaceToObfuscate;->rightEye()Landroid/graphics/PointF;

    move-result-object v1

    if-nez v1, :cond_3

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Lcom/google/android/apps/camera/faceobfuscation/api/FaceToObfuscate;->rightEye()Landroid/graphics/PointF;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    goto :goto_3

    :cond_4
    :goto_2
    iget v1, p0, Ldrw;->f:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    invoke-virtual {p1}, Lcom/google/android/apps/camera/faceobfuscation/api/FaceToObfuscate;->faceRoll()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    if-ne v1, p1, :cond_5

    return v0

    :cond_5
    :goto_3
    return v2

    :cond_6
    return v2
.end method

.method public faceRoll()F
    .locals 1

    iget v0, p0, Ldrw;->f:F

    return v0
.end method

.method public final hashCode()I
    .locals 4

    iget v0, p0, Ldrw;->a:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget v2, p0, Ldrw;->b:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Ldrw;->c:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    iget-object v2, p0, Ldrw;->d:Landroid/graphics/PointF;

    const/4 v3, 0x0

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/graphics/PointF;->hashCode()I

    move-result v2

    :goto_0
    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget-object v2, p0, Ldrw;->e:Landroid/graphics/PointF;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/graphics/PointF;->hashCode()I

    move-result v3

    :goto_1
    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    iget v1, p0, Ldrw;->f:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public leftEye()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Ldrw;->d:Landroid/graphics/PointF;

    return-object v0
.end method

.method public rightEye()Landroid/graphics/PointF;
    .locals 1

    iget-object v0, p0, Ldrw;->e:Landroid/graphics/PointF;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    iget v0, p0, Ldrw;->a:I

    iget v1, p0, Ldrw;->b:F

    iget-object v2, p0, Ldrw;->c:Landroid/graphics/RectF;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ldrw;->d:Landroid/graphics/PointF;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ldrw;->e:Landroid/graphics/PointF;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Ldrw;->f:F

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FaceToObfuscate{id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", score="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", bounds="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", leftEye="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", rightEye="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", faceRoll="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
