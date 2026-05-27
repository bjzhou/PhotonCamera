.class public final Lbxa;
.super Ljava/io/FilterInputStream;

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field private volatile a:[B

.field private b:I

.field private c:I

.field private d:I

.field private e:I

.field private final f:Lbsu;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lbsu;)V
    .locals 1

    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p1, -0x1

    iput p1, p0, Lbxa;->d:I

    iput-object p2, p0, Lbxa;->f:Lbsu;

    const/high16 p1, 0x10000

    const-class v0, [B

    invoke-interface {p2, p1, v0}, Lbsu;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    iput-object p1, p0, Lbxa;->a:[B

    return-void
.end method

.method private final c(Ljava/io/InputStream;[B)I
    .locals 5

    iget v0, p0, Lbxa;->d:I

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    iget v3, p0, Lbxa;->e:I

    sub-int/2addr v3, v0

    iget v4, p0, Lbxa;->c:I

    if-lt v3, v4, :cond_0

    goto :goto_4

    :cond_0
    if-nez v0, :cond_4

    array-length v0, p2

    if-le v4, v0, :cond_3

    iget v2, p0, Lbxa;->b:I

    if-ne v2, v0, :cond_2

    iget-object v2, p0, Lbxa;->f:Lbsu;

    add-int v3, v0, v0

    if-le v3, v4, :cond_1

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    const-class v3, [B

    invoke-interface {v2, v4, v3}, Lbsu;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    invoke-static {p2, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lbxa;->a:[B

    iget-object v0, p0, Lbxa;->f:Lbsu;

    invoke-interface {v0, p2}, Lbsu;->c(Ljava/lang/Object;)V

    move-object p2, v2

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    const/4 v0, 0x0

    :cond_4
    :goto_1
    if-lez v0, :cond_5

    array-length v2, p2

    sub-int/2addr v2, v0

    invoke-static {p2, v0, p2, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_5
    :goto_2
    iget v0, p0, Lbxa;->e:I

    iget v2, p0, Lbxa;->d:I

    sub-int/2addr v0, v2

    iput v0, p0, Lbxa;->e:I

    iput v1, p0, Lbxa;->d:I

    iput v1, p0, Lbxa;->b:I

    array-length v1, p2

    sub-int/2addr v1, v0

    invoke-virtual {p1, p2, v0, v1}, Ljava/io/InputStream;->read([BII)I

    move-result p1

    iget p2, p0, Lbxa;->e:I

    if-gtz p1, :cond_6

    goto :goto_3

    :cond_6
    add-int/2addr p2, p1

    :goto_3
    iput p2, p0, Lbxa;->b:I

    return p1

    :cond_7
    :goto_4
    invoke-virtual {p1, p2}, Ljava/io/InputStream;->read([B)I

    move-result p1

    if-lez p1, :cond_8

    iput v2, p0, Lbxa;->d:I

    iput v1, p0, Lbxa;->e:I

    iput p1, p0, Lbxa;->b:I

    :cond_8
    return p1
.end method

.method private static d()Ljava/io/IOException;
    .locals 2

    new-instance v0, Ljava/io/IOException;

    const-string v1, "BufferedInputStream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbxa;->a:[B

    array-length v0, v0

    iput v0, p0, Lbxa;->c:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized available()I
    .locals 3

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbxa;->in:Ljava/io/InputStream;

    iget-object v1, p0, Lbxa;->a:[B

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    iget v1, p0, Lbxa;->b:I

    iget v2, p0, Lbxa;->e:I

    sub-int/2addr v1, v2

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v1, v0

    monitor-exit p0

    return v1

    :cond_0
    :try_start_1
    invoke-static {}, Lbxa;->d()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbxa;->a:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbxa;->f:Lbsu;

    iget-object v1, p0, Lbxa;->a:[B

    invoke-interface {v0, v1}, Lbsu;->c(Ljava/lang/Object;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lbxa;->a:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final close()V
    .locals 3

    iget-object v0, p0, Lbxa;->a:[B

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbxa;->f:Lbsu;

    iget-object v2, p0, Lbxa;->a:[B

    invoke-interface {v0, v2}, Lbsu;->c(Ljava/lang/Object;)V

    iput-object v1, p0, Lbxa;->a:[B

    :cond_0
    iget-object v0, p0, Lbxa;->in:Ljava/io/InputStream;

    iput-object v1, p0, Lbxa;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    :cond_1
    return-void
.end method

.method public final declared-synchronized mark(I)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lbxa;->c:I

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lbxa;->c:I

    iget p1, p0, Lbxa;->e:I

    iput p1, p0, Lbxa;->d:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final markSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final declared-synchronized read()I
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbxa;->a:[B

    iget-object v1, p0, Lbxa;->in:Ljava/io/InputStream;

    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    iget v2, p0, Lbxa;->e:I

    iget v3, p0, Lbxa;->b:I

    const/4 v4, -0x1

    if-lt v2, v3, :cond_1

    invoke-direct {p0, v1, v0}, Lbxa;->c(Ljava/io/InputStream;[B)I

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eq v1, v4, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit p0

    return v4

    :cond_1
    :goto_0
    :try_start_1
    iget-object v1, p0, Lbxa;->a:[B

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lbxa;->a:[B

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {}, Lbxa;->d()Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_3
    :goto_1
    iget v1, p0, Lbxa;->b:I

    iget v2, p0, Lbxa;->e:I

    sub-int/2addr v1, v2

    if-lez v1, :cond_4

    add-int/lit8 v1, v2, 0x1

    iput v1, p0, Lbxa;->e:I

    aget-byte v0, v0, v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/lit16 v0, v0, 0xff

    monitor-exit p0

    return v0

    :cond_4
    monitor-exit p0

    return v4

    :cond_5
    :try_start_2
    invoke-static {}, Lbxa;->d()Ljava/io/IOException;

    move-result-object v0

    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized read([BII)I
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbxa;->a:[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_10

    if-nez p3, :cond_0

    monitor-exit p0

    const/4 p1, 0x0

    return p1

    :cond_0
    :try_start_1
    iget-object v1, p0, Lbxa;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_f

    iget v2, p0, Lbxa;->e:I

    iget v3, p0, Lbxa;->b:I

    if-ge v2, v3, :cond_4

    sub-int/2addr v3, v2

    if-lt v3, p3, :cond_1

    move v3, p3

    :cond_1
    invoke-static {v0, v2, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v2, p0, Lbxa;->e:I

    add-int/2addr v2, v3

    iput v2, p0, Lbxa;->e:I

    if-eq v3, p3, :cond_3

    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_2

    goto :goto_0

    :cond_2
    add-int/2addr p2, v3

    sub-int v2, p3, v3

    goto :goto_1

    :cond_3
    :goto_0
    monitor-exit p0

    return v3

    :cond_4
    move v2, p3

    :goto_1
    :try_start_2
    iget v3, p0, Lbxa;->d:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_6

    array-length v3, v0

    if-lt v2, v3, :cond_6

    invoke-virtual {v1, p1, p2, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v3, v4, :cond_c

    if-ne v2, p3, :cond_5

    monitor-exit p0

    return v4

    :cond_5
    sub-int/2addr p3, v2

    :goto_2
    monitor-exit p0

    return p3

    :cond_6
    :try_start_3
    invoke-direct {p0, v1, v0}, Lbxa;->c(Ljava/io/InputStream;[B)I

    move-result v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-ne v3, v4, :cond_8

    if-ne v2, p3, :cond_7

    monitor-exit p0

    return v4

    :cond_7
    sub-int/2addr p3, v2

    monitor-exit p0

    return p3

    :cond_8
    :try_start_4
    iget-object v3, p0, Lbxa;->a:[B

    if-eq v0, v3, :cond_a

    iget-object v0, p0, Lbxa;->a:[B

    if-eqz v0, :cond_9

    goto :goto_3

    :cond_9
    invoke-static {}, Lbxa;->d()Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_a
    :goto_3
    iget v3, p0, Lbxa;->b:I

    iget v4, p0, Lbxa;->e:I

    sub-int/2addr v3, v4

    if-lt v3, v2, :cond_b

    move v3, v2

    :cond_b
    invoke-static {v0, v4, p1, p2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v4, p0, Lbxa;->e:I

    add-int/2addr v4, v3

    iput v4, p0, Lbxa;->e:I

    :cond_c
    sub-int/2addr v2, v3

    if-nez v2, :cond_d

    goto :goto_2

    :cond_d
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez v4, :cond_e

    sub-int/2addr p3, v2

    monitor-exit p0

    return p3

    :cond_e
    add-int/2addr p2, v3

    goto :goto_1

    :cond_f
    :try_start_5
    invoke-static {}, Lbxa;->d()Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_10
    invoke-static {}, Lbxa;->d()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_5

    :goto_4
    throw p1

    :goto_5
    goto :goto_4
.end method

.method public final declared-synchronized reset()V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lbxa;->a:[B

    if-eqz v0, :cond_1

    iget v0, p0, Lbxa;->d:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iput v0, p0, Lbxa;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    new-instance v0, Lbwz;

    iget v1, p0, Lbxa;->e:I

    iget v2, p0, Lbxa;->c:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Mark has been invalidated, pos: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " markLimit: "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lbwz;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized skip(J)J
    .locals 10

    monitor-enter p0

    const-wide/16 v0, 0x1

    const-wide/16 v2, 0x0

    cmp-long v4, p1, v0

    if-gez v4, :cond_0

    monitor-exit p0

    return-wide v2

    :cond_0
    :try_start_0
    iget-object v0, p0, Lbxa;->a:[B

    if-eqz v0, :cond_7

    iget-object v1, p0, Lbxa;->in:Ljava/io/InputStream;

    if-eqz v1, :cond_6

    iget v4, p0, Lbxa;->b:I

    iget v5, p0, Lbxa;->e:I

    sub-int v6, v4, v5

    int-to-long v6, v6

    cmp-long v8, v6, p1

    if-ltz v8, :cond_1

    int-to-long v0, v5

    add-long/2addr v0, p1

    long-to-int v1, v0

    iput v1, p0, Lbxa;->e:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide p1

    :cond_1
    int-to-long v6, v4

    int-to-long v8, v5

    :try_start_1
    iput v4, p0, Lbxa;->e:I

    iget v4, p0, Lbxa;->d:I

    sub-long/2addr v6, v8

    const/4 v5, -0x1

    if-eq v4, v5, :cond_4

    iget v4, p0, Lbxa;->c:I

    int-to-long v8, v4

    cmp-long v4, p1, v8

    if-gtz v4, :cond_4

    invoke-direct {p0, v1, v0}, Lbxa;->c(Ljava/io/InputStream;[B)I

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v5, :cond_2

    :goto_0
    monitor-exit p0

    return-wide v6

    :cond_2
    :try_start_2
    iget v0, p0, Lbxa;->b:I

    iget v1, p0, Lbxa;->e:I

    sub-int v2, v0, v1

    sub-long v3, p1, v6

    int-to-long v8, v2

    cmp-long v2, v8, v3

    if-ltz v2, :cond_3

    int-to-long v0, v1

    add-long/2addr v0, p1

    sub-long/2addr v0, v6

    long-to-int v1, v0

    iput v1, p0, Lbxa;->e:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-wide p1

    :cond_3
    int-to-long p1, v0

    add-long/2addr v6, p1

    int-to-long p1, v1

    :try_start_3
    iput v0, p0, Lbxa;->e:I

    sub-long/2addr v6, p1

    goto :goto_0

    :cond_4
    sub-long/2addr p1, v6

    invoke-virtual {v1, p1, p2}, Ljava/io/InputStream;->skip(J)J

    move-result-wide p1

    cmp-long v0, p1, v2

    if-lez v0, :cond_5

    iput v5, p0, Lbxa;->d:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_5
    add-long/2addr v6, p1

    monitor-exit p0

    return-wide v6

    :cond_6
    :try_start_4
    invoke-static {}, Lbxa;->d()Ljava/io/IOException;

    move-result-object p1

    throw p1

    :cond_7
    invoke-static {}, Lbxa;->d()Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception p1

    monitor-exit p0

    goto :goto_2

    :goto_1
    throw p1

    :goto_2
    goto :goto_1
.end method

.method public final synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 2

    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide v0

    return-wide v0
.end method
