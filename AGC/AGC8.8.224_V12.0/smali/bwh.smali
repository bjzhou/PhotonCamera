.class public final Lbwh;
.super Ljava/lang/Object;

# interfaces
.implements Lbpv;


# static fields
.field static final a:[B

.field private static final b:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "Exif\u0000\u0000"

    const-string v1, "UTF-8"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    sput-object v0, Lbwh;->a:[B

    const/16 v0, 0xd

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lbwh;->b:[I

    return-void

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
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final e(Lbwf;Lbsu;)I
    .locals 9

    const/4 v0, -0x1

    :try_start_0
    invoke-interface {p0}, Lbwf;->a()I

    move-result v1

    const v2, 0xffd8

    and-int v3, v1, v2

    if-eq v3, v2, :cond_1

    const/16 v2, 0x4d4d

    if-eq v1, v2, :cond_1

    const/16 v2, 0x4949

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    return v0

    :cond_1
    :goto_0
    invoke-interface {p0}, Lbwf;->d()S

    move-result v1

    const/16 v2, 0xff

    if-eq v1, v2, :cond_2

    const/4 v2, -0x1

    goto :goto_2

    :cond_2
    invoke-interface {p0}, Lbwf;->d()S

    move-result v1

    const/16 v2, 0xda

    if-ne v1, v2, :cond_3

    :goto_1
    const/4 v2, -0x1

    goto :goto_2

    :cond_3
    const/16 v2, 0xd9

    if-ne v1, v2, :cond_4

    goto :goto_1

    :cond_4
    invoke-interface {p0}, Lbwf;->a()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    const/16 v3, 0xe1

    if-eq v1, v3, :cond_5

    int-to-long v1, v2

    invoke-interface {p0, v1, v2}, Lbwf;->c(J)J

    move-result-wide v3

    cmp-long v5, v3, v1

    if-eqz v5, :cond_1

    const/4 v2, -0x1

    goto :goto_2

    :cond_5
    :goto_2
    if-ne v2, v0, :cond_6

    return v0

    :cond_6
    const-class v1, [B

    invoke-interface {p1, v2, v1}, Lbsu;->a(ILjava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B
    :try_end_0
    .catch Lbwe; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {p0, v1, v2}, Lbwf;->b([BI)I

    move-result p0

    if-eq p0, v2, :cond_7

    const/4 p0, -0x1

    goto/16 :goto_7

    :cond_7
    sget-object p0, Lbwh;->a:[B

    array-length p0, p0

    if-le v2, p0, :cond_c

    const/4 p0, 0x0

    const/4 v3, 0x0

    :goto_3
    sget-object v4, Lbwh;->a:[B

    array-length v5, v4

    if-ge v3, v5, :cond_9

    aget-byte v5, v1, v3

    aget-byte v4, v4, v3

    if-eq v5, v4, :cond_8

    const/4 p0, -0x1

    goto/16 :goto_7

    :cond_8
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_9
    invoke-static {v1}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v2

    check-cast v2, Ljava/nio/ByteBuffer;

    const/4 v3, 0x6

    invoke-static {v3, v2}, Lbze;->d(ILjava/nio/ByteBuffer;)S

    move-result v4

    sparse-switch v4, :sswitch_data_0

    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_4

    :sswitch_0
    sget-object v4, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    goto :goto_4

    :sswitch_1
    sget-object v4, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    :goto_4
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    const/16 v4, 0xa

    invoke-static {v4, v2}, Lbze;->c(ILjava/nio/ByteBuffer;)I

    move-result v4

    add-int/2addr v4, v3

    invoke-static {v4, v2}, Lbze;->d(ILjava/nio/ByteBuffer;)S

    move-result v3

    :goto_5
    if-ge p0, v3, :cond_c

    add-int/lit8 v5, v4, 0x2

    mul-int/lit8 v6, p0, 0xc

    add-int/2addr v5, v6

    invoke-static {v5, v2}, Lbze;->d(ILjava/nio/ByteBuffer;)S

    move-result v6

    const/16 v7, 0x112

    if-eq v6, v7, :cond_a

    goto :goto_6

    :cond_a
    add-int/lit8 v6, v5, 0x2

    invoke-static {v6, v2}, Lbze;->d(ILjava/nio/ByteBuffer;)S

    move-result v6

    if-lez v6, :cond_b

    const/16 v7, 0xc

    if-gt v6, v7, :cond_b

    add-int/lit8 v7, v5, 0x4

    invoke-static {v7, v2}, Lbze;->c(ILjava/nio/ByteBuffer;)I

    move-result v7

    if-ltz v7, :cond_b

    sget-object v8, Lbwh;->b:[I

    aget v6, v8, v6

    add-int/2addr v7, v6

    const/4 v6, 0x4

    if-gt v7, v6, :cond_b

    add-int/lit8 v5, v5, 0x8

    if-ltz v5, :cond_b

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-gt v5, v6, :cond_b

    if-ltz v7, :cond_b

    add-int/2addr v7, v5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v6

    if-gt v7, v6, :cond_b

    invoke-static {v5, v2}, Lbze;->d(ILjava/nio/ByteBuffer;)S

    move-result p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_7

    :cond_b
    :goto_6
    add-int/lit8 p0, p0, 0x1

    goto :goto_5

    :cond_c
    const/4 p0, -0x1

    :goto_7
    :try_start_2
    invoke-interface {p1, v1}, Lbsu;->c(Ljava/lang/Object;)V

    return p0

    :catchall_0
    move-exception p0

    invoke-interface {p1, v1}, Lbsu;->c(Ljava/lang/Object;)V

    throw p0
    :try_end_2
    .catch Lbwe; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    return v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x4949 -> :sswitch_1
        0x4d4d -> :sswitch_0
    .end sparse-switch
.end method

.method private static final f(Lbwf;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 6

    :try_start_0
    invoke-interface {p0}, Lbwf;->a()I

    move-result v0

    const v1, 0xffd8

    if-ne v0, v1, :cond_0

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->JPEG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_0
    shl-int/lit8 v0, v0, 0x8

    invoke-interface {p0}, Lbwf;->d()S

    move-result v1

    or-int/2addr v0, v1

    const v1, 0x474946

    if-ne v0, v1, :cond_1

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->GIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_1
    shl-int/lit8 v0, v0, 0x8

    invoke-interface {p0}, Lbwf;->d()S

    move-result v1

    or-int/2addr v0, v1

    const v1, -0x76afb1b9

    if-ne v0, v1, :cond_3

    const-wide/16 v0, 0x15

    invoke-interface {p0, v0, v1}, Lbwf;->c(J)J
    :try_end_0
    .catch Lbwe; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-interface {p0}, Lbwf;->d()S

    move-result p0

    const/4 v0, 0x3

    if-lt p0, v0, :cond_2

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_0

    :cond_2
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    :try_end_1
    .catch Lbwe; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    return-object p0

    :catch_0
    move-exception p0

    :try_start_2
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->PNG:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_3
    const v1, 0x52494646

    const-wide/16 v2, 0x4

    if-ne v0, v1, :cond_b

    invoke-interface {p0, v2, v3}, Lbwf;->c(J)J

    invoke-interface {p0}, Lbwf;->a()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p0}, Lbwf;->a()I

    move-result v1

    or-int/2addr v0, v1

    const v1, 0x57454250

    if-eq v0, v1, :cond_4

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_4
    invoke-interface {p0}, Lbwf;->a()I

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    invoke-interface {p0}, Lbwf;->a()I

    move-result v1

    or-int/2addr v0, v1

    and-int/lit16 v1, v0, -0x100

    const v4, 0x56503800

    if-eq v1, v4, :cond_5

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_5
    and-int/lit16 v0, v0, 0xff

    const/16 v1, 0x58

    if-ne v0, v1, :cond_8

    invoke-interface {p0, v2, v3}, Lbwf;->c(J)J

    invoke-interface {p0}, Lbwf;->d()S

    move-result p0

    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_6

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->ANIMATED_WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_6
    and-int/lit8 p0, p0, 0x10

    if-eqz p0, :cond_7

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_7
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_8
    const/16 v1, 0x4c

    if-ne v0, v1, :cond_a

    invoke-interface {p0, v2, v3}, Lbwf;->c(J)J

    invoke-interface {p0}, Lbwf;->d()S

    move-result p0

    and-int/lit8 p0, p0, 0x8

    if-eqz p0, :cond_9

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP_A:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_1

    :cond_9
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    :goto_1
    return-object p0

    :cond_a
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->WEBP:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0

    :cond_b
    invoke-interface {p0}, Lbwf;->a()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    invoke-interface {p0}, Lbwf;->a()I

    move-result v4

    or-int/2addr v1, v4

    const v4, 0x66747970

    if-eq v1, v4, :cond_c

    goto :goto_3

    :cond_c
    invoke-interface {p0}, Lbwf;->a()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    invoke-interface {p0}, Lbwf;->a()I

    move-result v4

    or-int/2addr v1, v4

    const v4, 0x61766966

    if-eq v1, v4, :cond_f

    const v5, 0x61766973

    if-ne v1, v5, :cond_d

    goto :goto_4

    :cond_d
    invoke-interface {p0, v2, v3}, Lbwf;->c(J)J

    add-int/lit8 v0, v0, -0x10

    rem-int/lit8 v1, v0, 0x4

    if-nez v1, :cond_e

    const/4 v1, 0x0

    :goto_2
    const/4 v2, 0x5

    if-ge v1, v2, :cond_e

    if-lez v0, :cond_e

    invoke-interface {p0}, Lbwf;->a()I

    move-result v2

    shl-int/lit8 v2, v2, 0x10

    invoke-interface {p0}, Lbwf;->a()I

    move-result v3

    or-int/2addr v2, v3

    if-eq v2, v4, :cond_f

    if-eq v2, v5, :cond_f

    add-int/lit8 v0, v0, -0x4

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_e
    :goto_3
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    goto :goto_5

    :cond_f
    :goto_4
    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->AVIF:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    :try_end_2
    .catch Lbwe; {:try_start_2 .. :try_end_2} :catch_1

    :goto_5
    return-object p0

    :catch_1
    move-exception p0

    sget-object p0, Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;->UNKNOWN:Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    return-object p0
.end method


# virtual methods
.method public final a(Ljava/io/InputStream;Lbsu;)I
    .locals 2

    new-instance v0, Lbwg;

    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lbwg;-><init>(Ljava/io/InputStream;I)V

    invoke-static {p2}, Lbze;->v(Ljava/lang/Object;)V

    invoke-static {v0, p2}, Lbwh;->e(Lbwf;Lbsu;)I

    move-result p1

    return p1
.end method

.method public final b(Ljava/nio/ByteBuffer;Lbsu;)I
    .locals 2

    new-instance v0, Lbwg;

    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lbwg;-><init>(Ljava/nio/ByteBuffer;I)V

    invoke-static {p2}, Lbze;->v(Ljava/lang/Object;)V

    invoke-static {v0, p2}, Lbwh;->e(Lbwf;Lbsu;)I

    move-result p1

    return p1
.end method

.method public final c(Ljava/io/InputStream;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 2

    new-instance v0, Lbwg;

    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lbwg;-><init>(Ljava/io/InputStream;I)V

    invoke-static {v0}, Lbwh;->f(Lbwf;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    return-object p1
.end method

.method public final d(Ljava/nio/ByteBuffer;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;
    .locals 2

    new-instance v0, Lbwg;

    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lbwg;-><init>(Ljava/nio/ByteBuffer;I)V

    invoke-static {v0}, Lbwh;->f(Lbwf;)Lcom/bumptech/glide/load/ImageHeaderParser$ImageType;

    move-result-object p1

    return-object p1
.end method
