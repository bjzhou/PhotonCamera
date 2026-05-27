.class final Leam;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ldyy;

.field private d:Z

.field private e:F

.field private f:F

.field private g:F

.field private h:I

.field private i:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Ledb;
    .locals 11

    iget-byte v0, p0, Leam;->i:B

    const/16 v1, 0x1f

    if-eq v0, v1, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Leam;->i:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_0

    const-string v1, " secondary"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    iget-byte v1, p0, Leam;->i:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_1

    const-string v1, " boostBigOption"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    iget-byte v1, p0, Leam;->i:B

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2

    const-string v1, " boostMidOption"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-byte v1, p0, Leam;->i:B

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_3

    const-string v1, " boostLittleOption"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-byte v1, p0, Leam;->i:B

    and-int/lit8 v1, v1, 0x10

    if-nez v1, :cond_4

    const-string v1, " cpuAffinityMask"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_5
    new-instance v0, Ledb;

    iget-object v3, p0, Leam;->a:Ljava/lang/String;

    iget-object v4, p0, Leam;->b:Ljava/lang/String;

    iget-object v5, p0, Leam;->c:Ldyy;

    iget-boolean v6, p0, Leam;->d:Z

    iget v7, p0, Leam;->e:F

    iget v8, p0, Leam;->f:F

    iget v9, p0, Leam;->g:F

    iget v10, p0, Leam;->h:I

    move-object v2, v0

    invoke-direct/range {v2 .. v10}, Ledb;-><init>(Ljava/lang/String;Ljava/lang/String;Ldyy;ZFFFI)V

    return-object v0
.end method

.method public final b(F)V
    .locals 0

    iput p1, p0, Leam;->e:F

    iget-byte p1, p0, Leam;->i:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Leam;->i:B

    return-void
.end method

.method public final c(F)V
    .locals 0

    iput p1, p0, Leam;->g:F

    iget-byte p1, p0, Leam;->i:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Leam;->i:B

    return-void
.end method

.method public final d(F)V
    .locals 0

    iput p1, p0, Leam;->f:F

    iget-byte p1, p0, Leam;->i:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Leam;->i:B

    return-void
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Leam;->h:I

    iget-byte p1, p0, Leam;->i:B

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    iput-byte p1, p0, Leam;->i:B

    return-void
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Leam;->d:Z

    iget-byte p1, p0, Leam;->i:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Leam;->i:B

    return-void
.end method
