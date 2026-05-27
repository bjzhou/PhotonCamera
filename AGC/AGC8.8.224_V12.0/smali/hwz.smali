.class public final Lhwz;
.super Ljava/lang/Object;


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:Ljvs;

.field private e:Ljvs;

.field private f:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lhxa;
    .locals 8

    iget-byte v0, p0, Lhwz;->f:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-object v6, p0, Lhwz;->d:Ljvs;

    if-eqz v6, :cond_1

    iget-object v7, p0, Lhwz;->e:Ljvs;

    if-nez v7, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lhxa;

    iget-boolean v3, p0, Lhwz;->a:Z

    iget-boolean v4, p0, Lhwz;->b:Z

    iget-boolean v5, p0, Lhwz;->c:Z

    move-object v2, v0

    invoke-direct/range {v2 .. v7}, Lhxa;-><init>(ZZZLjvs;Ljvs;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lhwz;->f:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    const-string v1, " showOutputTimer"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte v1, p0, Lhwz;->f:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_3

    const-string v1, " showMutedAudioIcon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-byte v1, p0, Lhwz;->f:B

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_4

    const-string v1, " showSpeechEnhanceIcon"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lhwz;->d:Ljvs;

    if-nez v1, :cond_5

    const-string v1, " showMicInputExtWired"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lhwz;->e:Ljvs;

    if-nez v1, :cond_6

    const-string v1, " showMicInputExtBluetooth"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Ljvs;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhwz;->e:Ljvs;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null showMicInputExtBluetooth"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Ljvs;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhwz;->d:Ljvs;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null showMicInputExtWired"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lhwz;->b:Z

    iget-byte p1, p0, Lhwz;->f:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lhwz;->f:B

    return-void
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lhwz;->a:Z

    iget-byte p1, p0, Lhwz;->f:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lhwz;->f:B

    return-void
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Lhwz;->c:Z

    iget-byte p1, p0, Lhwz;->f:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lhwz;->f:B

    return-void
.end method
