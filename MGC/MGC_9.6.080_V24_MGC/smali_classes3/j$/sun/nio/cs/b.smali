.class final Lj$/sun/nio/cs/b;
.super Ljava/nio/charset/CharsetEncoder;
.source "SourceFile"


# instance fields
.field private final a:Lj$/sun/nio/cs/e;


# direct methods
.method constructor <init>(Lj$/sun/nio/cs/c;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p0, p1, v0, v0}, Ljava/nio/charset/CharsetEncoder;-><init>(Ljava/nio/charset/Charset;FF)V

    new-instance p1, Lj$/sun/nio/cs/e;

    invoke-direct {p1}, Lj$/sun/nio/cs/e;-><init>()V

    iput-object p1, p0, Lj$/sun/nio/cs/b;->a:Lj$/sun/nio/cs/e;

    return-void
.end method

.method private static a([CI[BII)I
    .locals 3

    const/4 v0, 0x0

    if-gtz p4, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p1, :cond_6

    array-length v1, p0

    if-ge p1, v1, :cond_6

    if-ltz p3, :cond_5

    array-length v1, p2

    if-ge p3, v1, :cond_5

    add-int v1, p1, p4

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_4

    array-length v2, p0

    if-ge v1, v2, :cond_4

    add-int v1, p3, p4

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_3

    array-length v2, p2

    if-ge v1, v2, :cond_3

    :goto_0
    if-ge v0, p4, :cond_2

    add-int/lit8 v1, p1, 0x1

    aget-char p1, p0, p1

    const/16 v2, 0xff

    if-le p1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, p3, 0x1

    int-to-byte p1, p1

    aput-byte p1, p2, p3

    add-int/lit8 v0, v0, 0x1

    move p1, v1

    move p3, v2

    goto :goto_0

    :cond_2
    :goto_1
    return v0

    :cond_3
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    :cond_4
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, v1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    :cond_5
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p3}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0

    :cond_6
    new-instance p0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {p0, p1}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>(I)V

    throw p0
.end method


# virtual methods
.method public final canEncode(C)Z
    .locals 1

    const/16 v0, 0xff

    if-gt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected final encodeLoop(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;)Ljava/nio/charset/CoderResult;
    .locals 10

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->hasArray()Z

    move-result v0

    iget-object v1, p0, Lj$/sun/nio/cs/b;->a:Lj$/sun/nio/cs/e;

    if-eqz v0, :cond_6

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->hasArray()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v0

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v3

    add-int/2addr v3, v2

    invoke-virtual {p1}, Ljava/nio/Buffer;->limit()I

    move-result v4

    add-int/2addr v4, v2

    if-gt v3, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v6

    invoke-virtual {p2}, Ljava/nio/Buffer;->position()I

    move-result v7

    add-int/2addr v7, v6

    invoke-virtual {p2}, Ljava/nio/Buffer;->limit()I

    move-result v8

    add-int/2addr v8, v6

    if-gt v7, v8, :cond_1

    goto :goto_1

    :cond_1
    move v7, v8

    :goto_1
    sub-int/2addr v8, v7

    sub-int v9, v4, v3

    if-ge v8, v9, :cond_2

    goto :goto_2

    :cond_2
    move v8, v9

    :goto_2
    :try_start_0
    invoke-static {v0, v3, v5, v7, v8}, Lj$/sun/nio/cs/b;->a([CI[BII)I

    move-result v5

    add-int/2addr v3, v5

    add-int/2addr v7, v5

    if-eq v5, v8, :cond_4

    aget-char v5, v0, v3

    invoke-virtual {v1, v5, v0, v3, v4}, Lj$/sun/nio/cs/e;->c(C[CII)I

    move-result v0

    if-gez v0, :cond_3

    invoke-virtual {v1}, Lj$/sun/nio/cs/e;->a()Ljava/nio/charset/CoderResult;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_3
    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/CharBuffer;

    sub-int/2addr v7, v6

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    goto :goto_4

    :catchall_0
    move-exception v0

    goto :goto_5

    :cond_3
    :try_start_1
    invoke-virtual {v1}, Lj$/sun/nio/cs/e;->d()Ljava/nio/charset/CoderResult;

    move-result-object v0

    goto :goto_3

    :cond_4
    if-ge v8, v9, :cond_5

    sget-object v0, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;

    goto :goto_3

    :cond_5
    sget-object v0, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :goto_4
    return-object v0

    :goto_5
    sub-int/2addr v3, v2

    invoke-virtual {p1, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/CharBuffer;

    sub-int/2addr v7, v6

    invoke-virtual {p2, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/ByteBuffer;

    throw v0

    :cond_6
    invoke-virtual {p1}, Ljava/nio/Buffer;->position()I

    move-result v0

    :goto_6
    :try_start_2
    invoke-virtual {p1}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-virtual {p1}, Ljava/nio/CharBuffer;->get()C

    move-result v2

    const/16 v3, 0xff

    if-gt v2, v3, :cond_8

    invoke-virtual {p2}, Ljava/nio/Buffer;->hasRemaining()Z

    move-result v3

    if-nez v3, :cond_7

    sget-object p2, Ljava/nio/charset/CoderResult;->OVERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_7
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/CharBuffer;

    goto :goto_8

    :catchall_1
    move-exception p2

    goto :goto_9

    :cond_7
    int-to-byte v2, v2

    :try_start_3
    invoke-virtual {p2, v2}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_8
    invoke-virtual {v1, v2, p1}, Lj$/sun/nio/cs/e;->b(CLjava/nio/CharBuffer;)I

    move-result p2

    if-gez p2, :cond_9

    invoke-virtual {v1}, Lj$/sun/nio/cs/e;->a()Ljava/nio/charset/CoderResult;

    move-result-object p2

    goto :goto_7

    :cond_9
    invoke-virtual {v1}, Lj$/sun/nio/cs/e;->d()Ljava/nio/charset/CoderResult;

    move-result-object p2

    goto :goto_7

    :cond_a
    sget-object p2, Ljava/nio/charset/CoderResult;->UNDERFLOW:Ljava/nio/charset/CoderResult;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_7

    :goto_8
    return-object p2

    :goto_9
    invoke-virtual {p1, v0}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object p1

    check-cast p1, Ljava/nio/CharBuffer;

    throw p2
.end method

.method public final isLegalReplacement([B)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
