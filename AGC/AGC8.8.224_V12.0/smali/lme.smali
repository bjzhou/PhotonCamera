.class public final Llme;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:F

.field public c:Lmqp;

.field public d:B

.field public e:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Llme;->c:Lmqp;

    return-void
.end method


# virtual methods
.method public final a()Llmf;
    .locals 6

    iget-byte v0, p0, Llme;->d:B

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Llme;->e:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Llmf;

    iget v3, p0, Llme;->a:I

    iget v4, p0, Llme;->b:F

    iget-object v5, p0, Llme;->c:Lmqp;

    invoke-direct {v1, v0, v3, v4, v5}, Llmf;-><init>(IIFLmqp;)V

    const-string v0, "Rate limit per second must be >= 0"

    invoke-static {v2, v0}, Lmoz;->q(ZLjava/lang/Object;)V

    iget v0, v1, Llmf;->a:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v0, "Sampling Probability shall be > 0 and <= 1"

    invoke-static {v2, v0}, Lmoz;->q(ZLjava/lang/Object;)V

    return-object v1

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Llme;->e:I

    if-nez v1, :cond_3

    const-string v1, " enablement"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-byte v1, p0, Llme;->d:B

    and-int/2addr v1, v2

    if-nez v1, :cond_4

    const-string v1, " rateLimitPerSecond"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte v1, p0, Llme;->d:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    const-string v1, " samplingProbability"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Llme;->e:I

    return-void
.end method

.method public final c()Lliv;
    .locals 6

    iget-byte v0, p0, Llme;->d:B

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    iget v0, p0, Llme;->a:I

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v1, Lliv;

    iget v3, p0, Llme;->b:F

    iget v4, p0, Llme;->e:I

    iget-object v5, p0, Llme;->c:Lmqp;

    invoke-direct {v1, v0, v3, v4, v5}, Lliv;-><init>(IFILmqp;)V

    iget v0, v1, Lliv;->a:F

    const/4 v3, 0x0

    const/4 v4, 0x0

    cmpl-float v3, v0, v3

    if-lez v3, :cond_1

    const/high16 v3, 0x42c80000    # 100.0f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    const-string v0, "StartupSamplePercentage should be a floating number > 0 and <= 100."

    invoke-static {v2, v0}, Lmoz;->f(ZLjava/lang/Object;)V

    return-object v1

    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p0, Llme;->a:I

    if-nez v1, :cond_3

    const-string v1, " enablement"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-byte v1, p0, Llme;->d:B

    and-int/2addr v1, v2

    if-nez v1, :cond_4

    const-string v1, " startupSamplePercentage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-byte v1, p0, Llme;->d:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_5

    const-string v1, " debugLogsSize"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final d(Z)V
    .locals 1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_0

    const/4 p1, 0x2

    goto :goto_0

    :cond_0
    const/4 p1, 0x3

    :goto_0
    iput p1, p0, Llme;->a:I

    return-void
.end method
