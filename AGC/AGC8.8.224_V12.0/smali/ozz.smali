.class public Lozz;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;
.implements Ljava/lang/Comparable;


# static fields
.field public static final a:Lozz;

.field private static final serialVersionUID:J = 0x1L


# instance fields
.field public final b:[B

.field public transient c:I

.field public transient d:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lozz;

    const/4 v1, 0x0

    new-array v1, v1, [B

    invoke-direct {v0, v1}, Lozz;-><init>([B)V

    sput-object v0, Lozz;->a:Lozz;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lozz;->b:[B

    return-void
.end method

.method public static final d(Ljava/lang/String;)Lozz;
    .locals 2

    new-instance v0, Lozz;

    invoke-static {p0}, Lljz;->q(Ljava/lang/String;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Lozz;-><init>([B)V

    iput-object p0, v0, Lozz;->d:Ljava/lang/String;

    return-object v0
.end method

.method private final readObject(Ljava/io/ObjectInputStream;)V
    .locals 5

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz v0, :cond_2

    new-array v1, v0, [B

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    sub-int v3, v0, v2

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    add-int/2addr v2, v3

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/io/EOFException;

    invoke-direct {p1}, Ljava/io/EOFException;-><init>()V

    throw p1

    :cond_1
    new-instance p1, Lozz;

    invoke-direct {p1, v1}, Lozz;-><init>([B)V

    const-class v0, Lozz;

    const-string v1, "b"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    iget-object p1, p1, Lozz;->b:[B

    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "byteCount < 0: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_2

    :goto_1
    throw v0

    :goto_2
    goto :goto_1
.end method

.method private final writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1

    iget-object v0, p0, Lozz;->b:[B

    array-length v0, v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    iget-object v0, p0, Lozz;->b:[B

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->write([B)V

    return-void
.end method


# virtual methods
.method public a(I)B
    .locals 1

    iget-object v0, p0, Lozz;->b:[B

    aget-byte p1, v0, p1

    return p1
.end method

.method public b()I
    .locals 1

    iget-object v0, p0, Lozz;->b:[B

    array-length v0, v0

    return v0
.end method

.method public c()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lozz;->b:[B

    array-length v1, v0

    add-int v2, v1, v1

    new-array v2, v2, [C

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_0

    aget-byte v5, v0, v3

    add-int/lit8 v6, v4, 0x1

    shr-int/lit8 v7, v5, 0x4

    sget-object v8, Lpak;->a:[C

    and-int/lit8 v7, v7, 0xf

    aget-char v7, v8, v7

    aput-char v7, v2, v4

    and-int/lit8 v4, v5, 0xf

    sget-object v5, Lpak;->a:[C

    aget-char v4, v5, v4

    aput-char v4, v2, v6

    add-int/lit8 v4, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>([C)V

    return-object v0
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 8

    check-cast p1, Lozz;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p0}, Lozz;->b()I

    move-result v0

    invoke-virtual {p1}, Lozz;->b()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x1

    if-ge v4, v2, :cond_1

    invoke-virtual {p0, v4}, Lozz;->a(I)B

    move-result v6

    and-int/lit16 v6, v6, 0xff

    invoke-virtual {p1, v4}, Lozz;->a(I)B

    move-result v7

    and-int/lit16 v7, v7, 0xff

    if-ne v6, v7, :cond_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_0
    if-lt v6, v7, :cond_3

    goto :goto_1

    :cond_1
    if-ne v0, v1, :cond_2

    goto :goto_2

    :cond_2
    if-lt v0, v1, :cond_3

    :goto_1
    const/4 v3, 0x1

    :goto_2
    return v3

    :cond_3
    const/4 p1, -0x1

    return p1
.end method

.method public e(I[BII)Z
    .locals 2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ltz p1, :cond_0

    iget-object v0, p0, Lozz;->b:[B

    array-length v1, v0

    sub-int/2addr v1, p4

    if-gt p1, v1, :cond_0

    if-ltz p3, :cond_0

    array-length v1, p2

    sub-int/2addr v1, p4

    if-gt p3, v1, :cond_0

    invoke-static {v0, p1, p2, p3, p4}, Lljz;->p([BI[BII)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    goto :goto_1

    :cond_0
    instance-of v1, p1, Lozz;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    check-cast p1, Lozz;

    invoke-virtual {p1}, Lozz;->b()I

    move-result v1

    iget-object v3, p0, Lozz;->b:[B

    array-length v4, v3

    if-ne v1, v4, :cond_2

    invoke-virtual {p1, v2, v3, v2, v4}, Lozz;->e(I[BII)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public f()[B
    .locals 1

    iget-object v0, p0, Lozz;->b:[B

    return-object v0
.end method

.method public g(Lozz;I)Z
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lozz;->b:[B

    invoke-virtual {p1, v0, v1, v0, p2}, Lozz;->e(I[BII)Z

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    iget v0, p0, Lozz;->c:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    iget-object v0, p0, Lozz;->b:[B

    invoke-static {v0}, Ljava/util/Arrays;->hashCode([B)I

    move-result v0

    iput v0, p0, Lozz;->c:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lozz;->b:[B

    array-length v2, v1

    if-nez v2, :cond_0

    const-string v1, "[size=0]"

    goto/16 :goto_a

    :cond_0
    sget-object v3, Lpak;->a:[C

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    const/16 v7, 0x40

    const/4 v8, -0x1

    if-ge v4, v2, :cond_1f

    aget-byte v9, v1, v4

    if-ltz v9, :cond_7

    add-int/lit8 v10, v5, 0x1

    if-ne v5, v7, :cond_1

    goto/16 :goto_9

    :cond_1
    const/16 v5, 0x7f

    const/16 v11, 0x20

    const/16 v12, 0xd

    const/16 v13, 0xa

    if-eq v9, v13, :cond_3

    if-eq v9, v12, :cond_3

    if-ge v9, v11, :cond_2

    :goto_1
    const/4 v6, -0x1

    goto/16 :goto_9

    :cond_2
    if-lt v9, v5, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    :goto_2
    if-ge v4, v2, :cond_6

    aget-byte v9, v1, v4

    if-ltz v9, :cond_6

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v14, v10, 0x1

    if-eq v10, v7, :cond_1f

    if-eq v9, v13, :cond_5

    if-eq v9, v12, :cond_5

    if-ge v9, v11, :cond_4

    goto :goto_3

    :cond_4
    if-lt v9, v5, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v6, v6, 0x1

    move v10, v14

    goto :goto_2

    :cond_6
    move v5, v10

    goto :goto_0

    :cond_7
    shr-int/lit8 v10, v9, 0x5

    const v11, 0xfffd

    const/high16 v12, 0x10000

    const/4 v13, -0x2

    const/16 v15, 0x80

    const/16 v16, 0x1

    if-ne v10, v13, :cond_e

    add-int/lit8 v10, v4, 0x1

    if-gt v2, v10, :cond_8

    if-eq v5, v7, :cond_1f

    :goto_3
    const/4 v6, -0x1

    goto/16 :goto_9

    :cond_8
    aget-byte v10, v1, v10

    and-int/lit16 v13, v10, 0xc0

    if-ne v13, v15, :cond_d

    xor-int/lit16 v10, v10, 0xf80

    shl-int/lit8 v9, v9, 0x6

    xor-int/2addr v9, v10

    if-ge v9, v15, :cond_9

    if-eq v5, v7, :cond_1f

    goto :goto_5

    :cond_9
    add-int/lit8 v10, v5, 0x1

    if-eq v5, v7, :cond_1f

    const/16 v5, 0xa0

    if-ge v9, v5, :cond_a

    goto :goto_5

    :cond_a
    if-ne v9, v11, :cond_b

    goto :goto_5

    :cond_b
    if-ge v9, v12, :cond_c

    const/4 v14, 0x1

    goto :goto_4

    :cond_c
    const/4 v14, 0x2

    :goto_4
    add-int/2addr v6, v14

    add-int/lit8 v4, v4, 0x2

    move v5, v10

    goto :goto_0

    :cond_d
    if-eq v5, v7, :cond_1f

    goto :goto_5

    :cond_e
    shr-int/lit8 v10, v9, 0x4

    const v14, 0xd800

    if-ne v10, v13, :cond_16

    add-int/lit8 v10, v4, 0x2

    if-gt v2, v10, :cond_f

    if-eq v5, v7, :cond_1f

    :goto_5
    const/4 v6, -0x1

    goto/16 :goto_9

    :cond_f
    add-int/lit8 v13, v4, 0x1

    aget-byte v13, v1, v13

    and-int/lit16 v3, v13, 0xc0

    if-ne v3, v15, :cond_15

    aget-byte v3, v1, v10

    and-int/lit16 v10, v3, 0xc0

    if-ne v10, v15, :cond_14

    const v10, -0x1e080

    xor-int/2addr v3, v10

    shl-int/lit8 v10, v13, 0x6

    shl-int/lit8 v9, v9, 0xc

    xor-int/2addr v3, v10

    xor-int/2addr v3, v9

    const/16 v9, 0x800

    if-ge v3, v9, :cond_10

    if-eq v5, v7, :cond_1f

    goto :goto_7

    :cond_10
    if-lt v3, v14, :cond_11

    const v9, 0xe000

    if-ge v3, v9, :cond_11

    if-eq v5, v7, :cond_1f

    goto :goto_7

    :cond_11
    add-int/lit8 v10, v5, 0x1

    if-eq v5, v7, :cond_1f

    if-ne v3, v11, :cond_12

    goto :goto_7

    :cond_12
    if-ge v3, v12, :cond_13

    const/4 v14, 0x1

    goto :goto_6

    :cond_13
    const/4 v14, 0x2

    :goto_6
    add-int/2addr v6, v14

    add-int/lit8 v4, v4, 0x3

    move v5, v10

    goto/16 :goto_0

    :cond_14
    if-eq v5, v7, :cond_1f

    goto :goto_7

    :cond_15
    if-eq v5, v7, :cond_1f

    goto :goto_7

    :cond_16
    shr-int/lit8 v3, v9, 0x3

    if-ne v3, v13, :cond_1e

    add-int/lit8 v3, v4, 0x3

    if-gt v2, v3, :cond_17

    if-eq v5, v7, :cond_1f

    :goto_7
    const/4 v6, -0x1

    goto :goto_9

    :cond_17
    add-int/lit8 v10, v4, 0x1

    aget-byte v10, v1, v10

    and-int/lit16 v11, v10, 0xc0

    if-ne v11, v15, :cond_1d

    add-int/lit8 v11, v4, 0x2

    aget-byte v11, v1, v11

    and-int/lit16 v13, v11, 0xc0

    if-ne v13, v15, :cond_1c

    aget-byte v3, v1, v3

    and-int/lit16 v13, v3, 0xc0

    if-ne v13, v15, :cond_1b

    const v13, 0x381f80

    xor-int/2addr v3, v13

    shl-int/lit8 v11, v11, 0x6

    shl-int/lit8 v10, v10, 0xc

    shl-int/lit8 v9, v9, 0x12

    xor-int/2addr v3, v11

    xor-int/2addr v3, v10

    xor-int/2addr v3, v9

    const v9, 0x10ffff

    if-le v3, v9, :cond_18

    if-eq v5, v7, :cond_1f

    goto :goto_8

    :cond_18
    if-lt v3, v14, :cond_19

    const v9, 0xe000

    if-ge v3, v9, :cond_19

    if-eq v5, v7, :cond_1f

    goto :goto_8

    :cond_19
    if-ge v3, v12, :cond_1a

    if-eq v5, v7, :cond_1f

    goto :goto_8

    :cond_1a
    add-int/lit8 v10, v5, 0x1

    if-eq v5, v7, :cond_1f

    add-int/lit8 v6, v6, 0x2

    add-int/lit8 v4, v4, 0x4

    move v5, v10

    goto/16 :goto_0

    :cond_1b
    if-eq v5, v7, :cond_1f

    goto :goto_8

    :cond_1c
    if-eq v5, v7, :cond_1f

    goto :goto_8

    :cond_1d
    if-eq v5, v7, :cond_1f

    goto :goto_8

    :cond_1e
    if-eq v5, v7, :cond_1f

    :goto_8
    const/4 v6, -0x1

    :cond_1f
    :goto_9
    const-string v1, "]"

    const-string v2, "\u2026]"

    const-string v3, "[size="

    if-ne v6, v8, :cond_21

    iget-object v4, v0, Lozz;->b:[B

    array-length v5, v4

    if-gt v5, v7, :cond_20

    invoke-virtual/range {p0 .. p0}, Lozz;->c()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[hex="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_a

    :cond_20
    new-instance v1, Lozz;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x0

    invoke-static {v4, v6, v7}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v4}, Lozz;-><init>([B)V

    invoke-virtual {v1}, Lozz;->c()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " hex="

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_21
    iget-object v4, v0, Lozz;->d:Ljava/lang/String;

    if-nez v4, :cond_22

    invoke-virtual/range {p0 .. p0}, Lozz;->f()[B

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Ljava/lang/String;

    sget-object v7, Looj;->a:Ljava/nio/charset/Charset;

    invoke-direct {v5, v4, v7}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    iput-object v5, v0, Lozz;->d:Ljava/lang/String;

    move-object v4, v5

    :cond_22
    const/4 v5, 0x0

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v7, "\\"

    const-string v8, "\\\\"

    invoke-static {v5, v7, v8}, Lolp;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "\n"

    const-string v8, "\\n"

    invoke-static {v5, v7, v8}, Lolp;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "\r"

    const-string v8, "\\r"

    invoke-static {v5, v7, v8}, Lolp;->B(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v6, v4, :cond_23

    iget-object v1, v0, Lozz;->b:[B

    array-length v1, v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " text="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_a

    :cond_23
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[text="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_a
    return-object v1
.end method
