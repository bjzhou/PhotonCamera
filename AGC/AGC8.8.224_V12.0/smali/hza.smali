.class public final Lhza;
.super Ljava/lang/Object;


# instance fields
.field public final a:Z

.field public final b:Lmvv;

.field private final c:Z

.field private final d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZZLmvv;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lhza;->a:Z

    iput-boolean p2, p0, Lhza;->c:Z

    iput-boolean p3, p0, Lhza;->d:Z

    iput-object p4, p0, Lhza;->b:Lmvv;

    return-void
.end method

.method public static a()Lhyz;
    .locals 2

    new-instance v0, Lhyz;

    invoke-direct {v0}, Lhyz;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhyz;->b(Z)V

    invoke-virtual {v0, v1}, Lhyz;->c(Z)V

    invoke-virtual {v0, v1}, Lhyz;->d(Z)V

    sget v1, Lmvv;->d:I

    sget-object v1, Lmyu;->a:Lmvv;

    invoke-virtual {v0, v1}, Lhyz;->e(Lmvv;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lhza;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lhza;

    iget-boolean v1, p0, Lhza;->a:Z

    iget-boolean v3, p1, Lhza;->a:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lhza;->c:Z

    iget-boolean v3, p1, Lhza;->c:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lhza;->d:Z

    iget-boolean v3, p1, Lhza;->d:Z

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lhza;->b:Lmvv;

    iget-object p1, p1, Lhza;->b:Lmvv;

    invoke-static {v1, p1}, Llyh;->I(Ljava/util/List;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 6

    iget-boolean v0, p0, Lhza;->a:Z

    const/16 v1, 0x4d5

    const/16 v2, 0x4cf

    const/4 v3, 0x1

    if-eq v3, v0, :cond_0

    const/16 v0, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v0, 0x4cf

    :goto_0
    iget-boolean v4, p0, Lhza;->c:Z

    if-eq v3, v4, :cond_1

    const/16 v4, 0x4d5

    goto :goto_1

    :cond_1
    const/16 v4, 0x4cf

    :goto_1
    iget-boolean v5, p0, Lhza;->d:Z

    if-eq v3, v5, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x4cf

    :goto_2
    iget-object v2, p0, Lhza;->b:Lmvv;

    invoke-virtual {v2}, Lmvv;->hashCode()I

    move-result v2

    const v3, 0xf4243

    xor-int/2addr v0, v3

    mul-int v0, v0, v3

    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    xor-int/2addr v0, v1

    mul-int v0, v0, v3

    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-boolean v0, p0, Lhza;->a:Z

    iget-boolean v1, p0, Lhza;->c:Z

    iget-boolean v2, p0, Lhza;->d:Z

    iget-object v3, p0, Lhza;->b:Lmvv;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "LensPostCaptureFeatureCapability{supportDocumentScanning="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", supportTextFilterIntent="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", supportTranslate="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", supportedTranslateLanguages="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
