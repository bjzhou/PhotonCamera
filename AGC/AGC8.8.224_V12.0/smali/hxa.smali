.class public final Lhxa;
.super Ljava/lang/Object;


# instance fields
.field public final a:Z

.field public final b:Z

.field public final c:Z

.field public final d:Ljvs;

.field public final e:Ljvs;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(ZZZLjvs;Ljvs;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lhxa;->a:Z

    iput-boolean p2, p0, Lhxa;->b:Z

    iput-boolean p3, p0, Lhxa;->c:Z

    iput-object p4, p0, Lhxa;->d:Ljvs;

    iput-object p5, p0, Lhxa;->e:Ljvs;

    return-void
.end method

.method public static a()Lhwz;
    .locals 3

    new-instance v0, Lhwz;

    invoke-direct {v0}, Lhwz;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhwz;->e(Z)V

    invoke-virtual {v0, v1}, Lhwz;->d(Z)V

    invoke-virtual {v0, v1}, Lhwz;->f(Z)V

    new-instance v2, Ljvk;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {v2, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lhwz;->c(Ljvs;)V

    new-instance v2, Ljvk;

    invoke-direct {v2, v1}, Ljvk;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v2}, Lhwz;->b(Ljvs;)V

    return-object v0
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lhxa;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    check-cast p1, Lhxa;

    iget-boolean v1, p0, Lhxa;->a:Z

    iget-boolean v3, p1, Lhxa;->a:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lhxa;->b:Z

    iget-boolean v3, p1, Lhxa;->b:Z

    if-ne v1, v3, :cond_1

    iget-boolean v1, p0, Lhxa;->c:Z

    iget-boolean v3, p1, Lhxa;->c:Z

    if-ne v1, v3, :cond_1

    iget-object v1, p0, Lhxa;->d:Ljvs;

    iget-object v3, p1, Lhxa;->d:Ljvs;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lhxa;->e:Ljvs;

    iget-object p1, p1, Lhxa;->e:Ljvs;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v0

    :cond_1
    return v2
.end method

.method public final hashCode()I
    .locals 6

    iget-boolean v0, p0, Lhxa;->a:Z

    const/16 v1, 0x4d5

    const/16 v2, 0x4cf

    const/4 v3, 0x1

    if-eq v3, v0, :cond_0

    const/16 v0, 0x4d5

    goto :goto_0

    :cond_0
    const/16 v0, 0x4cf

    :goto_0
    iget-boolean v4, p0, Lhxa;->b:Z

    if-eq v3, v4, :cond_1

    const/16 v4, 0x4d5

    goto :goto_1

    :cond_1
    const/16 v4, 0x4cf

    :goto_1
    iget-boolean v5, p0, Lhxa;->c:Z

    if-eq v3, v5, :cond_2

    goto :goto_2

    :cond_2
    const/16 v1, 0x4cf

    :goto_2
    iget-object v2, p0, Lhxa;->d:Ljvs;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const v3, 0xf4243

    xor-int/2addr v0, v3

    mul-int v0, v0, v3

    xor-int/2addr v0, v4

    mul-int v0, v0, v3

    xor-int/2addr v0, v1

    mul-int v0, v0, v3

    xor-int/2addr v0, v2

    iget-object v1, p0, Lhxa;->e:Ljvs;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    mul-int v0, v0, v3

    xor-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 7

    iget-boolean v0, p0, Lhxa;->a:Z

    iget-boolean v1, p0, Lhxa;->b:Z

    iget-boolean v2, p0, Lhxa;->c:Z

    iget-object v3, p0, Lhxa;->d:Ljvs;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lhxa;->e:Ljvs;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ElapsedTimeUIConfig{showOutputTimer="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", showMutedAudioIcon="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", showSpeechEnhanceIcon="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", showMicInputExtWired="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", showMicInputExtBluetooth="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
