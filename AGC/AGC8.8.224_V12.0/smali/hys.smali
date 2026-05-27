.class public final Lhys;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lhys;


# instance fields
.field public final b:Landroid/util/Size;

.field public final c:Landroid/util/Size;

.field public final d:Landroid/util/Size;

.field public final e:Ljava/lang/Integer;

.field public final f:Z

.field public final g:Liko;

.field public final h:Lika;

.field public final i:Lhyn;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lhyr;

    invoke-direct {v0}, Lhyr;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhyr;->c(Z)V

    invoke-virtual {v0}, Lhyr;->d()V

    sget-object v1, Lika;->a:Lika;

    invoke-virtual {v0, v1}, Lhyr;->e(Lika;)V

    sget-object v1, Liko;->a:Liko;

    invoke-virtual {v0, v1}, Lhyr;->f(Liko;)V

    sget-object v1, Lhyn;->b:Lhyn;

    invoke-virtual {v0, v1}, Lhyr;->b(Lhyn;)V

    invoke-virtual {v0}, Lhyr;->a()Lhys;

    move-result-object v0

    sput-object v0, Lhys;->a:Lhys;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/util/Size;Landroid/util/Size;Landroid/util/Size;Ljava/lang/Integer;ZLiko;Lika;Lhyn;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lhys;->b:Landroid/util/Size;

    iput-object p2, p0, Lhys;->c:Landroid/util/Size;

    iput-object p3, p0, Lhys;->d:Landroid/util/Size;

    iput-object p4, p0, Lhys;->e:Ljava/lang/Integer;

    sget-object p5, Lcom/DeveloperOptions;->cutout_display:Ldhj;

    invoke-static {p5}, Lcom/DeveloperOptions;->getPhenotypeBoolean(Ldhj;)Z

    move-result p5

    iput-boolean p5, p0, Lhys;->f:Z

    iput-object p6, p0, Lhys;->g:Liko;

    iput-object p7, p0, Lhys;->h:Lika;

    iput-object p8, p0, Lhys;->i:Lhyn;

    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    iget-object v0, p0, Lhys;->b:Landroid/util/Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhys;->c:Landroid/util/Size;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lhys;->e:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final b()Lhyr;
    .locals 1

    new-instance v0, Lhyr;

    invoke-direct {v0, p0}, Lhyr;-><init>(Lhys;)V

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lhys;

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    check-cast p1, Lhys;

    iget-object v1, p0, Lhys;->b:Landroid/util/Size;

    if-nez v1, :cond_1

    iget-object v1, p1, Lhys;->b:Landroid/util/Size;

    if-nez v1, :cond_6

    goto :goto_0

    :cond_1
    iget-object v3, p1, Lhys;->b:Landroid/util/Size;

    invoke-virtual {v1, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_0
    iget-object v1, p0, Lhys;->c:Landroid/util/Size;

    if-nez v1, :cond_2

    iget-object v1, p1, Lhys;->c:Landroid/util/Size;

    if-nez v1, :cond_6

    goto :goto_1

    :cond_2
    iget-object v3, p1, Lhys;->c:Landroid/util/Size;

    invoke-virtual {v1, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_1
    iget-object v1, p0, Lhys;->d:Landroid/util/Size;

    if-nez v1, :cond_3

    iget-object v1, p1, Lhys;->d:Landroid/util/Size;

    if-nez v1, :cond_6

    goto :goto_2

    :cond_3
    iget-object v3, p1, Lhys;->d:Landroid/util/Size;

    invoke-virtual {v1, v3}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :goto_2
    iget-object v1, p0, Lhys;->e:Ljava/lang/Integer;

    if-nez v1, :cond_4

    iget-object v1, p1, Lhys;->e:Ljava/lang/Integer;

    if-nez v1, :cond_6

    goto :goto_3

    :cond_4
    iget-object v3, p1, Lhys;->e:Ljava/lang/Integer;

    invoke-virtual {v1, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    :cond_5
    :goto_3
    iget-boolean v1, p0, Lhys;->f:Z

    iget-boolean v3, p1, Lhys;->f:Z

    if-ne v1, v3, :cond_6

    iget-object v1, p0, Lhys;->g:Liko;

    iget-object v3, p1, Lhys;->g:Liko;

    invoke-virtual {v1, v3}, Liko;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lhys;->h:Lika;

    iget-object v3, p1, Lhys;->h:Lika;

    invoke-virtual {v1, v3}, Lika;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lhys;->i:Lhyn;

    iget-object p1, p1, Lhys;->i:Lhyn;

    invoke-virtual {v1, p1}, Lhyn;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    return v0

    :cond_6
    :goto_4
    return v2

    :cond_7
    return v2
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lhys;->b:Landroid/util/Size;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/util/Size;->hashCode()I

    move-result v0

    :goto_0
    iget-object v2, p0, Lhys;->c:Landroid/util/Size;

    if-nez v2, :cond_1

    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/util/Size;->hashCode()I

    move-result v2

    :goto_1
    const v3, 0xf4243

    xor-int/2addr v0, v3

    iget-object v4, p0, Lhys;->d:Landroid/util/Size;

    if-nez v4, :cond_2

    const/4 v4, 0x0

    goto :goto_2

    :cond_2
    invoke-virtual {v4}, Landroid/util/Size;->hashCode()I

    move-result v4

    :goto_2
    mul-int v0, v0, v3

    xor-int/2addr v0, v2

    mul-int v0, v0, v3

    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    iget-object v2, p0, Lhys;->e:Ljava/lang/Integer;

    if-nez v2, :cond_3

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Ljava/lang/Integer;->hashCode()I

    move-result v1

    :goto_3
    xor-int/2addr v0, v1

    mul-int v0, v0, v3

    const/16 v1, 0x4d5

    xor-int/2addr v0, v1

    mul-int v0, v0, v3

    const/4 v2, 0x1

    iget-boolean v4, p0, Lhys;->f:Z

    if-eq v2, v4, :cond_4

    goto :goto_4

    :cond_4
    const/16 v1, 0x4cf

    :goto_4
    xor-int/2addr v0, v1

    mul-int v0, v0, v3

    iget-object v1, p0, Lhys;->g:Liko;

    invoke-virtual {v1}, Liko;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int v0, v0, v3

    iget-object v1, p0, Lhys;->h:Lika;

    invoke-virtual {v1}, Lika;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    mul-int v0, v0, v3

    iget-object v1, p0, Lhys;->i:Lhyn;

    invoke-virtual {v1}, Lhyn;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 10

    iget-object v0, p0, Lhys;->b:Landroid/util/Size;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lhys;->c:Landroid/util/Size;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lhys;->d:Landroid/util/Size;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lhys;->e:Ljava/lang/Integer;

    iget-boolean v4, p0, Lhys;->f:Z

    iget-object v5, p0, Lhys;->g:Liko;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lhys;->h:Lika;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lhys;->i:Lhyn;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CameraLayoutConstants{windowSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", previewSize="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", orientedPreviewSize="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", sensorOrientationDegree="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, ", isPreviewMaximized=false, hasCutout="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", orientation="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mode="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", decision="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
