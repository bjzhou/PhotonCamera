.class public final Ljxa;
.super Ljava/lang/Object;


# instance fields
.field public final a:Ljwt;

.field public final b:Ljwu;

.field public final c:Ljws;

.field public final d:I

.field public final e:I

.field public final f:I

.field public final g:F

.field private final h:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljwt;Ljwu;ILjws;IIIF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_2

    iput-object p1, p0, Ljxa;->a:Ljwt;

    if-eqz p2, :cond_1

    iput-object p2, p0, Ljxa;->b:Ljwu;

    invoke-static {p3}, Lcom/agc/LensSettings;->getBitrate(I)I

    move-result p3

    iput p3, p0, Ljxa;->h:I

    if-eqz p4, :cond_0

    iput-object p4, p0, Ljxa;->c:Ljws;

    iput p5, p0, Ljxa;->d:I

    iput p6, p0, Ljxa;->e:I

    iput p7, p0, Ljxa;->f:I

    iput p8, p0, Ljxa;->g:F

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null camcorderCaptureRate"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null videoResolution"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    const-string p2, "Null videoFileFormat"

    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget-object v0, p0, Ljxa;->c:Ljws;

    iget v0, v0, Ljws;->i:I

    return v0
.end method

.method public final b()I
    .locals 2

    iget-object v0, p0, Ljxa;->c:Ljws;

    invoke-virtual {v0}, Ljws;->f()Z

    move-result v1

    if-eqz v1, :cond_0

    iget v0, p0, Ljxa;->h:I

    return v0

    :cond_0
    iget v1, p0, Ljxa;->h:I

    invoke-virtual {v0}, Ljws;->a()I

    move-result v0

    div-int/2addr v1, v0

    return v1
.end method

.method public final c()I
    .locals 1

    iget-object v0, p0, Ljxa;->c:Ljws;

    iget v0, v0, Ljws;->j:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Ljxa;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Ljxa;

    iget-object v1, p0, Ljxa;->a:Ljwt;

    iget-object v3, p1, Ljxa;->a:Ljwt;

    invoke-virtual {v1, v3}, Ljwt;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Ljxa;->b:Ljwu;

    iget-object v3, p1, Ljxa;->b:Ljwu;

    invoke-virtual {v1, v3}, Ljwu;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Ljxa;->h:I

    iget v3, p1, Ljxa;->h:I

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Ljxa;->c:Ljws;

    iget-object v3, p1, Ljxa;->c:Ljws;

    invoke-virtual {v1, v3}, Ljws;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Ljxa;->d:I

    iget v3, p1, Ljxa;->d:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Ljxa;->e:I

    iget v3, p1, Ljxa;->e:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Ljxa;->f:I

    iget v3, p1, Ljxa;->f:I

    if-ne v1, v3, :cond_1

    iget v1, p0, Ljxa;->g:F

    invoke-static {v1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v1

    iget p1, p1, Ljxa;->g:F

    invoke-static {p1}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result p1

    if-ne v1, p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 3

    iget-object v0, p0, Ljxa;->a:Ljwt;

    invoke-virtual {v0}, Ljwt;->hashCode()I

    move-result v0

    const v1, 0xf4243

    xor-int/2addr v0, v1

    iget-object v2, p0, Ljxa;->b:Ljwu;

    invoke-virtual {v2}, Ljwu;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Ljxa;->h:I

    xor-int/2addr v0, v2

    iget-object v2, p0, Ljxa;->c:Ljws;

    invoke-virtual {v2}, Ljws;->hashCode()I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Ljxa;->d:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Ljxa;->e:I

    xor-int/2addr v0, v2

    mul-int v0, v0, v1

    iget v2, p0, Ljxa;->f:I

    xor-int/2addr v0, v2

    iget v2, p0, Ljxa;->g:F

    invoke-static {v2}, Ljava/lang/Float;->floatToIntBits(F)I

    move-result v2

    mul-int v0, v0, v1

    xor-int/2addr v0, v2

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    invoke-static {p0}, Lmoz;->y(Ljava/lang/Object;)Lmqo;

    move-result-object v0

    iget-object v1, p0, Ljxa;->a:Ljwt;

    const-string v2, "camcorderVideoFileFormat"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget-object v1, p0, Ljxa;->b:Ljwu;

    const-string v2, "camcorderVideoResolution"

    invoke-virtual {v0, v2, v1}, Lmqo;->b(Ljava/lang/String;Ljava/lang/Object;)V

    iget v1, p0, Ljxa;->h:I

    const-string v2, "videoCaptureBitRate"

    invoke-virtual {v0, v2, v1}, Lmqo;->e(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljxa;->a()I

    move-result v1

    const-string v2, "videoCaptureFrameRate"

    invoke-virtual {v0, v2, v1}, Lmqo;->e(Ljava/lang/String;I)V

    iget v1, p0, Ljxa;->d:I

    const-string v2, "videoEncoder"

    invoke-virtual {v0, v2, v1}, Lmqo;->e(Ljava/lang/String;I)V

    invoke-virtual {p0}, Ljxa;->c()I

    move-result v1

    const-string v2, "videoEncodingFrameRate"

    invoke-virtual {v0, v2, v1}, Lmqo;->e(Ljava/lang/String;I)V

    iget v1, p0, Ljxa;->g:F

    const-string v2, "videoKeyFrameInterval"

    invoke-virtual {v0, v2, v1}, Lmqo;->d(Ljava/lang/String;F)V

    invoke-virtual {v0}, Lmqo;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
