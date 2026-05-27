.class public final Llgd;
.super Ljava/lang/Object;


# instance fields
.field public final a:Lnox;

.field public final b:I

.field public final c:I

.field public final d:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lnox;IIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Llgd;->a:Lnox;

    iput p2, p0, Llgd;->b:I

    iput p3, p0, Llgd;->c:I

    iput-boolean p4, p0, Llgd;->d:Z

    return-void
.end method

.method public static a()Llkm;
    .locals 2

    new-instance v0, Llkm;

    invoke-direct {v0}, Llkm;-><init>()V

    const/16 v1, 0xb

    iput v1, v0, Llkm;->a:I

    const/4 v1, 0x2

    iput v1, v0, Llkm;->d:I

    const/4 v1, 0x1

    iput-boolean v1, v0, Llkm;->b:Z

    const/4 v1, 0x7

    iput-byte v1, v0, Llkm;->c:B

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Llgd;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Llgd;

    iget-object v1, p0, Llgd;->a:Lnox;

    if-nez v1, :cond_1

    iget-object v1, p1, Llgd;->a:Lnox;

    if-nez v1, :cond_2

    goto :goto_0

    :cond_1
    iget-object v3, p1, Llgd;->a:Lnox;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :goto_0
    iget v1, p0, Llgd;->b:I

    iget v3, p1, Llgd;->b:I

    if-ne v1, v3, :cond_2

    iget v1, p0, Llgd;->c:I

    iget v3, p1, Llgd;->c:I

    if-ne v1, v3, :cond_2

    iget-boolean v1, p0, Llgd;->d:Z

    iget-boolean p1, p1, Llgd;->d:Z

    if-ne v1, p1, :cond_2

    return v0

    :cond_2
    return v2

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 4

    iget-object v0, p0, Llgd;->a:Lnox;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget v2, p0, Llgd;->b:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Llgd;->c:I

    xor-int/2addr v0, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Llgd;->d:Z

    if-eq v2, v3, :cond_1

    const/16 v2, 0x4d5

    goto :goto_1

    :cond_1
    const/16 v2, 0x4cf

    :goto_1
    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget-object v0, p0, Llgd;->a:Lnox;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Llgd;->b:I

    iget v2, p0, Llgd;->c:I

    iget-boolean v3, p0, Llgd;->d:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PrimesThreadsConfigurations{primesExecutorService="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", primesMetricExecutorPriority="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", primesMetricExecutorPoolSize="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", enableDeferredTasks="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
