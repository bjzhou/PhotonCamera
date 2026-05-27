.class public final Lhpw;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljws;

.field private b:Ljwu;

.field private c:Lmqp;

.field private d:Lctd;

.field private e:Lmqp;

.field private f:Lhpu;

.field private g:J

.field private h:J

.field private i:J

.field private j:J

.field private k:I

.field private l:Ljava/lang/String;

.field private m:Z

.field private n:Lgxz;

.field private o:B


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

    iput-object p1, p0, Lhpw;->c:Lmqp;

    iput-object p1, p0, Lhpw;->e:Lmqp;

    return-void
.end method


# virtual methods
.method public final a()Lhpx;
    .locals 25

    move-object/from16 v0, p0

    iget-byte v1, v0, Lhpw;->o:B

    const/16 v2, 0x3f

    if-ne v1, v2, :cond_1

    iget-object v4, v0, Lhpw;->a:Ljws;

    if-eqz v4, :cond_1

    iget-object v5, v0, Lhpw;->b:Ljwu;

    if-eqz v5, :cond_1

    iget-object v7, v0, Lhpw;->d:Lctd;

    if-eqz v7, :cond_1

    iget-object v9, v0, Lhpw;->f:Lhpu;

    if-eqz v9, :cond_1

    iget-object v1, v0, Lhpw;->l:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v2, v0, Lhpw;->n:Lgxz;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v22, Lhpx;

    move-object/from16 v3, v22

    iget-object v6, v0, Lhpw;->c:Lmqp;

    iget-object v8, v0, Lhpw;->e:Lmqp;

    iget-wide v10, v0, Lhpw;->g:J

    iget-wide v12, v0, Lhpw;->h:J

    iget-wide v14, v0, Lhpw;->i:J

    move-wide/from16 v23, v10

    iget-wide v10, v0, Lhpw;->j:J

    move-wide/from16 v16, v10

    iget v10, v0, Lhpw;->k:I

    move/from16 v18, v10

    iget-boolean v10, v0, Lhpw;->m:Z

    move/from16 v20, v10

    move-object/from16 v19, v1

    move-object/from16 v21, v2

    move-wide/from16 v10, v23

    invoke-direct/range {v3 .. v21}, Lhpx;-><init>(Ljws;Ljwu;Lmqp;Lctd;Lmqp;Lhpu;JJJJILjava/lang/String;ZLgxz;)V

    return-object v22

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lhpw;->a:Ljws;

    if-nez v2, :cond_2

    const-string v2, " camcorderCaptureRate"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    iget-object v2, v0, Lhpw;->b:Ljwu;

    if-nez v2, :cond_3

    const-string v2, " camcorderVideoResolution"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    iget-object v2, v0, Lhpw;->d:Lctd;

    if-nez v2, :cond_4

    const-string v2, " outputVideo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    iget-object v2, v0, Lhpw;->f:Lhpu;

    if-nez v2, :cond_5

    const-string v2, " timelapseMode"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    iget-byte v2, v0, Lhpw;->o:B

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_6

    const-string v2, " recordingDurationMs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    iget-byte v2, v0, Lhpw;->o:B

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_7

    const-string v2, " outputDurationMs"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    iget-byte v2, v0, Lhpw;->o:B

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_8

    const-string v2, " frameCount"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-byte v2, v0, Lhpw;->o:B

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_9

    const-string v2, " frameDropped"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-byte v2, v0, Lhpw;->o:B

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_a

    const-string v2, " orientation"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-object v2, v0, Lhpw;->l:Ljava/lang/String;

    if-nez v2, :cond_b

    const-string v2, " title"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-byte v2, v0, Lhpw;->o:B

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_c

    const-string v2, " isSecureVideo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-object v2, v0, Lhpw;->n:Lgxz;

    if-nez v2, :cond_d

    const-string v2, " shotInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Missing required properties:"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final b(Ljwu;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhpw;->b:Ljwu;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null camcorderVideoResolution"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final c(J)V
    .locals 0

    iput-wide p1, p0, Lhpw;->i:J

    iget-byte p1, p0, Lhpw;->o:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lhpw;->o:B

    return-void
.end method

.method public final d(J)V
    .locals 0

    iput-wide p1, p0, Lhpw;->j:J

    iget-byte p1, p0, Lhpw;->o:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lhpw;->o:B

    return-void
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lhpw;->m:Z

    iget-byte p1, p0, Lhpw;->o:B

    or-int/lit8 p1, p1, 0x20

    int-to-byte p1, p1

    iput-byte p1, p0, Lhpw;->o:B

    return-void
.end method

.method public final f(Lmqp;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhpw;->e:Lmqp;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null location"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(I)V
    .locals 0

    iput p1, p0, Lhpw;->k:I

    iget-byte p1, p0, Lhpw;->o:B

    or-int/lit8 p1, p1, 0x10

    int-to-byte p1, p1

    iput-byte p1, p0, Lhpw;->o:B

    return-void
.end method

.method public final h(J)V
    .locals 0

    iput-wide p1, p0, Lhpw;->h:J

    iget-byte p1, p0, Lhpw;->o:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lhpw;->o:B

    return-void
.end method

.method public final i(Lctd;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhpw;->d:Lctd;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null outputVideo"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j(J)V
    .locals 0

    iput-wide p1, p0, Lhpw;->g:J

    iget-byte p1, p0, Lhpw;->o:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lhpw;->o:B

    return-void
.end method

.method public final k(Lgxz;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhpw;->n:Lgxz;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null shotInfo"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(Lhpu;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhpw;->f:Lhpu;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null timelapseMode"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final m(Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhpw;->l:Ljava/lang/String;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null title"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final n(Lmqp;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhpw;->c:Lmqp;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null videoFile"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final o(Ljws;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lhpw;->a:Ljws;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null camcorderCaptureRate"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
