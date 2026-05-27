.class public final Lmpe;
.super Ljava/lang/Object;


# static fields
.field private static final e:Lmpc;


# instance fields
.field public final a:I

.field public final b:F

.field public final c:I

.field public final d:I

.field private final f:I

.field private final g:I

.field private final h:Lmpc;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-object v0, Lmpc;->a:Lmpc;

    sput-object v0, Lmpe;->e:Lmpc;

    invoke-static {}, Lmpe;->a()Lmpd;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Lmpd;->g(I)V

    invoke-virtual {v1, v2}, Lmpd;->f(I)V

    invoke-virtual {v1, v0}, Lmpd;->e(Lmpc;)V

    const/16 v0, 0x14

    invoke-virtual {v1, v0}, Lmpd;->h(I)V

    const/high16 v0, 0x467a0000    # 16000.0f

    invoke-virtual {v1, v0}, Lmpd;->d(F)V

    const/4 v0, 0x2

    invoke-virtual {v1, v0}, Lmpd;->b(I)V

    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Lmpd;->c(I)V

    invoke-virtual {v1}, Lmpd;->a()Lmpe;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IILmpc;IFII)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lmpe;->f:I

    iput p2, p0, Lmpe;->g:I

    iput-object p3, p0, Lmpe;->h:Lmpc;

    iput p4, p0, Lmpe;->a:I

    iput p5, p0, Lmpe;->b:F

    iput p6, p0, Lmpe;->c:I

    iput p7, p0, Lmpe;->d:I

    return-void
.end method

.method public static a()Lmpd;
    .locals 1

    new-instance v0, Lmpd;

    invoke-direct {v0}, Lmpd;-><init>()V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lmpe;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lmpe;

    iget v1, p0, Lmpe;->f:I

    iget v3, p1, Lmpe;->f:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lmpe;->g:I

    iget v3, p1, Lmpe;->g:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lmpe;->h:Lmpc;

    iget-object v3, p1, Lmpe;->h:Lmpc;

    invoke-virtual {v1, v3}, Lmpc;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lmpe;->a:I

    iget v3, p1, Lmpe;->a:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lmpe;->b:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget v3, p1, Lmpe;->b:F

    invoke-static {v3}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v3

    if-ne v1, v3, :cond_1

    iget v1, p0, Lmpe;->c:I

    iget v3, p1, Lmpe;->c:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Lmpe;->d:I

    iget p1, p1, Lmpe;->d:I

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget v0, p0, Lmpe;->f:I

    const v1, 0xf4243

    xor-int/2addr v0, v1

    mul-int v0, v0, v1

    iget v2, p0, Lmpe;->g:I

    xor-int/2addr v0, v2

    iget-object v2, p0, Lmpe;->h:Lmpc;

    invoke-virtual {v2}, Lmpc;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lmpe;->a:I

    xor-int/2addr v0, v2

    iget v2, p0, Lmpe;->b:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Lmpe;->c:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v1, p0, Lmpe;->d:I

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget v0, p0, Lmpe;->f:I

    iget v1, p0, Lmpe;->g:I

    iget-object v2, p0, Lmpe;->h:Lmpc;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lmpe;->a:I

    iget v4, p0, Lmpe;->b:F

    iget v5, p0, Lmpe;->c:I

    iget v6, p0, Lmpe;->d:I

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SpeechEnhancerModelInfo{thumbnailImageWidthPixels="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", thumbnailImageHeightPixels="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", thumbnailImageColorspace="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", videoFramesPerSecond="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", audioSampleRateHz="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, ", audioBytesPerSample="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", audioNumChannels="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
