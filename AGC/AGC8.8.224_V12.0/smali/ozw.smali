.class public final Lozw;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Cloneable;
.implements Ljava/nio/channels/ByteChannel;
.implements Lozy;
.implements Lozx;


# instance fields
.field public a:Lpaf;

.field public b:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)B
    .locals 7

    iget-wide v0, p0, Lozw;->b:J

    const-wide/16 v4, 0x1

    move-wide v2, p1

    invoke-static/range {v0 .. v5}, Lljz;->o(JJJ)V

    iget-object v0, p0, Lozw;->a:Lpaf;

    if-eqz v0, :cond_3

    iget-wide v1, p0, Lozw;->b:J

    sub-long v3, v1, p1

    cmp-long v5, v3, p1

    if-gez v5, :cond_1

    :goto_0
    cmp-long v3, v1, p1

    if-lez v3, :cond_0

    iget-object v0, v0, Lpaf;->g:Lpaf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v0, Lpaf;->c:I

    iget v4, v0, Lpaf;->b:I

    sub-int/2addr v3, v4

    int-to-long v3, v3

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v3, v0, Lpaf;->a:[B

    iget v0, v0, Lpaf;->b:I

    int-to-long v4, v0

    add-long/2addr v4, p1

    sub-long/2addr v4, v1

    long-to-int p1, v4

    aget-byte p1, v3, p1

    goto :goto_2

    :cond_1
    const-wide/16 v1, 0x0

    :goto_1
    iget v3, v0, Lpaf;->c:I

    iget v4, v0, Lpaf;->b:I

    sub-int/2addr v3, v4

    int-to-long v5, v3

    add-long/2addr v5, v1

    cmp-long v3, v5, p1

    if-gtz v3, :cond_2

    iget-object v0, v0, Lpaf;->f:Lpaf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-wide v1, v5

    goto :goto_1

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v3, v4

    add-long/2addr v3, p1

    sub-long/2addr v3, v1

    iget-object p1, v0, Lpaf;->a:[B

    long-to-int p2, v3

    aget-byte p1, p1, p2

    :goto_2
    return p1

    :cond_3
    const/4 p1, 0x0

    goto :goto_4

    :goto_3
    throw p1

    :goto_4
    goto :goto_3
.end method

.method public final b()B
    .locals 8

    iget-wide v0, p0, Lozw;->b:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-object v2, p0, Lozw;->a:Lpaf;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v3, v2, Lpaf;->b:I

    add-int/lit8 v4, v3, 0x1

    iget v5, v2, Lpaf;->c:I

    iget-object v6, v2, Lpaf;->a:[B

    aget-byte v3, v6, v3

    const-wide/16 v6, -0x1

    add-long/2addr v0, v6

    iput-wide v0, p0, Lozw;->b:J

    if-ne v4, v5, :cond_0

    invoke-virtual {v2}, Lpaf;->a()Lpaf;

    move-result-object v0

    iput-object v0, p0, Lozw;->a:Lpaf;

    invoke-static {v2}, Lpag;->b(Lpaf;)V

    goto :goto_0

    :cond_0
    iput v4, v2, Lpaf;->b:I

    :goto_0
    return v3

    :cond_1
    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0
.end method

.method public final c([BII)I
    .locals 7

    array-length v0, p1

    int-to-long v1, v0

    int-to-long v3, p2

    int-to-long v5, p3

    invoke-static/range {v1 .. v6}, Lljz;->o(JJJ)V

    iget-object v0, p0, Lozw;->a:Lpaf;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    :cond_0
    iget v1, v0, Lpaf;->c:I

    iget v2, v0, Lpaf;->b:I

    sub-int/2addr v1, v2

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result p3

    iget-object v1, v0, Lpaf;->a:[B

    iget v2, v0, Lpaf;->b:I

    add-int v3, v2, p3

    invoke-static {v1, p1, p2, v2, v3}, Lljr;->aB([B[BIII)V

    iget p1, v0, Lpaf;->b:I

    add-int/2addr p1, p3

    iput p1, v0, Lpaf;->b:I

    iget-wide v1, p0, Lozw;->b:J

    int-to-long v3, p3

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lozw;->b:J

    iget p2, v0, Lpaf;->c:I

    if-eq p1, p2, :cond_1

    move p1, p3

    :goto_0
    return p1

    :cond_1
    invoke-virtual {v0}, Lpaf;->a()Lpaf;

    move-result-object p1

    iput-object p1, p0, Lozw;->a:Lpaf;

    invoke-static {v0}, Lpag;->b(Lpaf;)V

    return p3
.end method

.method public final synthetic clone()Ljava/lang/Object;
    .locals 6

    new-instance v0, Lozw;

    invoke-direct {v0}, Lozw;-><init>()V

    iget-wide v1, p0, Lozw;->b:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lozw;->a:Lpaf;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v1}, Lpaf;->b()Lpaf;

    move-result-object v2

    iput-object v2, v0, Lozw;->a:Lpaf;

    iput-object v2, v2, Lpaf;->g:Lpaf;

    iget-object v3, v2, Lpaf;->g:Lpaf;

    iput-object v3, v2, Lpaf;->f:Lpaf;

    iget-object v3, v1, Lpaf;->f:Lpaf;

    :goto_0
    if-eq v3, v1, :cond_1

    iget-object v4, v2, Lpaf;->g:Lpaf;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v3}, Lpaf;->b()Lpaf;

    move-result-object v5

    invoke-virtual {v4, v5}, Lpaf;->d(Lpaf;)V

    iget-object v3, v3, Lpaf;->f:Lpaf;

    goto :goto_0

    :cond_1
    iget-wide v1, p0, Lozw;->b:J

    iput-wide v1, v0, Lozw;->b:J

    :goto_1
    return-object v0
.end method

.method public final close()V
    .locals 0

    return-void
.end method

.method public final d(Lozz;)J
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final e(Lozz;)J
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-ne v0, v1, :cond_0

    goto/16 :goto_2

    :cond_0
    instance-of v3, v1, Lozw;

    const/4 v4, 0x0

    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto/16 :goto_2

    :cond_1
    iget-wide v5, v0, Lozw;->b:J

    check-cast v1, Lozw;

    iget-wide v7, v1, Lozw;->b:J

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_2

    :cond_2
    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-nez v3, :cond_3

    goto :goto_2

    :cond_3
    iget-object v3, v0, Lozw;->a:Lpaf;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v1, Lozw;->a:Lpaf;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v3, Lpaf;->b:I

    iget v6, v1, Lpaf;->b:I

    move-wide v9, v7

    :goto_0
    iget-wide v11, v0, Lozw;->b:J

    cmp-long v13, v9, v11

    if-gez v13, :cond_8

    iget v11, v3, Lpaf;->c:I

    sub-int/2addr v11, v5

    iget v12, v1, Lpaf;->c:I

    sub-int/2addr v12, v6

    invoke-static {v11, v12}, Ljava/lang/Math;->min(II)I

    move-result v11

    int-to-long v11, v11

    move-wide v13, v7

    :goto_1
    cmp-long v15, v13, v11

    if-gez v15, :cond_5

    iget-object v15, v3, Lpaf;->a:[B

    add-int/lit8 v16, v5, 0x1

    aget-byte v5, v15, v5

    iget-object v15, v1, Lpaf;->a:[B

    add-int/lit8 v17, v6, 0x1

    aget-byte v6, v15, v6

    if-eq v5, v6, :cond_4

    const/4 v2, 0x0

    goto :goto_2

    :cond_4
    const-wide/16 v5, 0x1

    add-long/2addr v13, v5

    move/from16 v5, v16

    move/from16 v6, v17

    goto :goto_1

    :cond_5
    iget v13, v3, Lpaf;->c:I

    if-ne v5, v13, :cond_6

    iget-object v3, v3, Lpaf;->f:Lpaf;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v5, v3, Lpaf;->b:I

    :cond_6
    iget v13, v1, Lpaf;->c:I

    if-ne v6, v13, :cond_7

    iget-object v1, v1, Lpaf;->f:Lpaf;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v1, Lpaf;->b:I

    :cond_7
    add-long/2addr v9, v11

    goto :goto_0

    :cond_8
    :goto_2
    return v2
.end method

.method public final f()Ljava/io/InputStream;
    .locals 1

    const/4 v0, 0x0

    throw v0
.end method

.method public final flush()V
    .locals 0

    return-void
.end method

.method public final g(JLjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 10

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_4

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, p1, v2

    if-gtz v4, :cond_4

    iget-wide v2, p0, Lozw;->b:J

    cmp-long v4, v2, p1

    if-ltz v4, :cond_3

    cmp-long v4, p1, v0

    if-nez v4, :cond_0

    const-string p1, ""

    return-object p1

    :cond_0
    iget-object v0, p0, Lozw;->a:Lpaf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lpaf;->b:I

    int-to-long v4, v1

    iget v6, v0, Lpaf;->c:I

    int-to-long v7, v6

    add-long/2addr v4, p1

    cmp-long v9, v4, v7

    if-lez v9, :cond_1

    new-instance v0, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lozw;->n(J)[B

    move-result-object p1

    invoke-direct {v0, p1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    return-object v0

    :cond_1
    new-instance v4, Ljava/lang/String;

    iget-object v5, v0, Lpaf;->a:[B

    long-to-int v7, p1

    invoke-direct {v4, v5, v1, v7, p3}, Ljava/lang/String;-><init>([BIILjava/nio/charset/Charset;)V

    add-int/2addr v1, v7

    iput v1, v0, Lpaf;->b:I

    sub-long/2addr v2, p1

    iput-wide v2, p0, Lozw;->b:J

    if-ne v1, v6, :cond_2

    invoke-virtual {v0}, Lpaf;->a()Lpaf;

    move-result-object p1

    iput-object p1, p0, Lozw;->a:Lpaf;

    invoke-static {v0}, Lpag;->b(Lpaf;)V

    :cond_2
    return-object v4

    :cond_3
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_4
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "byteCount: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public final h(J)Ljava/lang/String;
    .locals 1

    sget-object v0, Looj;->a:Ljava/nio/charset/Charset;

    invoke-virtual {p0, p1, p2, v0}, Lozw;->g(JLjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Lozw;->a:Lpaf;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    iget v2, v0, Lpaf;->b:I

    iget v3, v0, Lpaf;->c:I

    :goto_0
    if-ge v2, v3, :cond_2

    mul-int/lit8 v1, v1, 0x1f

    iget-object v4, v0, Lpaf;->a:[B

    aget-byte v4, v4, v2

    add-int/2addr v1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, v0, Lpaf;->f:Lpaf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v2, p0, Lozw;->a:Lpaf;

    if-ne v0, v2, :cond_1

    move v0, v1

    :goto_1
    return v0
.end method

.method public final i(I)Lozz;
    .locals 8

    if-nez p1, :cond_0

    sget-object p1, Lozz;->a:Lozz;

    goto :goto_2

    :cond_0
    iget-wide v0, p0, Lozw;->b:J

    const-wide/16 v2, 0x0

    int-to-long v4, p1

    invoke-static/range {v0 .. v5}, Lljz;->o(JJJ)V

    iget-object v0, p0, Lozw;->a:Lpaf;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v4, v0, Lpaf;->c:I

    iget v5, v0, Lpaf;->b:I

    if-eq v4, v5, :cond_1

    sub-int/2addr v4, v5

    add-int/2addr v2, v4

    add-int/lit8 v3, v3, 0x1

    iget-object v0, v0, Lpaf;->f:Lpaf;

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "s.limit == s.pos"

    invoke-direct {p1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p1

    :cond_2
    new-array v0, v3, [[B

    add-int v2, v3, v3

    new-array v2, v2, [I

    iget-object v4, p0, Lozw;->a:Lpaf;

    move-object v5, v4

    const/4 v4, 0x0

    :goto_1
    if-ge v1, p1, :cond_3

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v6, v5, Lpaf;->a:[B

    aput-object v6, v0, v4

    iget v6, v5, Lpaf;->c:I

    iget v7, v5, Lpaf;->b:I

    sub-int/2addr v6, v7

    add-int/2addr v1, v6

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v6

    aput v6, v2, v4

    add-int v6, v4, v3

    iget v7, v5, Lpaf;->b:I

    aput v7, v2, v6

    const/4 v6, 0x1

    iput-boolean v6, v5, Lpaf;->d:Z

    add-int/2addr v4, v6

    iget-object v5, v5, Lpaf;->f:Lpaf;

    goto :goto_1

    :cond_3
    new-instance p1, Lpah;

    invoke-direct {p1, v0, v2}, Lpah;-><init>([[B[I)V

    :goto_2
    return-object p1
.end method

.method public final isOpen()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final j(I)Lpaf;
    .locals 2

    iget-object v0, p0, Lozw;->a:Lpaf;

    if-nez v0, :cond_0

    invoke-static {}, Lpag;->a()Lpaf;

    move-result-object p1

    iput-object p1, p0, Lozw;->a:Lpaf;

    iput-object p1, p1, Lpaf;->g:Lpaf;

    iput-object p1, p1, Lpaf;->f:Lpaf;

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lpaf;->g:Lpaf;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v1, v0, Lpaf;->c:I

    add-int/2addr v1, p1

    const/16 p1, 0x2000

    if-gt v1, p1, :cond_2

    iget-boolean p1, v0, Lpaf;->e:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    move-object p1, v0

    goto :goto_1

    :cond_2
    :goto_0
    invoke-static {}, Lpag;->a()Lpaf;

    move-result-object p1

    invoke-virtual {v0, p1}, Lpaf;->d(Lpaf;)V

    :goto_1
    return-object p1
.end method

.method public final k()V
    .locals 2

    iget-wide v0, p0, Lozw;->b:J

    invoke-virtual {p0, v0, v1}, Lozw;->l(J)V

    return-void
.end method

.method public final l(J)V
    .locals 7

    :goto_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_2

    iget-object v0, p0, Lozw;->a:Lpaf;

    if-eqz v0, :cond_1

    iget v1, v0, Lpaf;->c:I

    iget v2, v0, Lpaf;->b:I

    sub-int/2addr v1, v2

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    long-to-int v2, v1

    iget-wide v3, p0, Lozw;->b:J

    int-to-long v5, v2

    sub-long/2addr v3, v5

    iput-wide v3, p0, Lozw;->b:J

    sub-long/2addr p1, v5

    iget v1, v0, Lpaf;->b:I

    add-int/2addr v1, v2

    iput v1, v0, Lpaf;->b:I

    iget v2, v0, Lpaf;->c:I

    if-ne v1, v2, :cond_0

    invoke-virtual {v0}, Lpaf;->a()Lpaf;

    move-result-object v1

    iput-object v1, p0, Lozw;->a:Lpaf;

    invoke-static {v0}, Lpag;->b(Lpaf;)V

    goto :goto_0

    :cond_0
    goto :goto_0

    :cond_1
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_2
    return-void
.end method

.method public final m(J)Z
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final n(J)[B
    .locals 3

    iget-wide v0, p0, Lozw;->b:J

    cmp-long v2, v0, p1

    if-ltz v2, :cond_2

    long-to-int p2, p1

    new-array p1, p2, [B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    sub-int v1, p2, v0

    invoke-virtual {p0, p1, v0, v1}, Lozw;->c([BII)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    return-object p1

    :cond_2
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final o(Lpai;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    :cond_0
    move-object v2, v1

    check-cast v2, Lozw;

    iget-wide v3, v2, Lozw;->b:J

    const-wide/16 v11, 0x0

    cmp-long v5, v3, v11

    if-nez v5, :cond_1

    const-wide/16 v15, -0x1

    goto/16 :goto_8

    :cond_1
    const-wide/16 v13, 0x2000

    cmp-long v5, v3, v13

    if-gez v5, :cond_2

    move-wide v15, v3

    goto :goto_0

    :cond_2
    move-wide v15, v13

    :goto_0
    if-eq v1, v0, :cond_e

    const-wide/16 v5, 0x0

    move-wide v7, v15

    invoke-static/range {v3 .. v8}, Lljz;->o(JJJ)V

    move-wide v3, v15

    :goto_1
    cmp-long v5, v3, v11

    if-lez v5, :cond_d

    iget-object v5, v2, Lozw;->a:Lpaf;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v5, Lpaf;->c:I

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v7, v5, Lpaf;->b:I

    sub-int/2addr v6, v7

    int-to-long v7, v6

    const/16 v17, 0x0

    cmp-long v18, v3, v7

    if-gez v18, :cond_8

    iget-object v7, v0, Lozw;->a:Lpaf;

    if-eqz v7, :cond_3

    iget-object v7, v7, Lpaf;->g:Lpaf;

    goto :goto_2

    :cond_3
    const/4 v7, 0x0

    :goto_2
    if-eqz v7, :cond_5

    iget-boolean v8, v7, Lpaf;->e:Z

    if-eqz v8, :cond_5

    iget v8, v7, Lpaf;->c:I

    int-to-long v11, v8

    add-long/2addr v11, v3

    iget-boolean v8, v7, Lpaf;->d:Z

    if-eqz v8, :cond_4

    const/4 v8, 0x0

    goto :goto_3

    :cond_4
    iget v8, v7, Lpaf;->b:I

    :goto_3
    int-to-long v9, v8

    sub-long/2addr v11, v9

    cmp-long v8, v11, v13

    if-gtz v8, :cond_5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    long-to-int v6, v3

    invoke-virtual {v5, v7, v6}, Lpaf;->c(Lpaf;I)V

    iget-wide v5, v2, Lozw;->b:J

    sub-long/2addr v5, v3

    iput-wide v5, v2, Lozw;->b:J

    iget-wide v5, v0, Lozw;->b:J

    add-long/2addr v5, v3

    iput-wide v5, v0, Lozw;->b:J

    goto/16 :goto_8

    :cond_5
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    long-to-int v7, v3

    if-gt v7, v6, :cond_7

    const/16 v6, 0x400

    if-lt v7, v6, :cond_6

    invoke-virtual {v5}, Lpaf;->b()Lpaf;

    move-result-object v6

    goto :goto_4

    :cond_6
    invoke-static {}, Lpag;->a()Lpaf;

    move-result-object v6

    iget-object v8, v5, Lpaf;->a:[B

    iget-object v9, v6, Lpaf;->a:[B

    iget v10, v5, Lpaf;->b:I

    add-int v11, v10, v7

    invoke-static {v8, v9, v10, v11}, Lljr;->aE([B[BII)V

    :goto_4
    iget v8, v6, Lpaf;->b:I

    add-int/2addr v8, v7

    iput v8, v6, Lpaf;->c:I

    iget v8, v5, Lpaf;->b:I

    add-int/2addr v8, v7

    iput v8, v5, Lpaf;->b:I

    iget-object v5, v5, Lpaf;->g:Lpaf;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v6}, Lpaf;->d(Lpaf;)V

    iput-object v6, v2, Lozw;->a:Lpaf;

    goto :goto_5

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "byteCount out of range"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_8
    :goto_5
    iget-object v5, v2, Lozw;->a:Lpaf;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v5, Lpaf;->c:I

    iget v7, v5, Lpaf;->b:I

    sub-int/2addr v6, v7

    invoke-virtual {v5}, Lpaf;->a()Lpaf;

    move-result-object v7

    iput-object v7, v2, Lozw;->a:Lpaf;

    iget-object v7, v0, Lozw;->a:Lpaf;

    if-nez v7, :cond_9

    iput-object v5, v0, Lozw;->a:Lpaf;

    iput-object v5, v5, Lpaf;->g:Lpaf;

    iget-object v7, v5, Lpaf;->g:Lpaf;

    iput-object v7, v5, Lpaf;->f:Lpaf;

    goto :goto_7

    :cond_9
    iget-object v7, v7, Lpaf;->g:Lpaf;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v7, v5}, Lpaf;->d(Lpaf;)V

    iget-object v7, v5, Lpaf;->g:Lpaf;

    if-eq v7, v5, :cond_c

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v8, v7, Lpaf;->e:Z

    if-eqz v8, :cond_b

    iget v8, v5, Lpaf;->c:I

    iget v9, v5, Lpaf;->b:I

    sub-int/2addr v8, v9

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v9, v7, Lpaf;->c:I

    rsub-int v9, v9, 0x2000

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-boolean v10, v7, Lpaf;->d:Z

    if-eqz v10, :cond_a

    goto :goto_6

    :cond_a
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v10, v7, Lpaf;->b:I

    move/from16 v17, v10

    :goto_6
    add-int v9, v9, v17

    if-gt v8, v9, :cond_b

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v5, v7, v8}, Lpaf;->c(Lpaf;I)V

    invoke-virtual {v5}, Lpaf;->a()Lpaf;

    invoke-static {v5}, Lpag;->b(Lpaf;)V

    :cond_b
    :goto_7
    int-to-long v5, v6

    iget-wide v7, v2, Lozw;->b:J

    sub-long/2addr v7, v5

    iput-wide v7, v2, Lozw;->b:J

    iget-wide v7, v0, Lozw;->b:J

    add-long/2addr v7, v5

    iput-wide v7, v0, Lozw;->b:J

    sub-long/2addr v3, v5

    const-wide/16 v11, 0x0

    goto/16 :goto_1

    :cond_c
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "cannot compact"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_d
    :goto_8
    const-wide/16 v2, -0x1

    cmp-long v4, v15, v2

    if-nez v4, :cond_0

    return-void

    :cond_e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "source == this"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_a

    :goto_9
    throw v1

    :goto_a
    goto :goto_9
.end method

.method public final p(I)V
    .locals 4

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lozw;->j(I)Lpaf;

    move-result-object v0

    iget-object v1, v0, Lpaf;->a:[B

    iget v2, v0, Lpaf;->c:I

    add-int/lit8 v3, v2, 0x1

    iput v3, v0, Lpaf;->c:I

    int-to-byte p1, p1

    aput-byte p1, v1, v2

    iget-wide v0, p0, Lozw;->b:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lozw;->b:J

    return-void
.end method

.method public final bridge synthetic q()V
    .locals 1

    const/16 v0, 0x22

    invoke-virtual {p0, v0}, Lozw;->p(I)V

    return-void
.end method

.method public final r(I)V
    .locals 5

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lozw;->j(I)Lpaf;

    move-result-object v0

    iget-object v1, v0, Lpaf;->a:[B

    iget v2, v0, Lpaf;->c:I

    add-int/lit8 v3, v2, 0x1

    shr-int/lit8 v4, p1, 0x18

    int-to-byte v4, v4

    aput-byte v4, v1, v2

    ushr-int/lit8 v2, p1, 0x10

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    ushr-int/lit8 v2, p1, 0x8

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v3, v3, 0x1

    int-to-byte v2, v2

    aput-byte v2, v1, v3

    and-int/lit16 p1, p1, 0xff

    add-int/lit8 v3, v3, 0x1

    int-to-byte p1, p1

    aput-byte p1, v1, v3

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lpaf;->c:I

    iget-wide v0, p0, Lozw;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lozw;->b:J

    return-void
.end method

.method public final read(Ljava/nio/ByteBuffer;)I
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, p0, Lozw;->a:Lpaf;

    if-nez v0, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    iget v2, v0, Lpaf;->c:I

    iget v3, v0, Lpaf;->b:I

    sub-int/2addr v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, v0, Lpaf;->a:[B

    iget v3, v0, Lpaf;->b:I

    invoke-virtual {p1, v2, v3, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    iget p1, v0, Lpaf;->b:I

    add-int/2addr p1, v1

    iput p1, v0, Lpaf;->b:I

    iget-wide v2, p0, Lozw;->b:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lozw;->b:J

    iget v2, v0, Lpaf;->c:I

    if-ne p1, v2, :cond_1

    invoke-virtual {v0}, Lpaf;->a()Lpaf;

    move-result-object p1

    iput-object p1, p0, Lozw;->a:Lpaf;

    invoke-static {v0}, Lpag;->b(Lpaf;)V

    :cond_1
    return v1
.end method

.method public final s(Ljava/lang/String;II)V
    .locals 9

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p2, :cond_a

    if-lt p3, p2, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-gt p3, v0, :cond_8

    :goto_0
    if-ge p2, p3, :cond_7

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x80

    if-ge v0, v1, :cond_1

    int-to-byte v0, v0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lozw;->j(I)Lpaf;

    move-result-object v2

    iget-object v3, v2, Lpaf;->a:[B

    iget v4, v2, Lpaf;->c:I

    sub-int/2addr v4, p2

    rsub-int v5, v4, 0x2000

    invoke-static {p3, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    aput-byte v0, v3, p2

    move p2, v6

    :goto_1
    if-ge p2, v5, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ge v0, v1, :cond_0

    add-int/lit8 v6, p2, 0x1

    add-int/2addr p2, v4

    int-to-byte v0, v0

    aput-byte v0, v3, p2

    move p2, v6

    goto :goto_1

    :cond_0
    add-int/2addr v4, p2

    iget v0, v2, Lpaf;->c:I

    sub-int/2addr v4, v0

    add-int/2addr v0, v4

    iput v0, v2, Lpaf;->c:I

    iget-wide v0, p0, Lozw;->b:J

    int-to-long v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lozw;->b:J

    goto :goto_0

    :cond_1
    const/16 v2, 0x800

    if-ge v0, v2, :cond_2

    const/4 v2, 0x2

    invoke-virtual {p0, v2}, Lozw;->j(I)Lpaf;

    move-result-object v3

    iget-object v4, v3, Lpaf;->a:[B

    iget v5, v3, Lpaf;->c:I

    shr-int/lit8 v6, v0, 0x6

    or-int/lit16 v6, v6, 0xc0

    int-to-byte v6, v6

    aput-byte v6, v4, v5

    add-int/lit8 v6, v5, 0x1

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v4, v6

    add-int/2addr v5, v2

    iput v5, v3, Lpaf;->c:I

    iget-wide v0, p0, Lozw;->b:J

    const-wide/16 v2, 0x2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lozw;->b:J

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    const v2, 0xd800

    const/16 v3, 0x3f

    if-lt v0, v2, :cond_6

    const v2, 0xdfff

    if-le v0, v2, :cond_3

    goto :goto_3

    :cond_3
    add-int/lit8 v2, p2, 0x1

    if-ge v2, p3, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    const v5, 0xdbff

    if-gt v0, v5, :cond_5

    const v5, 0xdc00

    if-lt v4, v5, :cond_5

    const v5, 0xe000

    if-ge v4, v5, :cond_5

    and-int/lit16 v0, v0, 0x3ff

    shl-int/lit8 v0, v0, 0xa

    and-int/lit16 v2, v4, 0x3ff

    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lozw;->j(I)Lpaf;

    move-result-object v5

    iget-object v6, v5, Lpaf;->a:[B

    iget v7, v5, Lpaf;->c:I

    or-int/2addr v0, v2

    const/high16 v2, 0x10000

    add-int/2addr v0, v2

    shr-int/lit8 v2, v0, 0x12

    or-int/lit16 v2, v2, 0xf0

    int-to-byte v2, v2

    aput-byte v2, v6, v7

    add-int/lit8 v2, v7, 0x1

    shr-int/lit8 v8, v0, 0xc

    and-int/2addr v8, v3

    or-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, v6, v2

    add-int/lit8 v2, v7, 0x2

    shr-int/lit8 v8, v0, 0x6

    and-int/2addr v8, v3

    or-int/2addr v8, v1

    int-to-byte v8, v8

    aput-byte v8, v6, v2

    add-int/lit8 v2, v7, 0x3

    and-int/2addr v0, v3

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v6, v2

    add-int/2addr v7, v4

    iput v7, v5, Lpaf;->c:I

    iget-wide v0, p0, Lozw;->b:J

    const-wide/16 v2, 0x4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lozw;->b:J

    add-int/lit8 p2, p2, 0x2

    goto/16 :goto_0

    :cond_5
    invoke-virtual {p0, v3}, Lozw;->p(I)V

    move p2, v2

    goto/16 :goto_0

    :cond_6
    :goto_3
    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Lozw;->j(I)Lpaf;

    move-result-object v4

    iget-object v5, v4, Lpaf;->a:[B

    iget v6, v4, Lpaf;->c:I

    shr-int/lit8 v7, v0, 0xc

    or-int/lit16 v7, v7, 0xe0

    int-to-byte v7, v7

    aput-byte v7, v5, v6

    add-int/lit8 v7, v6, 0x1

    shr-int/lit8 v8, v0, 0x6

    and-int/2addr v3, v8

    or-int/2addr v3, v1

    int-to-byte v3, v3

    aput-byte v3, v5, v7

    add-int/lit8 v3, v6, 0x2

    and-int/lit8 v0, v0, 0x3f

    or-int/2addr v0, v1

    int-to-byte v0, v0

    aput-byte v0, v5, v3

    add-int/2addr v6, v2

    iput v6, v4, Lpaf;->c:I

    iget-wide v0, p0, Lozw;->b:J

    const-wide/16 v2, 0x3

    add-long/2addr v0, v2

    iput-wide v0, p0, Lozw;->b:J

    add-int/lit8 p2, p2, 0x1

    goto/16 :goto_0

    :cond_7
    return-void

    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex > string.length: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " > "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "endIndex < beginIndex: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " < "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2

    :cond_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "beginIndex < 0: "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/IllegalArgumentException;

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :goto_4
    throw p2

    :goto_5
    goto :goto_4
.end method

.method public final t(Lozw;)J
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    iget-wide v0, p0, Lozw;->b:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    long-to-int v1, v0

    invoke-virtual {p0, v1}, Lozw;->i(I)Lozz;

    move-result-object v0

    invoke-virtual {v0}, Lozz;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "size > Int.MAX_VALUE: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final write(Ljava/nio/ByteBuffer;)I
    .locals 6

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    move v1, v0

    :goto_0
    if-lez v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lozw;->j(I)Lpaf;

    move-result-object v2

    iget v3, v2, Lpaf;->c:I

    rsub-int v3, v3, 0x2000

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, v2, Lpaf;->a:[B

    iget v5, v2, Lpaf;->c:I

    invoke-virtual {p1, v4, v5, v3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    sub-int/2addr v1, v3

    iget v4, v2, Lpaf;->c:I

    add-int/2addr v4, v3

    iput v4, v2, Lpaf;->c:I

    goto :goto_0

    :cond_0
    iget-wide v1, p0, Lozw;->b:J

    int-to-long v3, v0

    add-long/2addr v1, v3

    iput-wide v1, p0, Lozw;->b:J

    return v0
.end method
