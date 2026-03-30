.class public final Lfpp;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lfjf;


# static fields
.field static final a:[B

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x9

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    sput-object v0, Lfpp;->b:[I

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

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

    :goto_3
    const/16 v0, 0xd

    nop

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

    nop

    :goto_4
    add-int v0, v0, v1

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

    :goto_5
    goto/32 :goto_a

    nop

    :goto_6
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_6

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_5

    nop

    :goto_9
    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
    .end array-data

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sput-object v0, Lfpp;->a:[B

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1c

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

    :goto_d
    const-string v1, "UTF-8"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_e
    const-string v0, "Exif\u0000\u0000"

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_f
    new-array v0, v0, [I

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static final e(Lfpn;Lfmm;)I
    .locals 9

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    add-int/lit8 p0, p0, 0x1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x11

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    goto :goto_9

    nop

    nop

    :cond_0
    :goto_6
    goto/32 :goto_1

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_16

    nop

    :cond_1
    goto/32 :goto_15

    nop

    :goto_8
    goto/16 :goto_14

    nop

    nop

    nop

    :goto_9
    :try_start_0
    invoke-virtual {p1, v1}, Lfmm;->c(Ljava/lang/Object;)V

    return p0

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    invoke-virtual {p1, v1}, Lfmm;->c(Ljava/lang/Object;)V

    throw p0

    nop

    nop
    :try_end_0
    .catch Lfpm; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    return v0

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x11

    nop

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

    :goto_d
    const/4 v0, -0x1

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-interface {p0}, Lfpn;->a()I

    move-result v1

    nop

    nop

    nop

    nop

    const v2, 0xffd8

    nop

    nop

    nop

    nop

    and-int v3, v1, v2

    nop

    const/16 v4, 0x4949

    nop

    nop

    nop

    nop

    const/16 v5, 0x4d4d

    nop

    nop

    nop

    nop

    nop

    if-eq v3, v2, :cond_3

    nop

    if-eq v1, v5, :cond_3

    nop

    nop

    nop

    nop

    nop

    if-ne v1, v4, :cond_2

    nop

    goto :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_2
    return v0

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_e
    invoke-interface {p0}, Lfpn;->d()S

    move-result v1

    nop

    nop

    nop

    nop

    const/16 v2, 0xff

    nop

    if-eq v1, v2, :cond_4

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move v2, v0

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_4
    invoke-interface {p0}, Lfpn;->d()S

    move-result v1

    nop

    const/16 v2, 0xda

    nop

    if-ne v1, v2, :cond_5

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    :cond_5
    const/16 v2, 0xd9

    nop

    nop

    nop

    nop

    if-ne v1, v2, :cond_6

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    nop

    :cond_6
    invoke-interface {p0}, Lfpn;->a()I

    move-result v2

    nop

    add-int/lit8 v2, v2, -0x2

    nop

    nop

    const/16 v3, 0xe1

    nop

    nop

    if-eq v1, v3, :cond_7

    nop

    nop

    nop

    nop

    int-to-long v1, v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v1, v2}, Lfpn;->c(J)J

    move-result-wide v6

    nop

    nop

    cmp-long v1, v6, v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    goto :goto_f

    nop

    nop

    :cond_7
    :goto_10
    if-ne v2, v0, :cond_8

    nop

    nop

    nop

    return v0

    nop

    nop

    nop

    :cond_8
    const-class v1, [B

    nop

    nop

    nop

    invoke-virtual {p1, v2, v1}, Lfmm;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    check-cast v1, [B

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Lfpm; {:try_start_1 .. :try_end_1} :catch_0

    :try_start_2
    invoke-interface {p0, v1, v2}, Lfpn;->b([BI)I

    move-result p0

    nop

    if-eq p0, v2, :cond_a

    nop

    nop

    :cond_9
    :goto_11
    move p0, v0

    nop

    nop

    nop

    goto/16 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_a
    sget-object p0, Lfpp;->a:[B

    nop

    nop

    nop

    nop

    nop

    array-length p0, p0

    nop

    if-le v2, p0, :cond_9

    nop

    nop

    nop

    const/4 p0, 0x0

    nop

    nop

    nop

    nop

    move v3, p0

    nop

    nop

    nop

    nop

    :goto_12
    sget-object v6, Lfpp;->a:[B

    nop

    nop

    array-length v7, v6

    nop

    nop

    nop

    nop

    if-ge v3, v7, :cond_c

    nop

    aget-byte v7, v1, v3

    nop

    nop

    nop

    nop

    nop

    aget-byte v6, v6, v3

    nop

    nop

    nop

    if-eq v7, v6, :cond_b

    nop

    goto :goto_11

    nop

    :cond_b
    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_12

    nop

    nop

    nop

    :cond_c
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    nop

    nop

    invoke-virtual {v3, v6}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    nop

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    const/4 v3, 0x6

    nop

    invoke-static {v3, v2}, Lfsh;->c(ILjava/nio/ByteBuffer;)S

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eq v3, v4, :cond_e

    nop

    nop

    if-eq v3, v5, :cond_d

    nop

    nop

    nop

    nop

    nop

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    :cond_d
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_e
    sget-object v3, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v3, 0xa

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3, v2}, Lfsh;->b(ILjava/nio/ByteBuffer;)I

    move-result v3

    nop

    nop

    nop

    add-int/lit8 v4, v3, 0x6

    nop

    nop

    invoke-static {v4, v2}, Lfsh;->c(ILjava/nio/ByteBuffer;)S

    move-result v4

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-ge p0, v4, :cond_9

    nop

    nop

    nop

    add-int/lit8 v5, v3, 0x8

    nop

    nop

    nop

    mul-int/lit8 v6, p0, 0xc

    nop

    add-int/2addr v5, v6

    nop

    nop

    nop

    invoke-static {v5, v2}, Lfsh;->c(ILjava/nio/ByteBuffer;)S

    move-result v6

    nop

    nop

    nop

    const/16 v7, 0x112

    nop

    nop

    if-eq v6, v7, :cond_f

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_f
    add-int/lit8 v6, v5, 0x2

    nop

    invoke-static {v6, v2}, Lfsh;->c(ILjava/nio/ByteBuffer;)S

    move-result v6

    nop

    nop

    nop

    nop

    if-lez v6, :cond_0

    nop

    const/16 v7, 0xc

    nop

    nop

    nop

    if-gt v6, v7, :cond_0

    nop

    nop

    nop

    add-int/lit8 v7, v5, 0x4

    nop

    nop

    nop

    invoke-static {v7, v2}, Lfsh;->b(ILjava/nio/ByteBuffer;)I

    move-result v7

    nop

    nop

    nop

    if-ltz v7, :cond_0

    nop

    nop

    nop

    sget-object v8, Lfpp;->b:[I

    nop

    aget v6, v8, v6

    nop

    nop

    nop

    nop

    add-int/2addr v7, v6

    nop

    nop

    const/4 v6, 0x4

    nop

    nop

    if-gt v7, v6, :cond_0

    nop

    nop

    nop

    add-int/lit8 v5, v5, 0x8

    nop

    if-ltz v5, :cond_0

    nop

    nop

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    nop

    if-gt v5, v6, :cond_0

    nop

    nop

    nop

    nop

    if-ltz v7, :cond_0

    nop

    nop

    nop

    add-int/2addr v7, v5

    nop

    nop

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    nop

    if-gt v7, v6, :cond_0

    nop

    nop

    invoke-static {v5, v2}, Lfsh;->c(ILjava/nio/ByteBuffer;)S

    move-result p0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_b

    nop

    :goto_16
    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method private static final f(Lfpn;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 9

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    :try_start_0
    invoke-interface {p0}, Lfpn;->a()I

    move-result v0

    nop

    nop

    const v1, 0xffd8

    nop

    nop

    nop

    if-ne v0, v1, :cond_0

    nop

    nop

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    :cond_0
    shl-int/lit8 v0, v0, 0x8

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lfpn;->d()S

    move-result v1

    nop

    nop

    or-int/2addr v0, v1

    nop

    const v1, 0x474946

    nop

    if-ne v0, v1, :cond_1

    nop

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    :cond_1
    shl-int/lit8 v0, v0, 0x8

    nop

    nop

    nop

    invoke-interface {p0}, Lfpn;->d()S

    move-result v1

    nop

    nop

    or-int/2addr v0, v1

    nop

    nop

    const v1, -0x76afb1b9

    nop

    nop

    nop

    nop

    nop

    if-ne v0, v1, :cond_3

    nop

    nop

    nop

    const-wide/16 v0, 0x15

    nop

    invoke-interface {p0, v0, v1}, Lfpn;->c(J)J
    :try_end_0
    .catch Lfpm; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p0}, Lfpn;->d()S

    move-result p0

    nop

    nop

    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    nop

    if-lt p0, v0, :cond_2

    nop

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :cond_2
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    nop
    :try_end_1
    .catch Lfpm; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    goto/16 :goto_6

    nop

    :catch_0
    :try_start_2
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_3
    const v1, 0x52494646

    nop

    const-wide/16 v2, 0x4

    nop

    nop

    nop

    nop

    if-ne v0, v1, :cond_b

    nop

    nop

    nop

    nop

    invoke-interface {p0, v2, v3}, Lfpn;->c(J)J

    invoke-interface {p0}, Lfpn;->a()I

    move-result v0

    nop

    nop

    nop

    shl-int/lit8 v0, v0, 0x10

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lfpn;->a()I

    move-result v1

    nop

    nop

    or-int/2addr v0, v1

    nop

    nop

    nop

    const v1, 0x57454250

    nop

    nop

    nop

    if-eq v0, v1, :cond_4

    nop

    nop

    nop

    nop

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :cond_4
    invoke-interface {p0}, Lfpn;->a()I

    move-result v0

    nop

    nop

    shl-int/lit8 v0, v0, 0x10

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lfpn;->a()I

    move-result v1

    nop

    nop

    or-int/2addr v0, v1

    nop

    nop

    and-int/lit16 v1, v0, -0x100

    nop

    nop

    nop

    nop

    const v4, 0x56503800

    nop

    nop

    nop

    if-eq v1, v4, :cond_5

    nop

    nop

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_5
    and-int/lit16 v0, v0, 0xff

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0x58

    nop

    nop

    nop

    nop

    if-ne v0, v1, :cond_8

    nop

    invoke-interface {p0, v2, v3}, Lfpn;->c(J)J

    invoke-interface {p0}, Lfpn;->d()S

    move-result p0

    nop

    nop

    nop

    nop

    nop

    and-int/lit8 v0, p0, 0x2

    nop

    nop

    nop

    if-eqz v0, :cond_6

    nop

    nop

    nop

    nop

    nop

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    :cond_6
    and-int/lit8 p0, p0, 0x10

    nop

    nop

    if-eqz p0, :cond_7

    nop

    nop

    nop

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :cond_7
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    goto/16 :goto_6

    nop

    :cond_8
    const/16 v1, 0x4c

    nop

    nop

    nop

    if-ne v0, v1, :cond_a

    nop

    nop

    invoke-interface {p0, v2, v3}, Lfpn;->c(J)J

    invoke-interface {p0}, Lfpn;->d()S

    move-result p0

    nop

    nop

    and-int/lit8 p0, p0, 0x8

    nop

    nop

    nop

    if-eqz p0, :cond_9

    nop

    nop

    nop

    nop

    nop

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    goto/16 :goto_6

    nop

    nop

    :cond_9
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    :cond_a
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    :cond_b
    invoke-interface {p0}, Lfpn;->a()I

    move-result v1

    nop

    shl-int/lit8 v1, v1, 0x10

    nop

    nop

    invoke-interface {p0}, Lfpn;->a()I

    move-result v4

    nop

    or-int/2addr v1, v4

    nop

    nop

    nop

    nop

    const v4, 0x66747970

    nop

    nop

    nop

    nop

    nop

    if-eq v1, v4, :cond_c

    nop

    nop

    nop

    nop

    nop

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_c
    invoke-interface {p0}, Lfpn;->a()I

    move-result v1

    nop

    nop

    nop

    nop

    shl-int/lit8 v1, v1, 0x10

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lfpn;->a()I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    or-int/2addr v1, v4

    nop

    nop

    nop

    const v4, 0x61766973

    nop

    nop

    nop

    if-ne v1, v4, :cond_d

    nop

    nop

    nop

    nop

    nop

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_6

    nop

    nop

    nop

    nop

    :cond_d
    const v5, 0x61766966

    nop

    nop

    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    const/4 v7, 0x1

    nop

    nop

    nop

    nop

    if-ne v1, v5, :cond_e

    nop

    move v1, v7

    nop

    nop

    nop

    nop

    nop

    goto :goto_3

    nop

    nop

    :cond_e
    move v1, v6

    nop

    nop

    :goto_3
    invoke-interface {p0, v2, v3}, Lfpn;->c(J)J

    add-int/lit8 v0, v0, -0x10

    nop

    rem-int/lit8 v2, v0, 0x4

    nop

    nop

    if-nez v2, :cond_11

    nop

    nop

    nop

    nop

    nop

    move v2, v6

    nop

    nop

    nop

    :goto_4
    const/4 v3, 0x5

    nop

    if-ge v2, v3, :cond_11

    nop

    nop

    nop

    if-lez v0, :cond_11

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0}, Lfpn;->a()I

    move-result v3

    nop

    shl-int/lit8 v3, v3, 0x10

    nop

    invoke-interface {p0}, Lfpn;->a()I

    move-result v8

    nop

    or-int/2addr v3, v8

    nop

    if-ne v3, v4, :cond_f

    nop

    nop

    nop

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    nop

    :cond_f
    if-ne v3, v5, :cond_10

    nop

    move v3, v6

    nop

    nop

    goto :goto_5

    nop

    nop

    nop

    nop

    :cond_10
    move v3, v7

    nop

    nop

    nop

    nop

    :goto_5
    xor-int/2addr v3, v7

    nop

    nop

    nop

    or-int/2addr v1, v3

    nop

    nop

    add-int/lit8 v0, v0, -0x4

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_11
    if-eqz v1, :cond_12

    nop

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    nop

    goto :goto_6

    nop

    nop

    nop

    :cond_12
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Lfpm; {:try_start_2 .. :try_end_2} :catch_1

    :goto_6
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop

    :catch_1
    goto/32 :goto_b

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_9
    const v0, 0x1a

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_c
    return-object p0

    nop

    :goto_d
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x8

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_10
    if-lez v0, :cond_13

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

    :cond_13
    goto/32 :goto_0

    nop
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-object p0

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0, p1, v0}, Lfpo;-><init>(Ljava/io/InputStream;I)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Lfpo;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1}, Lfsh;->r(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p0}, Lfpp;->f(Lfpn;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method public final b(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_0
    invoke-static {p0}, Lfpp;->f(Lfpn;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p0

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

    :goto_1
    invoke-direct {p0, p1, v0}, Lfpo;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_4
    new-instance p0, Lfpo;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    invoke-static {p1}, Lfsh;->r(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final c(Ljava/io/InputStream;Lfmm;)I
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v0}, Lfpo;-><init>(Ljava/io/InputStream;I)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    :goto_3
    new-instance p0, Lfpo;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, p2}, Lfpp;->e(Lfpn;Lfmm;)I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_5
    invoke-static {p1}, Lfsh;->r(Ljava/lang/Object;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-static {p2}, Lfsh;->r(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final d(Ljava/nio/ByteBuffer;Lfmm;)I
    .locals 1

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    invoke-static {p1}, Lfsh;->r(Ljava/lang/Object;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return p0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p2}, Lfsh;->r(Ljava/lang/Object;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-static {p0, p2}, Lfpp;->e(Lfpn;Lfmm;)I

    move-result p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_5
    invoke-direct {p0, p1, v0}, Lfpo;-><init>(Ljava/nio/ByteBuffer;I)V

    goto/32 :goto_2

    nop

    nop

    :goto_6
    new-instance p0, Lfpo;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method
