.class public final Lkfk;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field public b:B

.field public c:I

.field public d:Lkfm;

.field public e:Lmqp;

.field public f:Lmqp;

.field public g:Lkaf;

.field public h:I

.field public i:I

.field public j:Lmqp;

.field public k:Lmqp;

.field public l:Z

.field public m:Z

.field public n:J

.field public o:Z


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

    iput-object p1, p0, Lkfk;->e:Lmqp;

    iput-object p1, p0, Lkfk;->f:Lmqp;

    iput-object p1, p0, Lkfk;->j:Lmqp;

    iput-object p1, p0, Lkfk;->k:Lmqp;

    return-void
.end method


# virtual methods
.method public final a()Lkfl;
    .locals 19

    move-object/from16 v0, p0

    iget-byte v1, v0, Lkfk;->b:B

    const/16 v2, 0x7f

    if-ne v1, v2, :cond_8

    iget-object v5, v0, Lkfk;->d:Lkfm;

    if-eqz v5, :cond_8

    iget-object v8, v0, Lkfk;->g:Lkaf;

    if-eqz v8, :cond_8

    iget v1, v0, Lkfk;->c:I

    if-nez v1, :cond_0

    goto/16 :goto_6

    :cond_0
    new-instance v1, Lkfl;

    iget-object v6, v0, Lkfk;->e:Lmqp;

    iget-object v7, v0, Lkfk;->f:Lmqp;

    iget v9, v0, Lkfk;->h:I

    iget v10, v0, Lkfk;->i:I

    iget-object v11, v0, Lkfk;->j:Lmqp;

    iget-object v12, v0, Lkfk;->k:Lmqp;

    iget-boolean v13, v0, Lkfk;->l:Z

    iget-boolean v14, v0, Lkfk;->m:Z

    iget v15, v0, Lkfk;->a:I

    iget-wide v2, v0, Lkfk;->n:J

    iget-boolean v4, v0, Lkfk;->o:Z

    move/from16 v18, v4

    move-object v4, v1

    move-wide/from16 v16, v2

    invoke-direct/range {v4 .. v18}, Lkfl;-><init>(Lkfm;Lmqp;Lmqp;Lkaf;IILmqp;Lmqp;ZZIJZ)V

    iget v2, v1, Lkfl;->f:I

    const/4 v3, 0x0

    if-gtz v2, :cond_2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    :goto_0
    const-string v4, "Capacity should be positive or -1"

    invoke-static {v2, v4}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v2, v1, Lkfl;->d:Lkaf;

    invoke-virtual {v2}, Lkaf;->b()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_3

    const/4 v2, 0x1

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    :goto_1
    const-string v4, "Size area must be positive"

    invoke-static {v2, v4}, Lmoz;->q(ZLjava/lang/Object;)V

    iget v2, v1, Lkfl;->e:I

    if-ltz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    :goto_2
    const-string v4, "Format must be valid"

    invoke-static {v2, v4}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v2, v1, Lkfl;->a:Lkfm;

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    goto :goto_3

    :cond_5
    const/4 v2, 0x0

    :goto_3
    const-string v4, "StreamType cannot be null"

    invoke-static {v2, v4}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v2, v1, Lkfl;->d:Lkaf;

    if-eqz v2, :cond_6

    const/4 v2, 0x1

    goto :goto_4

    :cond_6
    const/4 v2, 0x0

    :goto_4
    const-string v4, "Size cannot be null"

    invoke-static {v2, v4}, Lmoz;->q(ZLjava/lang/Object;)V

    iget v2, v1, Lkfl;->k:I

    iget v4, v1, Lkfl;->f:I

    if-gt v2, v4, :cond_7

    const/4 v3, 0x1

    goto :goto_5

    :cond_7
    :goto_5
    const-string v2, "pre-alloc size must be equal or smaller than the capacity"

    invoke-static {v3, v2}, Lmoz;->q(ZLjava/lang/Object;)V

    const-string v2, "Set pre-alloc type if you set pre-alloc size."

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lmoz;->q(ZLjava/lang/Object;)V

    return-object v1

    :cond_8
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v0, Lkfk;->d:Lkfm;

    if-nez v2, :cond_9

    const-string v2, " type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    iget-object v2, v0, Lkfk;->g:Lkaf;

    if-nez v2, :cond_a

    const-string v2, " size"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_a
    iget-byte v2, v0, Lkfk;->b:B

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-nez v2, :cond_b

    const-string v2, " imageFormat"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    iget-byte v2, v0, Lkfk;->b:B

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_c

    const-string v2, " capacity"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c
    iget-byte v2, v0, Lkfk;->b:B

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_d

    const-string v2, " forCapture"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_d
    iget-byte v2, v0, Lkfk;->b:B

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_e

    const-string v2, " ignoreMemoryLimits"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    iget v2, v0, Lkfk;->c:I

    if-nez v2, :cond_f

    const-string v2, " preAllocType"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    iget-byte v2, v0, Lkfk;->b:B

    and-int/lit8 v2, v2, 0x10

    if-nez v2, :cond_10

    const-string v2, " preAllocSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_10
    iget-byte v2, v0, Lkfk;->b:B

    and-int/lit8 v2, v2, 0x20

    if-nez v2, :cond_11

    const-string v2, " dynamicRangeProfile"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_11
    iget-byte v2, v0, Lkfk;->b:B

    and-int/lit8 v2, v2, 0x40

    if-nez v2, :cond_12

    const-string v2, " halMemoryEstimationEnabled"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_12
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Missing required properties:"

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public final b(Lkll;)V
    .locals 0

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Lkfk;->e:Lmqp;

    return-void
