.class final Lgor;
.super Ljava/io/PipedInputStream;
.source "PG"

# interfaces
.implements Lj$/io/InputStreamRetargetInterface;


# instance fields
.field private final a:Lgpn;

.field private final b:Lscn;


# direct methods
.method public constructor <init>(II)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, p1, p2}, Lgpn;-><init>(II)V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    invoke-direct {p1}, Lscn;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p2}, Ljava/io/PipedInputStream;-><init>(I)V

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_3
    new-instance v0, Lgpn;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lgor;->b:Lscn;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    :goto_6
    new-instance p1, Lscn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p0, Lgor;->a:Lgpn;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/nio/ByteBuffer;I)Lpic;
    .locals 5

    goto/32 :goto_12

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_e

    nop

    :goto_3
    goto/32 :goto_f

    nop

    nop

    nop

    :goto_4
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lgor;->b:Lscn;

    nop

    nop

    iget-object v1, v0, Lscn;->a:Ljava/lang/Object;

    nop

    if-nez v1, :cond_1

    nop

    new-array p2, p2, [B

    nop

    nop

    nop

    nop

    nop

    iput-object p2, v0, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    :cond_1
    check-cast v1, [B

    nop

    array-length v1, v1

    nop

    nop

    nop

    nop

    if-eq v1, p2, :cond_2

    nop

    nop

    nop

    nop

    nop

    new-array p2, p2, [B

    nop

    nop

    nop

    nop

    nop

    iput-object p2, v0, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    :cond_2
    :goto_6
    iget-object p2, v0, Lscn;->a:Ljava/lang/Object;

    nop

    nop

    move-object v0, p2

    nop

    check-cast v0, [B

    nop

    nop

    nop

    nop

    nop

    array-length v0, v0

    nop

    nop

    move-object v1, p2

    nop

    nop

    nop

    nop

    check-cast v1, [B

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    invoke-virtual {p0, v1, v2, v0}, Lgor;->read([BII)I

    move-result v0

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_3

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_3
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-object p0

    nop

    nop

    nop

    nop

    :goto_9
    :try_start_1
    iget-object v1, p0, Lgor;->a:Lgpn;

    nop

    invoke-virtual {v1, v0}, Lgpn;->a(I)J

    move-result-wide v3

    nop

    check-cast p2, [B

    nop

    nop

    invoke-virtual {p1, p2, v2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    new-instance p2, Lpic;

    nop

    new-instance v1, Lqkg;

    nop

    nop

    nop

    invoke-direct {v1, p1, v0, v3, v4}, Lqkg;-><init>(Ljava/nio/ByteBuffer;IJ)V

    invoke-direct {p2, v1}, Lpic;-><init>(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-object p2

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_c

    nop

    nop

    :goto_c
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v1, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const v0, 0x3

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(Lpic;)V
    .locals 7

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    const v0, 0x4

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    :try_start_1
    invoke-virtual {p1}, Lpic;->h()Ljava/nio/ByteBuffer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lpic;->f()I

    move-result v1

    nop

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    move v3, v2

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v1, :cond_3

    nop

    nop

    add-int/lit8 v4, v3, 0x1

    nop

    nop

    nop

    aget-byte v3, v0, v3

    nop

    invoke-virtual {p0, v3}, Lgor;->receive(I)V

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    add-int/lit8 v1, v1, -0x1

    nop

    nop

    nop

    nop

    iget v3, p0, Lgor;->in:I

    nop

    nop

    nop

    iget v5, p0, Lgor;->out:I

    nop

    nop

    nop

    nop

    nop

    if-le v3, v5, :cond_2

    nop

    nop

    nop

    nop

    iget-object v3, p0, Lgor;->buffer:[B

    nop

    nop

    nop

    array-length v3, v3

    nop

    nop

    nop

    iget v5, p0, Lgor;->in:I

    nop

    sub-int/2addr v3, v5

    nop

    nop

    nop

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    nop

    nop

    nop

    nop

    iget-object v5, p0, Lgor;->buffer:[B

    nop

    nop

    nop

    iget v6, p0, Lgor;->in:I

    nop

    invoke-static {v0, v4, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lgor;->in:I

    nop

    add-int/2addr v5, v3

    nop

    nop

    nop

    nop

    iput v5, p0, Lgor;->in:I

    nop

    nop

    nop

    add-int/2addr v4, v3

    nop

    nop

    nop

    nop

    nop

    sub-int/2addr v1, v3

    nop

    nop

    nop

    iget v3, p0, Lgor;->in:I

    nop

    nop

    nop

    nop

    nop

    iget-object v5, p0, Lgor;->buffer:[B

    nop

    nop

    nop

    array-length v5, v5

    nop

    nop

    if-ne v3, v5, :cond_1

    nop

    nop

    nop

    nop

    iput v2, p0, Lgor;->in:I

    nop

    nop

    :cond_1
    if-eqz v1, :cond_3

    nop

    nop

    nop

    :cond_2
    iget v3, p0, Lgor;->out:I

    nop

    nop

    iget v5, p0, Lgor;->in:I

    nop

    nop

    nop

    nop

    nop

    sub-int/2addr v3, v5

    nop

    nop

    nop

    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    nop

    nop

    nop

    iget-object v5, p0, Lgor;->buffer:[B

    nop

    iget v6, p0, Lgor;->in:I

    nop

    nop

    nop

    nop

    invoke-static {v0, v4, v5, v6, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v5, p0, Lgor;->in:I

    nop

    nop

    nop

    add-int/2addr v5, v3

    nop

    nop

    nop

    nop

    nop

    iput v5, p0, Lgor;->in:I

    nop

    nop

    nop

    add-int/2addr v4, v3

    nop

    nop

    nop

    sub-int/2addr v1, v3

    nop

    nop

    nop

    nop

    move v3, v4

    nop

    goto/16 :goto_8

    nop

    nop

    :cond_3
    iget-object v0, p0, Lgor;->a:Lgpn;

    nop

    invoke-virtual {p1}, Lpic;->g()J

    move-result-wide v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Lpic;->f()I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v1, v2, p1}, Lgpn;->b(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_7

    nop

    nop

    :goto_d
    const v1, 0xd

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public final synthetic transferTo(Ljava/io/OutputStream;)J
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-wide p0

    nop

    nop

    :goto_1
    invoke-static {p0, p1}, Lj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method
