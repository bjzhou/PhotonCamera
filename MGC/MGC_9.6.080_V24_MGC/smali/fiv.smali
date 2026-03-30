.class final Lfiv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field public final a:Ljava/nio/charset/Charset;

.field public b:I

.field private final c:Ljava/io/InputStream;

.field private d:[B

.field private e:I


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Ljava/nio/charset/Charset;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lfiv;->d:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_a

    nop

    nop

    :goto_3
    sget-object v0, Lfiw;->a:Ljava/nio/charset/Charset;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_6
    new-array p1, p1, [B

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    iput-object p2, p0, Lfiv;->a:Ljava/nio/charset/Charset;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {p2, v0}, Ljava/nio/charset/Charset;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    :goto_a
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    const/16 p1, 0x2000

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_c
    const-string p1, "Unsupported encoding"

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iput-object p1, p0, Lfiv;->c:Ljava/io/InputStream;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_e
    return-void

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
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m()V
    .locals 4

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/io/EOFException;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/io/EOFException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const v0, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_4

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

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0xc

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_6
    iput v3, p0, Lfiv;->e:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    array-length v1, v0

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_8
    iput v0, p0, Lfiv;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v3, 0x0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    return-void

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    if-ne v0, v1, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Lfiv;->d:[B

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_f
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v1, -0x1

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, v0, v3, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_13
    const/16 v2, 0x2000

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    throw p0

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v1, p0, Lfiv;->c:Ljava/io/InputStream;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 7

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_7

    nop

    :goto_1
    goto/32 :goto_8

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lfiv;->d:[B

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_8

    nop

    nop

    nop

    nop

    iget v1, p0, Lfiv;->e:I

    nop

    nop

    nop

    nop

    iget v2, p0, Lfiv;->b:I

    nop

    nop

    nop

    if-lt v1, v2, :cond_0

    nop

    invoke-direct {p0}, Lfiv;->f875135777c17da3cef2ea6eeff5be29m()V

    :cond_0
    iget v1, p0, Lfiv;->e:I

    nop

    nop

    nop

    nop

    :goto_3
    iget v2, p0, Lfiv;->b:I

    nop

    nop

    nop

    const/16 v3, 0xa

    nop

    if-eq v1, v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lfiv;->d:[B

    nop

    aget-byte v4, v2, v1

    nop

    nop

    if-ne v4, v3, :cond_3

    nop

    nop

    nop

    nop

    nop

    iget v3, p0, Lfiv;->e:I

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v3, :cond_1

    nop

    nop

    nop

    nop

    add-int/lit8 v4, v1, -0x1

    nop

    nop

    nop

    nop

    nop

    aget-byte v5, v2, v4

    nop

    nop

    const/16 v6, 0xd

    nop

    nop

    nop

    if-eq v5, v6, :cond_2

    nop

    nop

    nop

    nop

    nop

    :cond_1
    move v4, v1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    new-instance v5, Ljava/lang/String;

    nop

    nop

    nop

    nop

    sub-int/2addr v4, v3

    nop

    iget-object v6, p0, Lfiv;->a:Ljava/nio/charset/Charset;

    nop

    nop

    invoke-virtual {v6}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v6

    nop

    invoke-direct {v5, v2, v3, v4, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    nop

    iput v1, p0, Lfiv;->e:I

    nop

    nop

    monitor-exit v0

    nop

    nop

    return-object v5

    nop

    nop

    nop

    nop

    nop

    :cond_3
    add-int/lit8 v1, v1, 0x1

    nop

    nop

    goto :goto_3

    nop

    :cond_4
    new-instance v1, Lfiu;

    nop

    nop

    nop

    nop

    iget v2, p0, Lfiv;->b:I

    nop

    nop

    nop

    iget v4, p0, Lfiv;->e:I

    nop

    sub-int/2addr v2, v4

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v2, 0x50

    nop

    invoke-direct {v1, p0, v2}, Lfiu;-><init>(Lfiv;I)V

    :cond_5
    iget-object v2, p0, Lfiv;->d:[B

    nop

    nop

    nop

    iget v4, p0, Lfiv;->e:I

    nop

    nop

    iget v5, p0, Lfiv;->b:I

    nop

    nop

    nop

    nop

    nop

    sub-int/2addr v5, v4

    nop

    nop

    nop

    invoke-virtual {v1, v2, v4, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/4 v2, -0x1

    nop

    iput v2, p0, Lfiv;->b:I

    nop

    invoke-direct {p0}, Lfiv;->f875135777c17da3cef2ea6eeff5be29m()V

    iget v2, p0, Lfiv;->e:I

    nop

    nop

    :goto_4
    iget v4, p0, Lfiv;->b:I

    nop

    if-eq v2, v4, :cond_5

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Lfiv;->d:[B

    nop

    aget-byte v5, v4, v2

    nop

    nop

    if-ne v5, v3, :cond_7

    nop

    nop

    nop

    nop

    nop

    iget v3, p0, Lfiv;->e:I

    nop

    nop

    nop

    nop

    if-eq v2, v3, :cond_6

    nop

    nop

    nop

    sub-int v5, v2, v3

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v4, v3, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    :cond_6
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    iput v2, p0, Lfiv;->e:I

    nop

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    monitor-exit v0

    nop

    nop

    return-object p0

    nop

    nop

    nop

    nop

    nop

    :cond_7
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_4

    nop

    :cond_8
    new-instance p0, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    const-string v1, "LineReader is closed"

    nop

    nop

    nop

    invoke-direct {p0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_6
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v0, p0, Lfiv;->c:Ljava/io/InputStream;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-lez v0, :cond_9

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_9
    goto/32 :goto_0

    nop
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_1
    const v1, 0x20

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Lfiv;->d:[B

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    iput-object v1, p0, Lfiv;->d:[B

    nop

    nop

    nop

    nop

    nop

    iget-object p0, p0, Lfiv;->c:Ljava/io/InputStream;

    nop

    nop

    nop

    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    :cond_1
    monitor-exit v0

    nop

    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

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

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    :goto_5
    goto/32 :goto_4

    nop

    :goto_6
    const v0, 0x14

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object v0, p0, Lfiv;->c:Ljava/io/InputStream;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method
