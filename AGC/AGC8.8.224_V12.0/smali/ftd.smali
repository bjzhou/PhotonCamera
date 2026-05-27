.class public final Lftd;
.super Ljava/lang/Object;


# instance fields
.field public a:[B

.field public b:Ljuf;

.field public c:Lmqp;

.field private d:I

.field private e:Lftf;

.field private f:I

.field private g:Lklv;

.field private h:Ljwb;

.field private i:Z

.field private j:Z

.field private k:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lfte;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lmpx;->a:Lmpx;

    iput-object v0, p0, Lftd;->c:Lmqp;

    iget v0, p1, Lfte;->a:I

    iput v0, p0, Lftd;->d:I

    iget-object v0, p1, Lfte;->b:Lftf;

    iput-object v0, p0, Lftd;->e:Lftf;

    iget v0, p1, Lfte;->c:I

    iput v0, p0, Lftd;->f:I

    iget-object v0, p1, Lfte;->d:Lklv;

    iput-object v0, p0, Lftd;->g:Lklv;

    iget-object v0, p1, Lfte;->e:[B

    iput-object v0, p0, Lftd;->a:[B

    iget-object v0, p1, Lfte;->f:Ljuf;

    iput-object v0, p0, Lftd;->b:Ljuf;

    iget-object v0, p1, Lfte;->g:Ljwb;

    iput-object v0, p0, Lftd;->h:Ljwb;

    iget-boolean v0, p1, Lfte;->h:Z

    iput-boolean v0, p0, Lftd;->i:Z

    iget-boolean v0, p1, Lfte;->i:Z

    iput-boolean v0, p0, Lftd;->j:Z

    iget-object p1, p1, Lfte;->j:Lmqp;

    iput-object p1, p0, Lftd;->c:Lmqp;

    const/16 p1, 0xf

    iput-byte p1, p0, Lftd;->k:B

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object p1, Lmpx;->a:Lmpx;

    iput-object p1, p0, Lftd;->c:Lmqp;

    return-void
.end method


# virtual methods
.method public final a()Lfte;
    .locals 13

    iget-byte v0, p0, Lftd;->k:B

    const/16 v1, 0xf

    if-ne v0, v1, :cond_1

    iget-object v4, p0, Lftd;->e:Lftf;

    if-eqz v4, :cond_1

    iget-object v6, p0, Lftd;->g:Lklv;

    if-eqz v6, :cond_1

    iget-object v7, p0, Lftd;->a:[B

    if-eqz v7, :cond_1

    iget-object v8, p0, Lftd;->b:Ljuf;

    if-eqz v8, :cond_1

    iget-object v9, p0, Lftd;->h:Ljwb;

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lfte;

    iget v3, p0, Lftd;->d:I

    iget v5, p0, Lftd;->f:I

    iget-boolean v10, p0, Lftd;->i:Z

    iget-boolean v11, p0, Lftd;->j:Z

    iget-object v12, p0, Lftd;->c:Lmqp;

    move-object v2, v0

    invoke-direct/range {v2 .. v12}, Lfte;-><init>(ILftf;ILklv;[BLjuf;Ljwb;ZZLmqp;)V

    return-object v0

    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-byte v1, p0, Lftd;->k:B

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_2

    const-string v1, " orientation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v1, p0, Lftd;->e:Lftf;

    if-nez v1, :cond_3

    const-string v1, " callback"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-byte v1, p0, Lftd;->k:B

    and-int/lit8 v1, v1, 0x2

    if-nez v1, :cond_4

    const-string v1, " heading"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v1, p0, Lftd;->g:Lklv;

    if-nez v1, :cond_5

    const-string v1, " facing"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-object v1, p0, Lftd;->a:[B

    if-nez v1, :cond_6

    const-string v1, " sensorEepromInfo"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-object v1, p0, Lftd;->b:Ljuf;

    if-nez v1, :cond_7

    const-string v1, " shotLifetime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-object v1, p0, Lftd;->h:Ljwb;

    if-nez v1, :cond_8

    const-string v1, " selfieFlashFired"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-byte v1, p0, Lftd;->k:B

    and-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_9

    const-string v1, " generateDngEnabled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-byte v1, p0, Lftd;->k:B

    and-int/lit8 v1, v1, 0x8

    if-nez v1, :cond_a

    const-string v1, " longPress"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Missing required properties:"

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final b(Lftf;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lftd;->e:Lftf;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null callback"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(Lklv;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lftd;->g:Lklv;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null facing"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Z)V
    .locals 0

    iput-boolean p1, p0, Lftd;->i:Z

    iget-byte p1, p0, Lftd;->k:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lftd;->k:B

    return-void
.end method

.method public final e(I)V
    .locals 0

    iput p1, p0, Lftd;->f:I

    iget-byte p1, p0, Lftd;->k:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lftd;->k:B

    return-void
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Lftd;->j:Z

    iget-byte p1, p0, Lftd;->k:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lftd;->k:B

    return-void
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lftd;->d:I

    iget-byte p1, p0, Lftd;->k:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lftd;->k:B

    return-void
.end method

.method public final h(Ljwb;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lftd;->h:Ljwb;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null selfieFlashFired"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
