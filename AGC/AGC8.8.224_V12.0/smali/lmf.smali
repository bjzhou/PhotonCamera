.class public final Llmf;
.super Ljava/lang/Object;

# interfaces
.implements Llhh;


# instance fields
.field public final a:F

.field private final b:I

.field private final c:Lmqp;

.field private final d:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IIFLmqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Llmf;->d:I

    iput p2, p0, Llmf;->b:I

    iput p3, p0, Llmf;->a:F

    iput-object p4, p0, Llmf;->c:Lmqp;

    return-void
.end method

.method public static final c()Llme;
    .locals 2

    new-instance v0, Llme;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Llme;-><init>([B)V

    const/16 v1, 0xa

    iput v1, v0, Llme;->a:I

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Llme;->b:F

    const/4 v1, 0x3

    iput-byte v1, v0, Llme;->d:B

    sget-object v1, Lmpx;->a:Lmpx;

    iput-object v1, v0, Llme;->c:Lmqp;

    const/4 v1, 0x1

    iput v1, v0, Llme;->e:I

    return-object v0
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Llmf;->b:I

    return v0
.end method

.method public final b()Z
    .locals 2

    iget v0, p0, Llmf;->d:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Llmf;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    check-cast p1, Llmf;

    iget v1, p0, Llmf;->d:I

    iget v3, p1, Llmf;->d:I

    if-eqz v1, :cond_2

    if-ne v1, v3, :cond_1

    iget v1, p0, Llmf;->b:I

    iget v3, p1, Llmf;->b:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Llmf;->a:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v3, p1, Llmf;->a:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Llmf;->c:Lmqp;

    iget-object p1, p1, Llmf;->c:Lmqp;

    invoke-virtual {v1, p1}, Lmqp;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2

    :cond_2
    const/4 p1, 0x0

    throw p1

    :cond_3
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Llmf;->d:I

    invoke-static {v0}, Llhi;->b(I)V

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget v2, p0, Llmf;->b:I

    xor-int/2addr v0, v2

    iget v2, p0, Llmf;->a:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    const v1, 0x79a31aac

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 6

    iget v0, p0, Llmf;->d:I

    invoke-static {v0}, Llhi;->a(I)Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Llmf;->b:I

    iget v2, p0, Llmf;->a:F

    iget-object v3, p0, Llmf;->c:Lmqp;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "TimerConfigurations{enablement="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", rateLimitPerSecond="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", samplingProbability="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", perEventConfigurationFlags="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