.end method

.method public final c(I)V
    .locals 0

    iput p1, p0, Lkfk;->i:I

    iget-byte p1, p0, Lkfk;->b:B

    or-int/lit8 p1, p1, 0x2

    int-to-byte p1, p1

    iput-byte p1, p0, Lkfk;->b:B

    return-void
.end method

.method public final d(J)V
    .locals 0

    iput-wide p1, p0, Lkfk;->n:J

    iget-byte p1, p0, Lkfk;->b:B

    or-int/lit8 p1, p1, 0x20

    int-to-byte p1, p1

    iput-byte p1, p0, Lkfk;->b:B

    return-void
.end method

.method public final e(Z)V
    .locals 0

    iput-boolean p1, p0, Lkfk;->l:Z

    iget-byte p1, p0, Lkfk;->b:B

    or-int/lit8 p1, p1, 0x4

    int-to-byte p1, p1

    iput-byte p1, p0, Lkfk;->b:B

    return-void
.end method

.method public final f(Z)V
    .locals 0

    iput-boolean p1, p0, Lkfk;->o:Z

    iget-byte p1, p0, Lkfk;->b:B

    or-int/lit8 p1, p1, 0x40

    int-to-byte p1, p1

    iput-byte p1, p0, Lkfk;->b:B

    return-void
.end method

.method public final g(Z)V
    .locals 0

    iput-boolean p1, p0, Lkfk;->m:Z

    iget-byte p1, p0, Lkfk;->b:B

    or-int/lit8 p1, p1, 0x8

    int-to-byte p1, p1

    iput-byte p1, p0, Lkfk;->b:B

    return-void
.end method

.method public final h(I)V
    .locals 0

    iput p1, p0, Lkfk;->h:I

    iget-byte p1, p0, Lkfk;->b:B

    or-int/lit8 p1, p1, 0x1

    int-to-byte p1, p1

    iput-byte p1, p0, Lkfk;->b:B

    return-void
.end method

.method public final i(Lkaf;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lkfk;->g:Lkaf;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null size"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final j(Landroid/view/Surface;)V
    .locals 0

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Lkfk;->f:Lmqp;

    return-void
.end method

.method public final k(Lkfm;)V
    .locals 1

    if-eqz p1, :cond_0

    iput-object p1, p0, Lkfk;->d:Lkfm;

    return-void

    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    const-string v0, "Null type"

    invoke-direct {p1, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final l(J)V
    .locals 0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lmqp;->i(Ljava/lang/Object;)Lmqp;

    move-result-object p1

    iput-object p1, p0, Lkfk;->j:Lmqp;

    return-void
.end method
