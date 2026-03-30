.class public Lj$/util/Base64$Decoder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj$/util/Base64;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Decoder"
.end annotation


# static fields
.field private static final a:[I

.field private static final b:[I

.field static final c:Lj$/util/Base64$Decoder;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/16 v0, 0x100

    new-array v1, v0, [I

    sput-object v1, Lj$/util/Base64$Decoder;->a:[I

    const/4 v2, -0x1

    invoke-static {v1, v2}, Ljava/util/Arrays;->fill([II)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_0
    const/16 v4, 0x40

    if-ge v3, v4, :cond_0

    sget-object v4, Lj$/util/Base64$Decoder;->a:[I

    invoke-static {}, Lj$/util/b;->h()[C

    move-result-object v5

    aget-char v5, v5, v3

    aput v3, v4, v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sget-object v3, Lj$/util/Base64$Decoder;->a:[I

    const/16 v5, 0x3d

    const/4 v6, -0x2

    aput v6, v3, v5

    new-array v0, v0, [I

    sput-object v0, Lj$/util/Base64$Decoder;->b:[I

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    :goto_1
    if-ge v1, v4, :cond_1

    sget-object v0, Lj$/util/Base64$Decoder;->b:[I

    invoke-static {}, Lj$/util/b;->i()[C

    move-result-object v2

    aget-char v2, v2, v1

    aput v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    sget-object v0, Lj$/util/Base64$Decoder;->b:[I

    aput v6, v0, v5

    new-instance v0, Lj$/util/Base64$Decoder;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lj$/util/Base64$Decoder;->c:Lj$/util/Base64$Decoder;

    return-void
.end method


# virtual methods
.method public decode(Ljava/lang/String;)[B
    .locals 18

    sget-object v0, Lj$/sun/nio/cs/c;->a:Lj$/sun/nio/cs/c;

    move-object/from16 v1, p1

    invoke-virtual {v1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    sget-object v2, Lj$/util/Base64$Decoder;->a:[I

    const/4 v3, 0x2

    const/16 v4, 0x3d

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :cond_0
    if-lt v1, v3, :cond_12

    add-int/lit8 v6, v1, -0x1

    aget-byte v6, v0, v6

    if-ne v6, v4, :cond_2

    add-int/lit8 v6, v1, -0x2

    aget-byte v6, v0, v6

    if-ne v6, v4, :cond_1

    const/4 v6, 0x2

    goto :goto_0

    :cond_1
    const/4 v6, 0x1

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    :goto_0
    if-nez v6, :cond_3

    and-int/lit8 v7, v1, 0x3

    if-eqz v7, :cond_3

    rsub-int/lit8 v6, v7, 0x4

    :cond_3
    add-int/lit8 v1, v1, 0x3

    div-int/lit8 v1, v1, 0x4

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v1, v6

    :goto_1
    new-array v6, v1, [B

    array-length v7, v0

    const/16 v8, 0x12

    const/4 v9, 0x0

    const/16 v10, 0x12

    const/4 v11, 0x0

    const/4 v12, 0x0

    :goto_2
    const/4 v13, 0x6

    if-ge v9, v7, :cond_c

    if-ne v10, v8, :cond_6

    add-int/lit8 v15, v9, 0x4

    if-ge v15, v7, :cond_6

    sub-int v15, v7, v9

    and-int/lit8 v15, v15, -0x4

    add-int/2addr v15, v9

    :goto_3
    if-ge v9, v15, :cond_5

    add-int/lit8 v16, v9, 0x1

    aget-byte v5, v0, v9

    and-int/lit16 v5, v5, 0xff

    aget v5, v2, v5

    add-int/lit8 v17, v9, 0x2

    aget-byte v14, v0, v16

    and-int/lit16 v14, v14, 0xff

    aget v14, v2, v14

    add-int/lit8 v16, v9, 0x3

    aget-byte v8, v0, v17

    and-int/lit16 v8, v8, 0xff

    aget v8, v2, v8

    add-int/lit8 v17, v9, 0x4

    aget-byte v4, v0, v16

    and-int/lit16 v4, v4, 0xff

    aget v4, v2, v4

    or-int v16, v5, v14

    or-int v16, v16, v8

    or-int v16, v16, v4

    if-gez v16, :cond_4

    goto :goto_4

    :cond_4
    shl-int/lit8 v5, v5, 0x12

    shl-int/lit8 v9, v14, 0xc

    or-int/2addr v5, v9

    shl-int/lit8 v8, v8, 0x6

    or-int/2addr v5, v8

    or-int/2addr v4, v5

    add-int/lit8 v5, v11, 0x1

    shr-int/lit8 v8, v4, 0x10

    int-to-byte v8, v8

    aput-byte v8, v6, v11

    add-int/lit8 v8, v11, 0x2

    shr-int/lit8 v9, v4, 0x8

    int-to-byte v9, v9

    aput-byte v9, v6, v5

    add-int/lit8 v11, v11, 0x3

    int-to-byte v4, v4

    aput-byte v4, v6, v8

    move/from16 v9, v17

    const/16 v4, 0x3d

    const/16 v8, 0x12

    goto :goto_3

    :cond_5
    :goto_4
    if-lt v9, v7, :cond_6

    goto/16 :goto_8

    :cond_6
    add-int/lit8 v4, v9, 0x1

    aget-byte v5, v0, v9

    and-int/lit16 v5, v5, 0xff

    aget v5, v2, v5

    if-gez v5, :cond_a

    const/4 v2, -0x2

    if-ne v5, v2, :cond_9

    if-ne v10, v13, :cond_7

    if-eq v4, v7, :cond_8

    add-int/2addr v9, v3

    aget-byte v0, v0, v4

    const/16 v8, 0x3d

    if-ne v0, v8, :cond_8

    :goto_5
    const/16 v14, 0x12

    goto :goto_6

    :cond_7
    move v9, v4

    goto :goto_5

    :goto_6
    if-eq v10, v14, :cond_8

    goto :goto_8

    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input byte array has wrong 4-byte ending unit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9
    new-instance v1, Ljava/lang/IllegalArgumentException;

    aget-byte v0, v0, v9

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Illegal base64 character "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    const/16 v8, 0x3d

    const/16 v14, 0x12

    shl-int/2addr v5, v10

    or-int/2addr v5, v12

    add-int/lit8 v10, v10, -0x6

    if-gez v10, :cond_b

    add-int/lit8 v9, v11, 0x1

    shr-int/lit8 v10, v5, 0x10

    int-to-byte v10, v10

    aput-byte v10, v6, v11

    add-int/lit8 v10, v11, 0x2

    shr-int/lit8 v12, v5, 0x8

    int-to-byte v12, v12

    aput-byte v12, v6, v9

    add-int/lit8 v11, v11, 0x3

    int-to-byte v5, v5

    aput-byte v5, v6, v10

    const/16 v10, 0x12

    const/4 v12, 0x0

    goto :goto_7

    :cond_b
    move v12, v5

    :goto_7
    move v9, v4

    const/16 v4, 0x3d

    const/16 v8, 0x12

    goto/16 :goto_2

    :cond_c
    :goto_8
    if-ne v10, v13, :cond_d

    add-int/lit8 v0, v11, 0x1

    const/16 v2, 0x10

    shr-int/lit8 v2, v12, 0x10

    int-to-byte v2, v2

    aput-byte v2, v6, v11

    move v11, v0

    goto :goto_9

    :cond_d
    if-nez v10, :cond_e

    add-int/lit8 v0, v11, 0x1

    shr-int/lit8 v2, v12, 0x10

    int-to-byte v2, v2

    aput-byte v2, v6, v11

    add-int/lit8 v11, v11, 0x2

    shr-int/lit8 v2, v12, 0x8

    int-to-byte v2, v2

    aput-byte v2, v6, v0

    goto :goto_9

    :cond_e
    const/16 v0, 0xc

    if-eq v10, v0, :cond_11

    :goto_9
    if-lt v9, v7, :cond_10

    if-eq v11, v1, :cond_f

    invoke-static {v6, v11}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v6

    :cond_f
    return-object v6

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Input byte array has incorrect ending byte at "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Last unit does not have enough valid bits"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_12
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Input byte[] should at least have 2 bytes for base64 bytes"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
