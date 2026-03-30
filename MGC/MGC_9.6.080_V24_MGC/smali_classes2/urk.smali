.class final Lurk;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lurt;


# instance fields
.field private final a:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lurk;->a:Ljava/io/InputStream;

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
.end method


# virtual methods
.method public final close()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Lurk;->a:Ljava/io/InputStream;

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

    :goto_2
    return-void

    nop
.end method

.method public final e(Lurh;J)J
    .locals 4

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_1
    :try_start_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Thread;->isInterrupted()Z

    move-result p2

    nop

    nop

    nop

    nop

    if-nez p2, :cond_2

    nop

    nop

    const/4 p2, 0x1

    nop

    nop

    nop

    nop

    invoke-virtual {p1, p2}, Lurh;->i(I)Lurq;

    move-result-object p2

    nop

    nop

    nop

    nop

    iget p3, p2, Lurq;->c:I

    nop

    nop

    nop

    rsub-int p3, p3, 0x2000

    nop

    nop

    nop

    nop

    nop

    int-to-long v0, p3

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v2, 0x2000

    nop

    nop

    nop

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    nop

    nop

    nop

    long-to-int p3, v0

    nop

    iget-object p0, p0, Lurk;->a:Ljava/io/InputStream;

    nop

    nop

    iget-object v0, p2, Lurq;->a:[B

    nop

    nop

    nop

    nop

    nop

    iget v1, p2, Lurq;->c:I

    nop

    nop

    nop

    invoke-virtual {p0, v0, v1, p3}, Ljava/io/InputStream;->read([BII)I

    move-result p0

    nop

    nop

    nop

    nop

    nop

    const/4 p3, -0x1

    nop

    nop

    nop

    nop

    nop

    if-ne p0, p3, :cond_1

    nop

    nop

    nop

    nop

    iget p0, p2, Lurq;->b:I

    nop

    nop

    iget p3, p2, Lurq;->c:I

    nop

    nop

    nop

    nop

    nop

    if-ne p0, p3, :cond_0

    nop

    nop

    nop

    nop

    invoke-virtual {p2}, Lurq;->a()Lurq;

    move-result-object p0

    nop

    nop

    nop

    iput-object p0, p1, Lurh;->a:Lurq;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p2}, Lurr;->b(Lurq;)V

    :cond_0
    const-wide/16 p0, -0x1

    nop

    nop

    nop

    nop

    nop

    return-wide p0

    nop

    nop

    nop

    nop

    :cond_1
    iget p3, p2, Lurq;->c:I

    nop

    nop

    add-int/2addr p3, p0

    nop

    nop

    iput p3, p2, Lurq;->c:I

    nop

    nop

    nop

    nop

    iget-wide p2, p1, Lurh;->b:J

    nop

    nop

    nop

    nop

    nop

    int-to-long v0, p0

    nop

    add-long/2addr p2, v0

    nop

    nop

    iput-wide p2, p1, Lurh;->b:J

    nop

    nop

    nop

    nop

    return-wide v0

    nop

    nop

    :cond_2
    new-instance p0, Ljava/io/InterruptedIOException;

    nop

    nop

    nop

    const-string p1, "interrupted"

    nop

    nop

    nop

    invoke-direct {p0, p1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop
    :try_end_0
    .catch Ljava/lang/AssertionError; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_2
    invoke-static {p1, p2}, Luch;->t(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    if-nez p1, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_3
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1

    nop

    :goto_5
    new-instance p1, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_6
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_0

    nop

    :goto_9
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_a
    if-nez p1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :cond_5
    goto/32 :goto_e

    nop

    nop

    :goto_b
    sget p1, Lurl;->a:I

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    const v1, 0xa

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p1, :cond_6

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_15

    nop

    nop

    :goto_e
    const-string p2, "getsockname failed"

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_11
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_13
    throw p1

    nop

    nop

    :goto_14
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0}, Ljava/lang/AssertionError;->getMessage()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v1, "source("

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p0, ")"

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

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

    :goto_3
    return-object p0

    nop

    :goto_4
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_9
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    goto/32 :goto_4

    nop

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    const v1, 0x1a

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object p0, p0, Lurk;->a:Ljava/io/InputStream;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_10
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/32 :goto_6

    nop

    nop
.end method
