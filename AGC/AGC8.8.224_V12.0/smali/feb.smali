.class public final Lfeb;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lfeb;


# instance fields
.field public final b:I

.field public final c:I

.field public final d:Ljava/lang/String;

.field public final e:I

.field public final f:Z

.field public final g:Z

.field public final h:Z

.field public final i:Z

.field private final j:I

.field private final k:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lfeb;->a()Lfea;

    move-result-object v0

    invoke-virtual {v0}, Lfea;->a()Lfeb;

    move-result-object v0

    sput-object v0, Lfeb;->a:Lfeb;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;IZZZZZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lfeb;->j:I

    iput p2, p0, Lfeb;->b:I

    iput p3, p0, Lfeb;->c:I

    iput-object p4, p0, Lfeb;->d:Ljava/lang/String;

    iput p5, p0, Lfeb;->e:I

    iput-boolean p6, p0, Lfeb;->k:Z

    iput-boolean p7, p0, Lfeb;->f:Z

    iput-boolean p8, p0, Lfeb;->g:Z

    iput-boolean p9, p0, Lfeb;->h:Z

    iput-boolean p10, p0, Lfeb;->i:Z

    return-void
.end method

.method public static a()Lfea;
    .locals 2

    new-instance v0, Lfea;

    invoke-direct {v0}, Lfea;-><init>()V

    iget-short v1, v0, Lfea;->c:S

    or-int/lit8 v1, v1, 0x30

    int-to-short v1, v1

    iput-short v1, v0, Lfea;->c:S

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfea;->b(Z)V

    invoke-virtual {v0, v1}, Lfea;->c(Z)V

    invoke-virtual {v0, v1}, Lfea;->d(Z)V

    invoke-virtual {v0, v1}, Lfea;->f(Z)V

    invoke-virtual {v0, v1}, Lfea;->e(Z)V

    iget-short v1, v0, Lfea;->c:S

    or-int/lit16 v1, v1, 0x800

    int-to-short v1, v1

    iput-short v1, v0, Lfea;->c:S

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lfea;->i(I)V

    invoke-virtual {v0, v1}, Lfea;->h(I)V

    invoke-virtual {v0, v1}, Lfea;->g(I)V

    iput v1, v0, Lfea;->a:I

    iget-short v1, v0, Lfea;->c:S

    or-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, v0, Lfea;->c:S

    const-string v1, ""

    iput-object v1, v0, Lfea;->b:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lfeb;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lfeb;

    iget v1, p0, Lfeb;->j:I

    iget v3, p1, Lfeb;->j:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lfeb;->b:I

    iget v3, p1, Lfeb;->b:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lfeb;->c:I

    iget v3, p1, Lfeb;->c:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lfeb;->d:Ljava/lang/String;

    iget-object v3, p1, Lfeb;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lfeb;->e:I

    iget v3, p1, Lfeb;->e:I

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lfeb;->k:Z

    iget-boolean v3, p1, Lfeb;->k:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lfeb;->f:Z

    iget-boolean v3, p1, Lfeb;->f:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lfeb;->g:Z

    iget-boolean v3, p1, Lfeb;->g:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lfeb;->h:Z

    iget-boolean v3, p1, Lfeb;->h:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lfeb;->i:Z

    iget-boolean p1, p1, Lfeb;->i:Z

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 10

    iget v0, p0, Lfeb;->j:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget v2, p0, Lfeb;->b:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lfeb;->c:I

    xor-int/2addr v0, v2

    iget-object v2, p0, Lfeb;->d:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lfeb;->e:I

    xor-int/2addr v0, v2

    iget-boolean v2, p0, Lfeb;->k:Z

    const/16 v3, 0x4cf

    const/16 v4, 0x4d5

    const/4 v5, 0x1

    if-eq v5, v2, :cond_0

    const/16 v2, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v2, 0x4cf

    :goto_0
    iget-boolean v6, p0, Lfeb;->f:Z

    if-eq v5, v6, :cond_1

    const/16 v6, 0x4d5

    goto :goto_1

    :cond_1
    const/16 v6, 0x4cf

    :goto_1
    iget-boolean v7, p0, Lfeb;->g:Z

    if-eq v5, v7, :cond_2

    const/16 v7, 0x4d5

    goto :goto_2

    :cond_2
    const/16 v7, 0x4cf

    :goto_2
    iget-boolean v8, p0, Lfeb;->h:Z

    if-eq v5, v8, :cond_3

    const/16 v8, 0x4d5

    goto :goto_3

    :cond_3
    const/16 v8, 0x4cf

    :goto_3
    iget-boolean v9, p0, Lfeb;->i:Z

    if-eq v5, v9, :cond_4

    const/16 v3, 0x4d5

    :cond_4
    mul-int v0, v0, v1

    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    xor-int/2addr v0, v4

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v6

    mul-int v0, v0, v1

    xor-int/2addr v0, v7

    mul-int v0, v0, v1

    xor-int/2addr v0, v8

    mul-int v0, v0, v1

    xor-int/2addr v0, v3

    mul-int v0, v0, v1

    xor-int/2addr v0, v4

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 12

    iget v0, p0, Lfeb;->j:I

    iget v1, p0, Lfeb;->b:I

    iget v2, p0, Lfeb;->c:I

    iget-object v3, p0, Lfeb;->d:Ljava/lang/String;

    iget v4, p0, Lfeb;->e:I

    iget-boolean v5, p0, Lfeb;->k:Z

    iget-boolean v6, p0, Lfeb;->f:Z

    iget-boolean v7, p0, Lfeb;->g:Z

    iget-boolean v8, p0, Lfeb;->h:Z

    iget-boolean v9, p0, Lfeb;->i:Z

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Metadata{burstSize="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", videoCaptureFramerate="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", videoHeight="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", videoOrientation="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", videoWidth="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", hasBurstData=false, portrait=false, loaded="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", panorama="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", panorama360="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", usePanoramaViewer="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", photosphere="

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", timelapse=false}"

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
