.class public final Ldzi;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final A:[Ljava/util/HashMap;

.field private static final B:[Ljava/util/HashMap;

.field private static final C:Ljava/util/Set;

.field private static final D:Ljava/util/HashMap;

.field private static final E:[B

.field private static final P:[Lroz;

.field private static final Q:[Lroz;

.field private static final R:[Lroz;

.field private static final S:[Lroz;

.field private static final T:[Lroz;

.field private static final U:Lroz;

.field private static final V:[Lroz;

.field private static final W:[Lroz;

.field private static final X:[Lroz;

.field private static final Y:[Lroz;

.field private static final Z:[Lroz;

.field public static final a:[I

.field public static final b:[I

.field static final c:[B

.field static final d:[Ljava/lang/String;

.field static final e:[I

.field static final f:[B

.field static final g:Ljava/nio/charset/Charset;

.field static final h:[B

.field static final j:[[Lroz;

.field private static final k:[B

.field private static final l:[B

.field private static final m:[B

.field private static final n:[B

.field private static final o:[B

.field private static final p:[B

.field private static final q:[B

.field private static final r:[B

.field private static final s:I

.field private static final t:I

.field private static final u:I

.field private static final v:[B

.field private static final w:[B

.field private static final x:[B

.field private static y:Ljava/text/SimpleDateFormat;

.field private static z:Ljava/text/SimpleDateFormat;


# instance fields
.field private final F:Ljava/io/FileDescriptor;

.field private final G:Landroid/content/res/AssetManager$AssetInputStream;

.field private H:I

.field private final I:[Ljava/util/HashMap;

.field private final J:Ljava/util/Set;

.field private K:Z

.field private L:I

.field private M:I

.field private N:I

.field private O:I

.field public i:Ljava/nio/ByteOrder;


# direct methods
.method private final 132cd3b981019b59dc42653eea0b34b4m(Ljava/util/HashMap;)Z
    .locals 2

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_0
    if-le v0, p1, :cond_0

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_0
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-virtual {v0, v1}, Ldzg;->a(Ljava/nio/ByteOrder;)I

    move-result v0

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_4
    const/16 p1, 0x200

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    goto/32 :goto_14

    nop

    nop

    :goto_6
    invoke-virtual {p1, p0}, Ldzg;->a(Ljava/nio/ByteOrder;)I

    move-result p0

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

    :goto_7
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

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

    :goto_8
    check-cast p1, Ldzg;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    :goto_a
    const v1, 0x6

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    return p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    return p0

    nop

    nop

    :goto_e
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_f
    const/4 p0, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_10
    iget-object p0, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-nez p1, :cond_2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    nop

    :goto_12
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const-string v1, "ImageWidth"

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_16
    const-string v0, "ImageLength"

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

    nop

    :goto_17
    iget-object v1, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-le p0, p1, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_f

    nop

    nop

    :goto_19
    const/4 p0, 0x0

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

    nop

    :goto_1a
    rem-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_1b
    const v0, 0x10

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1c
    check-cast v0, Ldzg;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 1478a1c7833aac5e360e0ba4b0c0c568m(Ldzf;Ljava/util/HashMap;)V
    .locals 3

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_0
    if-eqz p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "JPEGInterchangeFormat"

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2
    new-array p0, p2, [B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, v1}, Ldzg;->a(Ljava/nio/ByteOrder;)I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_6
    add-int/2addr v0, v1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_9
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    :goto_a
    if-gtz p2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_c
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-nez p2, :cond_4

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_15

    nop

    nop

    :goto_f
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    check-cast v0, Ldzg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-gtz v0, :cond_5

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p2, v1}, Ldzg;->a(Ljava/nio/ByteOrder;)I

    move-result p2

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_13
    const-string v1, "JPEGInterchangeFormatLength"

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    :goto_15
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_16
    iget-object v1, p0, Ldzi;->G:Landroid/content/res/AssetManager$AssetInputStream;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_17
    const/4 v2, 0x7

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_18
    const v0, 0x3

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const v1, 0x1e

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

    :goto_1a
    check-cast p2, Ldzg;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v1, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_1c
    goto/32 :goto_f

    nop

    nop

    :goto_1d
    invoke-virtual {p1, v0}, Ldzf;->b(I)V

    goto/32 :goto_21

    nop

    nop

    :goto_1e
    iget v1, p0, Ldzi;->M:I

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lez v0, :cond_6

    nop

    goto/32 :goto_f

    nop

    :cond_6
    goto/32 :goto_e

    nop

    :goto_20
    iget v1, p0, Ldzi;->H:I

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_21
    invoke-virtual {p1, p0}, Ldzf;->readFully([B)V

    :goto_22
    goto/32 :goto_14

    nop

    nop

    :goto_23
    iget-object p0, p0, Ldzi;->F:Ljava/io/FileDescriptor;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_24
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    if-eq v1, v2, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_7
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 19e596a3e324281407eb5c11093c0152m(Ldzf;)V
    .locals 6

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p1, v0}, Ldzf;->b(I)V

    goto/32 :goto_8

    nop

    nop

    :goto_1
    invoke-virtual {p1}, Ldzf;->readInt()I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_2
    const-string v0, "Encountered corrupt WebP file."

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_5
    new-instance p1, Ljava/io/IOException;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    sget-object v0, Ldzi;->v:[B

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    :goto_8
    array-length v2, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_9
    sget-object v0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object v0, p1, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_b
    add-int/lit8 v1, v1, 0x8

    nop

    goto/32 :goto_17

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

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x1f

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_f
    array-length v3, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_10
    const v1, 0xc

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

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

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, v0}, Ldzf;->b(I)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    const/16 v2, 0xc

    nop

    nop

    nop

    nop

    :goto_16
    :try_start_0
    new-array v3, v0, [B

    nop

    invoke-virtual {p1, v3}, Ldzf;->readFully([B)V

    invoke-virtual {p1}, Ldzf;->readInt()I

    move-result v4

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v2, 0x8

    nop

    nop

    nop

    sget-object v5, Ldzi;->x:[B

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v3

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_2

    nop

    nop

    new-array v0, v4, [B

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Ldzf;->readFully([B)V

    sget-object p1, Ldzi;->h:[B

    nop

    nop

    invoke-static {v0, p1}, Ldwq;->d([B[B)Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    array-length p1, p1

    nop

    nop

    nop

    sub-int/2addr v4, p1

    nop

    nop

    nop

    nop

    invoke-static {v0, p1, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v0

    nop

    nop

    :cond_1
    iput v2, p0, Ldzi;->L:I

    nop

    nop

    nop

    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    invoke-direct {p0, v0, p1}, Ldzi;->b1051a9d8893542362ad09051775f8f6m([BI)V

    new-instance p1, Ldzf;

    nop

    nop

    nop

    invoke-direct {p1, v0}, Ldzf;-><init>([B)V

    invoke-direct {p0, p1}, Ldzi;->ccb4c19b7dbd16be9d2a43125797659dm(Ldzf;)V

    return-void

    nop

    nop

    nop

    :cond_2
    rem-int/lit8 v3, v4, 0x2

    nop

    const/4 v5, 0x1

    nop

    nop

    if-ne v3, v5, :cond_3

    nop

    nop

    nop

    nop

    add-int/lit8 v4, v4, 0x1

    nop

    nop

    :cond_3
    add-int/2addr v2, v4

    nop

    nop

    nop

    nop

    nop

    if-ne v2, v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    :cond_4
    if-gt v2, v1, :cond_5

    nop

    nop

    nop

    invoke-virtual {p1, v4}, Ldzf;->b(I)V

    goto/16 :goto_16

    nop

    nop

    nop

    :cond_5
    new-instance p0, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    const-string p1, "Encountered WebP file with invalid chunk size"

    nop

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p0

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    sget-object v2, Ldzi;->w:[B

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

    :goto_18
    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v0, 0x4

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1a
    array-length v0, v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop
.end method

.method private final 1a36313b7ed15ba14e0acb4da569b8b7m(ILjava/lang/String;Ljava/lang/String;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_0
    aget-object v0, v0, p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_1
    aget-object v0, v0, p1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_11

    nop

    :goto_3
    if-nez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_5
    aget-object p0, p0, p1

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

    :goto_6
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

    :goto_7
    iget-object v0, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v0, p3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x18

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_e
    aget-object v0, v0, p1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {p0, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_10
    goto/32 :goto_15

    nop

    nop

    :goto_11
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_13
    check-cast v1, Ldzg;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    add-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    return-void

    nop

    nop

    :goto_16
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v0, p0, Ldzi;->I:[Ljava/util/HashMap;

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

    :goto_18
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_2
    goto/32 :goto_7

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

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
.end method

.method private final 23ce148e54b083367f51e25c7971761em()V
    .locals 6

    goto/32 :goto_38

    nop

    nop

    :goto_0
    iget-object v2, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {p0, v0}, Ldzi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v3, v4, v2}, Ldzg;->c(JLjava/nio/ByteOrder;)Ldzg;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_3
    if-eqz v3, :cond_0

    nop

    goto/32 :goto_2d

    nop

    nop

    :cond_0
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v0}, Ldzi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_5
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v5, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aget-object v2, v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_a
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-static {v3, v4, v5}, Ldzg;->c(JLjava/nio/ByteOrder;)Ldzg;

    move-result-object v5

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_f
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    const-string v0, "DateTimeOriginal"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_11
    const-wide/16 v3, 0x0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const-string v0, "Orientation"

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v0, "ImageWidth"

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p0, v0}, Ldzi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_16
    if-nez v0, :cond_1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v2, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_18
    invoke-static {v0}, Ldzg;->b(Ljava/lang/String;)Ldzg;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v1, :cond_2

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-virtual {v2, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1b
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-static {v3, v4, v5}, Ldzg;->c(JLjava/nio/ByteOrder;)Ldzg;

    move-result-object v5

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1d
    aget-object v3, v3, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_1e
    const v1, 0xc

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_d

    nop

    nop

    :goto_20
    const/4 v1, 0x0

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v5, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    aget-object v1, v1, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    iget-object v2, p0, Ldzi;->i:Ljava/nio/ByteOrder;

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

    :goto_24
    iget-object p0, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_25
    iget-object v2, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_26
    invoke-virtual {p0, v0}, Ldzi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_27
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_28
    aget-object v2, v2, v1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_29
    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v2, :cond_4

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {p0, v2}, Ldzi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2c
    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2d
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v0, "LightSource"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    if-lez v0, :cond_5

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_c

    nop

    :goto_30
    aget-object v1, v2, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_31
    invoke-static {v3, v4, p0}, Ldzg;->c(JLjava/nio/ByteOrder;)Ldzg;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_32
    iget-object v3, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_33
    if-eqz v2, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_25

    nop

    nop

    :goto_34
    const-string v0, "ImageLength"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_35
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_36
    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_37
    invoke-virtual {p0, v0}, Ldzi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_38
    const v0, 0x7

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_39
    iget-object v1, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_3a
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v2, "DateTime"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 33b3102b6558811a7b7629a1e8e59bd2m(Ldzf;)V
    .locals 2

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object v0, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    :goto_2
    goto/32 :goto_28

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_4
    if-gtz p0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_0
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_5
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-object v0, p1, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    invoke-static {p1}, Ldzi;->w(Ldzf;)Ljava/nio/ByteOrder;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    :goto_e
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_10
    invoke-static {p0, v0}, La;->bi(ILjava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x7

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_13
    invoke-direct {p1, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_14
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Ldzf;->readUnsignedShort()I

    move-result v0

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    invoke-virtual {p1, p0}, Ldzf;->b(I)V

    :goto_17
    goto/32 :goto_1

    nop

    nop

    :goto_18
    const-string v0, "Invalid first Ifd offset: "

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-eq v0, p0, :cond_1

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_1b
    new-instance p0, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1c
    if-ge p0, v0, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_23

    nop

    nop

    :goto_1d
    const-string v0, "Invalid start code: "

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_1e
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    goto/32 :goto_3

    nop

    nop

    :goto_20
    iget p0, p0, Ldzi;->H:I

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_21
    if-ne p0, v1, :cond_3

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1}, Ldzf;->readInt()I

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_23
    add-int/lit8 p0, p0, -0x8

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_24
    if-ne p0, v1, :cond_4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_25
    goto/16 :goto_e

    nop

    :goto_26
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_27
    const/16 p0, 0x2a

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_28
    new-instance p1, Ljava/io/IOException;

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_29
    const/16 v0, 0x8

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_2a
    const v1, 0x12

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_2b
    if-lez v0, :cond_5

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_5
    goto/32 :goto_b

    nop
.end method

.method private final 3fd9578e124c68aa49885b22b61b4ec8m(Ljava/io/InputStream;)V
    .locals 17

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v13, 0x5352

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_35

    nop

    :goto_2
    invoke-direct/range {p0 .. p0}, Ldzi;->23ce148e54b083367f51e25c7971761em()V

    goto/32 :goto_7

    nop

    nop

    :goto_3
    const-string v7, "ImageLength"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-ne v8, v6, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :cond_1
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_36

    nop

    nop

    nop

    :goto_6
    const v0, 0x15

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    nop

    nop

    :catch_0
    :cond_2
    :goto_8
    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto :goto_8

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    const-string v0, "Xmp"

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 v13, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v13, 0x4f52

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto :goto_11

    nop

    nop

    nop

    nop

    nop

    :catch_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    const-string v4, "Failed to read EXIF from HEIF file. Given stream is either malformed or unsupported."

    nop

    nop

    nop

    invoke-direct {v3, v4, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :goto_11
    :try_start_1
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_2
    :try_start_2
    throw v0

    nop

    nop

    nop

    :goto_12
    new-instance v0, Ldzf;

    nop

    nop

    nop

    nop

    invoke-direct {v0, v5}, Ldzf;-><init>(Ljava/io/InputStream;)V

    iget v2, v1, Ldzi;->H:I

    nop

    if-ne v2, v6, :cond_3

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    invoke-direct {v1, v0, v3, v3}, Ldzi;->7ecc92917e9c4556cc19f457ddc41af8m(Ldzf;II)V

    goto/16 :goto_8

    nop

    :cond_3
    if-ne v2, v11, :cond_4

    nop

    nop

    invoke-direct {v1, v0}, Ldzi;->d5484163cd8d335e6b17663474ff5f2bm(Ldzf;)V

    goto/16 :goto_8

    nop

    nop

    nop

    nop

    :cond_4
    if-ne v2, v12, :cond_6

    nop

    nop

    nop

    nop

    const/16 v2, 0x54

    nop

    nop

    invoke-virtual {v0, v2}, Ldzf;->b(I)V

    new-array v2, v6, [B

    nop

    nop

    nop

    nop

    new-array v3, v6, [B

    nop

    nop

    new-array v4, v6, [B

    nop

    nop

    invoke-virtual {v0, v2}, Ldzf;->readFully([B)V

    invoke-virtual {v0, v3}, Ldzf;->readFully([B)V

    invoke-virtual {v0, v4}, Ldzf;->readFully([B)V

    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v3

    nop

    nop

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    nop

    nop

    nop

    nop

    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    nop

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v4

    nop

    nop

    nop

    new-array v3, v3, [B

    nop

    nop

    nop

    nop

    iget v5, v0, Ldzf;->b:I

    nop

    nop

    nop

    nop

    sub-int v5, v2, v5

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v5}, Ldzf;->b(I)V

    invoke-virtual {v0, v3}, Ldzf;->readFully([B)V

    new-instance v5, Ldzf;

    nop

    invoke-direct {v5, v3}, Ldzf;-><init>([B)V

    invoke-direct {v1, v5, v2, v13}, Ldzi;->7ecc92917e9c4556cc19f457ddc41af8m(Ldzf;II)V

    iget v2, v0, Ldzf;->b:I

    nop

    nop

    nop

    sub-int/2addr v4, v2

    nop

    nop

    nop

    invoke-virtual {v0, v4}, Ldzf;->b(I)V

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    nop

    nop

    iput-object v2, v0, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    invoke-virtual {v0}, Ldzf;->readInt()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    :goto_13
    if-ge v3, v2, :cond_2

    nop

    nop

    invoke-virtual {v0}, Ldzf;->readUnsignedShort()I

    move-result v4

    nop

    nop

    invoke-virtual {v0}, Ldzf;->readUnsignedShort()I

    move-result v5

    nop

    nop

    nop

    sget-object v6, Ldzi;->U:Lroz;

    nop

    iget v6, v6, Lroz;->b:I

    nop

    nop

    if-ne v4, v6, :cond_5

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ldzf;->readShort()S

    move-result v2

    nop

    invoke-virtual {v0}, Ldzf;->readShort()S

    move-result v0

    nop

    nop

    nop

    iget-object v3, v1, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v2, v3}, Ldzg;->e(ILjava/nio/ByteOrder;)Ldzg;

    move-result-object v2

    nop

    nop

    nop

    iget-object v3, v1, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    invoke-static {v0, v3}, Ldzg;->e(ILjava/nio/ByteOrder;)Ldzg;

    move-result-object v0

    nop

    iget-object v3, v1, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    const/4 v4, 0x0

    nop

    aget-object v3, v3, v4

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, v1, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    aget-object v2, v2, v4

    nop

    nop

    invoke-virtual {v2, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_8

    nop

    :cond_5
    const/4 v4, 0x0

    nop

    invoke-virtual {v0, v5}, Ldzf;->b(I)V

    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_13

    nop

    nop

    nop

    :cond_6
    if-ne v2, v10, :cond_2

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Ldzi;->19e596a3e324281407eb5c11093c0152m(Ldzf;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eq v8, v10, :cond_7

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    move-object/from16 v1, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_16
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-ne v8, v12, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_32

    nop

    nop

    :goto_18
    if-ne v9, v13, :cond_9

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_9
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_19
    if-eqz v8, :cond_a

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :cond_a
    :try_start_3
    new-instance v8, Ldzf;

    nop

    invoke-direct {v8, v7}, Ldzf;-><init>([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :try_start_4
    invoke-static {v8}, Ldzi;->w(Ldzf;)Ljava/nio/ByteOrder;

    move-result-object v9

    nop

    nop

    iput-object v9, v1, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    iput-object v9, v8, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    invoke-virtual {v8}, Ldzf;->readShort()S

    move-result v9

    nop
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_5
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_12

    nop

    nop

    nop

    :goto_1b
    :try_start_5
    new-instance v8, Ldzf;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v8, v5, v4}, Ldzf;-><init>(Ljava/io/InputStream;[B)V

    iget v5, v1, Ldzi;->H:I

    nop

    const/16 v10, 0xc

    nop

    nop

    nop

    nop

    const/4 v11, 0x6

    nop

    nop

    if-eq v5, v10, :cond_15

    nop

    const/16 v10, 0xf

    nop

    if-ne v5, v10, :cond_b

    nop

    nop

    nop

    nop

    goto/16 :goto_1e

    nop

    nop

    :cond_b
    const/4 v10, 0x7

    nop

    if-ne v5, v10, :cond_12

    nop

    nop

    nop

    invoke-direct {v1, v8}, Ldzi;->430f03c2ea70bd28108d593eca0c7c30m(Ldzf;)V

    iget-object v0, v1, Ldzi;->I:[Ljava/util/HashMap;

    nop

    aget-object v0, v0, v16

    nop

    nop

    nop

    const-string v2, "MakerNote"

    nop

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Ldzg;

    nop

    if-eqz v0, :cond_22

    nop

    new-instance v2, Ldzf;

    nop

    iget-object v0, v0, Ldzg;->d:[B

    nop

    invoke-direct {v2, v0, v4}, Ldzf;-><init>([B[B)V

    iget-object v0, v1, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    iput-object v0, v2, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    nop

    sget-object v0, Ldzi;->p:[B

    nop

    nop

    nop

    array-length v3, v0

    nop

    nop

    new-array v3, v11, [B

    nop

    nop

    invoke-virtual {v2, v3}, Ldzf;->readFully([B)V

    const-wide/16 v4, 0x0

    nop

    nop

    invoke-virtual {v2, v4, v5}, Ldzf;->c(J)V

    sget-object v4, Ldzi;->q:[B

    nop

    nop

    nop

    array-length v5, v4

    nop

    nop

    nop

    const/16 v5, 0xa

    nop

    new-array v5, v5, [B

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v5}, Ldzf;->readFully([B)V

    invoke-static {v3, v0}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_c

    nop

    nop

    nop

    nop

    const-wide/16 v3, 0x8

    nop

    invoke-virtual {v2, v3, v4}, Ldzf;->c(J)V

    goto :goto_1c

    nop

    nop

    nop

    nop

    nop

    :cond_c
    invoke-static {v5, v4}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_d

    nop

    nop

    nop

    nop

    const-wide/16 v3, 0xc

    nop

    nop

    invoke-virtual {v2, v3, v4}, Ldzf;->c(J)V

    :cond_d
    :goto_1c
    invoke-direct {v1, v2, v11}, Ldzi;->e94656b6137dd01f26085f984afe853em(Ldzf;I)V

    iget-object v0, v1, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    const/4 v2, 0x7

    nop

    nop

    aget-object v0, v0, v2

    nop

    const-string v3, "PreviewImageStart"

    nop

    nop

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Ldzg;

    nop

    nop

    nop

    iget-object v3, v1, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    aget-object v2, v3, v2

    nop

    nop

    nop

    const-string v3, "PreviewImageLength"

    nop

    nop

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Ldzg;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_e

    nop

    if-eqz v2, :cond_e

    nop

    nop

    iget-object v3, v1, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    aget-object v3, v3, v13

    nop

    nop

    const-string v4, "JPEGInterchangeFormat"

    nop

    nop

    nop

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    aget-object v0, v0, v13

    nop

    nop

    const-string v3, "JPEGInterchangeFormatLength"

    nop

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_e
    iget-object v0, v1, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    aget-object v0, v0, v14

    nop

    const-string v2, "AspectFrame"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Ldzg;

    nop

    if-eqz v0, :cond_22

    nop

    nop

    iget-object v2, v1, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v2}, Ldzg;->f(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    check-cast v0, [I

    nop

    if-eqz v0, :cond_11

    nop

    nop

    nop

    nop

    array-length v2, v0

    nop

    nop

    nop

    nop

    if-eq v2, v6, :cond_f

    nop

    goto/16 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :cond_f
    const/4 v2, 0x2

    nop

    nop

    nop

    aget v2, v0, v2

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    aget v4, v0, v3

    nop

    nop

    nop

    nop

    if-le v2, v4, :cond_22

    nop

    nop

    nop

    nop

    nop

    const/4 v5, 0x3

    nop

    nop

    nop

    aget v3, v0, v5

    nop

    nop

    nop

    aget v0, v0, v16

    nop

    nop

    nop

    if-le v3, v0, :cond_22

    nop

    nop

    sub-int/2addr v2, v4

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    sub-int/2addr v3, v0

    nop

    add-int/lit8 v3, v3, 0x1

    nop

    nop

    nop

    if-ge v2, v3, :cond_10

    nop

    nop

    nop

    nop

    nop

    add-int/2addr v2, v3

    nop

    nop

    nop

    sub-int v3, v2, v3

    nop

    sub-int/2addr v2, v3

    nop

    nop

    nop

    nop

    :cond_10
    iget-object v0, v1, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    invoke-static {v2, v0}, Ldzg;->e(ILjava/nio/ByteOrder;)Ldzg;

    move-result-object v0

    nop

    nop

    iget-object v2, v1, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    invoke-static {v3, v2}, Ldzg;->e(ILjava/nio/ByteOrder;)Ldzg;

    move-result-object v2

    nop

    nop

    nop

    iget-object v3, v1, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    aget-object v3, v3, v4

    nop

    invoke-virtual {v3, v9, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, v1, Ldzi;->I:[Ljava/util/HashMap;

    nop

    aget-object v0, v0, v4

    nop

    nop

    nop

    invoke-virtual {v0, v7, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_22

    nop

    nop

    nop

    nop

    nop

    :cond_11
    :goto_1d
    const-string v2, "ExifInterface"

    nop

    nop

    const-string v3, "Invalid aspect frame values. frame="

    nop

    nop

    invoke-static {v0}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_22

    nop

    nop

    nop

    nop

    :cond_12
    const/16 v0, 0xa

    nop

    nop

    nop

    nop

    if-ne v5, v0, :cond_14

    nop

    invoke-direct {v1, v8}, Ldzi;->430f03c2ea70bd28108d593eca0c7c30m(Ldzf;)V

    iget-object v0, v1, Ldzi;->I:[Ljava/util/HashMap;

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    aget-object v0, v0, v3

    nop

    nop

    nop

    nop

    const-string v3, "JpgFromRaw"

    nop

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Ldzg;

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_13

    nop

    nop

    new-instance v3, Ldzf;

    nop

    nop

    iget-object v4, v0, Ldzg;->d:[B

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v4}, Ldzf;-><init>([B)V

    iget-wide v4, v0, Ldzg;->c:J

    nop

    nop

    nop

    long-to-int v0, v4

    nop

    nop

    nop

    invoke-direct {v1, v3, v0, v13}, Ldzi;->7ecc92917e9c4556cc19f457ddc41af8m(Ldzf;II)V

    :cond_13
    iget-object v0, v1, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    aget-object v0, v0, v3

    nop

    const-string v3, "ISO"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Ldzg;

    nop

    iget-object v3, v1, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    aget-object v3, v3, v16

    nop

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Ldzg;

    nop

    nop

    nop

    if-eqz v0, :cond_22

    nop

    nop

    nop

    nop

    nop

    if-nez v3, :cond_22

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v1, Ldzi;->I:[Ljava/util/HashMap;

    nop

    aget-object v3, v3, v16

    nop

    invoke-virtual {v3, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_22

    nop

    nop

    nop

    :cond_14
    invoke-direct {v1, v8}, Ldzi;->430f03c2ea70bd28108d593eca0c7c30m(Ldzf;)V

    goto/16 :goto_22

    nop

    nop

    :cond_15
    :goto_1e
    const/4 v5, 0x3

    nop

    nop

    nop

    nop

    new-instance v2, Landroid/media/MediaMetadataRetriever;

    nop

    nop

    nop

    invoke-direct {v2}, Landroid/media/MediaMetadataRetriever;-><init>()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    new-instance v6, Ldze;

    nop

    nop

    nop

    nop

    invoke-direct {v6, v8}, Ldze;-><init>(Ldzf;)V

    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->setDataSource(Landroid/media/MediaDataSource;)V

    const/16 v6, 0x21

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v6}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    const/16 v10, 0x22

    nop

    nop

    invoke-virtual {v2, v10}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v10

    nop

    const/16 v12, 0x1a

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    nop

    nop

    const/16 v13, 0x11

    nop

    nop

    invoke-virtual {v2, v13}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v13

    nop

    nop

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    nop

    nop

    if-eqz v12, :cond_16

    nop

    nop

    nop

    nop

    const/16 v3, 0x1d

    nop

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    const/16 v3, 0x1e

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    const/16 v12, 0x1f

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto :goto_1f

    nop

    nop

    :cond_16
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_17

    nop

    const/16 v3, 0x12

    nop

    nop

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    const/16 v3, 0x13

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    nop

    const/16 v12, 0x18

    nop

    invoke-virtual {v2, v12}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v12

    nop

    nop

    nop

    goto :goto_1f

    nop

    nop

    nop

    :cond_17
    move-object v3, v4

    nop

    nop

    nop

    nop

    move-object v12, v3

    nop

    :goto_1f
    if-eqz v4, :cond_18

    nop

    nop

    nop

    iget-object v13, v1, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    const/4 v15, 0x0

    nop

    aget-object v13, v13, v15

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    nop

    iget-object v15, v1, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    invoke-static {v4, v15}, Ldzg;->e(ILjava/nio/ByteOrder;)Ldzg;

    move-result-object v4

    nop

    nop

    invoke-virtual {v13, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_18
    if-eqz v3, :cond_19

    nop

    nop

    iget-object v4, v1, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    aget-object v4, v4, v9

    nop

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    nop

    nop

    nop

    iget-object v9, v1, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    invoke-static {v3, v9}, Ldzg;->e(ILjava/nio/ByteOrder;)Ldzg;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v7, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    if-eqz v12, :cond_1d

    nop

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    nop

    nop

    nop

    nop

    const/16 v4, 0x5a

    nop

    if-eq v3, v4, :cond_1c

    nop

    nop

    const/16 v4, 0xb4

    nop

    if-eq v3, v4, :cond_1b

    nop

    nop

    const/16 v4, 0x10e

    nop

    nop

    nop

    if-eq v3, v4, :cond_1a

    nop

    nop

    nop

    move/from16 v13, v16

    nop

    nop

    nop

    nop

    nop

    goto :goto_20

    nop

    :cond_1a
    move v13, v14

    nop

    nop

    nop

    nop

    goto :goto_20

    nop

    nop

    nop

    nop

    nop

    :cond_1b
    move v13, v5

    nop

    nop

    nop

    goto :goto_20

    nop

    nop

    :cond_1c
    move v13, v11

    nop

    nop

    :goto_20
    iget-object v3, v1, Ldzi;->I:[Ljava/util/HashMap;

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    aget-object v3, v3, v4

    nop

    nop

    nop

    const-string v4, "Orientation"

    nop

    nop

    nop

    nop

    iget-object v5, v1, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    nop

    invoke-static {v13, v5}, Ldzg;->e(ILjava/nio/ByteOrder;)Ldzg;

    move-result-object v5

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    if-eqz v6, :cond_20

    nop

    nop

    if-eqz v10, :cond_20

    nop

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    nop

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    nop

    nop

    nop

    nop

    nop

    if-le v4, v11, :cond_1f

    nop

    nop

    nop

    int-to-long v5, v3

    nop

    nop

    nop

    invoke-virtual {v8, v5, v6}, Ldzf;->c(J)V

    new-array v5, v11, [B

    nop

    nop

    nop

    nop

    invoke-virtual {v8, v5}, Ldzf;->readFully([B)V

    add-int/2addr v3, v11

    nop

    nop

    nop

    nop

    nop

    add-int/lit8 v4, v4, -0x6

    nop

    nop

    nop

    nop

    sget-object v6, Ldzi;->h:[B

    nop

    nop

    nop

    nop

    nop

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_1e

    nop

    nop

    nop

    nop

    new-array v4, v4, [B

    nop

    nop

    nop

    invoke-virtual {v8, v4}, Ldzf;->readFully([B)V

    iput v3, v1, Ldzi;->L:I

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    invoke-direct {v1, v4, v3}, Ldzi;->b1051a9d8893542362ad09051775f8f6m([BI)V

    goto :goto_21

    nop

    nop

    :cond_1e
    new-instance v0, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    const-string v3, "Invalid identifier"

    nop

    nop

    nop

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    :cond_1f
    new-instance v0, Ljava/io/IOException;

    nop

    nop

    nop

    const-string v3, "Invalid exif length"

    nop

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    nop

    nop

    nop

    :cond_20
    :goto_21
    const/16 v3, 0x29

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v3}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    const/16 v4, 0x2a

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v2, v4}, Landroid/media/MediaMetadataRetriever;->extractMetadata(I)Ljava/lang/String;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    if-eqz v3, :cond_21

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_21

    nop

    nop

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    nop

    int-to-long v12, v3

    nop

    nop

    nop

    invoke-virtual {v8, v12, v13}, Ldzf;->c(J)V

    new-array v14, v11, [B

    nop

    nop

    nop

    invoke-virtual {v8, v14}, Ldzf;->readFully([B)V

    invoke-virtual {v1, v0}, Ldzi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    if-nez v3, :cond_21

    nop

    nop

    nop

    nop

    iget-object v3, v1, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    aget-object v3, v3, v4

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Ldzg;

    nop

    nop

    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    nop

    move-object v9, v4

    nop

    nop

    nop

    nop

    invoke-direct/range {v9 .. v14}, Ldzg;-><init>(IIJ[B)V

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_21
    :try_start_7
    invoke-virtual {v2}, Landroid/media/MediaMetadataRetriever;->release()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :catch_3
    :cond_22
    :goto_22
    :try_start_8
    iget v0, v1, Ldzi;->L:I

    nop

    int-to-long v2, v0

    nop

    nop

    nop

    invoke-virtual {v8, v2, v3}, Ldzf;->c(J)V

    invoke-direct {v1, v8}, Ldzi;->ccb4c19b7dbd16be9d2a43125797659dm(Ldzf;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_23
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_24
    const v1, 0x1d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    const-string v9, "ImageWidth"

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

    :goto_26
    goto :goto_29

    nop

    nop

    :goto_27
    goto/32 :goto_28

    nop

    nop

    :goto_28
    move/from16 v9, v16

    nop

    nop

    :goto_29
    :try_start_9
    invoke-virtual {v8}, Ldzf;->close()V

    if-eqz v9, :cond_24

    nop

    nop

    nop

    nop

    const/4 v8, 0x7

    nop

    nop

    nop

    nop

    goto/16 :goto_30

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    move-object v4, v8

    nop

    nop

    nop

    nop

    goto :goto_2a

    nop

    nop

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v4, :cond_23

    nop

    nop

    invoke-virtual {v4}, Ldzf;->close()V

    :cond_23
    throw v0

    nop

    :catch_4
    move-object v8, v4

    nop

    nop

    nop

    :catch_5
    if-eqz v8, :cond_24

    nop

    nop

    nop

    nop

    invoke-virtual {v8}, Ldzf;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_24
    :try_start_a
    new-instance v8, Ldzf;

    nop

    nop

    nop

    invoke-direct {v8, v7}, Ldzf;-><init>([B)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    :try_start_b
    invoke-static {v8}, Ldzi;->w(Ldzf;)Ljava/nio/ByteOrder;

    move-result-object v9

    nop

    nop

    nop

    iput-object v9, v1, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    iput-object v9, v8, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    nop

    invoke-virtual {v8}, Ldzf;->readShort()S

    move-result v9

    nop

    nop

    nop

    nop
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    invoke-virtual {v8}, Ldzf;->close()V

    const/16 v8, 0x55

    nop

    nop

    nop

    nop

    if-ne v9, v8, :cond_26

    nop

    nop

    const/16 v8, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_30

    nop

    :catchall_4
    move-exception v0

    nop

    nop

    move-object v4, v8

    nop

    nop

    nop

    nop

    nop

    goto :goto_2b

    nop

    nop

    nop

    nop

    nop

    :catchall_5
    move-exception v0

    nop

    nop

    nop

    :goto_2b
    if-eqz v4, :cond_25

    nop

    invoke-virtual {v4}, Ldzf;->close()V

    :cond_25
    throw v0

    nop

    nop

    nop

    :catch_6
    move-object v8, v4

    nop

    nop

    :catch_7
    if-eqz v8, :cond_26

    nop

    invoke-virtual {v8}, Ldzf;->close()V

    :cond_26
    const/4 v8, 0x0

    nop

    nop

    :goto_2c
    sget-object v9, Ldzi;->r:[B

    nop

    nop

    array-length v13, v9

    nop

    nop

    nop

    if-ge v8, v14, :cond_2c

    nop

    nop

    nop

    nop

    nop

    aget-byte v13, v7, v8

    nop

    aget-byte v9, v9, v8

    nop

    if-eq v13, v9, :cond_2b

    nop

    nop

    nop

    nop

    nop

    const/4 v8, 0x0

    nop

    nop

    :goto_2d
    sget-object v9, Ldzi;->v:[B

    nop

    nop

    nop

    nop

    nop

    array-length v13, v9

    nop

    nop

    nop

    nop

    if-ge v8, v6, :cond_28

    nop

    nop

    aget-byte v13, v7, v8

    nop

    nop

    nop

    nop

    aget-byte v9, v9, v8

    nop

    nop

    nop

    nop

    if-eq v13, v9, :cond_27

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const/4 v8, 0x0

    nop

    nop

    nop

    goto/16 :goto_30

    nop

    nop

    :cond_27
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    goto :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_28
    const/4 v8, 0x0

    nop

    nop

    nop

    nop

    :goto_2f
    sget-object v9, Ldzi;->w:[B

    nop

    nop

    nop

    nop

    array-length v13, v9

    nop

    nop

    if-ge v8, v6, :cond_2a

    nop

    nop

    nop

    nop

    nop

    sget-object v13, Ldzi;->v:[B

    nop

    nop

    array-length v13, v13

    nop

    add-int/lit8 v13, v8, 0x8

    nop

    nop

    nop

    nop

    nop

    aget-byte v13, v7, v13

    nop

    nop

    nop

    nop

    nop

    aget-byte v9, v9, v8

    nop

    if-eq v13, v9, :cond_29

    nop

    nop

    goto :goto_2e

    nop

    nop

    :cond_29
    add-int/lit8 v8, v8, 0x1

    nop

    goto :goto_2f

    nop

    nop

    :cond_2a
    move v8, v10

    nop

    nop

    nop

    goto :goto_30

    nop

    nop

    nop

    :cond_2b
    add-int/lit8 v8, v8, 0x1

    nop

    nop

    nop

    nop

    goto/16 :goto_2c

    nop

    nop

    nop

    :cond_2c
    move v8, v11

    nop

    nop

    nop

    goto :goto_30

    nop

    :cond_2d
    add-int/lit8 v9, v9, 0x1

    nop

    nop

    nop

    nop

    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :cond_2e
    move v8, v12

    nop

    goto :goto_30

    nop

    nop

    nop

    nop

    :cond_2f
    add-int/lit8 v8, v8, 0x1

    nop

    const/16 v6, 0xa

    nop

    nop

    goto/16 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :cond_30
    move v8, v6

    nop

    nop

    nop

    :goto_30
    iput v8, v1, Ldzi;->H:I

    nop

    nop

    nop
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto/32 :goto_3

    nop

    nop

    :goto_31
    const/4 v9, 0x0

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    if-ne v8, v11, :cond_31

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :cond_31
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-direct/range {p0 .. p0}, Ldzi;->23ce148e54b083367f51e25c7971761em()V

    goto/32 :goto_d

    nop

    nop

    :goto_34
    if-eq v9, v13, :cond_32

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :cond_32
    goto/32 :goto_37

    nop

    nop

    :goto_35
    goto/32 :goto_e

    nop

    nop

    :goto_36
    goto/32 :goto_15

    nop

    nop

    nop

    :goto_37
    goto/16 :goto_27

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_31

    nop

    nop

    :goto_39
    const/4 v5, 0x0

    nop

    :goto_3a
    :try_start_d
    sget-object v6, Ldzi;->j:[[Lroz;

    nop

    nop

    nop

    nop

    nop

    array-length v6, v6

    nop

    nop

    nop

    nop

    nop

    const/16 v6, 0xa

    nop

    nop

    nop

    nop

    nop

    if-ge v5, v6, :cond_33

    nop

    nop

    iget-object v6, v1, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    new-instance v7, Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    aput-object v7, v6, v5

    nop

    nop

    add-int/lit8 v5, v5, 0x1

    nop

    nop

    nop

    goto :goto_3a

    nop

    nop

    nop

    nop

    :cond_33
    new-instance v5, Ljava/io/BufferedInputStream;

    nop

    nop

    nop

    const/16 v7, 0x1388

    nop

    nop

    nop

    nop

    nop

    move-object/from16 v8, p1

    nop

    nop

    nop

    nop

    invoke-direct {v5, v8, v7}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    invoke-virtual {v5, v7}, Ljava/io/BufferedInputStream;->mark(I)V

    new-array v7, v7, [B

    nop

    nop

    invoke-virtual {v5, v7}, Ljava/io/BufferedInputStream;->read([B)I

    invoke-virtual {v5}, Ljava/io/BufferedInputStream;->reset()V

    const/4 v8, 0x0

    nop

    nop

    nop

    :goto_3b
    sget-object v9, Ldzi;->c:[B

    nop

    nop

    nop

    array-length v10, v9

    nop

    const/16 v10, 0xe

    nop

    const/16 v11, 0xd

    nop

    nop

    const/16 v12, 0x9

    nop

    nop

    nop

    const/4 v13, 0x3

    nop

    nop

    nop

    const/16 v14, 0x8

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    const/4 v6, 0x4

    nop

    nop

    const/16 v16, 0x1

    nop

    nop

    nop

    if-ge v8, v13, :cond_30

    nop

    nop

    nop

    aget-byte v13, v7, v8

    nop

    nop

    nop

    aget-byte v9, v9, v8

    nop

    nop

    nop

    if-eq v13, v9, :cond_2f

    nop

    nop

    nop

    nop

    nop

    const-string v8, "FUJIFILMCCD-RAW"

    nop

    nop

    nop

    nop

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v9

    nop

    nop

    nop

    invoke-virtual {v8, v9}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    :goto_3c
    array-length v13, v8

    nop

    nop

    if-ge v9, v13, :cond_2e

    nop

    nop

    aget-byte v13, v7, v9

    nop

    nop

    nop

    aget-byte v15, v8, v9

    nop

    nop

    nop

    nop

    if-eq v13, v15, :cond_2d

    nop

    nop

    nop

    invoke-static {v7}, Ldzi;->v([B)I

    move-result v8

    nop

    nop
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_d .. :try_end_d} :catch_0
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3d
    const-string v3, "yes"

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const-string v2, "PhotographicSensitivity"

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 430f03c2ea70bd28108d593eca0c7c30m(Ldzf;)V
    .locals 3

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_0
    iget-object p1, p1, Ldzg;->d:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, p1}, Ldzf;->b(I)V

    goto/32 :goto_15

    nop

    nop

    :goto_2
    if-nez p1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    if-eq p1, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-virtual {p0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_5
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_9
    check-cast p1, Ldzg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_a
    aget-object p1, v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p1, v1, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, p1, v0}, Ldzi;->c43d12f4f4da28dd6c943a4effe477b7m(Ldzf;I)V

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-direct {p0, p1, v0}, Ldzi;->c43d12f4f4da28dd6c943a4effe477b7m(Ldzf;I)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p0, p1, v0}, Ldzi;->e94656b6137dd01f26085f984afe853em(Ldzf;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v0, 0x5

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, p1, v0}, Ldzi;->c43d12f4f4da28dd6c943a4effe477b7m(Ldzf;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const/16 p1, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-object p1, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    aget-object p0, p0, v0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast p1, Ldzg;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v1, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_1b
    const/16 v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_c

    nop

    :goto_1d
    const/4 p1, 0x6

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

    :goto_1e
    invoke-direct {p0, v1, p1}, Ldzi;->e94656b6137dd01f26085f984afe853em(Ldzf;I)V

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    iget-object p1, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_20
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_21
    aget-object p1, p1, v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {p0}, Ldzi;->d116db4599d9ddc8c35e61366a4f4967m()V

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x0

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_24
    sget-object v1, Lcom/google/android/apps/camera/contentprovider/Hg/tkLn;->kuDXqZdR:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_25
    if-nez p1, :cond_3

    nop

    goto/32 :goto_5

    nop

    :cond_3
    goto/32 :goto_0

    nop

    nop

    nop

    :goto_26
    invoke-direct {p0, p1}, Ldzi;->33b3102b6558811a7b7629a1e8e59bd2m(Ldzf;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v1, Ldzf;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-direct {v1, p1, v2}, Ldzf;-><init>([B[B)V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_2a
    return-void

    nop

    nop

    :goto_2b
    goto/32 :goto_2c

    nop

    nop

    :goto_2c
    goto/32 :goto_d

    nop

    :goto_2d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    const-string v1, "MakerNote"

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    iget p1, p0, Ldzi;->H:I

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_30
    const v0, 0x20

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_31
    const v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 51550bab6b6440a4fd45f825c221b363m(Ldzf;Ljava/util/HashMap;)V
    .locals 15

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-wide/16 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/16 :goto_3c

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_3
    cmp-long v4, v4, v13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v4, v0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    aget-wide v0, v3, v5

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v4, v0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_7
    int-to-long v4, v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_39

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v3, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    :cond_0
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v3, v4}, Ldzg;->f(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_c
    move-object/from16 v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_d
    check-cast v2, Ldzg;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    if-lt v5, v6, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_1
    goto/32 :goto_57

    nop

    nop

    nop

    :goto_f
    add-int/2addr v8, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_10
    new-array v5, v5, [B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_11
    long-to-int v5, v7

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_12
    iput-boolean v6, v0, Ldzi;->K:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    :goto_13
    add-int/lit8 v9, v6, 0x1

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_14
    goto :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_16
    aget-wide v10, v3, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_17
    const-string v0, "stripOffsets and stripByteCounts should have same length."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v5, 0x0

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v2, :cond_2

    nop

    nop

    goto/32 :goto_2d

    nop

    :cond_2
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_48

    nop

    nop

    nop

    :goto_1d
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    :goto_1e
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    :goto_1f
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_20
    array-length v9, v3

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_21
    const-string v0, "stripByteCounts should not be null or have zero length."

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_3
    goto/32 :goto_8

    nop

    :goto_23
    invoke-virtual {v2, v4}, Ldzg;->f(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    :goto_24
    const v0, 0x14

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_25
    add-int/lit8 v5, v5, 0x1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26
    move-object v5, v9

    nop

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    :goto_27
    if-eq v5, v6, :cond_4

    nop

    goto/32 :goto_5f

    nop

    :cond_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_28
    add-int/2addr v7, v11

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iput-boolean v4, v0, Ldzi;->K:Z

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_2a
    long-to-int v11, v11

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_2b
    if-eqz v6, :cond_5

    nop

    goto/32 :goto_40

    nop

    :cond_5
    goto/32 :goto_3f

    nop

    nop

    :goto_2c
    return-void

    nop

    nop

    nop

    nop

    :goto_2d
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    array-length v5, v3

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-nez v2, :cond_6

    nop

    goto/32 :goto_5a

    nop

    :cond_6
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_31
    aget-wide v11, v2, v6

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_32
    goto/16 :goto_5a

    nop

    nop

    nop

    nop

    :goto_33
    :try_start_0
    invoke-virtual {v1, v10}, Ldzf;->b(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v6, 0x1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const-string v4, "ExifInterface"

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_36
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-boolean v0, v0, Ldzi;->K:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_39
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    move-object/from16 v1, p1

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

    nop

    :goto_3b
    move-object v9, v5

    nop

    nop

    :goto_3c
    goto/32 :goto_42

    nop

    nop

    nop

    :goto_3d
    array-length v6, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_3e
    const v1, 0xd

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/16 :goto_2d

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/32 :goto_9

    nop

    nop

    :goto_42
    sub-int/2addr v10, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    :goto_43
    if-eqz v5, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_6b

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_2c

    nop

    nop

    :goto_45
    add-int/lit8 v9, v9, -0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    :goto_46
    long-to-int v10, v10

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_47
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const/4 v5, 0x0

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_49
    check-cast v3, Ldzg;

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    :goto_4a
    invoke-static {v2}, Ldwq;->e(Ljava/lang/Object;)[J

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_4b
    add-int/2addr v7, v10

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    if-lt v6, v9, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_4d
    invoke-static {v3}, Ldwq;->e(Ljava/lang/Object;)[J

    move-result-object v3

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_4e
    const-string v0, "stripOffsets should not be null or have zero length."

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_4f
    const-string v4, "StripByteCounts"

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_50
    if-nez v4, :cond_9

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    :cond_9
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_51
    if-nez v3, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    :cond_a
    goto/32 :goto_2f

    nop

    nop

    :goto_52
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_53
    if-nez v0, :cond_b

    nop

    goto/32 :goto_5a

    nop

    nop

    :cond_b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_54
    if-lt v6, v9, :cond_c

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_13

    nop

    nop

    nop

    :goto_55
    add-long/2addr v7, v9

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_56
    move-object v9, v5

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_57
    aget-wide v9, v2, v5

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_58
    add-int v12, v10, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    :goto_59
    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5a
    goto/32 :goto_38

    nop

    nop

    nop

    :goto_5b
    if-ltz v10, :cond_d

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_32

    nop

    nop

    nop

    :goto_5c
    invoke-static {v4, v5, v9, v8, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    :goto_5e
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_60
    return-void

    nop

    nop

    :goto_61
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    goto :goto_66

    nop

    nop

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_63
    new-array v4, v11, [B

    nop

    :try_start_1
    invoke-virtual {v1, v4}, Ldzf;->readFully([B)V
    :try_end_1
    .catch Ljava/io/EOFException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_64
    const-string v3, "StripOffsets"

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    const/4 v8, 0x0

    nop

    :goto_66
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_67
    aget-wide v13, v3, v9

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_68
    const/4 v7, 0x0

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    :goto_69
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6a
    move-object v0, p0

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/16 :goto_61

    nop

    :goto_6c
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop
.end method

.method private final 7ecc92917e9c4556cc19f457ddc41af8m(Ldzf;II)V
    .locals 19

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v11, v12, v8}, Ldzg;->c(JLjava/nio/ByteOrder;)Ldzg;

    move-result-object v8

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_1
    iput-object v3, v1, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v4, v9}, Ldwq;->d([B[B)Z

    move-result v11

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, v1, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_4
    add-int/2addr v3, v9

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v8, v0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual/range {p0 .. p0}, Ldzi;->c()[B

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    :goto_7
    goto/16 :goto_56

    nop

    nop

    nop

    :pswitch_0
    goto/32 :goto_45

    nop

    nop

    nop

    :goto_8
    aget-object v4, v4, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    :goto_9
    new-instance v0, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual/range {p1 .. p1}, Ldzf;->readByte()B

    move-result v3

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual/range {p1 .. p1}, Ldzf;->readByte()B

    move-result v4

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-ne v4, v13, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    :cond_0
    packed-switch v4, :pswitch_data_0

    packed-switch v4, :pswitch_data_1

    packed-switch v4, :pswitch_data_2

    packed-switch v4, :pswitch_data_3

    goto/32 :goto_7

    nop

    nop

    :goto_d
    if-ne v2, v9, :cond_1

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2f

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, v4, v2}, Ldzi;->b1051a9d8893542362ad09051775f8f6m([BI)V

    goto/32 :goto_a5

    nop

    nop

    :goto_f
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10
    move v14, v3

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_11
    new-instance v1, Ljava/io/IOException;

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_28

    nop

    nop

    nop

    :goto_16
    invoke-direct {v3, v4}, Ldzf;-><init>([B)V

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {v1, v8}, Ldzf;->b(I)V

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iget-object v8, v0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-eq v4, v6, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    new-instance v11, Ldzg;

    nop

    goto/32 :goto_83

    nop

    nop

    :goto_1b
    const-string v8, "Xmp"

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    goto/16 :goto_5a

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-virtual/range {p1 .. p1}, Ldzf;->readUnsignedShort()I

    move-result v7

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_1f
    if-ne v4, v7, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    :cond_3
    goto/32 :goto_8e

    nop

    nop

    :goto_20
    iget-object v9, v0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_21
    move-wide/from16 v16, v13

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    throw v1

    nop

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :goto_23
    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_24
    int-to-long v11, v8

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_25
    invoke-static {v4, v11, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_26
    const-string v7, "UserComment"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    const/4 v9, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_28
    and-int/lit16 v0, v4, 0xff

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_29
    new-instance v1, Ljava/io/IOException;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    invoke-virtual/range {p0 .. p0}, Ldzi;->c()[B

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_2b
    iget-object v0, v0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_2c
    iget-object v4, v0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    sget-object v9, Ldzi;->h:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_2e
    add-int/2addr v3, v8

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    :goto_2f
    const-string v9, "ImageWidth"

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-virtual/range {p1 .. p1}, Ldzf;->readByte()B

    move-result v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    throw v0

    nop

    nop

    :goto_32
    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-static {v9}, Ldzg;->b(Ljava/lang/String;)Ldzg;

    move-result-object v4

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_34
    add-int v7, v3, v8

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_35
    const/16 v5, 0xff

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    nop

    :goto_36
    new-instance v0, Ljava/io/IOException;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_38
    invoke-virtual/range {p1 .. p1}, Ldzf;->readUnsignedShort()I

    move-result v8

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_39
    if-gez v8, :cond_4

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_3a
    new-instance v0, Ljava/io/IOException;

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_3b
    const/4 v3, 0x1

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_3c
    if-ne v2, v9, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    :cond_5
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    invoke-virtual/range {p0 .. p0}, Ldzi;->c()[B

    goto/32 :goto_6a

    nop

    nop

    nop

    :goto_3e
    goto/16 :goto_b0

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v8, v0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    goto/16 :goto_9b

    nop

    nop

    :goto_42
    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_43
    const/16 v7, -0x28

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_44
    const/4 v12, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45
    invoke-virtual {v1, v11}, Ldzf;->b(I)V

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_46
    array-length v8, v9

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_47
    int-to-long v13, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_48
    if-nez v11, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :cond_6
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_49
    const-string v9, "ThumbnailImageWidth"

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    goto/32 :goto_72

    nop

    nop

    nop

    :goto_4b
    if-eq v3, v6, :cond_7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    :cond_7
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    goto/16 :goto_56

    nop

    nop

    :goto_4d
    goto/32 :goto_80

    nop

    nop

    nop

    :goto_4e
    move-object/from16 v0, p0

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    :goto_4f
    move v3, v7

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_50
    sget-object v11, Ldzi;->g:Ljava/nio/charset/Charset;

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    :goto_51
    move-object/from16 v1, p1

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    :goto_52
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    :goto_53
    add-int/lit8 v8, v7, -0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_54
    move-object/from16 v18, v4

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_55
    goto/16 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_56
    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_57
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_58
    const/16 v11, -0x1f

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_59
    const/4 v3, 0x2

    nop

    nop

    nop

    nop

    :goto_5a
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    invoke-virtual {v1, v4}, Ldzf;->readFully([B)V

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_5c
    new-instance v9, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_5d
    if-ne v4, v11, :cond_8

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :cond_8
    goto/32 :goto_79

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    aget-object v9, v9, v12

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    invoke-virtual/range {p1 .. p1}, Ldzf;->readUnsignedShort()I

    move-result v8

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    :goto_60
    array-length v9, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_61
    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v4, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-eq v4, v7, :cond_9

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_3e

    nop

    nop

    :goto_64
    const/4 v13, -0x2

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

    :goto_65
    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_66
    invoke-direct {v9, v4, v11}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    goto/32 :goto_33

    nop

    nop

    nop

    :goto_67
    invoke-static {v4, v9, v8}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_68
    if-gez v8, :cond_a

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    :cond_a
    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    :goto_69
    int-to-long v11, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    goto/16 :goto_9b

    nop

    :goto_6b
    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    :goto_6c
    const-string v11, "ThumbnailImageLength"

    nop

    :goto_6d
    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_6e
    if-eqz v9, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    :cond_b
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6f
    goto/32 :goto_23

    nop

    nop

    :goto_70
    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_71
    invoke-direct {v0, v3}, Ldzi;->ccb4c19b7dbd16be9d2a43125797659dm(Ldzf;)V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_72
    invoke-virtual {v4, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_98

    nop

    nop

    nop

    nop

    :goto_73
    const-string v11, "ImageLength"

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    nop

    nop

    :goto_74
    if-eqz v3, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_75
    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_76
    goto/16 :goto_56

    nop

    nop

    :goto_77
    goto/32 :goto_ab

    nop

    nop

    nop

    nop

    :goto_78
    invoke-virtual {v4, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_79
    const/4 v11, 0x1

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_7a
    invoke-static {v11, v12, v8}, Ldzg;->c(JLjava/nio/ByteOrder;)Ldzg;

    move-result-object v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-virtual {v4, v11, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    iget-object v4, v0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_7d
    move-object v13, v11

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    throw v1

    nop

    nop

    nop

    :goto_7f
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_80
    new-array v4, v8, [B

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_81
    add-int v3, p2, v3

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    :goto_82
    move/from16 v2, p3

    nop

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_83
    array-length v15, v4

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    :goto_84
    throw v0

    nop

    nop

    nop

    :goto_85
    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_86
    const/16 v7, -0x27

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_87
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_88
    if-eqz v8, :cond_d

    nop

    goto/32 :goto_aa

    nop

    :cond_d
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    :goto_89
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_8a
    add-int/2addr v3, v9

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    sget-object v9, Ldzi;->E:[B

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_8c
    goto/16 :goto_4a

    nop

    nop

    nop

    nop

    :goto_8d
    goto/32 :goto_49

    nop

    nop

    nop

    :goto_8e
    const/16 v7, -0x26

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8f
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_90
    invoke-virtual/range {p1 .. p1}, Ldzf;->readByte()B

    move-result v3

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_91
    invoke-virtual {v1, v4}, Ldzf;->readFully([B)V

    goto/32 :goto_26

    nop

    nop

    :goto_92
    if-nez v11, :cond_e

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_93
    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_94
    aget-object v8, v8, v11

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_95
    goto/16 :goto_6d

    nop

    :goto_96
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    move v8, v12

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_98
    add-int/lit8 v8, v7, -0x7

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_99
    const v1, 0x20

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_9a
    invoke-virtual {v9, v8, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_9b
    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v0, v8}, Ldzi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    invoke-direct {v0, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_af

    nop

    nop

    nop

    :goto_9e
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    :goto_9f
    if-eq v3, v7, :cond_f

    nop

    goto/32 :goto_7f

    nop

    nop

    :cond_f
    goto/32 :goto_59

    nop

    nop

    nop

    :goto_a0
    add-int/2addr v3, v8

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_a1
    invoke-direct/range {v13 .. v18}, Ldzg;-><init>(IIJ[B)V

    goto/32 :goto_9a

    nop

    nop

    :goto_a2
    iput v3, v0, Ldzi;->L:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_a3
    if-lez v0, :cond_10

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_6f

    nop

    :goto_a4
    const/4 v6, -0x1

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_a5
    new-instance v3, Ldzf;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    const-string v4, "Invalid marker: "

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_a7
    aget-object v4, v4, v2

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_a8
    invoke-virtual {v0, v7}, Ldzi;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v8, v7, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_aa
    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    new-array v4, v8, [B

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    const-string v10, "Invalid length"

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    :goto_ad
    and-int/lit16 v0, v3, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_ae
    invoke-static {v4, v9}, Ldwq;->d([B[B)Z

    move-result v11

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    :goto_af
    throw v0

    nop

    nop

    nop

    nop

    :goto_b0
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_b1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_89

    nop

    nop

    :goto_b2
    array-length v11, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_b3
    const v0, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    const-string v2, "Invalid marker:"

    nop

    goto/32 :goto_52

    nop

    nop

    nop
.end method

.method static constructor <clinit>()V
    .locals 30

    goto/32 :goto_18f

    nop

    nop

    nop

    :goto_0
    const/16 v6, 0x22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v6, 0x21

    nop

    nop

    nop

    goto/32 :goto_27d

    nop

    nop

    :goto_3
    const/16 v4, 0xc

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    nop

    :goto_4
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c2

    nop

    nop

    :goto_5
    const-string v2, "UTC"

    nop

    nop

    nop

    nop

    goto/32 :goto_41a

    nop

    nop

    :goto_6
    const-string v9, "GPSAltitudeRef"

    nop

    goto/32 :goto_411

    nop

    nop

    nop

    nop

    nop

    :goto_7
    const/16 v9, 0x13

    nop

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const/16 v6, 0x24

    nop

    goto/32 :goto_236

    nop

    nop

    nop

    nop

    nop

    :goto_9
    sput-object v13, Ldzi;->j:[[Lroz;

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {v3, v4, v6, v13, v15}, Lroz;-><init>(Ljava/lang/String;III)V

    goto/32 :goto_300

    nop

    nop

    nop

    nop

    nop

    :goto_b
    new-instance v0, Ljava/text/SimpleDateFormat;

    nop

    nop

    nop

    goto/32 :goto_24c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const-string v6, "ThumbnailImageWidth"

    nop

    nop

    nop

    goto/32 :goto_387

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sput-object v12, Ldzi;->e:[I

    nop

    nop

    goto/32 :goto_2fe

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const-string v4, "JPEGInterchangeFormat"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_247

    nop

    nop

    nop

    nop

    :goto_f
    const/16 v15, 0x100

    nop

    nop

    nop

    nop

    goto/32 :goto_3b5

    nop

    nop

    nop

    nop

    :goto_10
    const/16 v4, 0x17

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    :goto_11
    sget-object v9, Lcom/google/android/apps/camera/legacy/lightcycle/panorama/RpD/WBNWZfrn;->DLyYunTFPbhAf:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_12
    new-array v15, v12, [B

    nop

    nop

    nop

    fill-array-data v15, :array_7

    goto/32 :goto_537

    nop

    nop

    nop

    nop

    nop

    :goto_13
    aput-object v6, v0, v11

    nop

    nop

    goto/32 :goto_179

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aput-object v6, v0, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42e

    nop

    nop

    :goto_15
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58a

    nop

    nop

    nop

    nop

    :goto_16
    const/16 v6, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_53f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    const/16 v11, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_4b8

    nop

    nop

    nop

    nop

    :goto_18
    new-instance v6, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    nop

    nop

    :goto_19
    const/16 v6, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18d

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {v2, v9, v15, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_291

    nop

    nop

    :goto_1b
    new-instance v2, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_32e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v9, 0xa004

    nop

    nop

    nop

    nop

    goto/32 :goto_3d7

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    aput-object v6, v0, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_15d

    nop

    nop

    nop

    :goto_1e
    const v9, 0xa000

    nop

    nop

    goto/32 :goto_5c0

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    const-string v24, "SSHORT"

    nop

    nop

    goto/32 :goto_233

    nop

    nop

    nop

    :goto_20
    invoke-direct {v3, v6, v13, v15, v4}, Lroz;-><init>(Ljava/lang/String;III)V

    goto/32 :goto_39a

    nop

    nop

    nop

    :goto_21
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f2

    nop

    nop

    nop

    nop

    :goto_22
    invoke-direct {v2, v6, v15, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_3e3

    nop

    nop

    nop

    nop

    :goto_23
    const/16 v4, 0x23

    nop

    nop

    goto/32 :goto_204

    nop

    nop

    :goto_24
    new-array v12, v11, [B

    nop

    nop

    nop

    nop

    fill-array-data v12, :array_4

    goto/32 :goto_473

    nop

    nop

    nop

    nop

    nop

    :goto_25
    aput-object v6, v0, v11

    nop

    nop

    goto/32 :goto_4cf

    nop

    nop

    :goto_26
    const-string v4, "DNGVersion"

    nop

    nop

    nop

    goto/32 :goto_239

    nop

    nop

    nop

    nop

    :goto_27
    aput-object v2, v12, v6

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct {v2, v6, v15, v11}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_501

    nop

    nop

    nop

    nop

    :goto_29
    const-string v6, "FocalLengthIn35mmFilm"

    nop

    nop

    nop

    goto/32 :goto_93

    nop

    nop

    nop

    :goto_2a
    new-instance v13, Lroz;

    nop

    nop

    goto/32 :goto_4db

    nop

    nop

    nop

    :goto_2b
    const-string v2, "yyyy-MM-dd HH:mm:ss"

    nop

    nop

    goto/32 :goto_3bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    const/4 v15, 0x4

    nop

    goto/32 :goto_2e3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v4, "DateTime"

    nop

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_2e
    aput-object v3, v11, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_1f7

    nop

    nop

    nop

    :goto_2f
    aput-object v3, v4, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30d

    nop

    nop

    nop

    nop

    nop

    :goto_30
    invoke-direct {v6, v9, v15, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_31
    const-string v6, "Saturation"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_555

    nop

    nop

    nop

    nop

    nop

    :goto_32
    aput-object v3, v11, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_5b1

    nop

    nop

    :goto_33
    aput-object v3, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    nop

    :goto_34
    const/4 v6, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ce

    nop

    nop

    nop

    nop

    nop

    :goto_35
    new-instance v3, Lroz;

    nop

    goto/32 :goto_550

    nop

    nop

    nop

    :goto_36
    const/16 v6, 0x21

    nop

    nop

    nop

    goto/32 :goto_31f

    nop

    nop

    nop

    :goto_37
    invoke-direct {v3, v6, v13, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1f9

    nop

    nop

    nop

    nop

    :goto_38
    const v9, 0x8835

    nop

    nop

    nop

    nop

    goto/32 :goto_393

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    new-instance v0, Lroz;

    nop

    nop

    nop

    goto/32 :goto_4d0

    nop

    nop

    nop

    nop

    :goto_3a
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_29b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const-string v6, "SensorTopBorder"

    nop

    nop

    goto/32 :goto_4f2

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    const v9, 0xa001

    nop

    goto/32 :goto_389

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    aput-object v6, v0, v11

    nop

    goto/32 :goto_3ec

    nop

    nop

    :goto_3e
    iget v2, v2, Lroz;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_3f
    filled-new-array/range {v16 .. v29}, [Ljava/lang/String;

    move-result-object v9

    nop

    goto/32 :goto_377

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    new-instance v13, Lroz;

    nop

    nop

    goto/32 :goto_1a2

    nop

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v3, v2, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_294

    nop

    nop

    :goto_42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    nop

    nop

    nop

    goto/32 :goto_392

    nop

    nop

    :goto_43
    sput-object v0, Ldzi;->g:Ljava/nio/charset/Charset;

    nop

    goto/32 :goto_21d

    nop

    nop

    :goto_44
    aput-object v2, v12, v9

    nop

    nop

    goto/32 :goto_162

    nop

    nop

    :goto_45
    const v9, 0x9204

    nop

    nop

    goto/32 :goto_1e6

    nop

    nop

    nop

    nop

    nop

    :goto_46
    const/4 v13, 0x3

    nop

    nop

    nop

    goto/32 :goto_340

    nop

    nop

    nop

    nop

    :goto_47
    aput-object v0, v2, v6

    nop

    goto/32 :goto_46c

    nop

    nop

    nop

    nop

    nop

    :goto_48
    const-string v6, "SubIFDPointer"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3aa

    nop

    nop

    nop

    :goto_49
    new-array v2, v0, [Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_255

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    const-string v6, "BodySerialNumber"

    nop

    nop

    nop

    goto/32 :goto_24a

    nop

    nop

    nop

    :goto_4b
    const/4 v4, 0x0

    nop

    goto/32 :goto_15c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    const/4 v13, 0x5

    nop

    nop

    goto/32 :goto_573

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    const/16 v6, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30f

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const-string v6, "LightSource"

    nop

    goto/32 :goto_2d0

    nop

    nop

    nop

    :goto_4f
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    goto/32 :goto_4ec

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_fa

    nop

    nop

    :goto_51
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_3c6

    nop

    nop

    nop

    nop

    nop

    :goto_52
    aget-object v0, v0, v9

    nop

    goto/32 :goto_359

    nop

    nop

    :goto_53
    const/16 v6, 0x11a

    nop

    nop

    goto/32 :goto_2f5

    nop

    nop

    nop

    :goto_54
    aput-object v13, v6, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39c

    nop

    nop

    nop

    nop

    nop

    :goto_55
    new-instance v0, Lroz;

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    new-instance v2, Lroz;

    nop

    nop

    goto/32 :goto_161

    nop

    nop

    :goto_57
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    nop

    nop

    goto/32 :goto_589

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58
    const/4 v9, 0x0

    nop

    nop

    goto/32 :goto_5ae

    nop

    nop

    nop

    nop

    :goto_59
    invoke-direct {v6, v9, v11, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_50b

    nop

    nop

    nop

    nop

    :goto_5b
    const-string v0, "US-ASCII"

    nop

    nop

    nop

    goto/32 :goto_5a7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c
    const-string v6, "MaxApertureValue"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    new-instance v2, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3ff

    nop

    nop

    :goto_5e
    aput-object v2, v12, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_10e

    nop

    :goto_60
    aput-object v3, v4, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    :goto_61
    const v9, 0xa210

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_62
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_494

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_63
    const/16 v9, 0x115

    nop

    nop

    goto/32 :goto_51f

    nop

    nop

    nop

    :goto_64
    aput-object v6, v0, v9

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_65
    const/4 v4, 0x6

    nop

    goto/32 :goto_25b

    nop

    nop

    nop

    nop

    nop

    :goto_66
    const/16 v6, 0x49

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f3

    nop

    nop

    nop

    nop

    :goto_67
    const/16 v15, 0x13b

    nop

    nop

    nop

    nop

    goto/32 :goto_38b

    nop

    nop

    nop

    nop

    nop

    :goto_68
    aput-object v2, v12, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_69
    const-string v22, "SBYTE"

    nop

    nop

    nop

    goto/32 :goto_5cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    const/4 v1, 0x3

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1ab

    nop

    nop

    nop

    nop

    nop

    :goto_6c
    invoke-direct {v0, v6, v9, v4, v11}, Lroz;-><init>(Ljava/lang/String;III)V

    goto/32 :goto_581

    nop

    nop

    nop

    nop

    :goto_6d
    sput-object v12, Ldzi;->b:[I

    nop

    nop

    nop

    goto/32 :goto_a2

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    invoke-direct {v2, v15, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2fc

    nop

    nop

    nop

    :goto_6f
    const-string v9, "GPSDestDistance"

    nop

    nop

    goto/32 :goto_275

    nop

    nop

    :goto_70
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_1db

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_71
    new-instance v3, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49a

    nop

    nop

    nop

    nop

    nop

    :goto_72
    aput-object v6, v0, v4

    nop

    goto/32 :goto_1a0

    nop

    nop

    nop

    :goto_73
    const/16 v5, 0x37

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_74
    invoke-direct {v2, v9, v15, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2d4

    nop

    nop

    nop

    nop

    :goto_75
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a8

    nop

    nop

    nop

    nop

    nop

    :goto_76
    const-string v15, "PlanarConfiguration"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4d1

    nop

    nop

    nop

    nop

    :goto_77
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto/32 :goto_c4

    nop

    nop

    :goto_78
    invoke-direct {v3, v6, v13, v15, v4}, Lroz;-><init>(Ljava/lang/String;III)V

    goto/32 :goto_298

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4cd

    nop

    nop

    nop

    :goto_7a
    new-instance v6, Lroz;

    nop

    nop

    goto/32 :goto_187

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    goto/32 :goto_396

    nop

    nop

    nop

    nop

    :goto_7c
    invoke-direct {v2, v6, v15, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4b0

    nop

    nop

    :goto_7d
    const v9, 0xa401

    nop

    nop

    nop

    goto/32 :goto_303

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7e
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_462

    nop

    nop

    nop

    :goto_7f
    const-string v15, "SamplesPerPixel"

    nop

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_80
    const v9, 0x9205

    nop

    nop

    nop

    nop

    goto/32 :goto_3c8

    nop

    nop

    nop

    :goto_81
    aput-object v0, v2, v6

    nop

    goto/32 :goto_553

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    new-array v2, v2, [Lroz;

    nop

    nop

    nop

    goto/32 :goto_414

    nop

    nop

    nop

    nop

    nop

    :goto_83
    aput-object v0, v2, v6

    nop

    nop

    goto/32 :goto_25c

    nop

    nop

    nop

    nop

    :goto_84
    aput-object v2, v12, v9

    nop

    nop

    nop

    goto/32 :goto_458

    nop

    nop

    :goto_85
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38c

    nop

    nop

    nop

    nop

    :goto_86
    aput-object v2, v12, v9

    nop

    nop

    goto/32 :goto_452

    nop

    nop

    nop

    nop

    :goto_87
    const-string v9, "BitsPerSample"

    nop

    goto/32 :goto_499

    nop

    nop

    nop

    :goto_88
    const/16 v11, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    :goto_89
    invoke-direct {v6, v9, v11, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4ca

    nop

    nop

    :goto_8a
    invoke-direct {v15, v2, v9, v11}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_9d

    nop

    nop

    nop

    :goto_8b
    invoke-direct {v15, v13, v3, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1f1

    nop

    nop

    nop

    :goto_8c
    const-string v6, "FlashEnergy"

    nop

    nop

    nop

    goto/32 :goto_122

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8d
    invoke-direct {v0, v6, v9, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4de

    nop

    nop

    nop

    nop

    :goto_8e
    new-array v3, v13, [Lroz;

    nop

    goto/32 :goto_455

    nop

    nop

    nop

    :goto_8f
    new-instance v6, Lroz;

    nop

    nop

    nop

    goto/32 :goto_4b2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_90
    const v9, 0xc620

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_308

    nop

    nop

    nop

    nop

    nop

    :goto_91
    const/16 v15, 0x103

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_92
    aput-object v3, v11, v4

    nop

    nop

    nop

    goto/32 :goto_218

    nop

    nop

    nop

    nop

    :goto_93
    const v9, 0xa405

    nop

    nop

    nop

    goto/32 :goto_530

    nop

    nop

    nop

    :goto_94
    new-instance v2, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_95
    const/16 v4, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_1f4

    nop

    nop

    nop

    :goto_96
    aput-object v6, v0, v11

    nop

    nop

    nop

    goto/32 :goto_441

    nop

    nop

    :goto_97
    const-string v9, "GPSTrack"

    nop

    nop

    nop

    goto/32 :goto_279

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_98
    const/16 v6, 0x132

    nop

    nop

    goto/32 :goto_35e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_99
    aput-object v6, v0, v9

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    :goto_9a
    new-instance v0, Lroz;

    nop

    nop

    goto/32 :goto_5aa

    nop

    nop

    :goto_9b
    const/4 v3, 0x5

    nop

    nop

    nop

    goto/32 :goto_58f

    nop

    nop

    nop

    :goto_9c
    const/16 v4, 0x24

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_439

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    const/4 v2, 0x0

    nop

    nop

    nop

    goto/32 :goto_21b

    nop

    nop

    nop

    nop

    :goto_9e
    aput-object v6, v0, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1da

    nop

    nop

    nop

    :goto_9f
    const-string v2, "NewSubfileType"

    nop

    nop

    nop

    goto/32 :goto_2e7

    nop

    nop

    :goto_a0
    const v15, 0x8769

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    nop

    nop

    :goto_a1
    new-instance v3, Lroz;

    nop

    nop

    nop

    goto/32 :goto_190

    nop

    nop

    :goto_a2
    new-array v12, v4, [B

    nop

    nop

    nop

    nop

    nop

    fill-array-data v12, :array_0

    goto/32 :goto_1d3

    nop

    nop

    :goto_a3
    const/16 v6, 0x103

    nop

    nop

    nop

    nop

    goto/32 :goto_1f8

    nop

    nop

    nop

    :goto_a4
    aput-object v9, v13, v10

    nop

    nop

    goto/32 :goto_281

    nop

    nop

    nop

    nop

    nop

    :goto_a5
    const-string v9, "ANMF"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    :goto_a6
    new-instance v6, Lroz;

    nop

    nop

    goto/32 :goto_41d

    nop

    nop

    nop

    :goto_a7
    invoke-direct {v4, v6, v13, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2e4

    nop

    nop

    :goto_a8
    const/4 v13, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_495

    nop

    nop

    nop

    :goto_a9
    const-string v9, "GPSImgDirection"

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    new-instance v3, Lroz;

    nop

    goto/32 :goto_498

    nop

    nop

    nop

    :goto_ab
    aput-object v2, v12, v6

    nop

    nop

    goto/32 :goto_574

    nop

    nop

    nop

    :goto_ac
    invoke-direct {v0, v6, v9, v11}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_384

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ad
    sput-object v3, Ldzi;->V:[Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_2f1

    nop

    nop

    nop

    nop

    :goto_ae
    const/4 v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_af
    const v5, 0xa005

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16a

    nop

    nop

    nop

    nop

    nop

    :goto_b0
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_54e

    nop

    nop

    :goto_b1
    const-string v4, "ReferenceBlackWhite"

    nop

    nop

    nop

    nop

    goto/32 :goto_213

    nop

    nop

    nop

    nop

    nop

    :goto_b2
    invoke-direct {v0, v6, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_50d

    nop

    nop

    :goto_b3
    invoke-direct {v6, v9, v15, v0}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_18a

    nop

    nop

    :goto_b4
    const-string v6, "OffsetTimeDigitized"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_572

    nop

    nop

    nop

    :goto_b5
    aput-object v2, v12, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    :goto_b6
    invoke-direct {v2, v6, v15, v11}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_36

    nop

    nop

    nop

    :goto_b7
    const-string v9, "GPSSpeedRef"

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_b8
    const/16 v6, 0x3d

    nop

    nop

    nop

    nop

    goto/32 :goto_5c2

    nop

    nop

    :goto_b9
    const-string v6, "Flash"

    nop

    nop

    nop

    nop

    goto/32 :goto_2c8

    nop

    nop

    nop

    :goto_ba
    const/16 v6, 0x12

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    nop

    :goto_bb
    const/4 v15, 0x7

    nop

    goto/32 :goto_585

    nop

    nop

    :goto_bc
    invoke-static {v9, v15, v2, v12}, Ldzi;->d(IIII)I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_2d3

    nop

    nop

    nop

    :goto_bd
    aput-object v6, v0, v9

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    :goto_be
    const/16 v12, 0x52

    nop

    nop

    nop

    nop

    goto/32 :goto_172

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_bf
    const/16 v6, 0x1e

    nop

    nop

    nop

    goto/32 :goto_433

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    aput-object v0, v2, v6

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c1
    new-instance v4, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_381

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    aput-object v2, v12, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a1

    nop

    nop

    :goto_c3
    const/4 v5, 0x1

    nop

    nop

    goto/32 :goto_448

    nop

    nop

    nop

    nop

    :goto_c4
    const/4 v9, 0x0

    nop

    :goto_c5
    goto/32 :goto_5c7

    nop

    nop

    :goto_c6
    const v9, 0x9286

    nop

    nop

    goto/32 :goto_529

    nop

    nop

    nop

    nop

    nop

    :goto_c7
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44d

    nop

    nop

    :goto_c8
    const-string v6, "OffsetTime"

    nop

    nop

    nop

    goto/32 :goto_4df

    nop

    nop

    nop

    nop

    nop

    :goto_c9
    invoke-direct {v0, v6, v9, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_398

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    const/4 v13, 0x2

    nop

    goto/32 :goto_54d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_cb
    const v15, 0x8298

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_cc
    invoke-direct {v2, v6, v15, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_19

    nop

    nop

    :goto_cd
    aput-object v0, v2, v6

    nop

    nop

    goto/32 :goto_2ce

    nop

    nop

    nop

    :goto_ce
    const/16 v6, 0x1a

    nop

    nop

    nop

    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_cf
    aput-object v3, v11, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44f

    nop

    nop

    nop

    :goto_d0
    const/16 v15, 0xa

    nop

    goto/32 :goto_593

    nop

    nop

    nop

    nop

    :goto_d1
    aget-object v1, v0, v1

    nop

    goto/32 :goto_466

    nop

    nop

    :goto_d2
    new-instance v6, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    :goto_d3
    aput-object v6, v2, v0

    nop

    nop

    goto/32 :goto_1c2

    nop

    nop

    nop

    nop

    :goto_d4
    new-instance v2, Lroz;

    nop

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    :goto_d5
    aput-object v3, v11, v4

    nop

    nop

    goto/32 :goto_231

    nop

    nop

    nop

    :goto_d6
    const/16 v4, 0x19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    invoke-direct {v0, v6, v9, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_314

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_3ce

    nop

    nop

    nop

    :goto_d9
    invoke-direct {v0, v6, v9, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_da
    new-instance v2, Lroz;

    nop

    goto/32 :goto_24f

    nop

    nop

    nop

    :goto_db
    const-string v0, "^(\\d{4})-(\\d{2})-(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    nop

    goto/32 :goto_42d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_dc
    const/4 v3, 0x2

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_dd
    const/16 v9, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_3df

    nop

    nop

    nop

    nop

    nop

    :goto_de
    invoke-direct {v0, v6, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_ff

    nop

    nop

    nop

    :goto_df
    new-instance v6, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_15e

    nop

    nop

    nop

    nop

    :goto_e0
    new-instance v2, Lroz;

    nop

    nop

    nop

    goto/32 :goto_173

    nop

    nop

    nop

    :goto_e1
    const/16 v11, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_57b

    nop

    nop

    :goto_e2
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_5b8

    nop

    nop

    nop

    :goto_e3
    const-string v6, "ExposureMode"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f8

    nop

    nop

    nop

    :goto_e4
    const-string v15, "StripByteCounts"

    nop

    nop

    goto/32 :goto_449

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    aput-object v2, v12, v6

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    :goto_e6
    const-string v17, "BYTE"

    nop

    goto/32 :goto_2a1

    nop

    nop

    :goto_e7
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v12

    nop

    nop

    nop

    nop

    goto/32 :goto_288

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    sget-object v6, Lcom/google/android/apps/camera/whitebalance/YD/hwKuVzZ;->NrYPySeTru:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_34b

    nop

    nop

    nop

    nop

    nop

    :goto_e9
    const-string v6, "Gamma"

    nop

    nop

    nop

    goto/32 :goto_55d

    nop

    nop

    nop

    nop

    :goto_ea
    aput-object v6, v2, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_186

    nop

    nop

    :goto_eb
    sput-object v0, Ldzi;->C:Ljava/util/Set;

    nop

    goto/32 :goto_62

    nop

    nop

    :goto_ec
    const/16 v9, 0x2bc

    nop

    goto/32 :goto_4b5

    nop

    nop

    nop

    :goto_ed
    const-string v6, "SubSecTimeDigitized"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_248

    nop

    nop

    nop

    nop

    :goto_ee
    const v6, 0xc620

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ef
    new-instance v0, Lroz;

    nop

    nop

    nop

    goto/32 :goto_289

    nop

    nop

    nop

    nop

    :goto_f0
    const/4 v13, 0x1

    nop

    nop

    nop

    goto/32 :goto_1fb

    nop

    nop

    nop

    nop

    nop

    :goto_f1
    const v15, 0x8827

    nop

    nop

    goto/32 :goto_44a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f2
    new-instance v2, Lroz;

    nop

    nop

    nop

    goto/32 :goto_506

    nop

    nop

    nop

    :goto_f3
    new-instance v0, Lroz;

    nop

    goto/32 :goto_13c

    nop

    nop

    nop

    nop

    nop

    :goto_f4
    const/16 v11, 0x11

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    nop

    :goto_f5
    const/4 v15, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_51a

    nop

    nop

    nop

    :goto_f6
    aput-object v0, v13, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    :goto_f7
    const-string v4, "Model"

    nop

    nop

    goto/32 :goto_102

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f8
    aput-object v3, v11, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_305

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f9
    const-string v15, "ResolutionUnit"

    nop

    nop

    nop

    nop

    goto/32 :goto_278

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    const/16 v4, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_2a7

    nop

    nop

    nop

    nop

    :goto_fb
    aput-object v6, v2, v0

    nop

    nop

    goto/32 :goto_58b

    nop

    nop

    :goto_fc
    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_5b4

    nop

    nop

    nop

    :goto_fd
    aput-object v6, v0, v15

    nop

    goto/32 :goto_290

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_fe
    const/4 v13, 0x1

    nop

    nop

    goto/32 :goto_4f6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    const/16 v6, 0x3a

    nop

    goto/32 :goto_135

    nop

    nop

    :goto_100
    invoke-direct {v0, v6, v9, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2b2

    nop

    nop

    nop

    nop

    :goto_101
    const/16 v9, 0x1c

    nop

    nop

    goto/32 :goto_24e

    nop

    nop

    :goto_102
    const/16 v6, 0x110

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_438

    nop

    nop

    nop

    nop

    nop

    :goto_103
    new-instance v3, Lroz;

    nop

    goto/32 :goto_3b1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_104
    new-instance v2, Lroz;

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_105
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_350

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_106
    const v9, 0x9011

    nop

    nop

    nop

    goto/32 :goto_331

    nop

    nop

    nop

    :goto_107
    sget-object v15, Lcom/google/android/apps/camera/debug/metrics/Rn/hhAHoOiyE;->NtjhnoMKCfnL:Ljava/lang/String;

    nop

    goto/32 :goto_56f

    nop

    nop

    nop

    nop

    :goto_108
    invoke-direct {v0, v6, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_109
    const/16 v9, 0x12

    nop

    nop

    nop

    nop

    goto/32 :goto_1c4

    nop

    nop

    nop

    :goto_10a
    const-string v20, "ULONG"

    nop

    nop

    nop

    nop

    goto/32 :goto_450

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    const/16 v9, 0x4e

    nop

    nop

    nop

    goto/32 :goto_5ca

    nop

    nop

    nop

    nop

    nop

    :goto_10c
    new-instance v3, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_341

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    const/16 v6, 0x36

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46f

    nop

    nop

    nop

    :goto_10e
    goto/32 :goto_1b0

    nop

    nop

    :goto_10f
    goto/32 :goto_559

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_110
    new-array v6, v7, [Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_111
    const-string v6, "JPEGInterchangeFormat"

    nop

    nop

    goto/32 :goto_2da

    nop

    nop

    nop

    nop

    :goto_112
    invoke-direct {v0, v6, v9, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_5bd

    nop

    nop

    nop

    nop

    :goto_113
    const v9, 0x9101

    nop

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    invoke-direct {v6, v9, v3, v13, v11}, Lroz;-><init>(Ljava/lang/String;III)V

    goto/32 :goto_5ab

    nop

    nop

    nop

    :goto_115
    const/16 v6, 0x1d

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_20e

    nop

    nop

    :goto_117
    const-string v9, "Model"

    nop

    nop

    nop

    nop

    goto/32 :goto_54f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_118
    invoke-direct {v0, v6, v9, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_436

    nop

    nop

    :goto_119
    const/16 v11, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    new-instance v2, Lroz;

    nop

    goto/32 :goto_22b

    nop

    nop

    nop

    nop

    nop

    :goto_11b
    const v9, 0xa301

    nop

    nop

    nop

    goto/32 :goto_13b

    nop

    nop

    nop

    nop

    :goto_11c
    const-string v9, "GPSDestLongitude"

    nop

    nop

    goto/32 :goto_4da

    nop

    nop

    :goto_11d
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21a

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    invoke-direct {v13, v7, v5, v10}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_43e

    nop

    nop

    nop

    nop

    nop

    :goto_11f
    const-string v4, "Artist"

    nop

    nop

    goto/32 :goto_3ae

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_120
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_488

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_121
    const-string v9, "GPSStatus"

    nop

    nop

    nop

    goto/32 :goto_130

    nop

    nop

    nop

    nop

    :goto_122
    const v9, 0xa20b

    nop

    nop

    nop

    nop

    goto/32 :goto_566

    nop

    nop

    nop

    nop

    nop

    :goto_123
    invoke-direct {v0, v6, v9, v11}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_125

    nop

    nop

    nop

    :goto_124
    new-instance v0, Lroz;

    nop

    goto/32 :goto_545

    nop

    nop

    nop

    nop

    nop

    :goto_125
    const/16 v6, 0x9

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_126
    const-string v6, "FocalPlaneXResolution"

    nop

    nop

    nop

    goto/32 :goto_23b

    nop

    nop

    nop

    nop

    :goto_127
    const/16 v4, 0xa

    nop

    nop

    goto/32 :goto_527

    nop

    nop

    :goto_128
    new-instance v0, Lroz;

    nop

    goto/32 :goto_479

    nop

    nop

    nop

    nop

    :goto_129
    const v9, 0x9102

    nop

    goto/32 :goto_5ac

    nop

    nop

    nop

    :goto_12a
    sget-object v4, Ldzi;->B:[Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_12b
    aput-object v3, v11, v4

    nop

    goto/32 :goto_546

    nop

    nop

    :goto_12c
    new-instance v6, Lroz;

    nop

    goto/32 :goto_241

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    move-object/from16 v21, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    :goto_12e
    aput-object v6, v4, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3db

    nop

    nop

    nop

    nop

    nop

    :goto_12f
    const/4 v11, 0x4

    nop

    nop

    nop

    goto/32 :goto_26f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_130
    const/16 v11, 0x9

    nop

    goto/32 :goto_43b

    nop

    nop

    nop

    :goto_131
    new-instance v6, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_132
    const-string v9, "GPSAreaInformation"

    nop

    goto/32 :goto_428

    nop

    nop

    :goto_133
    invoke-direct {v0, v6, v9, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_397

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_134
    aput-object v2, v12, v9

    nop

    goto/32 :goto_3cd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_135
    aput-object v0, v2, v6

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_136
    new-instance v6, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d2

    nop

    nop

    :goto_137
    const/4 v6, 0x2

    nop

    nop

    goto/32 :goto_4a9

    nop

    nop

    nop

    :goto_138
    aput-object v6, v0, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c4

    nop

    nop

    nop

    :goto_139
    const/16 v6, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_165

    nop

    nop

    nop

    nop

    :goto_13a
    aput-object v0, v2, v6

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    nop

    :goto_13b
    invoke-direct {v0, v6, v9, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4a0

    nop

    nop

    :goto_13c
    const-string v6, "SubSecTimeOriginal"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_292

    nop

    nop

    nop

    nop

    :goto_13d
    const/16 v3, 0x9

    nop

    nop

    goto/32 :goto_258

    nop

    nop

    nop

    nop

    nop

    :goto_13e
    const/16 v15, 0x11a

    nop

    nop

    nop

    goto/32 :goto_2f3

    nop

    nop

    :goto_13f
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52f

    nop

    nop

    nop

    nop

    nop

    :goto_140
    const-string v2, "ExposureTime"

    nop

    nop

    nop

    nop

    goto/32 :goto_463

    nop

    nop

    :goto_141
    invoke-direct {v2, v15, v9, v4, v11}, Lroz;-><init>(Ljava/lang/String;III)V

    goto/32 :goto_27a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_142
    const-string v6, "LensModel"

    nop

    goto/32 :goto_2ee

    nop

    nop

    nop

    nop

    nop

    :goto_143
    const/16 v4, 0x2040

    nop

    nop

    nop

    goto/32 :goto_492

    nop

    nop

    nop

    :goto_144
    const/16 v6, 0x18

    nop

    goto/32 :goto_29f

    nop

    nop

    nop

    :goto_145
    aput-object v3, v11, v4

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_146
    aput-object v2, v12, v9

    nop

    nop

    nop

    goto/32 :goto_181

    nop

    nop

    nop

    nop

    :goto_147
    aput-object v6, v0, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2fd

    nop

    nop

    nop

    nop

    :goto_148
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2c6

    nop

    nop

    nop

    :goto_149
    sput-object v15, Ldzi;->r:[B

    nop

    nop

    nop

    goto/32 :goto_280

    nop

    nop

    nop

    :goto_14a
    const-string v6, "SpatialFrequencyResponse"

    nop

    goto/32 :goto_406

    nop

    nop

    :goto_14b
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_276

    nop

    nop

    nop

    nop

    nop

    :goto_14c
    invoke-direct {v0, v6, v9, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_14d
    new-array v12, v12, [Lroz;

    nop

    nop

    goto/32 :goto_163

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14e
    new-instance v3, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_50e

    nop

    nop

    nop

    nop

    :goto_14f
    const v15, 0x8824

    nop

    nop

    nop

    goto/32 :goto_156

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_150
    invoke-direct {v0, v6, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_3f1

    nop

    nop

    nop

    :goto_151
    sput-object v2, Ldzi;->A:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_152
    new-instance v0, Lroz;

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_153
    aput-object v6, v0, v9

    nop

    nop

    goto/32 :goto_319

    nop

    nop

    nop

    :goto_154
    sput-object v12, Ldzi;->l:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_59a

    nop

    nop

    :goto_155
    const/4 v10, 0x3

    nop

    goto/32 :goto_5b7

    nop

    nop

    nop

    nop

    :goto_156
    invoke-direct {v6, v9, v15, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_483

    nop

    nop

    nop

    nop

    nop

    :goto_157
    const v9, 0x920a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_158
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    goto/32 :goto_556

    nop

    nop

    :goto_159
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_31d

    nop

    nop

    nop

    nop

    nop

    :goto_15a
    invoke-direct {v0, v6, v9, v11}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2a5

    nop

    nop

    nop

    nop

    :goto_15b
    const-string v4, "XResolution"

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_15c
    sget-object v4, Landroidx/viewpager2/widget/jY/lIiWb;->PjiMvLU:Ljava/lang/String;

    nop

    goto/32 :goto_1ff

    nop

    nop

    nop

    :goto_15d
    new-instance v6, Lroz;

    nop

    goto/32 :goto_3ee

    nop

    nop

    nop

    nop

    :goto_15e
    const-string v9, "SpectralSensitivity"

    nop

    goto/32 :goto_14f

    nop

    nop

    nop

    :goto_15f
    new-instance v0, Lroz;

    nop

    nop

    nop

    goto/32 :goto_560

    nop

    nop

    nop

    nop

    nop

    :goto_160
    new-instance v6, Lroz;

    nop

    nop

    goto/32 :goto_4be

    nop

    nop

    nop

    :goto_161
    const-string v6, "YCbCrCoefficients"

    nop

    nop

    nop

    nop

    goto/32 :goto_418

    nop

    nop

    nop

    nop

    :goto_162
    new-instance v2, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_3f0

    nop

    nop

    nop

    :goto_163
    new-instance v15, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_164
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_355

    nop

    nop

    :goto_165
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_166
    aput-object v0, v2, v6

    nop

    nop

    goto/32 :goto_3c0

    nop

    nop

    nop

    :goto_167
    const/16 v6, 0x10f

    nop

    nop

    nop

    nop

    goto/32 :goto_591

    nop

    nop

    nop

    nop

    nop

    :goto_168
    aput-object v3, v11, v4

    nop

    nop

    goto/32 :goto_287

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_169
    invoke-direct {v6, v9, v15, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_d3

    nop

    nop

    nop

    nop

    nop

    :goto_16a
    invoke-direct {v3, v4, v5, v0}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_323

    nop

    nop

    nop

    :goto_16b
    const/4 v13, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_3dd

    nop

    nop

    nop

    nop

    :goto_16c
    sput-object v12, Ldzi;->o:[B

    nop

    goto/32 :goto_388

    nop

    nop

    nop

    :goto_16d
    const/4 v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_43c

    nop

    nop

    nop

    :goto_16e
    new-instance v0, Lroz;

    nop

    nop

    nop

    goto/32 :goto_301

    nop

    nop

    nop

    nop

    :goto_16f
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    :goto_170
    add-int/lit8 v9, v9, 0x1

    nop

    goto/32 :goto_4f0

    nop

    nop

    :goto_171
    invoke-direct {v0, v6, v9, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4e4

    nop

    nop

    nop

    nop

    nop

    :goto_172
    const/16 v15, 0x48

    nop

    nop

    goto/32 :goto_24b

    nop

    nop

    nop

    nop

    :goto_173
    const-string v6, "JpgFromRaw"

    nop

    goto/32 :goto_32b

    nop

    nop

    nop

    nop

    :goto_174
    const/16 v6, 0x29

    nop

    goto/32 :goto_391

    nop

    nop

    nop

    :goto_175
    filled-new-array {v1, v3, v5, v7}, [Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    goto/32 :goto_193

    nop

    nop

    nop

    :goto_176
    const/16 v15, 0x45

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e4

    nop

    nop

    nop

    :goto_177
    aput-object v0, v2, v6

    nop

    nop

    goto/32 :goto_ef

    nop

    nop

    nop

    nop

    :goto_178
    const v6, 0x8298

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_563

    nop

    nop

    :goto_179
    new-instance v6, Lroz;

    nop

    nop

    nop

    goto/32 :goto_332

    nop

    nop

    nop

    nop

    nop

    :goto_17a
    const/16 v6, 0x31

    nop

    nop

    nop

    nop

    goto/32 :goto_177

    nop

    nop

    nop

    nop

    nop

    :goto_17b
    sput-object v9, Ldzi;->S:[Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_53c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17c
    invoke-direct {v0, v6, v9, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_32f

    nop

    nop

    nop

    :goto_17d
    aput-object v2, v12, v9

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17e
    const-string v4, "Copyright"

    nop

    nop

    nop

    goto/32 :goto_178

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17f
    const-string v28, "DOUBLE"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_342

    nop

    nop

    nop

    nop

    nop

    :goto_180
    invoke-direct {v0, v6, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_40e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_181
    new-instance v2, Lroz;

    nop

    goto/32 :goto_40a

    nop

    nop

    nop

    nop

    nop

    :goto_182
    const-string v9, "GPSSatellites"

    nop

    nop

    nop

    nop

    goto/32 :goto_209

    nop

    nop

    nop

    nop

    :goto_183
    const-string v4, "StripOffsets"

    nop

    nop

    goto/32 :goto_474

    nop

    nop

    :goto_184
    invoke-direct {v6, v9, v11, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_185
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    nop

    nop

    nop

    goto/32 :goto_12f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_186
    new-instance v6, Lroz;

    nop

    goto/32 :goto_237

    nop

    nop

    nop

    nop

    nop

    :goto_187
    const-string v13, "PreviewImageStart"

    nop

    nop

    nop

    goto/32 :goto_440

    nop

    nop

    :goto_188
    const/16 v4, 0x1c

    nop

    nop

    nop

    goto/32 :goto_1c6

    nop

    nop

    nop

    :goto_189
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_35a

    nop

    nop

    nop

    nop

    :goto_18a
    aput-object v6, v2, v13

    nop

    nop

    nop

    goto/32 :goto_584

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18b
    const v9, 0xa003

    nop

    nop

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    :goto_18c
    const-string v9, "PhotometricInterpretation"

    nop

    goto/32 :goto_3de

    nop

    nop

    nop

    nop

    nop

    :goto_18d
    aput-object v2, v12, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_286

    nop

    nop

    nop

    nop

    :goto_18e
    invoke-direct {v11, v15, v6, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2c7

    nop

    nop

    nop

    nop

    :goto_18f
    const v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_16f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_190
    const-string v4, "JPEGInterchangeFormatLength"

    nop

    nop

    nop

    goto/32 :goto_230

    nop

    nop

    nop

    :goto_191
    aput-object v2, v12, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b1

    nop

    nop

    nop

    nop

    nop

    :goto_192
    const/16 v6, 0x43

    nop

    nop

    nop

    goto/32 :goto_4c1

    nop

    nop

    nop

    nop

    nop

    :goto_193
    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    goto/32 :goto_dc

    nop

    nop

    :goto_194
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_504

    nop

    nop

    :goto_195
    new-instance v3, Lroz;

    nop

    goto/32 :goto_548

    nop

    nop

    nop

    nop

    nop

    :goto_196
    const/16 v6, 0x128

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    :goto_197
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_534

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_198
    invoke-direct {v0, v6, v9, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_199
    const/16 v4, 0x1d

    nop

    nop

    goto/32 :goto_464

    nop

    nop

    nop

    nop

    nop

    :goto_19a
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_48b

    nop

    nop

    nop

    :goto_19b
    aput-object v2, v12, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_25e

    nop

    nop

    nop

    nop

    :goto_19c
    new-instance v3, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_295

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19d
    invoke-direct {v2, v15, v9, v4, v11}, Lroz;-><init>(Ljava/lang/String;III)V

    goto/32 :goto_2a6

    nop

    nop

    nop

    nop

    :goto_19e
    const/4 v3, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_3ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19f
    invoke-direct {v6, v9, v15, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_39b

    nop

    nop

    nop

    nop

    :goto_1a0
    new-instance v6, Lroz;

    nop

    nop

    goto/32 :goto_45d

    nop

    nop

    nop

    :goto_1a1
    const v9, 0xa217

    nop

    nop

    nop

    nop

    goto/32 :goto_338

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a2
    const-string v15, "AspectFrame"

    nop

    nop

    nop

    nop

    goto/32 :goto_5a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a3
    const-string v9, "GPSDestLongitudeRef"

    nop

    goto/32 :goto_469

    nop

    nop

    :goto_1a4
    const-string v4, "InteroperabilityIFDPointer"

    nop

    nop

    nop

    goto/32 :goto_af

    nop

    nop

    :goto_1a5
    const/16 v9, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_1f3

    nop

    nop

    nop

    :goto_1a6
    aput-object v3, v11, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_4a6

    nop

    nop

    nop

    nop

    :goto_1a7
    if-lt v4, v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_5bb

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_358

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a8
    invoke-direct {v2, v6, v15, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_1a9
    new-instance v2, Lroz;

    nop

    nop

    nop

    goto/32 :goto_515

    nop

    nop

    nop

    :goto_1aa
    const v9, 0xa420

    nop

    nop

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_1ab
    const-string v6, "DigitalZoomRatio"

    nop

    goto/32 :goto_3a1

    nop

    nop

    :goto_1ac
    new-instance v0, Lroz;

    nop

    goto/32 :goto_561

    nop

    nop

    nop

    nop

    nop

    :goto_1ad
    new-instance v3, Lroz;

    nop

    nop

    nop

    goto/32 :goto_15b

    nop

    nop

    nop

    nop

    nop

    :goto_1ae
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3d4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1af
    return-void

    nop

    nop

    nop

    :array_0
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_1
    .array-data 1
        0x66t
        0x74t
        0x79t
        0x70t
    .end array-data

    :array_2
    .array-data 1
        0x6dt
        0x69t
        0x66t
        0x31t
    .end array-data

    :array_3
    .array-data 1
        0x68t
        0x65t
        0x69t
        0x63t
    .end array-data

    :array_4
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x66t
    .end array-data

    :array_5
    .array-data 1
        0x61t
        0x76t
        0x69t
        0x73t
    .end array-data

    :array_6
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_7
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_8
    .array-data 1
        -0x77t
        0x50t
        0x4et
        0x47t
        0xdt
        0xat
        0x1at
        0xat
    .end array-data

    :array_9
    .array-data 1
        0x52t
        0x49t
        0x46t
        0x46t
    .end array-data

    :array_a
    .array-data 1
        0x57t
        0x45t
        0x42t
        0x50t
    .end array-data

    :array_b
    .array-data 1
        0x45t
        0x58t
        0x49t
        0x46t
    .end array-data

    :array_c
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
        0x1
    .end array-data

    :array_d
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data

    :goto_1b0
    goto/32 :goto_50c

    nop

    nop

    nop

    nop

    :goto_1b1
    aput-object v3, v11, v4

    nop

    nop

    nop

    goto/32 :goto_a1

    nop

    nop

    nop

    :goto_1b2
    const v5, 0x8769

    nop

    nop

    nop

    nop

    goto/32 :goto_229

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b3
    const/4 v15, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_1b4
    const/16 v6, 0x11b

    nop

    goto/32 :goto_148

    nop

    nop

    :goto_1b5
    const-string v6, "SensingMethod"

    nop

    nop

    goto/32 :goto_1a1

    nop

    nop

    :goto_1b6
    new-instance v0, Lroz;

    nop

    nop

    nop

    goto/32 :goto_3da

    nop

    nop

    :goto_1b7
    invoke-virtual {v2, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_33a

    nop

    nop

    nop

    nop

    :goto_1b8
    aput-object v6, v0, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    :goto_1b9
    invoke-direct {v0, v6, v9, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_313

    nop

    nop

    :goto_1ba
    const-string v4, "PlanarConfiguration"

    nop

    nop

    goto/32 :goto_2c0

    nop

    nop

    nop

    :goto_1bb
    new-instance v3, Lroz;

    nop

    goto/32 :goto_4fd

    nop

    nop

    nop

    :goto_1bc
    new-instance v3, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a4

    nop

    nop

    nop

    nop

    :goto_1bd
    const v9, 0x927c

    nop

    nop

    nop

    goto/32 :goto_5a3

    nop

    nop

    nop

    nop

    :goto_1be
    new-instance v6, Lroz;

    nop

    nop

    goto/32 :goto_2df

    nop

    nop

    nop

    :goto_1bf
    new-instance v0, Lroz;

    nop

    goto/32 :goto_477

    nop

    nop

    nop

    :goto_1c0
    aget-object v6, v6, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_48e

    nop

    nop

    nop

    nop

    nop

    :goto_1c1
    new-instance v0, Lroz;

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    :goto_1c2
    new-instance v6, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_523

    nop

    nop

    :goto_1c3
    const/16 v15, 0x101

    nop

    nop

    goto/32 :goto_369

    nop

    nop

    :goto_1c4
    aput-object v2, v12, v9

    nop

    goto/32 :goto_27b

    nop

    nop

    nop

    nop

    nop

    :goto_1c5
    invoke-direct {v6, v9, v11, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1a5

    nop

    nop

    :goto_1c6
    aput-object v3, v11, v4

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    nop

    nop

    :goto_1c7
    aput-object v0, v2, v6

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    nop

    :goto_1c8
    aput-object v2, v12, v9

    nop

    nop

    nop

    goto/32 :goto_1a9

    nop

    nop

    nop

    nop

    nop

    :goto_1c9
    sput-object v11, Ldzi;->T:[Lroz;

    nop

    nop

    goto/32 :goto_1bb

    nop

    nop

    nop

    nop

    nop

    :goto_1ca
    const-string v2, "UTC"

    nop

    nop

    goto/32 :goto_1fd

    nop

    nop

    :goto_1cb
    new-instance v0, Lroz;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_1cc
    const/16 v15, 0x10e

    nop

    nop

    goto/32 :goto_30e

    nop

    nop

    nop

    nop

    :goto_1cd
    const/16 v6, 0x37

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_202

    nop

    nop

    nop

    :goto_1ce
    sget-object v6, Lcom/google/android/apps/camera/debugui/aq/mYisgsXg;->XjskVdeJdcfbC:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_562

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1cf
    const/16 v6, 0x18

    nop

    nop

    nop

    goto/32 :goto_451

    nop

    nop

    nop

    nop

    :goto_1d0
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v12

    nop

    nop

    goto/32 :goto_1f5

    nop

    nop

    nop

    nop

    nop

    :goto_1d1
    const v15, 0x8825

    nop

    nop

    nop

    goto/32 :goto_33c

    nop

    nop

    nop

    nop

    :goto_1d2
    const-string v9, "GPSVersionID"

    nop

    nop

    nop

    goto/32 :goto_3d1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d3
    sput-object v12, Ldzi;->c:[B

    nop

    nop

    nop

    goto/32 :goto_3ac

    nop

    nop

    nop

    nop

    nop

    :goto_1d4
    sput-object v15, Ldzi;->Y:[Lroz;

    nop

    nop

    nop

    goto/32 :goto_223

    nop

    nop

    :goto_1d5
    const-string v6, "ISOSpeed"

    nop

    nop

    goto/32 :goto_206

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d6
    const-string v9, "FNumber"

    nop

    nop

    nop

    goto/32 :goto_4cb

    nop

    nop

    :goto_1d7
    aput-object v12, v13, v2

    nop

    goto/32 :goto_4e5

    nop

    nop

    nop

    nop

    :goto_1d8
    new-instance v6, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    :goto_1d9
    new-instance v2, Lroz;

    nop

    goto/32 :goto_57c

    nop

    nop

    nop

    :goto_1da
    new-instance v6, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    nop

    :goto_1db
    aput-object v4, v3, v6

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    nop

    :goto_1dc
    invoke-direct {v0, v6, v9, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_242

    nop

    nop

    nop

    :goto_1dd
    const/16 v6, 0x13e

    nop

    goto/32 :goto_5a0

    nop

    nop

    :goto_1de
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_5a5

    nop

    nop

    nop

    nop

    nop

    :goto_1df
    aput-object v0, v2, v6

    nop

    nop

    nop

    goto/32 :goto_1e3

    nop

    nop

    nop

    nop

    :goto_1e0
    const/4 v11, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ef

    nop

    nop

    :goto_1e1
    const v9, 0xa433

    nop

    nop

    goto/32 :goto_37f

    nop

    nop

    nop

    :goto_1e2
    aput-object v6, v0, v11

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e3
    new-instance v0, Lroz;

    nop

    goto/32 :goto_2f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e4
    invoke-static {v2, v15, v9, v12}, Ldzi;->d(IIII)I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40d

    nop

    nop

    :goto_1e5
    const v9, 0xa005

    nop

    goto/32 :goto_15a

    nop

    nop

    nop

    nop

    :goto_1e6
    invoke-direct {v0, v6, v9, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4d7

    nop

    nop

    nop

    nop

    nop

    :goto_1e7
    const-string v9, "GPSDOP"

    nop

    goto/32 :goto_22f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e8
    const/16 v6, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_597

    nop

    nop

    :goto_1e9
    new-instance v2, Lroz;

    nop

    nop

    goto/32 :goto_3f5

    nop

    nop

    :goto_1ea
    const-string v6, "YCbCrSubSampling"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_543

    nop

    nop

    nop

    nop

    nop

    :goto_1eb
    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto/32 :goto_4a3

    nop

    nop

    :goto_1ec
    sget-object v0, Ldzi;->Z:[Lroz;

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    nop

    nop

    :goto_1ed
    const/16 v6, 0x2f

    nop

    goto/32 :goto_4c3

    nop

    nop

    nop

    nop

    nop

    :goto_1ee
    const-string v6, "FocalLength"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_157

    nop

    nop

    nop

    nop

    :goto_1ef
    filled-new-array {v8, v10, v12, v14}, [Ljava/lang/Integer;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_517

    nop

    nop

    :goto_1f0
    const/16 v9, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    :goto_1f1
    aput-object v15, v11, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59b

    nop

    nop

    :goto_1f2
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f3
    aput-object v6, v0, v9

    nop

    goto/32 :goto_519

    nop

    nop

    nop

    nop

    :goto_1f4
    aput-object v3, v11, v4

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    :goto_1f5
    invoke-virtual {v9, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    goto/32 :goto_274

    nop

    nop

    :goto_1f6
    const-string v9, "OECF"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f7
    new-instance v3, Lroz;

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1f8
    invoke-direct {v3, v4, v6, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_352

    nop

    nop

    nop

    :goto_1f9
    const/4 v6, 0x1

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fa
    const/16 v6, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_189

    nop

    nop

    nop

    nop

    :goto_1fb
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1fc
    const-string v26, "SRATIONAL"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2eb

    nop

    nop

    nop

    nop

    nop

    :goto_1fd
    invoke-static {v2}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_425

    nop

    nop

    :goto_1fe
    invoke-direct {v2, v9, v15, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_3fe

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1ff
    const/16 v6, 0x117

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_200
    const/4 v13, 0x3

    nop

    nop

    nop

    goto/32 :goto_472

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_201
    aput-object v9, v12, v0

    nop

    nop

    nop

    goto/32 :goto_324

    nop

    nop

    :goto_202
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :goto_203
    invoke-direct {v0, v6, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4af

    nop

    nop

    nop

    nop

    nop

    :goto_204
    aput-object v3, v11, v4

    nop

    goto/32 :goto_195

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_205
    const/4 v15, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_32d

    nop

    nop

    nop

    nop

    nop

    :goto_206
    const v9, 0x8833

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_207
    const-string v4, "FNumber"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_58c

    nop

    nop

    nop

    nop

    nop

    :goto_208
    new-instance v3, Lroz;

    nop

    nop

    goto/32 :goto_558

    nop

    nop

    nop

    :goto_209
    const/16 v11, 0x8

    nop

    nop

    nop

    goto/32 :goto_372

    nop

    nop

    :goto_20a
    const/16 v12, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_20b
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_284

    nop

    nop

    nop

    nop

    :goto_20c
    invoke-direct {v0, v6, v9, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_192

    nop

    nop

    nop

    nop

    nop

    :goto_20d
    const v6, 0x8769

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f9

    nop

    nop

    nop

    :goto_20e
    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_2ea

    nop

    nop

    nop

    nop

    nop

    :goto_20f
    const/4 v4, 0x0

    nop

    :goto_210
    goto/32 :goto_1a7

    nop

    nop

    nop

    nop

    :goto_211
    aput-object v0, v2, v6

    nop

    nop

    goto/32 :goto_4ae

    nop

    nop

    nop

    nop

    :goto_212
    move-object/from16 v20, v10

    nop

    nop

    nop

    nop

    goto/32 :goto_155

    nop

    nop

    nop

    nop

    nop

    :goto_213
    const/16 v6, 0x214

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_214
    const/16 v13, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_215
    aput-object v2, v12, v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a9

    nop

    nop

    :goto_216
    aput-object v2, v12, v6

    nop

    nop

    goto/32 :goto_3cf

    nop

    nop

    nop

    nop

    nop

    :goto_217
    const/16 v6, 0x23

    nop

    nop

    nop

    nop

    goto/32 :goto_249

    nop

    nop

    :goto_218
    new-instance v3, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_183

    nop

    nop

    nop

    :goto_219
    invoke-direct {v0, v6, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1cd

    nop

    nop

    nop

    :goto_21a
    const-string v6, "ImageUniqueID"

    nop

    nop

    nop

    goto/32 :goto_1aa

    nop

    nop

    nop

    nop

    nop

    :goto_21b
    aput-object v15, v12, v2

    nop

    goto/32 :goto_3c1

    nop

    nop

    nop

    nop

    nop

    :goto_21c
    const-string v7, "PreviewImageLength"

    nop

    nop

    nop

    nop

    goto/32 :goto_4a2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21d
    const-string v2, "Exif\u0000\u0000"

    nop

    nop

    nop

    goto/32 :goto_1b7

    nop

    nop

    nop

    nop

    nop

    :goto_21e
    aput-object v3, v11, v4

    nop

    goto/32 :goto_327

    nop

    nop

    :goto_21f
    const/4 v9, 0x0

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_220
    invoke-static {v0}, Lj$/util/DesugarCollections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_221
    invoke-direct {v4, v6, v13, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_70

    nop

    nop

    nop

    :goto_222
    const-string v6, "ImageProcessingIFDPointer"

    nop

    nop

    nop

    goto/32 :goto_54b

    nop

    nop

    nop

    nop

    nop

    :goto_223
    const/16 v7, 0xa

    nop

    nop

    goto/32 :goto_53a

    nop

    nop

    nop

    nop

    :goto_224
    sput-object v2, Ldzi;->Q:[Lroz;

    nop

    nop

    nop

    goto/32 :goto_3e2

    nop

    nop

    :goto_225
    invoke-direct {v6, v9, v11, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_33d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_226
    const v9, 0x9201

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_227
    new-instance v0, Ljava/util/HashSet;

    nop

    nop

    goto/32 :goto_140

    nop

    nop

    nop

    :goto_228
    new-instance v3, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    :goto_229
    invoke-direct {v3, v4, v5, v0}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_348

    nop

    nop

    nop

    :goto_22a
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3cc

    nop

    nop

    nop

    nop

    nop

    :goto_22b
    const-string v6, "GPSInfoIFDPointer"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d1

    nop

    nop

    nop

    nop

    nop

    :goto_22c
    const v9, 0xa40b

    nop

    nop

    nop

    goto/32 :goto_1b3

    nop

    nop

    nop

    nop

    :goto_22d
    invoke-direct {v3, v4, v6, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_65

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22e
    invoke-direct {v2, v9, v15, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_365

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22f
    const/16 v11, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_2fa

    nop

    nop

    nop

    :goto_230
    const/16 v6, 0x202

    nop

    nop

    goto/32 :goto_570

    nop

    nop

    nop

    nop

    :goto_231
    new-instance v3, Lroz;

    nop

    nop

    nop

    goto/32 :goto_2b9

    nop

    nop

    nop

    nop

    nop

    :goto_232
    const/16 v5, 0x2020

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4f7

    nop

    nop

    :goto_233
    const-string v25, "SLONG"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1fc

    nop

    nop

    nop

    nop

    nop

    :goto_234
    aput-object v3, v11, v4

    nop

    nop

    nop

    goto/32 :goto_586

    nop

    nop

    nop

    nop

    :goto_235
    const/16 v6, 0x2a

    nop

    goto/32 :goto_2d8

    nop

    nop

    nop

    :goto_236
    aput-object v2, v12, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46a

    nop

    nop

    :goto_237
    const-string v9, "StandardOutputSensitivity"

    nop

    goto/32 :goto_535

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_238
    const/16 v2, 0x4a

    nop

    nop

    nop

    nop

    goto/32 :goto_3a5

    nop

    nop

    nop

    :goto_239
    const v6, 0xc612

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f0

    nop

    nop

    nop

    nop

    nop

    :goto_23a
    const v9, 0xc612

    nop

    goto/32 :goto_51c

    nop

    nop

    :goto_23b
    const v9, 0xa20e

    nop

    nop

    nop

    nop

    goto/32 :goto_52a

    nop

    nop

    :goto_23c
    aput-object v2, v12, v6

    nop

    nop

    nop

    goto/32 :goto_260

    nop

    nop

    nop

    nop

    nop

    :goto_23d
    const/16 v9, 0x10

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_23e
    const/16 v9, 0x16

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_23f
    const-string v6, "ExifIFDPointer"

    nop

    nop

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    :goto_240
    const/16 v4, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_5c4

    nop

    nop

    nop

    nop

    :goto_241
    const-string v9, "GPSSpeed"

    nop

    nop

    goto/32 :goto_317

    nop

    nop

    nop

    nop

    :goto_242
    const/16 v6, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_194

    nop

    nop

    :goto_243
    const-string v6, "Copyright"

    nop

    nop

    nop

    goto/32 :goto_cb

    nop

    nop

    nop

    :goto_244
    filled-new-array {v6}, [I

    move-result-object v12

    nop

    goto/32 :goto_6d

    nop

    nop

    :goto_245
    const-string v6, "SubjectArea"

    nop

    goto/32 :goto_310

    nop

    nop

    :goto_246
    const-string v6, "OffsetTimeOriginal"

    nop

    nop

    nop

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    nop

    :goto_247
    const/16 v6, 0x201

    nop

    goto/32 :goto_430

    nop

    nop

    nop

    :goto_248
    const v9, 0x9292

    nop

    nop

    nop

    goto/32 :goto_273

    nop

    nop

    nop

    :goto_249
    aput-object v0, v2, v6

    nop

    nop

    nop

    goto/32 :goto_2d5

    nop

    nop

    nop

    :goto_24a
    const v9, 0xa431

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20c

    nop

    nop

    nop

    nop

    :goto_24b
    invoke-static {v2, v15, v9, v12}, Ldzi;->d(IIII)I

    move-result v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c9

    nop

    nop

    nop

    nop

    :goto_24c
    const-string v2, "yyyy:MM:dd HH:mm:ss"

    nop

    goto/32 :goto_507

    nop

    nop

    nop

    :goto_24d
    new-instance v0, Lroz;

    nop

    goto/32 :goto_14a

    nop

    nop

    nop

    nop

    nop

    :goto_24e
    aput-object v6, v0, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_478

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24f
    const-string v15, "JPEGInterchangeFormatLength"

    nop

    goto/32 :goto_2b4

    nop

    nop

    nop

    :goto_250
    const-string v9, "GPSDateStamp"

    nop

    nop

    goto/32 :goto_518

    nop

    nop

    :goto_251
    new-instance v2, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_3dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_252
    const/16 v6, 0x211

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    :goto_253
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    goto/32 :goto_2e0

    nop

    nop

    nop

    :goto_254
    aput-object v0, v2, v6

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    nop

    :goto_255
    sput-object v2, Ldzi;->B:[Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_227

    nop

    nop

    nop

    :goto_256
    const/16 v6, 0x15

    nop

    nop

    goto/32 :goto_329

    nop

    nop

    nop

    nop

    :goto_257
    iget v7, v5, Lroz;->b:I

    nop

    goto/32 :goto_3d6

    nop

    nop

    nop

    :goto_258
    aput-object v15, v13, v3

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_259
    iget v0, v0, Lroz;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    :goto_25a
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_5a2

    nop

    nop

    nop

    :goto_25b
    aput-object v3, v11, v4

    nop

    goto/32 :goto_32a

    nop

    nop

    :goto_25c
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_447

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25d
    aput-object v6, v0, v11

    nop

    nop

    goto/32 :goto_160

    nop

    nop

    nop

    nop

    :goto_25e
    new-instance v2, Lroz;

    nop

    nop

    nop

    goto/32 :goto_467

    nop

    nop

    nop

    nop

    nop

    :goto_25f
    new-array v15, v6, [B

    nop

    nop

    fill-array-data v15, :array_8

    goto/32 :goto_149

    nop

    nop

    nop

    nop

    :goto_260
    new-instance v2, Lroz;

    nop

    nop

    nop

    goto/32 :goto_1ea

    nop

    nop

    :goto_261
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_311

    nop

    nop

    nop

    nop

    :goto_262
    const-string v6, "ISOSpeedLatitudezzz"

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_263
    const-string v6, "ApertureValue"

    nop

    nop

    nop

    goto/32 :goto_533

    nop

    nop

    :goto_264
    const/16 v9, 0x44

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_265
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_266
    const/16 v13, 0x101

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_267
    const/16 v6, 0x25

    nop

    nop

    nop

    goto/32 :goto_2e6

    nop

    nop

    nop

    nop

    nop

    :goto_268
    new-instance v6, Lroz;

    nop

    goto/32 :goto_2a0

    nop

    nop

    :goto_269
    invoke-direct {v6, v9, v11, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_23e

    nop

    nop

    :goto_26a
    const/16 v13, 0x2020

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2c4

    nop

    nop

    :goto_26b
    const-string v9, "GPSTimeStamp"

    nop

    goto/32 :goto_1e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26c
    const/16 v11, 0x14

    nop

    nop

    goto/32 :goto_4ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_26d
    new-instance v3, Lroz;

    nop

    nop

    nop

    goto/32 :goto_17e

    nop

    nop

    nop

    :goto_26e
    aput-object v0, v2, v6

    nop

    nop

    goto/32 :goto_58d

    nop

    nop

    nop

    :goto_26f
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_34c

    nop

    nop

    :goto_270
    new-instance v2, Lroz;

    nop

    goto/32 :goto_400

    nop

    nop

    :goto_271
    const/16 v6, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_318

    nop

    nop

    :goto_272
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_3bc

    nop

    nop

    nop

    :goto_273
    invoke-direct {v0, v6, v9, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_217

    nop

    nop

    nop

    :goto_274
    const-string v9, "VP8 "

    nop

    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    :goto_275
    const/16 v11, 0x1a

    nop

    nop

    nop

    nop

    goto/32 :goto_371

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_276
    new-instance v0, Lroz;

    nop

    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    :goto_277
    const-string v15, "SubfileType"

    nop

    nop

    nop

    nop

    goto/32 :goto_497

    nop

    nop

    nop

    nop

    nop

    :goto_278
    const/16 v9, 0x128

    nop

    goto/32 :goto_4aa

    nop

    nop

    nop

    :goto_279
    const/16 v11, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_4c4

    nop

    nop

    nop

    nop

    nop

    :goto_27a
    const/16 v9, 0xa

    nop

    goto/32 :goto_475

    nop

    nop

    nop

    nop

    nop

    :goto_27b
    new-instance v2, Lroz;

    nop

    nop

    nop

    goto/32 :goto_34e

    nop

    nop

    nop

    :goto_27c
    filled-new-array {v4, v5, v2, v3}, [Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_588

    nop

    nop

    nop

    nop

    :goto_27d
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27e
    const/16 v11, 0x1e

    nop

    goto/32 :goto_225

    nop

    nop

    nop

    :goto_27f
    const/16 v6, 0x115

    nop

    nop

    goto/32 :goto_432

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_280
    const/16 v15, 0x58

    nop

    goto/32 :goto_5ad

    nop

    nop

    nop

    nop

    :goto_281
    const/4 v0, 0x4

    nop

    nop

    nop

    goto/32 :goto_4f9

    nop

    nop

    nop

    nop

    :goto_282
    invoke-direct {v2, v6, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2db

    nop

    nop

    nop

    :goto_283
    new-instance v2, Lroz;

    nop

    nop

    goto/32 :goto_4bf

    nop

    nop

    nop

    nop

    nop

    :goto_284
    const/16 v4, 0x18

    nop

    goto/32 :goto_383

    nop

    nop

    nop

    nop

    nop

    :goto_285
    invoke-direct {v0, v6, v9, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_429

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_286
    new-instance v2, Lroz;

    nop

    nop

    goto/32 :goto_243

    nop

    nop

    nop

    nop

    nop

    :goto_287
    new-instance v3, Lroz;

    nop

    nop

    nop

    goto/32 :goto_378

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_288
    invoke-virtual {v9, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    goto/32 :goto_316

    nop

    nop

    nop

    :goto_289
    const-string v6, "FileSource"

    nop

    goto/32 :goto_315

    nop

    nop

    nop

    :goto_28a
    const/16 v4, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a6

    nop

    nop

    nop

    nop

    nop

    :goto_28b
    aput-object v6, v0, v11

    nop

    nop

    nop

    goto/32 :goto_2bf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28c
    new-instance v6, Lroz;

    nop

    nop

    goto/32 :goto_1f6

    nop

    nop

    nop

    nop

    nop

    :goto_28d
    const/4 v13, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_3d2

    nop

    nop

    nop

    nop

    nop

    :goto_28e
    invoke-direct {v6, v9, v15, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_3e0

    nop

    nop

    nop

    nop

    nop

    :goto_28f
    const v9, 0xa002

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2de

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_290
    new-instance v6, Lroz;

    nop

    nop

    goto/32 :goto_3bf

    nop

    nop

    nop

    nop

    :goto_291
    aput-object v2, v12, v13

    nop

    nop

    nop

    goto/32 :goto_51b

    nop

    nop

    nop

    nop

    :goto_292
    const v9, 0x9291

    nop

    nop

    goto/32 :goto_198

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_293
    const-string v6, "ExposureIndex"

    nop

    nop

    goto/32 :goto_3d3

    nop

    nop

    nop

    nop

    nop

    :goto_294
    const/4 v2, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_579

    nop

    nop

    nop

    nop

    :goto_295
    const-string v4, "YCbCrCoefficients"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_252

    nop

    nop

    nop

    nop

    nop

    :goto_296
    aput-object v2, v12, v3

    nop

    nop

    nop

    goto/32 :goto_325

    nop

    nop

    nop

    :goto_297
    aput-object v3, v11, v4

    nop

    nop

    goto/32 :goto_357

    nop

    nop

    :goto_298
    aput-object v3, v11, v15

    nop

    nop

    goto/32 :goto_35d

    nop

    nop

    :goto_299
    const/16 v6, 0x116

    nop

    goto/32 :goto_4ba

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29a
    aput-object v6, v0, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_538

    nop

    nop

    nop

    nop

    :goto_29b
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_53b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29c
    sput-object v12, Ldzi;->m:[B

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_29d
    const-string v4, "SubIFDPointer"

    nop

    nop

    nop

    nop

    goto/32 :goto_431

    nop

    nop

    nop

    :goto_29e
    sput-object v0, Ldzi;->D:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    :goto_29f
    aput-object v0, v2, v6

    nop

    nop

    goto/32 :goto_15f

    nop

    nop

    nop

    :goto_2a0
    const-string v9, "GPSMapDatum"

    nop

    goto/32 :goto_2f6

    nop

    nop

    nop

    nop

    :goto_2a1
    const-string v18, "STRING"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e7

    nop

    nop

    nop

    nop

    :goto_2a2
    const-string v0, ".*[1-9].*"

    nop

    nop

    nop

    nop

    goto/32 :goto_253

    nop

    nop

    nop

    nop

    :goto_2a3
    invoke-direct {v0, v6, v9, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_47c

    nop

    nop

    :goto_2a4
    aput-object v0, v2, v6

    nop

    nop

    goto/32 :goto_152

    nop

    nop

    nop

    :goto_2a5
    const/16 v6, 0x29

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_2a6
    const/16 v9, 0xe

    nop

    nop

    nop

    goto/32 :goto_146

    nop

    nop

    nop

    nop

    :goto_2a7
    aput-object v3, v11, v4

    nop

    nop

    goto/32 :goto_4d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a8
    new-array v12, v11, [B

    nop

    fill-array-data v12, :array_5

    goto/32 :goto_16c

    nop

    nop

    :goto_2a9
    new-instance v2, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    nop

    nop

    nop

    :goto_2aa
    aput-object v6, v4, v7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ab
    invoke-direct {v2, v9, v15, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4ed

    nop

    nop

    :goto_2ac
    sget-object v4, Lcom/google/android/libraries/performance/primes/transmitter/clearcut/itlF/rqoPuzOSTbBmB;->hRqmBq:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_2ec

    nop

    nop

    nop

    :goto_2ad
    invoke-virtual {v9, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ae
    const-string v4, "WhitePoint"

    nop

    nop

    goto/32 :goto_1dd

    nop

    nop

    nop

    nop

    :goto_2af
    const/16 v4, 0x9

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b0
    const-string v9, "VP8X"

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_2b1
    new-instance v2, Lroz;

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b2
    const/16 v6, 0x38

    nop

    nop

    nop

    nop

    goto/32 :goto_4d3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b3
    const-string v6, "MakerNote"

    nop

    goto/32 :goto_1bd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b4
    const/16 v6, 0x202

    nop

    nop

    nop

    nop

    goto/32 :goto_55b

    nop

    nop

    :goto_2b5
    sget-object v6, Lcom/google/android/apps/camera/ui/eduimageview/JrT/cUhjhcVVea;->MHrXEyahi:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_5c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b6
    const v15, 0x8822

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28e

    nop

    nop

    :goto_2b7
    invoke-direct {v0, v6, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_567

    nop

    nop

    nop

    :goto_2b8
    invoke-direct {v0, v6, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    nop

    :goto_2b9
    const-string v4, "Compression"

    nop

    goto/32 :goto_a3

    nop

    nop

    nop

    nop

    :goto_2ba
    const/16 v6, 0x14

    nop

    nop

    goto/32 :goto_3af

    nop

    nop

    nop

    nop

    nop

    :goto_2bb
    sget-object v4, Ldzi;->A:[Ljava/util/HashMap;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_2bc
    sput-object v3, Ldzi;->U:Lroz;

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    nop

    nop

    :goto_2bd
    new-instance v11, Lroz;

    nop

    goto/32 :goto_48f

    nop

    nop

    nop

    nop

    nop

    :goto_2be
    invoke-direct {v2, v6, v9, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_353

    nop

    nop

    :goto_2bf
    new-instance v6, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_21f

    nop

    nop

    nop

    :goto_2c0
    const/16 v6, 0x11c

    nop

    goto/32 :goto_28d

    nop

    nop

    nop

    nop

    :goto_2c1
    const-string v4, "GPSInfoIFDPointer"

    nop

    nop

    nop

    goto/32 :goto_46b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c2
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_2b5

    nop

    nop

    :goto_2c3
    const/16 v9, 0x18

    nop

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    nop

    nop

    nop

    :goto_2c4
    const/4 v15, 0x4

    nop

    nop

    nop

    goto/32 :goto_a7

    nop

    nop

    nop

    :goto_2c5
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_2c6
    const/16 v4, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_4e1

    nop

    nop

    nop

    nop

    nop

    :goto_2c7
    const/4 v6, 0x0

    nop

    goto/32 :goto_4ad

    nop

    nop

    nop

    nop

    nop

    :goto_2c8
    const v9, 0x9209

    nop

    nop

    nop

    goto/32 :goto_3c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c9
    invoke-direct {v6, v7, v13, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_404

    nop

    nop

    nop

    :goto_2ca
    invoke-direct {v3, v4, v6, v13, v15}, Lroz;-><init>(Ljava/lang/String;III)V

    goto/32 :goto_9c

    nop

    nop

    nop

    :goto_2cb
    const/16 v4, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_145

    nop

    nop

    nop

    nop

    :goto_2cc
    invoke-direct {v0, v6, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_3f3

    nop

    nop

    :goto_2cd
    aput-object v6, v0, v9

    nop

    nop

    nop

    goto/32 :goto_1d8

    nop

    nop

    nop

    nop

    :goto_2ce
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_565

    nop

    nop

    nop

    :goto_2cf
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_265

    nop

    nop

    :goto_2d0
    const v9, 0x9208

    nop

    goto/32 :goto_2b7

    nop

    nop

    nop

    :goto_2d1
    const/16 v6, 0x47

    nop

    nop

    goto/32 :goto_41b

    nop

    nop

    nop

    :goto_2d2
    const/16 v11, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_326

    nop

    nop

    nop

    nop

    nop

    :goto_2d3
    sput v9, Ldzi;->s:I

    nop

    nop

    nop

    nop

    goto/32 :goto_264

    nop

    nop

    :goto_2d4
    const/16 v9, 0xb

    nop

    nop

    goto/32 :goto_17d

    nop

    nop

    nop

    nop

    nop

    :goto_2d5
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_592

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d6
    aput-object v2, v12, v6

    nop

    nop

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    :goto_2d7
    const/16 v4, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    nop

    :goto_2d8
    aput-object v0, v2, v6

    nop

    goto/32 :goto_24d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d9
    invoke-direct {v0, v6, v9, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_5be

    nop

    nop

    nop

    :goto_2da
    const/16 v15, 0x201

    nop

    goto/32 :goto_500

    nop

    nop

    nop

    nop

    :goto_2db
    const/16 v6, 0x27

    nop

    goto/32 :goto_b5

    nop

    nop

    nop

    :goto_2dc
    aput-object v3, v2, v4

    nop

    goto/32 :goto_4b9

    nop

    nop

    :goto_2dd
    aput-object v2, v12, v9

    nop

    nop

    goto/32 :goto_57e

    nop

    nop

    nop

    :goto_2de
    invoke-direct {v0, v6, v9, v4, v11}, Lroz;-><init>(Ljava/lang/String;III)V

    goto/32 :goto_2f4

    nop

    nop

    nop

    :goto_2df
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_402

    nop

    nop

    nop

    :goto_2e0
    const-string v0, "^(\\d{2}):(\\d{2}):(\\d{2})$"

    nop

    nop

    goto/32 :goto_158

    nop

    nop

    nop

    :goto_2e1
    const/16 v9, 0x14

    nop

    nop

    goto/32 :goto_1c8

    nop

    nop

    nop

    nop

    :goto_2e2
    const-string v9, "SensitivityType"

    nop

    nop

    nop

    nop

    goto/32 :goto_48c

    nop

    nop

    nop

    nop

    nop

    :goto_2e3
    invoke-direct {v6, v9, v15, v13, v11}, Lroz;-><init>(Ljava/lang/String;III)V

    goto/32 :goto_57f

    nop

    nop

    nop

    nop

    :goto_2e4
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_41f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e5
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_16d

    nop

    nop

    nop

    nop

    :goto_2e6
    aput-object v2, v12, v6

    nop

    nop

    nop

    goto/32 :goto_283

    nop

    nop

    nop

    nop

    :goto_2e7
    const/16 v9, 0xfe

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :goto_2e8
    const/4 v13, 0x2

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e9
    const-string v6, "CFAPattern"

    nop

    nop

    goto/32 :goto_3b3

    nop

    nop

    nop

    nop

    nop

    :goto_2ea
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    nop

    nop

    goto/32 :goto_5c6

    nop

    nop

    nop

    nop

    :goto_2eb
    const-string v27, "SINGLE"

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_2ec
    const/16 v6, 0x13f

    nop

    goto/32 :goto_20b

    nop

    nop

    nop

    :goto_2ed
    aget-object v0, v0, v1

    nop

    goto/32 :goto_259

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ee
    const v9, 0xa434

    nop

    nop

    nop

    goto/32 :goto_17c

    nop

    nop

    nop

    nop

    :goto_2ef
    invoke-direct {v6, v9, v11, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_29a

    nop

    nop

    nop

    nop

    :goto_2f0
    new-instance v6, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a3

    nop

    nop

    nop

    nop

    nop

    :goto_2f1
    new-array v4, v6, [Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_2f2
    invoke-direct {v3, v4, v5, v6}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_3b8

    nop

    nop

    :goto_2f3
    invoke-direct {v2, v9, v15, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4f4

    nop

    nop

    nop

    :goto_2f4
    const/16 v6, 0x26

    nop

    nop

    nop

    nop

    goto/32 :goto_166

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f5
    const/4 v13, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_321

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f6
    const/16 v11, 0x12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_578

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f7
    const-string v6, "RelatedSoundFile"

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f8
    const v9, 0xa402

    nop

    nop

    nop

    goto/32 :goto_2b8

    nop

    nop

    nop

    :goto_2f9
    sget-object v6, Ldzi;->B:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c0

    nop

    nop

    nop

    nop

    :goto_2fa
    invoke-direct {v6, v9, v11, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2fb
    const-string v6, "LensSpecification"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_575

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2fc
    const/16 v9, 0x11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2dd

    nop

    nop

    nop

    nop

    nop

    :goto_2fd
    new-instance v6, Lroz;

    nop

    nop

    nop

    goto/32 :goto_3ab

    nop

    nop

    nop

    nop

    :goto_2fe
    new-array v12, v6, [B

    nop

    nop

    nop

    nop

    nop

    fill-array-data v12, :array_d

    goto/32 :goto_435

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2ff
    aput-object v6, v0, v11

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    :goto_300
    const/16 v4, 0xe

    nop

    nop

    nop

    nop

    goto/32 :goto_437

    nop

    nop

    nop

    nop

    :goto_301
    const-string v6, "InteroperabilityIFDPointer"

    nop

    nop

    nop

    goto/32 :goto_1e5

    nop

    nop

    :goto_302
    new-instance v0, Lroz;

    nop

    nop

    goto/32 :goto_405

    nop

    nop

    nop

    nop

    :goto_303
    invoke-direct {v0, v6, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_47a

    nop

    nop

    nop

    :goto_304
    const-string v15, "YResolution"

    nop

    nop

    goto/32 :goto_38a

    nop

    nop

    nop

    :goto_305
    new-instance v3, Lroz;

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_306
    invoke-direct {v3, v4, v5, v0}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_75

    nop

    nop

    nop

    nop

    nop

    :goto_307
    const/16 v15, 0x112

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    :goto_308
    invoke-direct {v0, v6, v9, v4, v11}, Lroz;-><init>(Ljava/lang/String;III)V

    goto/32 :goto_66

    nop

    nop

    nop

    :goto_309
    const/16 v6, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    nop

    nop

    nop

    :goto_30a
    const/16 v9, 0x1b

    nop

    nop

    goto/32 :goto_153

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30b
    const v9, 0x9206

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_516

    nop

    nop

    nop

    :goto_30c
    invoke-direct {v6, v9, v4, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_72

    nop

    nop

    :goto_30d
    new-instance v3, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_502

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30e
    invoke-direct {v2, v9, v15, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_3cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30f
    aput-object v0, v2, v6

    nop

    nop

    goto/32 :goto_3f4

    nop

    nop

    nop

    :goto_310
    const v9, 0x9214

    nop

    goto/32 :goto_203

    nop

    nop

    :goto_311
    const/16 v4, 0x1e

    nop

    nop

    nop

    nop

    goto/32 :goto_5cc

    nop

    nop

    :goto_312
    const/16 v6, 0x1b

    nop

    nop

    nop

    goto/32 :goto_4a7

    nop

    nop

    nop

    nop

    :goto_313
    const/16 v6, 0x32

    nop

    nop

    goto/32 :goto_26e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_314
    const/16 v6, 0x41

    nop

    nop

    nop

    nop

    goto/32 :goto_56e

    nop

    nop

    nop

    :goto_315
    const v9, 0xa300

    nop

    goto/32 :goto_424

    nop

    nop

    nop

    :goto_316
    const-string v9, "ANIM"

    nop

    nop

    goto/32 :goto_374

    nop

    nop

    nop

    nop

    nop

    :goto_317
    const/16 v11, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_40f

    nop

    nop

    :goto_318
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :goto_319
    new-instance v6, Lroz;

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    :goto_31a
    const/16 v6, 0x213

    nop

    goto/32 :goto_261

    nop

    nop

    nop

    nop

    :goto_31b
    const/16 v6, 0x10e

    nop

    nop

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31c
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    nop

    nop

    nop

    goto/32 :goto_1ef

    nop

    nop

    nop

    :goto_31d
    move-object/from16 v2, v21

    nop

    nop

    goto/32 :goto_509

    nop

    nop

    nop

    nop

    :goto_31e
    invoke-direct {v3, v4, v5, v0}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_3d5

    nop

    nop

    nop

    :goto_31f
    aput-object v2, v12, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_320
    new-instance v0, Lroz;

    nop

    nop

    nop

    goto/32 :goto_246

    nop

    nop

    nop

    nop

    :goto_321
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2cb

    nop

    nop

    nop

    nop

    :goto_322
    const-string v9, "GPSDestLatitudeRef"

    nop

    nop

    goto/32 :goto_2d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_323
    const/4 v4, 0x3

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_324
    new-instance v2, Lroz;

    nop

    nop

    goto/32 :goto_410

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_325
    new-instance v2, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e3

    nop

    nop

    nop

    nop

    nop

    :goto_326
    invoke-direct {v6, v9, v11, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_327
    new-instance v3, Lroz;

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    :goto_328
    const/16 v6, 0x111

    nop

    nop

    goto/32 :goto_4b4

    nop

    nop

    nop

    nop

    :goto_329
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_337

    nop

    nop

    nop

    :goto_32a
    new-instance v3, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_583

    nop

    nop

    nop

    :goto_32b
    const/16 v9, 0x2e

    nop

    nop

    nop

    nop

    goto/32 :goto_2be

    nop

    nop

    nop

    nop

    :goto_32c
    const-string v4, "GPSInfoIFDPointer"

    nop

    goto/32 :goto_3bb

    nop

    nop

    nop

    nop

    :goto_32d
    invoke-direct {v2, v6, v15, v11}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_267

    nop

    nop

    nop

    nop

    :goto_32e
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_32f
    const/16 v6, 0x46

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_330
    const/16 v4, 0xd

    nop

    goto/32 :goto_21e

    nop

    nop

    :goto_331
    invoke-direct {v0, v6, v9, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_564

    nop

    nop

    nop

    nop

    nop

    :goto_332
    const-string v9, "GPSProcessingMethod"

    nop

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_333
    const/16 v12, 0x2a

    nop

    nop

    nop

    goto/32 :goto_14d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_334
    new-instance v3, Lroz;

    nop

    nop

    nop

    goto/32 :goto_35f

    nop

    nop

    :goto_335
    const/16 v4, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5bf

    nop

    nop

    nop

    :goto_336
    const-string v4, "YCbCrPositioning"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_31a

    nop

    nop

    nop

    nop

    :goto_337
    new-instance v0, Lroz;

    nop

    goto/32 :goto_4f5

    nop

    nop

    :goto_338
    invoke-direct {v0, v6, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_17a

    nop

    nop

    nop

    :goto_339
    aput-object v0, v2, v6

    nop

    nop

    nop

    goto/32 :goto_344

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33a
    sput-object v2, Ldzi;->h:[B

    nop

    goto/32 :goto_5b6

    nop

    nop

    nop

    nop

    nop

    :goto_33b
    const/16 v9, 0x9

    nop

    nop

    nop

    goto/32 :goto_422

    nop

    nop

    nop

    nop

    :goto_33c
    invoke-direct {v2, v6, v15, v11}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_5a6

    nop

    nop

    :goto_33d
    const/16 v9, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_147

    nop

    nop

    nop

    nop

    :goto_33e
    const-string v6, "SceneType"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11b

    nop

    nop

    nop

    nop

    :goto_33f
    const/16 v6, 0x34

    nop

    goto/32 :goto_412

    nop

    nop

    :goto_340
    const/4 v15, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_2ca

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_341
    const-string v4, "ThumbnailOrientation"

    nop

    goto/32 :goto_3fa

    nop

    nop

    nop

    nop

    nop

    :goto_342
    const-string v29, "IFD"

    nop

    nop

    nop

    nop

    goto/32 :goto_4fc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_343
    new-instance v6, Lroz;

    nop

    goto/32 :goto_373

    nop

    nop

    :goto_344
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_5a4

    nop

    nop

    nop

    :goto_345
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    goto/32 :goto_580

    nop

    nop

    :goto_346
    invoke-direct {v0, v6, v9, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_256

    nop

    nop

    :goto_347
    aput-object v6, v0, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_465

    nop

    nop

    nop

    :goto_348
    const/4 v4, 0x1

    nop

    goto/32 :goto_2dc

    nop

    nop

    :goto_349
    new-instance v3, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_34a
    const-string v9, "GPSLongitudeRef"

    nop

    goto/32 :goto_30c

    nop

    nop

    nop

    nop

    nop

    :goto_34b
    invoke-direct {v2, v6, v13, v11}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_8

    nop

    nop

    :goto_34c
    const/4 v13, 0x5

    nop

    nop

    nop

    goto/32 :goto_31c

    nop

    nop

    nop

    nop

    nop

    :goto_34d
    const/4 v1, 0x5

    nop

    nop

    nop

    goto/32 :goto_2ed

    nop

    nop

    nop

    :goto_34e
    const/4 v15, 0x0

    nop

    nop

    nop

    goto/32 :goto_107

    nop

    nop

    nop

    :goto_34f
    const-string v6, "Contrast"

    nop

    nop

    goto/32 :goto_395

    nop

    nop

    nop

    nop

    :goto_350
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_351
    new-instance v6, Lroz;

    nop

    goto/32 :goto_1d6

    nop

    nop

    nop

    nop

    nop

    :goto_352
    const/4 v4, 0x5

    nop

    goto/32 :goto_36a

    nop

    nop

    :goto_353
    const/16 v6, 0x28

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_354
    const v9, 0xa406

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_de

    nop

    nop

    nop

    :goto_355
    new-instance v0, Lroz;

    nop

    nop

    nop

    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_356
    invoke-direct {v0, v6, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_357
    new-instance v3, Lroz;

    nop

    goto/32 :goto_2ae

    nop

    nop

    nop

    nop

    :goto_358
    aget-object v5, v0, v4

    nop

    nop

    goto/32 :goto_4ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_359
    array-length v3, v0

    nop

    nop

    nop

    goto/32 :goto_20f

    nop

    nop

    nop

    nop

    nop

    :goto_35a
    new-instance v0, Lroz;

    nop

    goto/32 :goto_1ee

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_35b
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_34d

    nop

    nop

    nop

    :goto_35c
    const-string v9, "GPSDifferential"

    nop

    nop

    nop

    nop

    goto/32 :goto_27e

    nop

    nop

    nop

    nop

    :goto_35d
    new-instance v3, Lroz;

    nop

    nop

    nop

    goto/32 :goto_43d

    nop

    nop

    :goto_35e
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_240

    nop

    nop

    nop

    :goto_35f
    const-string v6, "ThumbnailImageLength"

    nop

    goto/32 :goto_266

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_360
    invoke-direct {v0, v6, v9, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_3b0

    nop

    nop

    nop

    :goto_361
    aput-object v3, v2, v4

    nop

    nop

    nop

    goto/32 :goto_1bc

    nop

    nop

    nop

    nop

    :goto_362
    new-instance v2, Lroz;

    nop

    nop

    goto/32 :goto_4ab

    nop

    nop

    nop

    nop

    :goto_363
    const/16 v6, 0x131

    nop

    goto/32 :goto_2e8

    nop

    nop

    :goto_364
    const/16 v6, 0x106

    nop

    nop

    goto/32 :goto_22d

    nop

    nop

    nop

    nop

    :goto_365
    const/16 v9, 0x17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_366
    aput-object v0, v2, v6

    nop

    nop

    nop

    goto/32 :goto_2c5

    nop

    nop

    :goto_367
    new-instance v15, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_36d

    nop

    nop

    :goto_368
    const/16 v11, 0x18

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_369
    invoke-direct {v2, v9, v15, v4, v11}, Lroz;-><init>(Ljava/lang/String;III)V

    goto/32 :goto_191

    nop

    nop

    nop

    :goto_36a
    aput-object v3, v11, v4

    nop

    nop

    nop

    goto/32 :goto_5c9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36b
    aput-object v0, v2, v6

    nop

    nop

    goto/32 :goto_13f

    nop

    nop

    nop

    nop

    nop

    :goto_36c
    invoke-direct {v6, v9, v15, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_58

    nop

    nop

    :goto_36d
    const-string v13, "NewSubfileType"

    nop

    nop

    goto/32 :goto_54a

    nop

    nop

    nop

    nop

    nop

    :goto_36e
    const/16 v6, 0x2c

    nop

    nop

    nop

    goto/32 :goto_1c7

    nop

    nop

    nop

    nop

    :goto_36f
    sget-object v6, Landroidx/wear/widget/xrA/fuyPMnCeXU;->RsrjkAKQoLhR:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_129

    nop

    nop

    :goto_370
    sput-object v9, Ldzi;->w:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_390

    nop

    nop

    nop

    nop

    nop

    :goto_371
    invoke-direct {v6, v9, v11, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_372
    invoke-direct {v6, v9, v11, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_385

    nop

    nop

    nop

    nop

    nop

    :goto_373
    const-string v9, "GPSMeasureMode"

    nop

    nop

    nop

    goto/32 :goto_39f

    nop

    nop

    :goto_374
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ad

    nop

    nop

    nop

    nop

    :goto_375
    aput-object v0, v2, v6

    nop

    goto/32 :goto_302

    nop

    nop

    nop

    nop

    nop

    :goto_376
    invoke-direct {v6, v9, v11, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    :goto_377
    sput-object v9, Ldzi;->d:[Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    :goto_378
    const-string v4, "TransferFunction"

    nop

    nop

    nop

    goto/32 :goto_4dc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_379
    new-instance v6, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_461

    nop

    nop

    :goto_37a
    const/16 v6, 0x23

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_37b
    invoke-direct {v0, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    goto/32 :goto_220

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37c
    new-instance v2, Lroz;

    nop

    nop

    nop

    goto/32 :goto_304

    nop

    nop

    nop

    :goto_37d
    const/4 v15, 0x4

    nop

    nop

    goto/32 :goto_456

    nop

    nop

    nop

    nop

    :goto_37e
    sput-object v9, Ldzi;->x:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b0

    nop

    nop

    nop

    nop

    nop

    :goto_37f
    invoke-direct {v0, v6, v9, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_58e

    nop

    nop

    nop

    :goto_380
    const-string v6, "FocalPlaneResolutionUnit"

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_381
    const-string v6, "CameraSettingsIFDPointer"

    nop

    nop

    nop

    nop

    goto/32 :goto_26a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_382
    invoke-direct {v0, v6, v9, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_457

    nop

    nop

    nop

    nop

    :goto_383
    aput-object v3, v11, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_208

    nop

    nop

    nop

    :goto_384
    const/16 v6, 0xa

    nop

    goto/32 :goto_197

    nop

    nop

    :goto_385
    aput-object v6, v0, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_552

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_386
    const v9, 0xa430

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_360

    nop

    nop

    nop

    :goto_387
    const/16 v13, 0x100

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a5

    nop

    nop

    nop

    nop

    :goto_388
    new-array v12, v2, [B

    nop

    nop

    nop

    nop

    nop

    fill-array-data v12, :array_6

    goto/32 :goto_4c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_389
    invoke-direct {v0, v6, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_3a7

    nop

    nop

    nop

    :goto_38a
    const/16 v9, 0x11b

    nop

    goto/32 :goto_49c

    nop

    nop

    nop

    :goto_38b
    invoke-direct {v2, v9, v15, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_55f

    nop

    nop

    nop

    :goto_38c
    const-string v6, "DefaultCropSize"

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38d
    aput-object v2, v12, v9

    nop

    nop

    goto/32 :goto_362

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38e
    const v9, 0x8834

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    :goto_38f
    invoke-direct {v2, v9, v15, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_19b

    nop

    nop

    nop

    :goto_390
    new-array v9, v11, [B

    nop

    nop

    nop

    nop

    fill-array-data v9, :array_b

    goto/32 :goto_37e

    nop

    nop

    nop

    nop

    nop

    :goto_391
    aput-object v2, v12, v6

    nop

    nop

    goto/32 :goto_420

    nop

    nop

    nop

    :goto_392
    const/4 v9, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_185

    nop

    nop

    nop

    nop

    nop

    :goto_393
    invoke-direct {v0, v6, v9, v11}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1e8

    nop

    nop

    :goto_394
    const/16 v15, 0x213

    nop

    goto/32 :goto_576

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_395
    const v9, 0xa408

    nop

    goto/32 :goto_4b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_396
    invoke-virtual {v3, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_6a

    nop

    nop

    :goto_397
    const/16 v6, 0xf

    nop

    nop

    goto/32 :goto_4e9

    nop

    nop

    nop

    nop

    :goto_398
    const/16 v6, 0x3f

    nop

    nop

    goto/32 :goto_4bc

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_399
    invoke-direct {v0, v6, v9, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_33f

    nop

    nop

    :goto_39a
    const/4 v6, 0x2

    nop

    goto/32 :goto_41c

    nop

    nop

    :goto_39b
    const/4 v9, 0x6

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    :goto_39c
    sput-object v6, Ldzi;->X:[Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :goto_39d
    const-string v6, "YCbCrPositioning"

    nop

    goto/32 :goto_394

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39e
    const v9, 0xa40a

    nop

    nop

    nop

    goto/32 :goto_150

    nop

    nop

    :goto_39f
    const/16 v11, 0xa

    nop

    nop

    goto/32 :goto_505

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a0
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_490

    nop

    nop

    :goto_3a1
    const v9, 0xa404

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    nop

    nop

    nop

    :goto_3a2
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_95

    nop

    nop

    :goto_3a3
    invoke-direct {v6, v9, v11, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4b1

    nop

    nop

    nop

    :goto_3a4
    const/16 v11, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_1c5

    nop

    nop

    nop

    :goto_3a5
    new-array v2, v2, [Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_379

    nop

    nop

    nop

    nop

    nop

    :goto_3a6
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_293

    nop

    nop

    nop

    nop

    :goto_3a7
    const/16 v6, 0x25

    nop

    nop

    goto/32 :goto_4d9

    nop

    nop

    nop

    nop

    :goto_3a8
    aput-object v3, v2, v4

    nop

    nop

    goto/32 :goto_3fd

    nop

    nop

    nop

    :goto_3a9
    const-string v9, "Make"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_596

    nop

    nop

    nop

    :goto_3aa
    const/16 v15, 0x14a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_3ab
    const-string v9, "GPSHPositioningError"

    nop

    nop

    nop

    nop

    goto/32 :goto_3a4

    nop

    nop

    nop

    :goto_3ac
    new-array v12, v11, [B

    nop

    nop

    nop

    fill-array-data v12, :array_1

    goto/32 :goto_582

    nop

    nop

    nop

    :goto_3ad
    const/16 v9, 0x65

    nop

    goto/32 :goto_3e7

    nop

    nop

    nop

    nop

    nop

    :goto_3ae
    const/16 v6, 0x13b

    nop

    goto/32 :goto_272

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3af
    aput-object v0, v2, v6

    nop

    nop

    goto/32 :goto_528

    nop

    nop

    nop

    nop

    :goto_3b0
    const/16 v6, 0x42

    nop

    nop

    nop

    nop

    goto/32 :goto_484

    nop

    nop

    nop

    nop

    :goto_3b1
    const-string v4, "SamplesPerPixel"

    nop

    goto/32 :goto_27f

    nop

    nop

    :goto_3b2
    const/16 v6, 0x30

    nop

    nop

    goto/32 :goto_19a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b3
    const v9, 0xa302

    nop

    goto/32 :goto_399

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b4
    aput-object v0, v2, v6

    nop

    nop

    nop

    goto/32 :goto_3a0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b5
    invoke-direct {v2, v9, v15, v4, v11}, Lroz;-><init>(Ljava/lang/String;III)V

    goto/32 :goto_296

    nop

    nop

    nop

    nop

    nop

    :goto_3b6
    const v9, 0x8832

    nop

    nop

    nop

    nop

    goto/32 :goto_45a

    nop

    nop

    nop

    nop

    nop

    :goto_3b7
    const/16 v15, 0x214

    nop

    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    nop

    :goto_3b8
    aput-object v3, v2, v0

    nop

    nop

    goto/32 :goto_48a

    nop

    nop

    nop

    nop

    :goto_3b9
    invoke-direct {v6, v9, v15, v11}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_fb

    nop

    nop

    nop

    :goto_3ba
    aput-object v0, v2, v6

    nop

    nop

    goto/32 :goto_1b6

    nop

    nop

    :goto_3bb
    const v6, 0x8825

    nop

    nop

    goto/32 :goto_25a

    nop

    nop

    nop

    nop

    nop

    :goto_3bc
    const/16 v4, 0x16

    nop

    nop

    goto/32 :goto_297

    nop

    nop

    :goto_3bd
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1eb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3be
    const v9, 0xa403

    nop

    nop

    goto/32 :goto_219

    nop

    nop

    nop

    nop

    nop

    :goto_3bf
    const-string v9, "GPSLatitude"

    nop

    goto/32 :goto_119

    nop

    nop

    nop

    nop

    :goto_3c0
    new-instance v0, Lroz;

    nop

    goto/32 :goto_554

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c1
    new-instance v9, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_277

    nop

    nop

    nop

    nop

    nop

    :goto_3c2
    invoke-direct {v0, v6, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_47d

    nop

    nop

    nop

    nop

    :goto_3c3
    invoke-direct {v0, v6, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1fa

    nop

    nop

    :goto_3c4
    new-instance v6, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_322

    nop

    nop

    nop

    nop

    nop

    :goto_3c5
    const/4 v2, 0x2

    nop

    nop

    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    :goto_3c6
    invoke-virtual {v9, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    goto/32 :goto_3ea

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c7
    new-instance v3, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_3ef

    nop

    nop

    nop

    nop

    nop

    :goto_3c8
    invoke-direct {v0, v6, v9, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_144

    nop

    nop

    :goto_3c9
    sput v9, Ldzi;->t:I

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_3ca
    aput-object v6, v0, v11

    nop

    nop

    nop

    nop

    goto/32 :goto_343

    nop

    nop

    nop

    nop

    :goto_3cb
    const/4 v9, 0x7

    nop

    nop

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    nop

    :goto_3cc
    new-instance v0, Lroz;

    nop

    nop

    nop

    goto/32 :goto_5b2

    nop

    nop

    :goto_3cd
    new-instance v2, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_3a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3ce
    invoke-virtual {v9, v12}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    goto/32 :goto_17f

    nop

    nop

    :goto_3cf
    new-instance v2, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23f

    nop

    nop

    nop

    nop

    :goto_3d0
    invoke-direct {v0, v6, v9, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_139

    nop

    nop

    :goto_3d1
    const/4 v11, 0x0

    nop

    nop

    goto/32 :goto_45b

    nop

    nop

    nop

    nop

    nop

    :goto_3d2
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_28a

    nop

    nop

    nop

    :goto_3d3
    const v9, 0xa215

    nop

    nop

    nop

    nop

    goto/32 :goto_44e

    nop

    nop

    nop

    :goto_3d4
    new-instance v0, Lroz;

    nop

    goto/32 :goto_2e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d5
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_361

    nop

    nop

    nop

    nop

    nop

    :goto_3d6
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_599

    nop

    nop

    nop

    nop

    nop

    :goto_3d7
    invoke-direct {v0, v6, v9, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_45e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d8
    const/16 v6, 0x212

    nop

    nop

    goto/32 :goto_200

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3d9
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_3da
    const-string v6, "ComponentsConfiguration"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_113

    nop

    nop

    nop

    nop

    :goto_3db
    new-instance v6, Lroz;

    nop

    nop

    nop

    goto/32 :goto_21c

    nop

    nop

    nop

    :goto_3dc
    const-string v15, "RowsPerStrip"

    nop

    nop

    nop

    nop

    goto/32 :goto_460

    nop

    nop

    nop

    :goto_3dd
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    nop

    :goto_3de
    const/16 v15, 0x106

    nop

    nop

    nop

    goto/32 :goto_1fe

    nop

    nop

    nop

    nop

    nop

    :goto_3df
    new-array v12, v9, [I

    nop

    nop

    fill-array-data v12, :array_c

    goto/32 :goto_d

    nop

    nop

    :goto_3e0
    aput-object v6, v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    :goto_3e1
    const v15, 0x8828

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    :goto_3e2
    const/16 v0, 0x20

    nop

    goto/32 :goto_46d

    nop

    nop

    nop

    :goto_3e3
    const/16 v6, 0x20

    nop

    goto/32 :goto_216

    nop

    nop

    nop

    :goto_3e4
    invoke-direct {v2, v6, v15, v11}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_408

    nop

    nop

    nop

    nop

    nop

    :goto_3e5
    iget v2, v2, Lroz;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_485

    nop

    nop

    nop

    :goto_3e6
    sget-object v9, Lcom/google/android/apps/camera/legacy/lightcycle/panorama/RpD/WBNWZfrn;->IwcxoridoVPqnQ:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_13e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e7
    const/16 v2, 0x49

    nop

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    nop

    nop

    :goto_3e8
    if-lt v9, v2, :cond_2

    nop

    nop

    goto/32 :goto_4f1

    nop

    :cond_2
    goto/32 :goto_3c7

    nop

    nop

    nop

    nop

    nop

    :goto_3e9
    sput-object v4, Ldzi;->W:[Lroz;

    nop

    goto/32 :goto_110

    nop

    nop

    :goto_3ea
    const-string v9, "VP8L"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3eb
    new-instance v3, Lroz;

    nop

    nop

    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_3ec
    new-instance v6, Lroz;

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3ed
    aput-object v4, v13, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_52c

    nop

    nop

    nop

    nop

    nop

    :goto_3ee
    const-string v9, "GPSAltitude"

    nop

    nop

    goto/32 :goto_598

    nop

    nop

    nop

    :goto_3ef
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_2bb

    nop

    nop

    nop

    :goto_3f0
    const-string v9, "WhitePoint"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42f

    nop

    nop

    nop

    nop

    nop

    :goto_3f1
    const/16 v6, 0x3e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f2
    const-string v6, "PixelXDimension"

    nop

    nop

    nop

    goto/32 :goto_28f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f3
    const/16 v6, 0x40

    nop

    goto/32 :goto_13a

    nop

    nop

    :goto_3f4
    new-instance v0, Lroz;

    nop

    nop

    goto/32 :goto_1d5

    nop

    nop

    :goto_3f5
    const-string v6, "ReferenceBlackWhite"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b7

    nop

    nop

    :goto_3f6
    new-instance v0, Lroz;

    nop

    nop

    nop

    goto/32 :goto_2b3

    nop

    nop

    nop

    :goto_3f7
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_526

    nop

    nop

    nop

    nop

    nop

    :goto_3f8
    aput-object v13, v15, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d4

    nop

    nop

    nop

    nop

    :goto_3f9
    const/4 v13, 0x4

    nop

    goto/32 :goto_e2

    nop

    nop

    :goto_3fa
    const/16 v6, 0x112

    nop

    nop

    nop

    nop

    goto/32 :goto_3a2

    nop

    nop

    nop

    nop

    :goto_3fb
    const-string v4, "PhotometricInterpretation"

    nop

    nop

    nop

    nop

    goto/32 :goto_364

    nop

    nop

    :goto_3fc
    aput-object v3, v13, v2

    nop

    goto/32 :goto_19e

    nop

    nop

    nop

    nop

    :goto_3fd
    new-instance v3, Lroz;

    nop

    nop

    nop

    goto/32 :goto_413

    nop

    nop

    nop

    nop

    nop

    :goto_3fe
    const/4 v9, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_38d

    nop

    nop

    nop

    :goto_3ff
    const-string v15, "PrimaryChromaticities"

    nop

    nop

    nop

    nop

    goto/32 :goto_415

    nop

    nop

    nop

    nop

    :goto_400
    const-string v15, "StripOffsets"

    nop

    nop

    nop

    goto/32 :goto_4c6

    nop

    nop

    nop

    nop

    nop

    :goto_401
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_50f

    nop

    nop

    nop

    nop

    nop

    :goto_402
    sget-object v9, Lcom/integrity/annotations/Obhj/bbLWXEJrNl;->fZFtqpqXt:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_403
    const/4 v15, 0x7

    nop

    nop

    goto/32 :goto_221

    nop

    nop

    nop

    nop

    nop

    :goto_404
    const/4 v7, 0x1

    nop

    nop

    nop

    goto/32 :goto_2aa

    nop

    nop

    :goto_405
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_4c2

    nop

    nop

    :goto_406
    const v9, 0xa20c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_594

    nop

    nop

    :goto_407
    new-array v12, v11, [B

    nop

    nop

    nop

    fill-array-data v12, :array_2

    goto/32 :goto_154

    nop

    nop

    nop

    nop

    :goto_408
    const/16 v6, 0x26

    nop

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_409
    new-array v2, v0, [Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_151

    nop

    nop

    nop

    :goto_40a
    const/4 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e6

    nop

    nop

    :goto_40b
    const/4 v4, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_52b

    nop

    nop

    nop

    :goto_40c
    new-instance v6, Lroz;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40d
    sput v9, Ldzi;->u:I

    nop

    nop

    nop

    nop

    goto/32 :goto_493

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40e
    const/16 v6, 0x1a

    nop

    nop

    goto/32 :goto_366

    nop

    nop

    nop

    :goto_40f
    invoke-direct {v6, v9, v11, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_410
    const-string v9, "ImageWidth"

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_411
    const/4 v11, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_443

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_412
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_413
    const-string v4, "ExifIFDPointer"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b2

    nop

    nop

    nop

    nop

    :goto_414
    new-instance v3, Lroz;

    nop

    nop

    goto/32 :goto_29d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_415
    const/16 v6, 0x13f

    nop

    nop

    goto/32 :goto_47f

    nop

    nop

    nop

    :goto_416
    new-instance v3, Lroz;

    nop

    nop

    goto/32 :goto_549

    nop

    nop

    nop

    nop

    :goto_417
    new-instance v6, Lroz;

    nop

    goto/32 :goto_34a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_418
    const/16 v15, 0x211

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :goto_419
    const/16 v13, 0x102

    nop

    goto/32 :goto_44b

    nop

    nop

    nop

    nop

    nop

    :goto_41a
    invoke-static {v2}, Lj$/util/DesugarTimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    :goto_41b
    aput-object v0, v2, v6

    nop

    goto/32 :goto_531

    nop

    nop

    :goto_41c
    aput-object v3, v11, v6

    nop

    goto/32 :goto_334

    nop

    nop

    nop

    nop

    :goto_41d
    const-string v9, "GPSDestDistanceRef"

    nop

    goto/32 :goto_4e0

    nop

    nop

    :goto_41e
    new-array v9, v6, [Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_2bd

    nop

    nop

    nop

    nop

    :goto_41f
    aput-object v4, v3, v6

    nop

    goto/32 :goto_53e

    nop

    nop

    nop

    nop

    :goto_420
    sput-object v12, Ldzi;->P:[Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_238

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_421
    aput-object v3, v11, v4

    nop

    goto/32 :goto_416

    nop

    nop

    nop

    :goto_422
    aput-object v2, v12, v9

    nop

    goto/32 :goto_270

    nop

    nop

    nop

    :goto_423
    sput-object v9, Ldzi;->v:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_445

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_424
    const/4 v15, 0x7

    nop

    nop

    nop

    goto/32 :goto_1b9

    nop

    nop

    nop

    nop

    :goto_425
    invoke-virtual {v0, v2}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    goto/32 :goto_536

    nop

    nop

    nop

    nop

    :goto_426
    aput-object v6, v0, v9

    nop

    goto/32 :goto_2f0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_427
    const-string v4, "ResolutionUnit"

    nop

    nop

    goto/32 :goto_196

    nop

    nop

    nop

    nop

    :goto_428
    const/16 v11, 0x1c

    nop

    goto/32 :goto_376

    nop

    nop

    :goto_429
    const/16 v6, 0x2b

    nop

    nop

    goto/32 :goto_2cf

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42a
    aput-object v12, v13, v5

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_42b
    const v9, 0xa40c

    nop

    nop

    nop

    nop

    goto/32 :goto_2cc

    nop

    nop

    nop

    nop

    nop

    :goto_42c
    new-instance v3, Lroz;

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    :goto_42d
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    goto/32 :goto_1af

    nop

    nop

    nop

    nop

    :goto_42e
    new-instance v6, Lroz;

    nop

    nop

    goto/32 :goto_5b5

    nop

    nop

    nop

    :goto_42f
    const/16 v15, 0x13e

    nop

    nop

    nop

    goto/32 :goto_22e

    nop

    nop

    nop

    nop

    nop

    :goto_430
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4a8

    nop

    nop

    :goto_431
    const/16 v5, 0x14a

    nop

    nop

    nop

    goto/32 :goto_306

    nop

    nop

    nop

    nop

    :goto_432
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_433
    aput-object v2, v12, v6

    nop

    goto/32 :goto_1e9

    nop

    nop

    nop

    nop

    nop

    :goto_434
    const/16 v13, 0x100

    nop

    nop

    goto/32 :goto_403

    nop

    nop

    nop

    nop

    nop

    :goto_435
    sput-object v12, Ldzi;->f:[B

    nop

    nop

    nop

    nop

    goto/32 :goto_333

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_436
    const/16 v6, 0x48

    nop

    nop

    nop

    goto/32 :goto_446

    nop

    nop

    :goto_437
    aput-object v3, v11, v4

    nop

    goto/32 :goto_1ad

    nop

    nop

    nop

    nop

    :goto_438
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2af

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_439
    aput-object v3, v11, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_1c9

    nop

    nop

    nop

    nop

    :goto_43a
    const-string v6, "DateTimeDigitized"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_587

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43b
    invoke-direct {v6, v9, v11, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_3ca

    nop

    nop

    :goto_43c
    aget-object v1, v0, v1

    nop

    nop

    goto/32 :goto_482

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43d
    const-string v6, "BitsPerSample"

    nop

    goto/32 :goto_419

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_43e
    const/4 v5, 0x0

    nop

    goto/32 :goto_3f8

    nop

    nop

    nop

    nop

    :goto_43f
    invoke-direct {v9, v15, v2, v11}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_201

    nop

    nop

    nop

    nop

    nop

    :goto_440
    move-object/from16 v17, v7

    nop

    goto/32 :goto_55e

    nop

    nop

    nop

    nop

    :goto_441
    new-instance v6, Lroz;

    nop

    nop

    nop

    goto/32 :goto_59d

    nop

    nop

    :goto_442
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_3f6

    nop

    nop

    :goto_443
    invoke-direct {v6, v9, v13, v11}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_444
    array-length v2, v0

    nop

    nop

    goto/32 :goto_540

    nop

    nop

    nop

    :goto_445
    new-array v9, v11, [B

    nop

    nop

    nop

    nop

    fill-array-data v9, :array_a

    goto/32 :goto_370

    nop

    nop

    nop

    :goto_446
    aput-object v0, v2, v6

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_447
    const-string v6, "UserComment"

    nop

    goto/32 :goto_c6

    nop

    nop

    :goto_448
    aput-object v2, v13, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3c5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_449
    const/16 v9, 0x117

    nop

    goto/32 :goto_19d

    nop

    nop

    nop

    nop

    nop

    :goto_44a
    invoke-direct {v6, v9, v15, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_489

    nop

    nop

    :goto_44b
    invoke-direct {v3, v6, v13, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_d5

    nop

    nop

    nop

    :goto_44c
    const/16 v15, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d0

    nop

    nop

    nop

    nop

    nop

    :goto_44d
    new-instance v0, Lroz;

    nop

    nop

    nop

    goto/32 :goto_e3

    nop

    nop

    :goto_44e
    invoke-direct {v0, v6, v9, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_3b2

    nop

    nop

    :goto_44f
    new-instance v3, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_522

    nop

    nop

    :goto_450
    const-string v21, "URATIONAL"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_69

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_451
    aput-object v2, v12, v6

    nop

    nop

    nop

    goto/32 :goto_595

    nop

    nop

    :goto_452
    new-instance v2, Lroz;

    nop

    nop

    goto/32 :goto_5c8

    nop

    nop

    :goto_453
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2ac

    nop

    nop

    nop

    nop

    nop

    :goto_454
    const/16 v6, 0x14a

    nop

    nop

    goto/32 :goto_16b

    nop

    nop

    nop

    nop

    nop

    :goto_455
    new-instance v4, Lroz;

    nop

    nop

    goto/32 :goto_541

    nop

    nop

    nop

    nop

    nop

    :goto_456
    invoke-direct {v3, v4, v6, v13, v15}, Lroz;-><init>(Ljava/lang/String;III)V

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    nop

    :goto_457
    const/16 v6, 0x2d

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_458
    new-instance v2, Lroz;

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    :goto_459
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    goto/32 :goto_db

    nop

    nop

    nop

    :goto_45a
    invoke-direct {v0, v6, v9, v11}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4d

    nop

    nop

    :goto_45b
    const/4 v15, 0x1

    nop

    goto/32 :goto_46e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_45c
    const-string v4, "RowsPerStrip"

    nop

    goto/32 :goto_299

    nop

    nop

    nop

    :goto_45d
    const-string v9, "GPSLongitude"

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_45e
    const/16 v6, 0x28

    nop

    nop

    nop

    goto/32 :goto_51e

    nop

    nop

    nop

    nop

    :goto_45f
    const/16 v6, 0xc

    nop

    nop

    goto/32 :goto_254

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_460
    const/16 v9, 0x116

    nop

    nop

    nop

    goto/32 :goto_4b7

    nop

    nop

    nop

    nop

    nop

    :goto_461
    const-string v9, "ExposureTime"

    nop

    nop

    nop

    goto/32 :goto_557

    nop

    nop

    :goto_462
    aget-object v2, v0, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_463
    const-string v3, "SubjectDistance"

    nop

    goto/32 :goto_207

    nop

    nop

    nop

    :goto_464
    aput-object v3, v11, v4

    nop

    nop

    nop

    goto/32 :goto_471

    nop

    nop

    nop

    nop

    nop

    :goto_465
    new-instance v6, Lroz;

    nop

    goto/32 :goto_35c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_466
    iget v1, v1, Lroz;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_159

    nop

    nop

    nop

    nop

    nop

    :goto_467
    const-string v9, "Compression"

    nop

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_468
    const/16 v9, 0x14

    nop

    nop

    goto/32 :goto_426

    nop

    nop

    :goto_469
    const/16 v11, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_184

    nop

    nop

    nop

    nop

    :goto_46a
    new-instance v2, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_59e

    nop

    nop

    nop

    :goto_46b
    const v5, 0x8825

    nop

    goto/32 :goto_31e

    nop

    nop

    nop

    :goto_46c
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_380

    nop

    nop

    nop

    nop

    nop

    :goto_46d
    new-array v0, v0, [Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    :goto_46e
    invoke-direct {v6, v9, v11, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_547

    nop

    nop

    nop

    nop

    :goto_46f
    aput-object v0, v2, v6

    nop

    nop

    nop

    goto/32 :goto_4b6

    nop

    nop

    nop

    nop

    nop

    :goto_470
    const/16 v6, 0x39

    nop

    goto/32 :goto_36b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_471
    new-instance v3, Lroz;

    nop

    nop

    goto/32 :goto_336

    nop

    nop

    nop

    :goto_472
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_199

    nop

    nop

    :goto_473
    sput-object v12, Ldzi;->n:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_474
    const/16 v6, 0x111

    nop

    goto/32 :goto_487

    nop

    nop

    nop

    nop

    :goto_475
    aput-object v2, v12, v9

    nop

    goto/32 :goto_1d9

    nop

    nop

    nop

    nop

    :goto_476
    const v9, 0xa214

    nop

    goto/32 :goto_108

    nop

    nop

    :goto_477
    const-string v6, "ColorSpace"

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_478
    new-instance v6, Lroz;

    nop

    nop

    nop

    goto/32 :goto_250

    nop

    nop

    nop

    nop

    nop

    :goto_479
    const-string v6, "FocalPlaneYResolution"

    nop

    nop

    nop

    nop

    goto/32 :goto_4cc

    nop

    nop

    nop

    nop

    :goto_47a
    const/16 v6, 0x35

    nop

    nop

    nop

    nop

    goto/32 :goto_c7

    nop

    nop

    nop

    nop

    nop

    :goto_47b
    const/4 v15, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e4

    nop

    nop

    nop

    :goto_47c
    const/16 v6, 0x11

    nop

    nop

    goto/32 :goto_3ba

    nop

    nop

    nop

    :goto_47d
    const/16 v6, 0x3b

    nop

    nop

    nop

    goto/32 :goto_4d4

    nop

    nop

    nop

    :goto_47e
    const-string v6, "DNGVersion"

    nop

    nop

    nop

    goto/32 :goto_23a

    nop

    nop

    nop

    nop

    nop

    :goto_47f
    invoke-direct {v2, v15, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1cf

    nop

    nop

    nop

    :goto_480
    filled-new-array {v6, v6, v6}, [I

    move-result-object v12

    nop

    nop

    nop

    goto/32 :goto_491

    nop

    nop

    nop

    nop

    :goto_481
    invoke-direct {v2, v9, v15, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2e1

    nop

    nop

    :goto_482
    iget v1, v1, Lroz;->b:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    :goto_483
    aput-object v6, v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49b

    nop

    nop

    nop

    nop

    nop

    :goto_484
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_569

    nop

    nop

    nop

    nop

    :goto_485
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_2e5

    nop

    nop

    nop

    nop

    nop

    :goto_486
    new-instance v0, Lroz;

    nop

    goto/32 :goto_54c

    nop

    nop

    :goto_487
    const/4 v13, 0x3

    nop

    nop

    goto/32 :goto_37d

    nop

    nop

    nop

    nop

    :goto_488
    move-object/from16 v1, v17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a1

    nop

    nop

    :goto_489
    aput-object v6, v2, v11

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_48a
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49e

    nop

    nop

    :goto_48b
    new-instance v0, Lroz;

    nop

    goto/32 :goto_1b5

    nop

    nop

    :goto_48c
    const v15, 0x8830

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19f

    nop

    nop

    :goto_48d
    const/16 v11, 0xe

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_512

    nop

    nop

    nop

    nop

    :goto_48e
    iget-object v7, v5, Lroz;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    nop

    nop

    :goto_48f
    const-string v15, "InteroperabilityIndex"

    nop

    goto/32 :goto_18e

    nop

    nop

    nop

    nop

    nop

    :goto_490
    const-string v6, "SubjectLocation"

    nop

    goto/32 :goto_476

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_491
    sput-object v12, Ldzi;->a:[I

    nop

    nop

    goto/32 :goto_244

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_492
    invoke-direct {v0, v3, v4, v6}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_9b

    nop

    nop

    :goto_493
    new-array v9, v11, [B

    nop

    nop

    nop

    nop

    fill-array-data v9, :array_9

    goto/32 :goto_423

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_494
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_29e

    nop

    nop

    nop

    nop

    nop

    :goto_495
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_188

    nop

    nop

    nop

    :goto_496
    const/4 v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41e

    nop

    nop

    nop

    :goto_497
    const/16 v2, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_498
    const-string v4, "YCbCrSubSampling"

    nop

    goto/32 :goto_3d8

    nop

    nop

    :goto_499
    const/16 v15, 0x102

    nop

    nop

    goto/32 :goto_38f

    nop

    nop

    :goto_49a
    const-string v4, "CameraSettingsIFDPointer"

    nop

    nop

    goto/32 :goto_232

    nop

    nop

    nop

    :goto_49b
    new-instance v6, Lroz;

    nop

    goto/32 :goto_4bd

    nop

    nop

    nop

    nop

    nop

    :goto_49c
    invoke-direct {v2, v15, v9, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_23d

    nop

    nop

    nop

    nop

    :goto_49d
    aput-object v2, v12, v9

    nop

    goto/32 :goto_513

    nop

    nop

    nop

    nop

    nop

    :goto_49e
    const-string v3, "ImageProcessingIFDPointer"

    nop

    nop

    nop

    goto/32 :goto_143

    nop

    nop

    :goto_49f
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_521

    nop

    nop

    nop

    nop

    nop

    :goto_4a0
    const/16 v6, 0x33

    nop

    goto/32 :goto_1ae

    nop

    nop

    nop

    :goto_4a1
    new-instance v2, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_56a

    nop

    nop

    nop

    nop

    nop

    :goto_4a2
    const/16 v13, 0x102

    nop

    nop

    nop

    nop

    goto/32 :goto_2c9

    nop

    nop

    :goto_4a3
    sput-object v0, Ldzi;->z:Ljava/text/SimpleDateFormat;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4a4
    invoke-direct {v0, v6, v9, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_45f

    nop

    nop

    nop

    nop

    :goto_4a5
    const/4 v15, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_4a6
    new-instance v3, Lroz;

    nop

    nop

    nop

    goto/32 :goto_427

    nop

    nop

    nop

    nop

    nop

    :goto_4a7
    aput-object v2, v12, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    :goto_4a8
    const/16 v4, 0x1a

    nop

    nop

    goto/32 :goto_1b1

    nop

    nop

    :goto_4a9
    aput-object v4, v3, v6

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    :goto_4aa
    invoke-direct {v2, v15, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_109

    nop

    nop

    nop

    :goto_4ab
    const-string v9, "ImageDescription"

    nop

    nop

    nop

    goto/32 :goto_1cc

    nop

    nop

    nop

    nop

    nop

    :goto_4ac
    sget-object v6, Ldzi;->A:[Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_5c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4ad
    aput-object v11, v9, v6

    nop

    nop

    goto/32 :goto_17b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4ae
    new-instance v0, Lroz;

    nop

    nop

    goto/32 :goto_142

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4af
    const/16 v6, 0x1e

    nop

    nop

    nop

    goto/32 :goto_442

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b0
    const/16 v6, 0x1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_23c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b1
    const/16 v9, 0x1d

    nop

    goto/32 :goto_347

    nop

    nop

    nop

    :goto_4b2
    const-string v9, "GPSDestLatitude"

    nop

    nop

    goto/32 :goto_26c

    nop

    nop

    :goto_4b3
    invoke-direct {v0, v6, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_5b3

    nop

    nop

    nop

    :goto_4b4
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2bc

    nop

    nop

    nop

    nop

    nop

    :goto_4b5
    invoke-direct {v2, v6, v9, v0}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_174

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4b6
    new-instance v0, Lroz;

    nop

    nop

    nop

    goto/32 :goto_4c0

    nop

    nop

    nop

    nop

    nop

    :goto_4b7
    invoke-direct {v2, v15, v9, v4, v11}, Lroz;-><init>(Ljava/lang/String;III)V

    goto/32 :goto_4ea

    nop

    nop

    nop

    nop

    nop

    :goto_4b8
    invoke-direct {v6, v9, v11, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1b8

    nop

    nop

    nop

    nop

    nop

    :goto_4b9
    new-instance v3, Lroz;

    nop

    nop

    nop

    goto/32 :goto_2c1

    nop

    nop

    nop

    nop

    :goto_4ba
    const/4 v15, 0x4

    nop

    nop

    nop

    goto/32 :goto_544

    nop

    nop

    nop

    nop

    nop

    :goto_4bb
    new-instance v0, Lroz;

    nop

    goto/32 :goto_2fb

    nop

    nop

    nop

    :goto_4bc
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_401

    nop

    nop

    nop

    nop

    :goto_4bd
    const-string v9, "PhotographicSensitivity"

    nop

    nop

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    nop

    :goto_4be
    const-string v9, "GPSDestBearing"

    nop

    nop

    goto/32 :goto_368

    nop

    nop

    nop

    nop

    :goto_4bf
    const-string v6, "SensorRightBorder"

    nop

    goto/32 :goto_47b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c0
    const-string v6, "WhiteBalance"

    nop

    nop

    nop

    goto/32 :goto_3be

    nop

    nop

    :goto_4c1
    aput-object v0, v2, v6

    nop

    nop

    goto/32 :goto_4bb

    nop

    nop

    nop

    nop

    :goto_4c2
    sget-object v6, Lcom/google/android/apps/camera/ui/captureframe/UrAR/NrBoRltj;->WVaKtkNvJtBQl:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1e1

    nop

    nop

    nop

    nop

    :goto_4c3
    aput-object v0, v2, v6

    nop

    goto/32 :goto_3a6

    nop

    nop

    nop

    nop

    nop

    :goto_4c4
    invoke-direct {v6, v9, v11, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_28b

    nop

    nop

    nop

    :goto_4c5
    sput-object v12, Ldzi;->p:[B

    nop

    nop

    goto/32 :goto_20a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c6
    const/16 v9, 0x111

    nop

    nop

    nop

    nop

    goto/32 :goto_141

    nop

    nop

    :goto_4c7
    new-instance v2, Lroz;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c8
    invoke-direct {v6, v9, v11, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1e2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c9
    iget v1, v1, Lroz;->b:I

    nop

    goto/32 :goto_4eb

    nop

    nop

    nop

    :goto_4ca
    aput-object v6, v0, v11

    nop

    nop

    goto/32 :goto_268

    nop

    nop

    nop

    nop

    :goto_4cb
    const v15, 0x829d

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_169

    nop

    nop

    :goto_4cc
    const v9, 0xa20f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_382

    nop

    nop

    :goto_4cd
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    nop

    :goto_4ce
    new-array v11, v11, [Lroz;

    nop

    goto/32 :goto_367

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4cf
    new-instance v6, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1e7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d0
    const-string v6, "CustomRendered"

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    nop

    :goto_4d1
    const/16 v9, 0x11c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    :goto_4d2
    const/16 v4, 0x1f

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4e6

    nop

    nop

    :goto_4d3
    aput-object v0, v2, v6

    nop

    goto/32 :goto_1cb

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d4
    aput-object v0, v2, v6

    nop

    nop

    nop

    goto/32 :goto_590

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d5
    aput-object v3, v11, v4

    nop

    nop

    nop

    goto/32 :goto_228

    nop

    nop

    nop

    :goto_4d6
    new-instance v3, Lroz;

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :goto_4d7
    const/16 v6, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_2a4

    nop

    nop

    nop

    :goto_4d8
    const/4 v4, 0x4

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4d9
    aput-object v0, v2, v6

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4da
    const/16 v11, 0x16

    nop

    nop

    nop

    goto/32 :goto_269

    nop

    nop

    nop

    nop

    :goto_4db
    const-string v7, "ColorSpace"

    nop

    nop

    goto/32 :goto_12d

    nop

    nop

    nop

    :goto_4dc
    const/16 v6, 0x12d

    nop

    goto/32 :goto_508

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4dd
    aput-object v2, v12, v6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d4

    nop

    nop

    nop

    nop

    :goto_4de
    const/16 v6, 0x1d

    nop

    nop

    nop

    nop

    goto/32 :goto_524

    nop

    nop

    nop

    nop

    :goto_4df
    const v9, 0x9010

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_133

    nop

    nop

    nop

    nop

    :goto_4e0
    const/16 v11, 0x19

    nop

    nop

    goto/32 :goto_56d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e1
    aput-object v3, v11, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_542

    nop

    nop

    nop

    nop

    :goto_4e2
    const-string v6, "SubfileType"

    nop

    goto/32 :goto_214

    nop

    nop

    nop

    nop

    :goto_4e3
    const-string v9, "ImageLength"

    nop

    nop

    nop

    goto/32 :goto_1c3

    nop

    nop

    nop

    :goto_4e4
    const/16 v6, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    :goto_4e5
    const/4 v2, 0x6

    nop

    nop

    nop

    goto/32 :goto_3fc

    nop

    nop

    :goto_4e6
    aput-object v3, v11, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_26d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e7
    const-string v19, "USHORT"

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :goto_4e8
    invoke-direct {v0, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    goto/32 :goto_55a

    nop

    nop

    nop

    nop

    :goto_4e9
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_320

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4ea
    const/16 v9, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_215

    nop

    nop

    nop

    :goto_4eb
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_568

    nop

    nop

    nop

    nop

    :goto_4ec
    sget-object v3, Ldzi;->D:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_4ed
    const/16 v9, 0x15

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    :goto_4ee
    invoke-direct {v6, v9, v11, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_468

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4ef
    const v9, 0x9000

    nop

    nop

    goto/32 :goto_4a4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f0
    goto/16 :goto_c5

    nop

    nop

    :goto_4f1
    goto/32 :goto_1ec

    nop

    nop

    nop

    nop

    :goto_4f2
    invoke-direct {v2, v6, v11, v11}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_37a

    nop

    nop

    :goto_4f3
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_224

    nop

    nop

    nop

    nop

    :goto_4f4
    const/16 v9, 0xf

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_511

    nop

    nop

    :goto_4f5
    const-string v6, "BrightnessValue"

    nop

    nop

    nop

    goto/32 :goto_56c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f6
    new-array v15, v13, [Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4f7
    const/4 v6, 0x1

    nop

    goto/32 :goto_2f2

    nop

    nop

    :goto_4f8
    invoke-direct {v2, v9, v15, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4dd

    nop

    nop

    :goto_4f9
    aput-object v11, v13, v0

    nop

    nop

    goto/32 :goto_4ff

    nop

    nop

    nop

    nop

    nop

    :goto_4fa
    aput-object v2, v12, v6

    nop

    nop

    goto/32 :goto_4c7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4fb
    invoke-direct {v2, v9, v15, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_33b

    nop

    nop

    nop

    nop

    nop

    :goto_4fc
    const-string v16, ""

    nop

    nop

    goto/32 :goto_e6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4fd
    const-string v4, "StripOffsets"

    nop

    nop

    nop

    nop

    goto/32 :goto_328

    nop

    nop

    nop

    nop

    nop

    :goto_4fe
    const/16 v0, 0xa

    nop

    nop

    goto/32 :goto_409

    nop

    nop

    nop

    :goto_4ff
    const/4 v2, 0x5

    nop

    nop

    goto/32 :goto_1d7

    nop

    nop

    nop

    nop

    nop

    :goto_500
    invoke-direct {v2, v6, v15, v11}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_ce

    nop

    nop

    nop

    :goto_501
    const/16 v6, 0x19

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    :goto_502
    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_12a

    nop

    nop

    nop

    :goto_503
    invoke-direct {v6, v9, v11, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_25d

    nop

    nop

    :goto_504
    new-instance v0, Lroz;

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    :goto_505
    invoke-direct {v6, v9, v11, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_506
    const-string v6, "Xmp"

    nop

    goto/32 :goto_ec

    nop

    nop

    nop

    nop

    :goto_507
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    nop

    nop

    goto/32 :goto_4e8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_508
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_57a

    nop

    nop

    nop

    nop

    nop

    :goto_509
    invoke-virtual {v3, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_49f

    nop

    nop

    :goto_50a
    const/16 v9, 0xc

    nop

    nop

    goto/32 :goto_510

    nop

    nop

    nop

    nop

    nop

    :goto_50b
    const/4 v6, 0x0

    nop

    nop

    goto/32 :goto_36f

    nop

    nop

    nop

    nop

    :goto_50c
    goto/32 :goto_10f

    nop

    :goto_50d
    const/16 v6, 0x2e

    nop

    goto/32 :goto_3b4

    nop

    nop

    nop

    nop

    :goto_50e
    const-string v4, "Make"

    nop

    nop

    nop

    goto/32 :goto_167

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50f
    const-string v6, "SubjectDistanceRange"

    nop

    goto/32 :goto_42b

    nop

    nop

    nop

    :goto_510
    aput-object v2, v12, v9

    nop

    goto/32 :goto_251

    nop

    nop

    nop

    nop

    nop

    :goto_511
    aput-object v2, v12, v9

    nop

    goto/32 :goto_37c

    nop

    nop

    nop

    :goto_512
    invoke-direct {v6, v9, v11, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_513
    new-instance v2, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_514

    nop

    nop

    nop

    nop

    :goto_514
    const-string v9, "Software"

    nop

    nop

    nop

    goto/32 :goto_5a8

    nop

    nop

    nop

    nop

    nop

    :goto_515
    const-string v9, "DateTime"

    nop

    nop

    nop

    nop

    goto/32 :goto_577

    nop

    nop

    nop

    nop

    nop

    :goto_516
    invoke-direct {v0, v6, v9, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_271

    nop

    nop

    nop

    nop

    nop

    :goto_517
    invoke-static {v12}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    goto/32 :goto_480

    nop

    nop

    nop

    :goto_518
    const/16 v11, 0x1d

    nop

    nop

    nop

    goto/32 :goto_3a3

    nop

    nop

    nop

    nop

    :goto_519
    sput-object v0, Ldzi;->R:[Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_496

    nop

    nop

    :goto_51a
    invoke-direct {v6, v9, v11, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_30a

    nop

    nop

    nop

    nop

    nop

    :goto_51b
    new-instance v2, Lroz;

    nop

    nop

    nop

    goto/32 :goto_18c

    nop

    nop

    nop

    :goto_51c
    const/4 v15, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_51d
    const v9, 0x9290

    nop

    nop

    goto/32 :goto_14c

    nop

    nop

    nop

    nop

    :goto_51e
    aput-object v0, v2, v6

    nop

    nop

    nop

    goto/32 :goto_16e

    nop

    nop

    nop

    nop

    :goto_51f
    invoke-direct {v2, v15, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_50a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_520
    aput-object v6, v13, v3

    nop

    nop

    goto/32 :goto_13d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_521
    aget-object v1, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4c9

    nop

    nop

    nop

    :goto_522
    const-string v4, "Software"

    nop

    nop

    nop

    goto/32 :goto_363

    nop

    nop

    nop

    :goto_523
    const-string v9, "ExposureProgram"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b6

    nop

    nop

    nop

    nop

    :goto_524
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_53d

    nop

    nop

    :goto_525
    const/16 v9, 0x13

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_49d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_526
    const-string v6, "ExifVersion"

    nop

    goto/32 :goto_4ef

    nop

    nop

    nop

    nop

    :goto_527
    aput-object v3, v11, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    nop

    :goto_528
    new-instance v0, Lroz;

    nop

    goto/32 :goto_263

    nop

    nop

    :goto_529
    invoke-direct {v0, v6, v9, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_59c

    nop

    nop

    :goto_52a
    invoke-direct {v0, v6, v9, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_36e

    nop

    nop

    nop

    :goto_52b
    aput-object v3, v11, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_14e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52c
    const/16 v3, 0x8

    nop

    goto/32 :goto_520

    nop

    nop

    :goto_52d
    aput-object v0, v2, v6

    nop

    nop

    goto/32 :goto_1c1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_52e
    const v9, 0x9207

    nop

    nop

    nop

    nop

    goto/32 :goto_180

    nop

    nop

    nop

    nop

    :goto_52f
    const-string v6, "SceneCaptureType"

    nop

    goto/32 :goto_354

    nop

    nop

    nop

    nop

    nop

    :goto_530
    invoke-direct {v0, v6, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_470

    nop

    nop

    nop

    nop

    nop

    :goto_531
    new-instance v0, Lroz;

    nop

    nop

    nop

    goto/32 :goto_47e

    nop

    nop

    :goto_532
    const-string v6, "RecommendedExposureIndex"

    nop

    goto/32 :goto_3b6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_533
    const v9, 0x9202

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_346

    nop

    nop

    nop

    nop

    nop

    :goto_534
    new-instance v0, Lroz;

    nop

    nop

    nop

    goto/32 :goto_262

    nop

    nop

    :goto_535
    const v15, 0x8831

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b9

    nop

    nop

    nop

    nop

    :goto_536
    new-instance v0, Ljava/text/SimpleDateFormat;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_537
    sput-object v15, Ldzi;->q:[B

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25f

    nop

    nop

    :goto_538
    new-instance v6, Lroz;

    nop

    nop

    goto/32 :goto_182

    nop

    nop

    nop

    nop

    :goto_539
    const/16 v11, 0x17

    nop

    nop

    nop

    nop

    goto/32 :goto_503

    nop

    nop

    :goto_53a
    new-array v13, v7, [[Lroz;

    nop

    nop

    goto/32 :goto_42a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53b
    const-string v6, "ISOSpeedLatitudeyyy"

    nop

    goto/32 :goto_38e

    nop

    nop

    nop

    :goto_53c
    const/16 v11, 0x25

    nop

    nop

    nop

    goto/32 :goto_4ce

    nop

    nop

    :goto_53d
    new-instance v0, Lroz;

    nop

    nop

    nop

    goto/32 :goto_245

    nop

    nop

    nop

    :goto_53e
    new-instance v4, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_222

    nop

    nop

    nop

    nop

    nop

    :goto_53f
    aput-object v0, v2, v6

    nop

    goto/32 :goto_571

    nop

    nop

    :goto_540
    const/16 v2, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e8

    nop

    nop

    nop

    :goto_541
    const-string v6, "ThumbnailImage"

    nop

    goto/32 :goto_434

    nop

    nop

    :goto_542
    new-instance v3, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_1ba

    nop

    nop

    nop

    :goto_543
    const/16 v15, 0x212

    nop

    nop

    nop

    goto/32 :goto_1a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_544
    invoke-direct {v3, v4, v6, v13, v15}, Lroz;-><init>(Ljava/lang/String;III)V

    goto/32 :goto_330

    nop

    nop

    nop

    nop

    nop

    :goto_545
    const/4 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_5b0

    nop

    nop

    nop

    nop

    :goto_546
    new-instance v3, Lroz;

    nop

    goto/32 :goto_45c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_547
    aput-object v6, v0, v11

    nop

    nop

    goto/32 :goto_1be

    nop

    nop

    nop

    nop

    nop

    :goto_548
    const-string v4, "DefaultCropSize"

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    nop

    nop

    :goto_549
    const-string v4, "ExifIFDPointer"

    nop

    nop

    goto/32 :goto_20d

    nop

    nop

    nop

    nop

    nop

    :goto_54a
    const/16 v3, 0xfe

    nop

    goto/32 :goto_4d8

    nop

    nop

    nop

    nop

    nop

    :goto_54b
    const/16 v13, 0x2040

    nop

    nop

    nop

    nop

    goto/32 :goto_55c

    nop

    nop

    :goto_54c
    const-string v6, "CameraOwnerName"

    nop

    nop

    goto/32 :goto_386

    nop

    nop

    :goto_54d
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_40b

    nop

    nop

    :goto_54e
    const/16 v4, 0x12

    nop

    nop

    goto/32 :goto_168

    nop

    nop

    :goto_54f
    const/16 v15, 0x110

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4fb

    nop

    nop

    nop

    nop

    :goto_550
    const-string v4, "YResolution"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b4

    nop

    nop

    nop

    nop

    nop

    :goto_551
    const/16 v9, 0x19

    nop

    nop

    nop

    goto/32 :goto_2cd

    nop

    nop

    :goto_552
    new-instance v6, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    nop

    nop

    nop

    :goto_553
    new-instance v0, Lroz;

    nop

    nop

    nop

    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_554
    const-string v6, "PixelYDimension"

    nop

    nop

    nop

    nop

    goto/32 :goto_18b

    nop

    nop

    nop

    :goto_555
    const v9, 0xa409

    nop

    goto/32 :goto_356

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_556
    const-string v0, "^(\\d{4}):(\\d{2}):(\\d{2})\\s(\\d{2}):(\\d{2}):(\\d{2})$"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_459

    nop

    nop

    nop

    nop

    :goto_557
    const v15, 0x829a

    nop

    nop

    nop

    nop

    goto/32 :goto_36c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_558
    const-string v4, "SubIFDPointer"

    nop

    nop

    nop

    nop

    goto/32 :goto_454

    nop

    nop

    nop

    nop

    nop

    :goto_559
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_345

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_55a
    sput-object v0, Ldzi;->y:Ljava/text/SimpleDateFormat;

    nop

    nop

    goto/32 :goto_1ca

    nop

    nop

    nop

    nop

    :goto_55b
    invoke-direct {v2, v15, v6, v11}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_312

    nop

    nop

    :goto_55c
    invoke-direct {v4, v6, v13, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_137

    nop

    nop

    :goto_55d
    const v9, 0xa500

    nop

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_55e
    const/16 v7, 0x101

    nop

    nop

    goto/32 :goto_5c5

    nop

    nop

    :goto_55f
    const/16 v9, 0x16

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_560
    const-string v6, "SubjectDistance"

    nop

    nop

    nop

    goto/32 :goto_30b

    nop

    nop

    :goto_561
    const-string v6, "Sharpness"

    nop

    goto/32 :goto_39e

    nop

    nop

    nop

    nop

    nop

    :goto_562
    const v9, 0x9003

    nop

    nop

    nop

    nop

    goto/32 :goto_5af

    nop

    nop

    :goto_563
    const/4 v13, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_1de

    nop

    nop

    nop

    nop

    nop

    :goto_564
    const/16 v6, 0x10

    nop

    goto/32 :goto_164

    nop

    nop

    nop

    :goto_565
    const-string v6, "ShutterSpeedValue"

    nop

    nop

    nop

    nop

    goto/32 :goto_226

    nop

    nop

    :goto_566
    invoke-direct {v0, v6, v9, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_235

    nop

    nop

    nop

    nop

    nop

    :goto_567
    const/16 v6, 0x1b

    nop

    goto/32 :goto_14b

    nop

    nop

    nop

    nop

    :goto_568
    move-object/from16 v2, v20

    nop

    nop

    nop

    goto/32 :goto_35b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_569
    new-instance v0, Lroz;

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_56a
    const-string v6, "ISO"

    nop

    nop

    goto/32 :goto_282

    nop

    nop

    nop

    nop

    nop

    :goto_56b
    sput-object v2, Ldzi;->Z:[Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4fe

    nop

    nop

    nop

    nop

    nop

    :goto_56c
    const v9, 0x9203

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_44c

    nop

    nop

    nop

    nop

    nop

    :goto_56d
    invoke-direct {v6, v9, v11, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_551

    nop

    nop

    nop

    nop

    :goto_56e
    aput-object v0, v2, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_486

    nop

    nop

    :goto_56f
    const/16 v9, 0x12d

    nop

    nop

    nop

    goto/32 :goto_5bc

    nop

    nop

    nop

    :goto_570
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_335

    nop

    nop

    nop

    :goto_571
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43a

    nop

    nop

    nop

    nop

    nop

    :goto_572
    const v9, 0x9012

    nop

    goto/32 :goto_2a3

    nop

    nop

    nop

    :goto_573
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_4d2

    nop

    nop

    nop

    :goto_574
    new-instance v2, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_575
    const v9, 0xa432

    nop

    nop

    nop

    goto/32 :goto_2d9

    nop

    nop

    nop

    nop

    nop

    :goto_576
    invoke-direct {v2, v6, v15, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_bf

    nop

    nop

    nop

    :goto_577
    const/16 v15, 0x132

    nop

    nop

    goto/32 :goto_2ab

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_578
    invoke-direct {v6, v9, v11, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_138

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_579
    aget-object v2, v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_3e5

    nop

    nop

    nop

    nop

    nop

    :goto_57a
    const/16 v4, 0x13

    nop

    goto/32 :goto_cf

    nop

    nop

    nop

    nop

    :goto_57b
    invoke-direct {v6, v9, v11, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2ff

    nop

    nop

    nop

    nop

    :goto_57c
    const-string v9, "Orientation"

    nop

    nop

    nop

    goto/32 :goto_307

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_57d
    aput-object v0, v2, v6

    nop

    nop

    goto/32 :goto_1bf

    nop

    nop

    nop

    :goto_57e
    new-instance v2, Lroz;

    nop

    nop

    nop

    goto/32 :goto_f9

    nop

    nop

    :goto_57f
    aput-object v6, v0, v15

    nop

    nop

    goto/32 :goto_40c

    nop

    nop

    nop

    :goto_580
    const/4 v2, 0x6

    nop

    nop

    nop

    goto/32 :goto_116

    nop

    nop

    :goto_581
    const/16 v6, 0x27

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1df

    nop

    nop

    nop

    :goto_582
    sput-object v12, Ldzi;->k:[B

    nop

    nop

    goto/32 :goto_407

    nop

    nop

    nop

    :goto_583
    const-string v4, "ImageDescription"

    nop

    nop

    goto/32 :goto_31b

    nop

    nop

    nop

    nop

    nop

    :goto_584
    new-instance v6, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2e2

    nop

    nop

    :goto_585
    invoke-direct {v0, v6, v9, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_ba

    nop

    nop

    nop

    :goto_586
    new-instance v3, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_32c

    nop

    nop

    nop

    nop

    :goto_587
    const v9, 0x9004

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1dc

    nop

    nop

    :goto_588
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    nop

    nop

    goto/32 :goto_37b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_589
    sput-object v0, Ldzi;->E:[B

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_58a
    new-instance v0, Lroz;

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_58b
    new-instance v0, Lroz;

    nop

    nop

    nop

    goto/32 :goto_532

    nop

    nop

    nop

    nop

    :goto_58c
    const-string v5, "DigitalZoomRatio"

    nop

    nop

    goto/32 :goto_27c

    nop

    nop

    nop

    nop

    :goto_58d
    new-instance v0, Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33e

    nop

    nop

    nop

    nop

    nop

    :goto_58e
    const/16 v6, 0x45

    nop

    goto/32 :goto_211

    nop

    nop

    nop

    nop

    nop

    :goto_58f
    aput-object v0, v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_56b

    nop

    nop

    nop

    :goto_590
    new-instance v0, Lroz;

    nop

    nop

    goto/32 :goto_34f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_591
    invoke-direct {v3, v4, v6, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2d7

    nop

    nop

    nop

    nop

    nop

    :goto_592
    const-string v6, "FlashpixVersion"

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_593
    invoke-direct {v0, v6, v9, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_2ba

    nop

    nop

    nop

    nop

    :goto_594
    const/4 v15, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_285

    nop

    nop

    nop

    nop

    nop

    :goto_595
    new-instance v2, Lroz;

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_596
    const/16 v15, 0x10f

    nop

    goto/32 :goto_4f8

    nop

    nop

    :goto_597
    aput-object v0, v2, v6

    nop

    nop

    goto/32 :goto_3f7

    nop

    nop

    nop

    nop

    :goto_598
    const/4 v11, 0x6

    nop

    nop

    nop

    nop

    goto/32 :goto_4c8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_599
    invoke-virtual {v6, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2f9

    nop

    nop

    nop

    :goto_59a
    new-array v12, v11, [B

    nop

    nop

    nop

    nop

    fill-array-data v12, :array_3

    goto/32 :goto_29c

    nop

    nop

    :goto_59b
    new-instance v3, Lroz;

    nop

    goto/32 :goto_4e2

    nop

    nop

    nop

    nop

    :goto_59c
    const/16 v6, 0x20

    nop

    nop

    goto/32 :goto_339

    nop

    nop

    nop

    :goto_59d
    const-string v9, "GPSTrackRef"

    nop

    nop

    goto/32 :goto_48d

    nop

    nop

    nop

    nop

    nop

    :goto_59e
    const-string v6, "SensorBottomBorder"

    nop

    nop

    goto/32 :goto_205

    nop

    nop

    nop

    :goto_59f
    aput-object v3, v11, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_349

    nop

    nop

    nop

    :goto_5a0
    const/4 v13, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_1f2

    nop

    nop

    nop

    nop

    nop

    :goto_5a1
    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2a2

    nop

    nop

    :goto_5a2
    const/16 v4, 0x22

    nop

    nop

    goto/32 :goto_4d5

    nop

    nop

    nop

    nop

    :goto_5a3
    const/4 v15, 0x7

    nop

    nop

    goto/32 :goto_171

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a4
    const-string v6, "SubSecTime"

    nop

    nop

    nop

    goto/32 :goto_51d

    nop

    nop

    nop

    nop

    nop

    :goto_5a5
    const/16 v4, 0x20

    nop

    nop

    nop

    goto/32 :goto_421

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a6
    const/16 v6, 0x22

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4fa

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a7
    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_5a8
    const/16 v15, 0x131

    nop

    nop

    goto/32 :goto_481

    nop

    nop

    :goto_5a9
    const/16 v7, 0x1113

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_212

    nop

    nop

    nop

    nop

    :goto_5aa
    const-string v6, "ExposureBiasValue"

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    :goto_5ab
    aput-object v6, v0, v3

    nop

    goto/32 :goto_417

    nop

    nop

    nop

    :goto_5ac
    invoke-direct {v0, v6, v9, v13}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_309

    nop

    nop

    :goto_5ad
    const/16 v12, 0x66

    nop

    nop

    nop

    goto/32 :goto_3ad

    nop

    nop

    nop

    :goto_5ae
    aput-object v6, v2, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_351

    nop

    nop

    nop

    nop

    nop

    :goto_5af
    invoke-direct {v0, v6, v9, v3}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b0
    sget-object v6, Lcom/google/android/apps/camera/debug/metrics/Rn/hhAHoOiyE;->JYi:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_52e

    nop

    nop

    nop

    nop

    :goto_5b1
    new-instance v3, Lroz;

    nop

    nop

    goto/32 :goto_453

    nop

    nop

    nop

    :goto_5b2
    const-string v6, "DeviceSettingDescription"

    nop

    nop

    nop

    nop

    goto/32 :goto_22c

    nop

    nop

    nop

    nop

    nop

    :goto_5b3
    const/16 v6, 0x3c

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :goto_5b4
    add-int/lit8 v4, v4, 0x1

    nop

    goto/32 :goto_5ba

    nop

    nop

    nop

    nop

    nop

    :goto_5b5
    const-string v9, "GPSDestBearingRef"

    nop

    nop

    goto/32 :goto_539

    nop

    nop

    nop

    nop

    :goto_5b6
    const-string v2, "http://ns.adobe.com/xap/1.0/\u0000"

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    :goto_5b7
    invoke-direct {v13, v15, v7, v10}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_3d9

    nop

    nop

    nop

    :goto_5b8
    const/16 v4, 0x21

    nop

    nop

    nop

    goto/32 :goto_234

    nop

    nop

    :goto_5b9
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    goto/32 :goto_175

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5ba
    goto/16 :goto_210

    nop

    :goto_5bb
    goto/32 :goto_170

    nop

    nop

    nop

    nop

    nop

    :goto_5bc
    invoke-direct {v2, v15, v9, v4}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_525

    nop

    nop

    nop

    nop

    :goto_5bd
    const/16 v6, 0x24

    nop

    nop

    nop

    nop

    goto/32 :goto_57d

    nop

    nop

    nop

    :goto_5be
    const/16 v6, 0x44

    nop

    nop

    nop

    nop

    goto/32 :goto_375

    nop

    nop

    :goto_5bf
    aput-object v3, v11, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19c

    nop

    nop

    :goto_5c0
    const/4 v15, 0x7

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    :goto_5c1
    const v9, 0xa407

    nop

    nop

    goto/32 :goto_3c2

    nop

    nop

    :goto_5c2
    aput-object v0, v2, v6

    nop

    nop

    nop

    goto/32 :goto_1ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c3
    aget-object v6, v6, v9

    nop

    nop

    nop

    goto/32 :goto_257

    nop

    nop

    nop

    nop

    nop

    :goto_5c4
    aput-object v3, v11, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_42c

    nop

    nop

    nop

    nop

    nop

    :goto_5c5
    invoke-direct {v6, v13, v7, v15}, Lroz;-><init>(Ljava/lang/String;II)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c6
    const/16 v6, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5b9

    nop

    nop

    nop

    nop

    nop

    :goto_5c7
    sget-object v0, Ldzi;->j:[[Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_444

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c8
    const-string v9, "Artist"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5c9
    new-instance v3, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_3fb

    nop

    nop

    :goto_5ca
    const/16 v12, 0x44

    nop

    nop

    nop

    goto/32 :goto_176

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5cb
    const-string v23, "UNDEFINED"

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5cc
    aput-object v3, v11, v4

    nop

    goto/32 :goto_3eb

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 6

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_0
    new-array v1, v0, [Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1
    goto :goto_6

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v1, p0, Ldzi;->F:Ljava/io/FileDescriptor;

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_8
    iput-object v1, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_9
    iput-object v0, p0, Ldzi;->i:Ljava/nio/ByteOrder;

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

    :goto_a
    instance-of v0, p1, Landroid/content/res/AssetManager$AssetInputStream;

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object v1, p0, Ldzi;->J:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v2

    nop

    nop

    nop

    nop

    :try_start_0
    sget v3, Landroid/system/OsConstants;->SEEK_CUR:I

    nop

    nop

    nop

    nop

    const-wide/16 v4, 0x0

    nop

    nop

    nop

    invoke-static {v2, v4, v5, v3}, Landroid/system/Os;->lseek(Ljava/io/FileDescriptor;JI)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_d
    goto :goto_6

    nop

    :catch_0
    :goto_e
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_f
    const v1, 0x1b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_10
    check-cast v0, Ljava/io/FileInputStream;

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    move-object v0, p1

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_13
    iput-object v1, p0, Ldzi;->F:Ljava/io/FileDescriptor;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object v0, Ldzi;->j:[[Lroz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_17
    iput-object v0, p0, Ldzi;->G:Landroid/content/res/AssetManager$AssetInputStream;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    iput-object v1, p0, Ldzi;->G:Landroid/content/res/AssetManager$AssetInputStream;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1a
    const v0, 0x1f

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

    :goto_1b
    move-object v0, p1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_1c
    array-length v0, v0

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0, p1}, Ldzi;->3fd9578e124c68aa49885b22b61b4ec8m(Ljava/io/InputStream;)V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_1f
    invoke-direct {v1, v0}, Ljava/util/HashSet;-><init>(I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/16 v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_22
    iput-object v1, p0, Ldzi;->G:Landroid/content/res/AssetManager$AssetInputStream;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    invoke-virtual {v0}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_24
    iput-object v0, p0, Ldzi;->F:Ljava/io/FileDescriptor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    instance-of v0, p1, Ljava/io/FileInputStream;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_26
    if-nez v0, :cond_2

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_2
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_27
    new-instance v1, Ljava/util/HashSet;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    :goto_29
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_2b
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop
.end method

.method private final a74c8a79bf0ef0e20983317119c87838m(II)V
    .locals 5

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_0
    iget-object v4, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_2
    if-nez v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_0

    nop

    nop

    :goto_3
    aget-object v0, p0, p1

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v4, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_5
    if-lt v0, v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_2
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_6
    aget-object v0, v0, p1

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v4, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    aget-object v0, v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_9
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_a
    invoke-virtual {v3, v4}, Ldzg;->a(Ljava/nio/ByteOrder;)I

    move-result v3

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0, v4}, Ldzg;->a(Ljava/nio/ByteOrder;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_c
    iget-object p0, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_e
    aput-object v1, p0, p1

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    if-nez v0, :cond_3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_11
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_13
    aget-object v4, v4, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_15
    invoke-virtual {v2, v4}, Ldzg;->a(Ljava/nio/ByteOrder;)I

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_16
    check-cast v0, Ldzg;

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    :goto_17
    iget-object v0, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_18
    goto/32 :goto_30

    nop

    :goto_19
    add-int v0, v0, v1

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    aput-object v0, p0, p2

    nop

    nop

    :goto_1b
    goto/32 :goto_34

    nop

    nop

    :goto_1c
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    :goto_1e
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    :cond_4
    goto/32 :goto_2f

    nop

    :goto_1f
    iget-object v4, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_20
    if-nez v2, :cond_5

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_21
    aget-object v0, v0, p1

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_22
    check-cast v3, Ldzg;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_23
    iget-object v0, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    const-string v3, "ImageWidth"

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_25
    check-cast v2, Ldzg;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_26
    iget-object v4, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_27
    const-string v1, "ImageLength"

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_28
    if-lt v2, v3, :cond_6

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/16 :goto_1b

    nop

    nop

    :goto_2a
    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    :goto_2c
    aget-object v2, v2, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-virtual {v1, v4}, Ldzg;->a(Ljava/nio/ByteOrder;)I

    move-result v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2e
    iget-object v2, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_35

    nop

    :goto_30
    goto/32 :goto_10

    nop

    nop

    :goto_31
    check-cast v1, Ldzg;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_32
    if-nez v1, :cond_7

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_7
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_33
    aget-object v1, p0, p2

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_34
    return-void

    nop

    nop

    nop

    :goto_35
    goto/32 :goto_18

    nop

    nop

    nop

    :goto_36
    aget-object v4, v4, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_37
    invoke-virtual {v4, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_38
    if-nez v0, :cond_8

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :cond_8
    goto/32 :goto_29

    nop

    nop

    :goto_39
    iget-object v4, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop
.end method

.method private final b1051a9d8893542362ad09051775f8f6m([BI)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, v0, p2}, Ldzi;->e94656b6137dd01f26085f984afe853em(Ldzf;I)V

    goto/32 :goto_0

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

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Ldzf;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_7
    invoke-direct {p0, v0}, Ldzi;->33b3102b6558811a7b7629a1e8e59bd2m(Ldzf;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_9
    const/4 v1, 0x0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p1, v1}, Ldzf;-><init>([B[B)V

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x13

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v1, 0x6

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop
.end method

.method private final c43d12f4f4da28dd6c943a4effe477b7m(Ldzf;I)V
    .locals 9

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v1, p2}, Ldzi;->7ecc92917e9c4556cc19f457ddc41af8m(Ldzf;II)V

    :goto_1
    goto/32 :goto_87

    nop

    nop

    nop

    nop

    nop

    :goto_2
    aget-object v1, v1, p2

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_3
    invoke-static {p1, v1}, Ldzg;->e(ILjava/nio/ByteOrder;)Ldzg;

    move-result-object p1

    nop

    :goto_4
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    :goto_5
    const-string v3, "SensorLeftBorder"

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :goto_6
    aget-object v0, v0, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_8
    const/4 v1, 0x5

    nop

    goto/32 :goto_46

    nop

    nop

    :goto_9
    invoke-virtual {p0, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const-string v1, "DefaultCropSize"

    nop

    nop

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    aget-object v0, v0, p2

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    nop

    :goto_c
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v0, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v1, v6, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

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

    :goto_10
    invoke-virtual {v1, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_11
    iget-object p1, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v3, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_29

    nop

    nop

    :goto_16
    iget p1, v0, Ldzg;->a:I

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v2, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    goto/32 :goto_9b

    nop

    nop

    nop

    nop

    nop

    :goto_18
    check-cast v0, Ldzg;

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6a

    nop

    :goto_1a
    check-cast v3, Ldzg;

    nop

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_1b
    if-ne v0, v4, :cond_1

    nop

    nop

    nop

    goto/32 :goto_71

    nop

    nop

    :cond_1
    goto/32 :goto_70

    nop

    nop

    nop

    :goto_1c
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1d
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_4

    nop

    nop

    :goto_1f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    :goto_21
    aget-object v3, v3, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    nop

    :goto_22
    aget-object v1, v1, p2

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

    :goto_23
    invoke-virtual {v2, v3}, Ldzg;->a(Ljava/nio/ByteOrder;)I

    move-result v2

    nop

    goto/32 :goto_9f

    nop

    nop

    :goto_24
    invoke-virtual {v3, v0}, Ldzg;->a(Ljava/nio/ByteOrder;)I

    move-result v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_25
    invoke-static {v0, v1}, Ldzg;->e(ILjava/nio/ByteOrder;)Ldzg;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    :goto_27
    goto/32 :goto_6e

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const v1, 0x14

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    iget-object v0, p0, Ldzi;->I:[Ljava/util/HashMap;

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

    nop

    nop

    :goto_2a
    iget-object v0, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-static {v0, v1}, Ldzg;->d(Ldzh;Ljava/nio/ByteOrder;)Ldzg;

    move-result-object v0

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object v3, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-static {p1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_96

    nop

    nop

    nop

    nop

    :goto_2f
    iget-object v1, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_30
    iget-object v1, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_31
    check-cast v4, Ldzg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    nop

    :goto_32
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    :goto_33
    invoke-static {v7, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    nop

    :goto_34
    if-nez v2, :cond_2

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_44

    nop

    nop

    nop

    nop

    :goto_35
    int-to-long v2, v1

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    :goto_36
    aget-object p0, p0, p2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_37
    iget-object v1, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_38
    invoke-virtual {v1, p1}, Ldzg;->a(Ljava/nio/ByteOrder;)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_39
    sub-int/2addr v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-virtual {v4, v1}, Ldzg;->a(Ljava/nio/ByteOrder;)I

    move-result v1

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-nez v0, :cond_3

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    iget-object v1, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    aget v0, p1, v3

    nop

    goto/32 :goto_2f

    nop

    nop

    :goto_3e
    aget-object v2, v2, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_3f
    aget-object v0, p1, v3

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    :goto_40
    check-cast p1, [Ldzh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_82

    nop

    nop

    nop

    :goto_41
    aget-object v4, v4, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5f

    nop

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    nop

    :goto_43
    add-int v0, v0, v1

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_44
    if-nez v3, :cond_4

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_45
    aget-object v1, v1, p2

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_46
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    nop

    nop

    :goto_47
    iget-object v1, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_48
    aget-object p0, p0, p2

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    nop

    nop

    nop

    :goto_49
    iget-object v0, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_4a
    check-cast p1, [I

    nop

    nop

    nop

    goto/32 :goto_78

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    iget-object p0, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_4c
    if-nez v4, :cond_5

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_5
    goto/32 :goto_11

    nop

    nop

    :goto_4d
    check-cast v1, Ldzg;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4e
    const-string v8, "Invalid crop size values. cropSize="

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    :goto_4f
    return-void

    nop

    nop

    :goto_50
    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    :goto_51
    invoke-static {p1, v1}, Ldzg;->d(Ldzh;Ljava/nio/ByteOrder;)Ldzg;

    move-result-object p1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_52
    iget-object p1, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    :goto_53
    const-string v2, "SensorTopBorder"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_54
    invoke-virtual {p1, v2, v3}, Ldzf;->c(J)V

    goto/32 :goto_5d

    nop

    nop

    nop

    nop

    :goto_55
    if-ne v0, v4, :cond_6

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v8, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_57
    const v0, 0x1a

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    :goto_58
    invoke-virtual {v0, p1}, Ldzg;->f(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    nop

    goto/32 :goto_40

    nop

    nop

    :goto_59
    iget-object v1, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5a
    aget p1, p1, v2

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    const-string v1, "JPEGInterchangeFormat"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_5c
    new-instance p1, Ldzf;

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    :goto_5d
    new-array v0, v0, [B

    nop

    nop

    nop

    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    :goto_5e
    goto/32 :goto_6b

    nop

    nop

    :goto_5f
    const-string v5, "SensorRightBorder"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7a

    nop

    nop

    nop

    nop

    nop

    :goto_60
    iget-object v2, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    :goto_61
    invoke-virtual {v8, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    :goto_62
    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_63
    aget-object p1, p1, v2

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    :goto_64
    const/4 v4, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_65
    invoke-virtual {v0, v1}, Ldzg;->a(Ljava/nio/ByteOrder;)I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_66
    if-nez v1, :cond_7

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_7
    goto/32 :goto_98

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_67
    const/4 v3, 0x0

    nop

    nop

    nop

    goto/32 :goto_64

    nop

    nop

    nop

    :goto_68
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_69
    sub-int/2addr v1, v2

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_6a
    goto/32 :goto_88

    nop

    nop

    nop

    nop

    nop

    :goto_6b
    goto/32 :goto_d

    nop

    nop

    :goto_6c
    goto/16 :goto_50

    nop

    nop

    nop

    nop

    :goto_6d
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    iget-object p1, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :goto_6f
    check-cast v0, Ldzg;

    nop

    nop

    nop

    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_70
    goto/16 :goto_1f

    nop

    nop

    :goto_71
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_72
    invoke-virtual {p0, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_73
    if-nez v1, :cond_8

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_8
    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_75
    const-string v6, "ImageLength"

    nop

    goto/32 :goto_91

    nop

    nop

    nop

    :goto_76
    iget-object v1, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    goto/32 :goto_83

    nop

    nop

    nop

    nop

    nop

    :goto_77
    invoke-static {v0, v3}, Ldzg;->e(ILjava/nio/ByteOrder;)Ldzg;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_90

    nop

    nop

    :goto_78
    if-nez p1, :cond_9

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_93

    nop

    nop

    nop

    :goto_79
    if-gt v1, v2, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_7a
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_7b
    aget-object v0, v0, p2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7c
    check-cast v2, Ldzg;

    nop

    goto/32 :goto_89

    nop

    nop

    nop

    :goto_7d
    if-nez v0, :cond_b

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_95

    nop

    nop

    :cond_b
    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_7e
    invoke-virtual {v0, p1}, Ldzg;->f(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_7f
    return-void

    nop

    nop

    nop

    :goto_80
    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_81
    invoke-direct {p1, v0}, Ldzf;-><init>([B)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_82
    if-nez p1, :cond_c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    :goto_83
    aget-object v1, v1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_84
    check-cast v1, Ldzg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    :goto_85
    const-string v5, "ImageWidth"

    nop

    goto/32 :goto_75

    nop

    nop

    :goto_86
    array-length v0, p1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_87
    return-void

    nop

    nop

    nop

    :goto_88
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    nop

    :goto_89
    iget-object v3, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_8a
    check-cast v0, Ldzg;

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_8b
    const-string v7, "ExifInterface"

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    :goto_8c
    iget-object v4, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    :goto_8d
    iget-object v1, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8e
    if-eq p1, v1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :cond_d
    goto/32 :goto_52

    nop

    nop

    nop

    :goto_8f
    invoke-virtual {p1, v0}, Ldzf;->readFully([B)V

    goto/32 :goto_5c

    nop

    nop

    nop

    :goto_90
    iget-object v0, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_69

    nop

    nop

    :goto_91
    if-nez v0, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_92
    const-string v2, "JPEGInterchangeFormatLength"

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_93
    array-length v0, p1

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    nop

    :goto_94
    if-eqz v1, :cond_f

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_f
    :goto_95
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    :goto_96
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    :goto_97
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_61

    nop

    nop

    nop

    :goto_98
    iget-object v1, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    goto/32 :goto_65

    nop

    nop

    nop

    :goto_99
    invoke-static {v1, v0}, Ldzg;->e(ILjava/nio/ByteOrder;)Ldzg;

    move-result-object v0

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    check-cast v1, Ldzg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_9b
    invoke-virtual {v0, v2}, Ldzg;->a(Ljava/nio/ByteOrder;)I

    move-result v0

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    iget-object v1, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_9d
    const-string v4, "SensorBottomBorder"

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    :goto_9e
    aget-object v1, v1, p2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_92

    nop

    nop

    :goto_9f
    if-gt v0, p1, :cond_10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_79

    nop

    nop

    nop

    nop
.end method

.method private final ccb4c19b7dbd16be9d2a43125797659dm(Ldzf;)V
    .locals 7

    goto/32 :goto_21

    nop

    nop

    nop

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
    goto/32 :goto_2

    nop

    nop

    :goto_2
    const-string v1, "BitsPerSample"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_4
    check-cast v1, [I

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_5
    iget-object v2, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_6
    invoke-static {v1, v4}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_7
    sget-object v2, Ldzi;->b:[I

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object v4, Ldzi;->a:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v4, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    :goto_a
    if-nez v5, :cond_0

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_13

    nop

    nop

    :goto_b
    goto/16 :goto_3d

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const/4 v2, 0x6

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_e
    const-string v5, "PhotometricInterpretation"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-nez v1, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_11
    iget-object v0, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_12
    const/4 v6, 0x3

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_13
    iget-object v6, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    nop

    nop

    :goto_14
    if-eq v5, v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget v5, p0, Ldzi;->H:I

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_16
    if-ne v1, v2, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-eq v5, v6, :cond_4

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_e

    nop

    nop

    :goto_18
    if-eqz v1, :cond_5

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_23

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0, p1, v0}, Ldzi;->51550bab6b6440a4fd45f825c221b363m(Ldzf;Ljava/util/HashMap;)V

    :goto_1a
    goto/32 :goto_25

    nop

    nop

    nop

    :goto_1b
    invoke-virtual {v0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    :goto_1d
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    invoke-direct {p0, p1, v0}, Ldzi;->1478a1c7833aac5e360e0ba4b0c0c568m(Ldzf;Ljava/util/HashMap;)V

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_1f
    invoke-static {v4, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-direct {p0, p1, v0}, Ldzi;->1478a1c7833aac5e360e0ba4b0c0c568m(Ldzf;Ljava/util/HashMap;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_21
    const v0, 0x11

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v1, v2}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_23
    goto :goto_1a

    nop

    nop

    nop

    :goto_24
    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    nop

    :goto_26
    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_6

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_29

    nop

    :goto_28
    const-string v1, "Compression"

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    :goto_29
    goto/32 :goto_2f

    nop

    nop

    :goto_2a
    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    const/4 v3, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2c
    goto/16 :goto_1a

    nop

    :goto_2d
    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    return-void

    nop

    nop

    nop

    :goto_2f
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_30
    if-ne v1, v4, :cond_7

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_31
    check-cast v5, Ldzg;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_32
    const v1, 0xd

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    :goto_33
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    :goto_34
    invoke-virtual {v5, v6}, Ldzg;->a(Ljava/nio/ByteOrder;)I

    move-result v5

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_35
    if-nez v1, :cond_8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    :cond_8
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_36
    const/4 v4, 0x7

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_37
    aget-object v0, v0, v1

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    goto/32 :goto_2a

    nop

    nop

    :goto_39
    check-cast v1, Ldzg;

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_3a
    invoke-virtual {v1, v2}, Ldzg;->a(Ljava/nio/ByteOrder;)I

    move-result v1

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    if-eq v5, v3, :cond_9

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_7

    nop

    nop

    :goto_3c
    if-nez v1, :cond_a

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :cond_a
    :goto_3d
    goto/32 :goto_19

    nop

    nop

    nop

    :goto_3e
    invoke-virtual {v1, v4}, Ldzg;->f(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

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

    :goto_3f
    check-cast v1, Ldzg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_40
    if-ne v1, v3, :cond_b

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_16

    nop

    nop

    nop

    :goto_41
    if-nez v5, :cond_c

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_c
    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method private static d(IIII)I
    .locals 0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    and-int/lit16 p2, p2, 0xff

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    shl-int/lit8 p1, p2, 0x8

    nop

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

    :goto_2
    shl-int/lit8 p1, p1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_3
    or-int/2addr p0, p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_4
    or-int/2addr p0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_5
    or-int/2addr p0, p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    and-int/lit16 p0, p0, 0xff

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_7
    and-int/lit16 p1, p1, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_8
    and-int/lit16 p1, p3, 0xff

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

    :goto_9
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    shl-int/lit8 p0, p0, 0x18

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method private final d116db4599d9ddc8c35e61366a4f4967m()V
    .locals 9

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    aget-object v7, v7, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    :goto_1
    iget-object v3, p0, Ldzi;->I:[Ljava/util/HashMap;

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

    nop

    :goto_2
    sget-object v5, Lcom/google/android/clockwork/common/wearable/wearmaterial/pageindicator/KvcD/IYYyjJUHLbynRQ;->PVigr:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_3
    aget-object v3, v3, v0

    nop

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_20

    nop

    nop

    :goto_5
    if-nez v4, :cond_0

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_6
    if-nez v3, :cond_1

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    :goto_7
    invoke-direct {p0, v0, v8, v5}, Ldzi;->1a36313b7ed15ba14e0acb4da569b8b7m(ILjava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_8
    aget-object v3, v3, v2

    nop

    goto/32 :goto_43

    nop

    nop

    :goto_9
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_a
    aget-object v3, v3, v1

    nop

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_b
    invoke-direct {p0, v0, v7, v6}, Ldzi;->1a36313b7ed15ba14e0acb4da569b8b7m(ILjava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_35

    nop

    nop

    nop

    :goto_c
    iget-object v3, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_d
    iget-object v3, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-direct {p0, v0, v2}, Ldzi;->a74c8a79bf0ef0e20983317119c87838m(II)V

    goto/32 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_34

    nop

    nop

    :goto_12
    aget-object v3, v3, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_13
    invoke-direct {p0, v1, v7, v6}, Ldzi;->1a36313b7ed15ba14e0acb4da569b8b7m(ILjava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_23

    nop

    nop

    :goto_14
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_10

    nop

    :goto_15
    aget-object v4, v5, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :goto_16
    const/4 v7, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    nop

    :goto_17
    const-string v5, "PixelYDimension"

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    const/4 v5, 0x0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_19
    invoke-direct {p0, v2, v6, v7}, Ldzi;->1a36313b7ed15ba14e0acb4da569b8b7m(ILjava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, v3}, Ldzi;->132cd3b981019b59dc42653eea0b34b4m(Ljava/util/HashMap;)Z

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-object v7, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_1c
    aget-object v3, v3, v2

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_1d
    invoke-direct {p0, v2, v4, v3}, Ldzi;->1a36313b7ed15ba14e0acb4da569b8b7m(ILjava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const-string v4, "Orientation"

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-nez v3, :cond_3

    nop

    goto/32 :goto_21

    nop

    nop

    :cond_3
    goto/32 :goto_25

    nop

    nop

    :goto_20
    aput-object v4, v3, v1

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    const/4 v1, 0x5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_23
    invoke-direct {p0, v1, v8, v5}, Ldzi;->1a36313b7ed15ba14e0acb4da569b8b7m(ILjava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-direct {p0, v2, v5, v8}, Ldzi;->1a36313b7ed15ba14e0acb4da569b8b7m(ILjava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v3, p0, Ldzi;->I:[Ljava/util/HashMap;

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

    :goto_26
    iget-object v3, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    check-cast v4, Ldzg;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const/4 v2, 0x4

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_29
    aget-object v4, v3, v1

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    check-cast v3, Ldzg;

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    return-void

    nop

    nop

    nop

    nop

    :goto_2c
    goto/32 :goto_30

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    iget-object v3, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    invoke-virtual {v3, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2f
    goto/32 :goto_1

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_31
    invoke-direct {p0, v1, v2}, Ldzi;->a74c8a79bf0ef0e20983317119c87838m(II)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_32
    new-instance v4, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_33
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    :goto_34
    const/4 v0, 0x0

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_35
    const-string v8, "ThumbnailImageWidth"

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_36
    invoke-direct {p0, v0, v3, v4}, Ldzi;->1a36313b7ed15ba14e0acb4da569b8b7m(ILjava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_37
    sget-object v7, Lcom/google/android/apps/camera/filmstrip/transition/KkW/xCXUu;->zZU:Ljava/lang/String;

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_38
    const-string v5, "ImageWidth"

    nop

    goto/32 :goto_3a

    nop

    nop

    nop

    :goto_39
    iget-object v5, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    const-string v6, "ImageLength"

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

    :goto_3b
    invoke-direct {p0, v0, v1}, Ldzi;->a74c8a79bf0ef0e20983317119c87838m(II)V

    goto/32 :goto_28

    nop

    nop

    :goto_3c
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_3d
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    const v1, 0xc

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    nop

    :goto_3f
    invoke-virtual {v7, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_2d

    nop

    nop

    :goto_40
    invoke-direct {p0, v1, v3, v4}, Ldzi;->1a36313b7ed15ba14e0acb4da569b8b7m(ILjava/lang/String;Ljava/lang/String;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    const-string v3, "ThumbnailOrientation"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_42
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_43
    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_44
    invoke-direct {p0, v3}, Ldzi;->132cd3b981019b59dc42653eea0b34b4m(Ljava/util/HashMap;)Z

    move-result v3

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    :goto_45
    if-nez v3, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_c

    nop

    nop

    :goto_46
    aput-object v4, v3, v2

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final d5484163cd8d335e6b17663474ff5f2bm(Ldzf;)V
    .locals 5

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    const/16 v1, 0x8

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p1, Ldzf;->c:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p1, v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v0, 0x18

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_d

    nop

    nop

    :goto_8
    new-instance p1, Ljava/io/IOException;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_a
    const-string v0, "Encountered corrupt PNG file."

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

    :goto_b
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_b

    nop

    nop

    :goto_e
    array-length v1, v1

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_10
    sget-object v1, Ldzi;->r:[B

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_11
    throw p1

    nop

    :goto_12
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v0, p1, Ldzf;->b:I

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_14
    invoke-virtual {p1, v1}, Ldzf;->b(I)V

    :goto_15
    :try_start_0
    invoke-virtual {p1}, Ldzf;->readInt()I

    move-result v1

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1}, Ldzf;->readInt()I

    move-result v2

    nop

    nop

    nop

    nop

    iget v3, p1, Ldzf;->b:I

    nop

    sub-int/2addr v3, v0

    nop

    nop

    nop

    const/16 v4, 0x10

    nop

    nop

    nop

    if-ne v3, v4, :cond_2

    nop

    nop

    sget v3, Ldzi;->t:I

    nop

    nop

    if-ne v2, v3, :cond_1

    nop

    nop

    nop

    nop

    nop

    move v3, v4

    nop

    nop

    goto :goto_16

    nop

    nop

    nop

    nop

    :cond_1
    new-instance p0, Ljava/io/IOException;

    nop

    nop

    const-string p1, "Encountered invalid PNG file--IHDR chunk should appear as the first chunk"

    nop

    nop

    nop

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    :cond_2
    :goto_16
    sget v4, Ldzi;->u:I

    nop

    nop

    nop

    if-ne v2, v4, :cond_3

    nop

    return-void

    nop

    nop

    nop

    :cond_3
    sget v4, Ldzi;->s:I

    nop

    nop

    nop

    nop

    if-ne v2, v4, :cond_5

    nop

    nop

    iput v3, p0, Ldzi;->L:I

    nop

    new-array v0, v1, [B

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p1, v0}, Ldzf;->readFully([B)V

    invoke-virtual {p1}, Ldzf;->readInt()I

    move-result p1

    nop

    nop

    nop

    nop

    new-instance v1, Ljava/util/zip/CRC32;

    nop

    nop

    nop

    invoke-direct {v1}, Ljava/util/zip/CRC32;-><init>()V

    ushr-int/lit8 v3, v2, 0x18

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/util/zip/CRC32;->update(I)V

    ushr-int/lit8 v3, v2, 0x10

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/util/zip/CRC32;->update(I)V

    ushr-int/lit8 v3, v2, 0x8

    nop

    nop

    nop

    invoke-virtual {v1, v3}, Ljava/util/zip/CRC32;->update(I)V

    invoke-virtual {v1, v2}, Ljava/util/zip/CRC32;->update(I)V

    invoke-virtual {v1, v0}, Ljava/util/zip/CRC32;->update([B)V

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    nop

    long-to-int v2, v2

    nop

    if-ne v2, p1, :cond_4

    nop

    const/4 p1, 0x0

    nop

    nop

    invoke-direct {p0, v0, p1}, Ldzi;->b1051a9d8893542362ad09051775f8f6m([BI)V

    invoke-direct {p0}, Ldzi;->d116db4599d9ddc8c35e61366a4f4967m()V

    new-instance p1, Ldzf;

    nop

    invoke-direct {p1, v0}, Ldzf;-><init>([B)V

    invoke-direct {p0, p1}, Ldzi;->ccb4c19b7dbd16be9d2a43125797659dm(Ldzf;)V

    return-void

    nop

    nop

    nop

    :cond_4
    new-instance p0, Ljava/io/IOException;

    nop

    nop

    nop

    new-instance v0, Ljava/lang/StringBuilder;

    nop

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Encountered invalid CRC value for PNG-EXIF chunk.\n recorded CRC value: "

    nop

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", calculated CRC value: "

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v1

    nop

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    nop

    nop

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    :cond_5
    add-int/lit8 v1, v1, 0x4

    nop

    nop

    invoke-virtual {p1, v1}, Ldzf;->b(I)V
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_9

    nop

    nop
.end method

.method private final e94656b6137dd01f26085f984afe853em(Ldzf;I)V
    .locals 20

    goto/32 :goto_135

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v15, "MakerNote"

    nop

    nop

    nop

    nop

    goto/32 :goto_6b

    nop

    nop

    :goto_1
    if-ne v10, v6, :cond_0

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    :cond_0
    :goto_2
    goto/32 :goto_de

    nop

    nop

    nop

    :goto_3
    goto/16 :goto_119

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_f6

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v15, 0x6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ae

    nop

    nop

    nop

    :goto_6
    iget-object v15, v14, Lroz;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    if-gtz v4, :cond_1

    nop

    nop

    goto/32 :goto_44

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_43

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v3, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_79

    nop

    nop

    nop

    nop

    :goto_9
    move-object/from16 v1, p1

    nop

    goto/32 :goto_71

    nop

    nop

    nop

    :goto_a
    if-eq v10, v6, :cond_2

    nop

    goto/32 :goto_db

    nop

    :cond_2
    goto/32 :goto_da

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-ge v10, v15, :cond_3

    nop

    goto/32 :goto_8a

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_89

    nop

    nop

    nop

    :goto_c
    move-object/from16 v17, v9

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_d
    iget v2, v1, Ldzf;->b:I

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_fc

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_108

    nop

    nop

    :goto_10
    goto/32 :goto_e6

    nop

    nop

    :goto_11
    const-string v9, "ThumbnailImage"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6d

    nop

    nop

    nop

    nop

    :goto_12
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_63

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iget v3, v0, Ldzi;->L:I

    nop

    nop

    nop

    nop

    goto/32 :goto_126

    nop

    nop

    nop

    :goto_14
    if-gez v4, :cond_4

    nop

    nop

    nop

    goto/32 :goto_7c

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput v4, v0, Ldzi;->N:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7f

    nop

    nop

    nop

    nop

    :goto_16
    iget-object v6, v0, Ldzi;->J:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    iget-object v9, v14, Lroz;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_18
    int-to-long v14, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    :goto_19
    const-wide/16 v8, 0x4

    nop

    nop

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    nop

    :goto_1a
    goto/16 :goto_ba

    nop

    nop

    :goto_1b
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_1c
    if-nez v9, :cond_5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c1

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_e8

    nop

    nop

    nop

    :goto_1d
    invoke-static {v14, v15, v3}, Ldzg;->c(JLjava/nio/ByteOrder;)Ldzg;

    move-result-object v3

    nop

    nop

    nop

    goto/32 :goto_80

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/16 v15, 0xe

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1f
    invoke-direct {v0, v1, v3}, Ldzi;->e94656b6137dd01f26085f984afe853em(Ldzf;I)V

    :goto_20
    goto/32 :goto_ce

    nop

    nop

    :goto_21
    const-wide/32 v8, 0x7fffffff

    nop

    nop

    nop

    nop

    goto/32 :goto_a4

    nop

    nop

    nop

    :goto_22
    sget-object v2, Ldzi;->D:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_ab

    nop

    nop

    nop

    :goto_23
    const-string v14, "JPEGInterchangeFormat"

    nop

    nop

    goto/32 :goto_111

    nop

    nop

    nop

    :goto_24
    move v6, v7

    nop

    nop

    :goto_25
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_26
    move v12, v10

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_27
    array-length v15, v4

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_28
    invoke-direct/range {v11 .. v16}, Ldzg;-><init>(IIJ[B)V

    goto/32 :goto_d6

    nop

    nop

    nop

    nop

    :goto_29
    new-array v3, v3, [B

    nop

    nop

    goto/32 :goto_bf

    nop

    nop

    :goto_2a
    iget-object v3, v0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    goto/32 :goto_d9

    nop

    nop

    nop

    nop

    :goto_2b
    move-object/from16 v4, v19

    nop

    nop

    nop

    nop

    goto/32 :goto_100

    nop

    nop

    :goto_2c
    check-cast v14, Lroz;

    nop

    nop

    nop

    nop

    goto/32 :goto_c8

    nop

    nop

    nop

    nop

    nop

    :goto_2d
    const-string v14, "JPEGInterchangeFormatLength"

    nop

    nop

    goto/32 :goto_117

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    goto/16 :goto_ba

    nop

    :goto_2f
    goto/32 :goto_125

    nop

    nop

    :goto_30
    goto/16 :goto_95

    nop

    nop

    nop

    nop

    nop

    :goto_31
    goto/32 :goto_c9

    nop

    nop

    nop

    nop

    :goto_32
    if-ne v10, v3, :cond_6

    nop

    nop

    goto/32 :goto_ef

    nop

    :cond_6
    goto/32 :goto_e3

    nop

    nop

    nop

    :goto_33
    move-object/from16 v19, v14

    nop

    nop

    nop

    goto/32 :goto_94

    nop

    nop

    nop

    nop

    :goto_34
    new-instance v2, Ldzg;

    nop

    nop

    nop

    goto/32 :goto_112

    nop

    nop

    nop

    :goto_35
    int-to-long v3, v3

    nop

    nop

    nop

    :goto_36
    goto/32 :goto_64

    nop

    nop

    nop

    nop

    nop

    :goto_37
    iget-object v15, v0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    goto/32 :goto_12c

    nop

    nop

    nop

    nop

    :goto_38
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    nop

    nop

    nop

    nop

    goto/32 :goto_86

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_39
    const/16 v2, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_104

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    int-to-long v2, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11e

    nop

    nop

    nop

    :goto_3b
    const-string v9, "Model"

    nop

    goto/32 :goto_d1

    nop

    nop

    nop

    :goto_3c
    const/4 v4, 0x0

    nop

    nop

    goto/32 :goto_68

    nop

    nop

    nop

    nop

    nop

    :goto_3d
    iget v15, v0, Ldzi;->N:I

    nop

    nop

    nop

    goto/32 :goto_8b

    nop

    nop

    nop

    :goto_3e
    const/4 v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    if-eqz v3, :cond_7

    nop

    goto/32 :goto_bd

    nop

    nop

    nop

    nop

    nop

    :cond_7
    goto/32 :goto_ff

    nop

    nop

    nop

    nop

    :goto_40
    iget-object v3, v0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    goto/32 :goto_9f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    if-nez v3, :cond_8

    nop

    nop

    goto/32 :goto_9b

    nop

    :cond_8
    goto/32 :goto_10d

    nop

    nop

    nop

    nop

    :goto_42
    aget-object v2, v2, v3

    nop

    nop

    goto/32 :goto_74

    nop

    nop

    nop

    nop

    nop

    :goto_43
    goto/16 :goto_7c

    nop

    nop

    :goto_44
    goto/32 :goto_3e

    nop

    nop

    :goto_45
    if-ne v6, v7, :cond_9

    nop

    goto/32 :goto_12f

    nop

    nop

    :cond_9
    goto/32 :goto_116

    nop

    nop

    nop

    nop

    nop

    :goto_46
    if-ne v15, v8, :cond_a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_66

    nop

    nop

    nop

    nop

    nop

    :cond_a
    goto/32 :goto_11b

    nop

    nop

    :goto_47
    goto/16 :goto_5c

    nop

    nop

    :goto_48
    goto/32 :goto_130

    nop

    nop

    nop

    nop

    :goto_49
    iget v3, v0, Ldzi;->O:I

    nop

    nop

    nop

    nop

    goto/32 :goto_87

    nop

    nop

    nop

    :goto_4a
    if-ne v15, v6, :cond_b

    nop

    nop

    goto/32 :goto_f1

    nop

    nop

    :cond_b
    goto/32 :goto_f0

    nop

    nop

    :goto_4b
    cmp-long v5, v3, v5

    nop

    nop

    nop

    nop

    goto/32 :goto_ac

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    sget-object v4, Ldzi;->e:[I

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_4d
    invoke-virtual/range {p1 .. p1}, Ldzf;->readShort()S

    move-result v3

    nop

    goto/32 :goto_fa

    nop

    nop

    nop

    nop

    :goto_4e
    int-to-long v11, v11

    nop

    nop

    nop

    goto/32 :goto_e5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    const-string v9, "DNGVersion"

    nop

    nop

    goto/32 :goto_ea

    nop

    nop

    nop

    nop

    nop

    :goto_50
    goto/16 :goto_36

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_a2

    nop

    nop

    :goto_52
    move/from16 v18, v3

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    const/4 v9, 0x6

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

    :goto_54
    invoke-virtual {v1, v3, v4}, Ldzf;->c(J)V

    goto/32 :goto_a0

    nop

    nop

    nop

    nop

    nop

    :goto_55
    add-long/2addr v11, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c4

    nop

    nop

    nop

    nop

    nop

    :goto_56
    cmp-long v6, v3, v6

    nop

    nop

    goto/32 :goto_60

    nop

    nop

    nop

    nop

    nop

    :goto_57
    aget v4, v4, v10

    nop

    nop

    nop

    goto/32 :goto_88

    nop

    nop

    nop

    :goto_58
    if-ne v10, v6, :cond_c

    nop

    nop

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :cond_c
    goto/32 :goto_fd

    nop

    nop

    nop

    :goto_59
    move-object v11, v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_5a
    move-object/from16 v0, p0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_5b
    goto/16 :goto_25

    nop

    nop

    nop

    :goto_5c
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5d
    iget v11, v1, Ldzf;->b:I

    nop

    nop

    nop

    nop

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5e
    invoke-virtual/range {p1 .. p1}, Ldzf;->readInt()I

    move-result v4

    nop

    nop

    goto/32 :goto_f7

    nop

    nop

    nop

    nop

    nop

    :goto_5f
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    goto/32 :goto_cd

    nop

    nop

    :goto_60
    if-gtz v6, :cond_d

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_82

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_61
    if-gtz v10, :cond_e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    :cond_e
    goto/32 :goto_4c

    nop

    nop

    nop

    nop

    :goto_62
    if-nez v2, :cond_f

    nop

    nop

    nop

    goto/32 :goto_ba

    nop

    :cond_f
    goto/32 :goto_b9

    nop

    nop

    nop

    nop

    nop

    :goto_63
    if-lez v0, :cond_10

    nop

    nop

    nop

    goto/32 :goto_fc

    nop

    nop

    :cond_10
    goto/32 :goto_fb

    nop

    :goto_64
    const-wide/16 v6, 0x0

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_65
    move v7, v8

    nop

    :goto_66
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_67
    if-ne v10, v3, :cond_11

    nop

    nop

    nop

    goto/32 :goto_10c

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_96

    nop

    nop

    nop

    :goto_68
    const-wide/16 v6, 0x0

    nop

    nop

    nop

    goto/32 :goto_7d

    nop

    nop

    :goto_69
    int-to-long v6, v13

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6a
    if-ne v15, v7, :cond_12

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    :cond_12
    goto/32 :goto_d0

    nop

    nop

    nop

    nop

    :goto_6b
    invoke-virtual {v15, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_6c
    const-string v9, "Make"

    nop

    nop

    nop

    nop

    goto/32 :goto_a9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6d
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_76

    nop

    nop

    nop

    nop

    nop

    :goto_6e
    if-ne v10, v3, :cond_13

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    nop

    :cond_13
    goto/32 :goto_b4

    nop

    nop

    nop

    nop

    :goto_6f
    int-to-long v2, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_131

    nop

    nop

    :goto_70
    if-nez v3, :cond_14

    nop

    nop

    nop

    nop

    goto/32 :goto_105

    nop

    nop

    nop

    nop

    nop

    :cond_14
    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_71
    move/from16 v2, p2

    nop

    nop

    nop

    goto/32 :goto_aa

    nop

    nop

    nop

    :goto_72
    const/4 v7, 0x7

    nop

    nop

    nop

    goto/32 :goto_f3

    nop

    nop

    nop

    nop

    :goto_73
    iget-object v4, v0, Ldzi;->J:Ljava/util/Set;

    nop

    goto/32 :goto_75

    nop

    nop

    nop

    :goto_74
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_a6

    nop

    nop

    nop

    nop

    nop

    :goto_75
    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :goto_76
    if-nez v9, :cond_15

    nop

    nop

    nop

    nop

    goto/32 :goto_d5

    nop

    nop

    nop

    :cond_15
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_77
    int-to-long v8, v4

    nop

    nop

    nop

    nop

    goto/32 :goto_132

    nop

    nop

    nop

    nop

    :goto_78
    iget-object v3, v4, Lroz;->d:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_79
    if-eqz v3, :cond_16

    nop

    nop

    goto/32 :goto_ec

    nop

    :cond_16
    :goto_7a
    goto/32 :goto_133

    nop

    nop

    nop

    nop

    :goto_7b
    goto/16 :goto_c7

    nop

    nop

    :goto_7c
    goto/32 :goto_c6

    nop

    nop

    nop

    nop

    nop

    :goto_7d
    goto/16 :goto_c7

    nop

    nop

    :goto_7e
    goto/32 :goto_61

    nop

    nop

    nop

    nop

    nop

    :goto_7f
    iput v13, v0, Ldzi;->O:I

    nop

    goto/32 :goto_129

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_80
    iget-object v14, v0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    goto/32 :goto_e1

    nop

    nop

    nop

    nop

    nop

    :goto_81
    int-to-long v14, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_120

    nop

    nop

    nop

    nop

    :goto_82
    iget v6, v1, Ldzf;->d:I

    nop

    nop

    goto/32 :goto_d7

    nop

    nop

    nop

    :goto_83
    const/4 v8, 0x4

    nop

    goto/32 :goto_f2

    nop

    nop

    nop

    nop

    :goto_84
    int-to-long v3, v2

    nop

    nop

    goto/32 :goto_99

    nop

    nop

    :goto_85
    if-eqz v6, :cond_17

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    :cond_17
    goto/32 :goto_54

    nop

    nop

    nop

    nop

    nop

    :goto_86
    invoke-interface {v6, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    nop

    goto/32 :goto_85

    nop

    nop

    nop

    nop

    :goto_87
    move-object/from16 v19, v14

    nop

    nop

    nop

    goto/32 :goto_81

    nop

    nop

    nop

    nop

    nop

    :goto_88
    move-object/from16 v17, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_77

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_89
    goto/16 :goto_f4

    nop

    :goto_8a
    goto/32 :goto_e9

    nop

    nop

    nop

    nop

    nop

    :goto_8b
    move/from16 v18, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12a

    nop

    nop

    nop

    nop

    :goto_8c
    move/from16 v2, p2

    nop

    nop

    nop

    nop

    goto/32 :goto_f8

    nop

    nop

    nop

    :goto_8d
    const/4 v9, 0x6

    nop

    goto/32 :goto_134

    nop

    nop

    nop

    :goto_8e
    if-ne v10, v3, :cond_18

    nop

    nop

    nop

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    :cond_18
    goto/32 :goto_f9

    nop

    nop

    :goto_8f
    move/from16 v18, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_b2

    nop

    nop

    nop

    :goto_90
    iget-object v2, v0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    goto/32 :goto_127

    nop

    nop

    nop

    nop

    :goto_91
    iget-object v2, v0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_b8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_92
    aget-object v14, v14, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_c3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_93
    iget v7, v14, Lroz;->a:I

    nop

    nop

    nop

    nop

    goto/32 :goto_ed

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_94
    move/from16 v9, p2

    nop

    nop

    nop

    nop

    :goto_95
    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_96
    const/16 v3, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_97
    const-string v8, "Compression"

    nop

    nop

    nop

    goto/32 :goto_11f

    nop

    nop

    nop

    :goto_98
    check-cast v2, Ljava/lang/Integer;

    nop

    nop

    nop

    goto/32 :goto_121

    nop

    nop

    :goto_99
    const-wide/16 v5, 0x0

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9a
    iput v3, v0, Ldzi;->H:I

    nop

    nop

    nop

    nop

    nop

    :goto_9b
    goto/32 :goto_e7

    nop

    nop

    nop

    nop

    nop

    :goto_9c
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_98

    nop

    nop

    nop

    :goto_9d
    const/4 v15, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b6

    nop

    nop

    :goto_9e
    cmp-long v4, v6, v8

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9f
    invoke-virtual {v2, v3}, Ldzg;->g(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v3

    nop

    goto/32 :goto_106

    nop

    nop

    nop

    :goto_a0
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_123

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a1
    invoke-virtual {v1, v11, v12}, Ldzf;->c(J)V

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_a2
    invoke-virtual/range {p1 .. p1}, Ldzf;->readUnsignedShort()I

    move-result v3

    nop

    :goto_a3
    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    :goto_a4
    cmp-long v4, v6, v8

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_a5
    if-ne v10, v3, :cond_19

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10a

    nop

    nop

    nop

    nop

    :cond_19
    goto/32 :goto_b1

    nop

    nop

    nop

    :goto_a6
    if-nez v2, :cond_1a

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :cond_1a
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_a7
    const/4 v6, 0x7

    nop

    nop

    goto/32 :goto_5b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a8
    aget-object v9, v9, v15

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    :goto_a9
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_aa
    iget v3, v1, Ldzf;->b:I

    nop

    nop

    goto/32 :goto_137

    nop

    nop

    nop

    nop

    nop

    :goto_ab
    move-object/from16 v3, v17

    nop

    nop

    nop

    nop

    goto/32 :goto_9c

    nop

    nop

    nop

    nop

    nop

    :goto_ac
    if-gtz v5, :cond_1b

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :cond_1b
    goto/32 :goto_122

    nop

    nop

    nop

    :goto_ad
    aget-object v3, v3, v9

    nop

    goto/32 :goto_dd

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_ae
    invoke-static {v15, v9}, Ldzg;->e(ILjava/nio/ByteOrder;)Ldzg;

    move-result-object v9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_af
    return-void

    nop

    nop

    :goto_b0
    goto/32 :goto_cc

    nop

    nop

    nop

    nop

    :goto_b1
    const/16 v3, 0xd

    nop

    nop

    nop

    goto/32 :goto_6e

    nop

    nop

    nop

    :goto_b2
    move-object/from16 v19, v14

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    nop

    :goto_b3
    if-eqz v2, :cond_1c

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_1c
    goto/32 :goto_e0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b4
    const-wide/16 v3, -0x1

    nop

    nop

    nop

    goto/32 :goto_109

    nop

    nop

    :goto_b5
    iget-object v9, v0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_a8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b6
    if-eq v9, v15, :cond_1d

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_1d
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_b7
    const/4 v3, 0x5

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    :goto_b8
    const/4 v3, 0x4

    nop

    nop

    goto/32 :goto_11a

    nop

    nop

    nop

    nop

    :goto_b9
    invoke-virtual {v1, v6, v7}, Ldzf;->c(J)V

    :goto_ba
    goto/32 :goto_5f

    nop

    nop

    :goto_bb
    const v3, 0xffff

    nop

    goto/32 :goto_eb

    nop

    nop

    nop

    nop

    nop

    :goto_bc
    if-nez v3, :cond_1e

    nop

    goto/32 :goto_7a

    nop

    nop

    :cond_1e
    :goto_bd
    goto/32 :goto_40

    nop

    nop

    nop

    nop

    :goto_be
    const/4 v3, 0x3

    nop

    nop

    nop

    goto/32 :goto_8e

    nop

    nop

    nop

    :goto_bf
    invoke-virtual {v1, v3}, Ldzf;->readFully([B)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_c0
    goto/16 :goto_4

    nop

    :goto_c1
    goto/32 :goto_8d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c2
    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_b3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c3
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    nop

    goto/32 :goto_e2

    nop

    nop

    nop

    :goto_c4
    if-eqz v4, :cond_1f

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :cond_1f
    goto/32 :goto_12d

    nop

    nop

    :goto_c5
    invoke-virtual/range {p1 .. p1}, Ldzf;->a()J

    move-result-wide v3

    nop

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c6
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    :goto_c7
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c8
    const/4 v6, 0x3

    nop

    nop

    nop

    goto/32 :goto_72

    nop

    nop

    :goto_c9
    move/from16 v18, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    :goto_ca
    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    nop

    goto/32 :goto_70

    nop

    nop

    nop

    nop

    :goto_cb
    iget v2, v1, Ldzf;->b:I

    nop

    nop

    goto/32 :goto_6f

    nop

    nop

    nop

    nop

    nop

    :goto_cc
    iget-object v2, v0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b7

    nop

    nop

    :goto_cd
    int-to-short v5, v5

    nop

    nop

    nop

    goto/32 :goto_8c

    nop

    nop

    nop

    nop

    :goto_ce
    return-void

    nop

    nop

    nop

    nop

    :goto_cf
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d0
    if-eq v10, v7, :cond_20

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    :cond_20
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    :goto_d1
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_bc

    nop

    nop

    :goto_d2
    long-to-int v7, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    :goto_d3
    invoke-virtual/range {p1 .. p1}, Ldzf;->readInt()I

    move-result v13

    nop

    nop

    nop

    goto/32 :goto_5d

    nop

    nop

    :goto_d4
    goto/16 :goto_119

    nop

    nop

    nop

    nop

    nop

    :goto_d5
    goto/32 :goto_8f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d6
    iget-object v3, v0, Ldzi;->I:[Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_ad

    nop

    nop

    nop

    nop

    nop

    :goto_d7
    const/4 v7, -0x1

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :goto_d8
    invoke-virtual/range {p1 .. p1}, Ldzf;->readUnsignedShort()I

    move-result v10

    nop

    nop

    goto/32 :goto_d3

    nop

    nop

    nop

    :goto_d9
    invoke-virtual {v2, v3}, Ldzg;->a(Ljava/nio/ByteOrder;)I

    move-result v2

    nop

    nop

    goto/32 :goto_bb

    nop

    nop

    :goto_da
    move v10, v15

    nop

    nop

    :goto_db
    goto/32 :goto_69

    nop

    nop

    :goto_dc
    const-wide/16 v8, 0x0

    nop

    nop

    goto/32 :goto_9e

    nop

    nop

    nop

    :goto_dd
    iget-object v9, v4, Lroz;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_103

    nop

    nop

    nop

    nop

    nop

    :goto_de
    const/16 v6, 0x9

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    :goto_df
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_e0
    invoke-virtual {v1, v3, v4}, Ldzf;->c(J)V

    goto/32 :goto_91

    nop

    nop

    nop

    nop

    nop

    :goto_e1
    const/4 v15, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11c

    nop

    nop

    :goto_e2
    invoke-virtual {v14, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    :goto_e3
    const/16 v3, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_67

    nop

    nop

    :goto_e4
    invoke-virtual {v14, v8, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_b5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e5
    sget-object v14, Ldzi;->A:[Ljava/util/HashMap;

    nop

    goto/32 :goto_92

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e6
    invoke-virtual/range {p1 .. p1}, Ldzf;->readInt()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_84

    nop

    nop

    nop

    nop

    nop

    :goto_e7
    iget-object v3, v4, Lroz;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_6c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e8
    iput v4, v0, Ldzi;->M:I

    nop

    nop

    goto/32 :goto_c0

    nop

    nop

    nop

    :goto_e9
    iget v15, v14, Lroz;->c:I

    nop

    nop

    nop

    goto/32 :goto_6a

    nop

    nop

    nop

    nop

    nop

    :goto_ea
    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    nop

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_eb
    if-eq v2, v3, :cond_21

    nop

    goto/32 :goto_105

    nop

    :cond_21
    :goto_ec
    goto/32 :goto_39

    nop

    nop

    :goto_ed
    if-ne v7, v10, :cond_22

    nop

    nop

    goto/32 :goto_fe

    nop

    nop

    nop

    nop

    :cond_22
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    :goto_ee
    goto/16 :goto_a3

    nop

    nop

    nop

    nop

    :goto_ef
    goto/32 :goto_c5

    nop

    nop

    nop

    :goto_f0
    if-eq v7, v6, :cond_23

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f4

    nop

    :cond_23
    :goto_f1
    goto/32 :goto_113

    nop

    nop

    nop

    nop

    :goto_f2
    if-lt v5, v3, :cond_24

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :cond_24
    goto/32 :goto_110

    nop

    nop

    nop

    :goto_f3
    if-eqz v14, :cond_25

    nop

    nop

    nop

    nop

    goto/32 :goto_7e

    nop

    nop

    nop

    :cond_25
    :goto_f4
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_f5
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_c2

    nop

    nop

    nop

    nop

    nop

    :goto_f6
    move/from16 v18, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_128

    nop

    nop

    nop

    :goto_f7
    iget v9, v0, Ldzi;->H:I

    nop

    nop

    nop

    goto/32 :goto_9d

    nop

    nop

    nop

    nop

    :goto_f8
    move/from16 v3, v18

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_f9
    const/4 v3, 0x4

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_fa
    if-gtz v3, :cond_26

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :cond_26
    goto/32 :goto_107

    nop

    nop

    nop

    nop

    nop

    :goto_fb
    goto/32 :goto_cf

    nop

    nop

    nop

    :goto_fc
    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    :goto_fd
    goto :goto_f4

    nop

    :goto_fe
    goto/32 :goto_a7

    nop

    nop

    nop

    nop

    nop

    :goto_ff
    iget-object v3, v4, Lroz;->d:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    :goto_100
    move-object/from16 v16, v3

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_101
    long-to-int v3, v6

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_102
    invoke-direct {v0, v1, v3}, Ldzi;->e94656b6137dd01f26085f984afe853em(Ldzf;I)V

    goto/32 :goto_af

    nop

    nop

    :goto_103
    invoke-virtual {v3, v9, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_78

    nop

    nop

    nop

    :goto_104
    iput v2, v0, Ldzi;->H:I

    nop

    nop

    :goto_105
    goto/32 :goto_cb

    nop

    nop

    :goto_106
    const-string v9, "PENTAX"

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_107
    const/4 v5, 0x0

    nop

    nop

    nop

    nop

    nop

    :goto_108
    goto/32 :goto_83

    nop

    nop

    :goto_109
    goto/16 :goto_36

    nop

    nop

    nop

    :goto_10a
    goto/32 :goto_115

    nop

    nop

    nop

    nop

    nop

    :goto_10b
    goto/16 :goto_a3

    nop

    :goto_10c
    goto/32 :goto_10e

    nop

    nop

    nop

    nop

    nop

    :goto_10d
    const/4 v3, 0x3

    nop

    goto/32 :goto_9a

    nop

    nop

    nop

    :goto_10e
    invoke-virtual/range {p1 .. p1}, Ldzf;->readShort()S

    move-result v3

    nop

    nop

    nop

    goto/32 :goto_ee

    nop

    nop

    nop

    :goto_10f
    cmp-long v6, v3, v6

    nop

    nop

    goto/32 :goto_12e

    nop

    nop

    nop

    nop

    :goto_110
    invoke-virtual/range {p1 .. p1}, Ldzf;->readUnsignedShort()I

    move-result v9

    nop

    nop

    nop

    goto/32 :goto_d8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_111
    invoke-virtual {v9, v14, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_90

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_112
    move-wide v6, v11

    nop

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    :goto_113
    const/16 v6, 0x8

    nop

    nop

    nop

    goto/32 :goto_58

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_114
    const/4 v9, 0x6

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_115
    invoke-virtual/range {p1 .. p1}, Ldzf;->readInt()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10b

    nop

    nop

    nop

    nop

    :goto_116
    int-to-long v6, v6

    nop

    nop

    nop

    nop

    goto/32 :goto_10f

    nop

    nop

    nop

    :goto_117
    invoke-virtual {v2, v14, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/32 :goto_d4

    nop

    nop

    nop

    :goto_118
    move/from16 v9, p2

    nop

    :goto_119
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_11a
    aget-object v2, v2, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_11d

    nop

    nop

    nop

    :goto_11b
    if-eq v7, v8, :cond_27

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :cond_27
    goto/32 :goto_65

    nop

    nop

    :goto_11c
    aget-object v14, v14, v15

    nop

    nop

    goto/32 :goto_e4

    nop

    nop

    :goto_11d
    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_136

    nop

    nop

    nop

    nop

    nop

    :goto_11e
    invoke-virtual {v1, v2, v3}, Ldzf;->c(J)V

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :goto_11f
    if-gtz v4, :cond_28

    nop

    goto/32 :goto_31

    nop

    :cond_28
    goto/32 :goto_5e

    nop

    nop

    nop

    nop

    :goto_120
    iget-object v3, v0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_121
    if-nez v2, :cond_29

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_29
    goto/32 :goto_be

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_122
    iget-object v5, v0, Ldzi;->J:Ljava/util/Set;

    nop

    nop

    nop

    goto/32 :goto_f5

    nop

    nop

    nop

    :goto_123
    invoke-direct {v0, v1, v2}, Ldzi;->e94656b6137dd01f26085f984afe853em(Ldzf;I)V

    :goto_124
    goto/32 :goto_a1

    nop

    nop

    nop

    nop

    :goto_125
    cmp-long v4, v6, v8

    nop

    nop

    nop

    goto/32 :goto_97

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_126
    add-int/2addr v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_101

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_127
    aget-object v2, v2, v15

    nop

    nop

    goto/32 :goto_114

    nop

    nop

    nop

    nop

    nop

    :goto_128
    move-object/from16 v19, v14

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_118

    nop

    nop

    nop

    :goto_129
    iget-object v9, v0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_12a
    int-to-long v2, v15

    nop

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    :goto_12b
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_df

    nop

    nop

    nop

    nop

    nop

    :goto_12c
    invoke-static {v2, v3, v15}, Ldzg;->c(JLjava/nio/ByteOrder;)Ldzg;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_12d
    invoke-virtual {v1, v11, v12}, Ldzf;->c(J)V

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    :goto_12e
    if-ltz v6, :cond_2a

    nop

    nop

    goto/32 :goto_124

    nop

    nop

    nop

    nop

    :cond_2a
    :goto_12f
    goto/32 :goto_16

    nop

    nop

    :goto_130
    if-ne v15, v10, :cond_2b

    nop

    nop

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :cond_2b
    goto/32 :goto_93

    nop

    nop

    nop

    nop

    :goto_131
    cmp-long v2, v2, v6

    nop

    nop

    goto/32 :goto_62

    nop

    nop

    nop

    nop

    :goto_132
    mul-long/2addr v6, v8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_dc

    nop

    nop

    nop

    :goto_133
    iget-object v3, v4, Lroz;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_ca

    nop

    nop

    nop

    nop

    nop

    :goto_134
    if-eq v2, v9, :cond_2c

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_2c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_135
    const v0, 0x15

    nop

    nop

    nop

    nop

    goto/32 :goto_12b

    nop

    nop

    nop

    :goto_136
    if-nez v2, :cond_2d

    nop

    nop

    nop

    goto/32 :goto_b0

    nop

    nop

    nop

    nop

    :cond_2d
    goto/32 :goto_102

    nop

    nop

    :goto_137
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    nop

    nop

    goto/32 :goto_73

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static final v([B)I
    .locals 13

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_0
    return v1

    nop

    :goto_1
    goto/32 :goto_3d

    nop

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :cond_0
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v2}, Ldzf;->close()V

    goto/32 :goto_4c

    nop

    nop

    :goto_4
    return v1

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const-wide/16 v7, 0x8

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_7
    invoke-virtual {v2}, Ldzf;->close()V

    goto/32 :goto_4e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return p0

    nop

    :goto_9
    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-wide v3, v11

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_c
    if-ltz v0, :cond_1

    nop

    nop

    goto/32 :goto_4d

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_d
    move-object v0, v2

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    :goto_e
    move v10, v12

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_3a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/16 :goto_55

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :goto_11
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_3f

    nop

    nop

    nop

    nop

    nop

    :goto_14
    cmp-long v0, v3, v11

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-gtz v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :cond_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    move-wide v9, v7

    nop

    :goto_18
    goto/32 :goto_46

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v0}, Ldzf;->close()V

    :goto_1a
    goto/32 :goto_54

    nop

    nop

    :goto_1b
    if-nez v10, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_4
    goto/32 :goto_42

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    if-lez v0, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_12

    nop

    :goto_1d
    sub-long/2addr v3, v9

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const/16 p0, 0xf

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1f
    if-gez v0, :cond_6

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :cond_6
    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_20
    move v9, v0

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    const/4 v1, 0x0

    nop

    nop

    nop

    :try_start_0
    new-instance v2, Ldzf;

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0}, Ldzf;-><init>([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {v2}, Ldzf;->readInt()I

    move-result p0

    nop

    nop

    nop

    nop

    int-to-long v3, p0

    nop

    nop

    nop

    const/4 p0, 0x4

    nop

    nop

    nop

    nop

    nop

    new-array v0, p0, [B

    nop

    nop

    nop

    invoke-virtual {v2, v0}, Ldzf;->readFully([B)V

    sget-object v5, Ldzi;->k:[B

    nop

    nop

    nop

    invoke-static {v0, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    nop

    nop
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_22
    goto/16 :goto_9

    nop

    :goto_23
    :try_start_2
    sget-object v11, Ldzi;->l:[B

    nop

    nop

    nop

    invoke-static {p0, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    nop

    nop

    nop

    nop

    nop

    const/4 v12, 0x1

    nop

    nop

    if-eqz v11, :cond_7

    nop

    nop

    nop

    move v0, v12

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_f

    nop

    nop

    :cond_7
    sget-object v11, Ldzi;->m:[B

    nop

    nop

    nop

    invoke-static {p0, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    nop

    if-eqz v11, :cond_8

    nop

    nop

    move v9, v12

    nop

    nop

    nop

    goto/16 :goto_f

    nop

    :cond_8
    sget-object v11, Ldzi;->n:[B

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    nop

    nop

    nop

    if-nez v11, :cond_e

    nop

    nop

    nop

    nop

    nop

    sget-object v11, Ldzi;->o:[B

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, v11}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v11

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_40

    nop

    nop

    nop

    :goto_24
    move v10, v9

    nop

    :goto_25
    goto/32 :goto_52

    nop

    nop

    :goto_26
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_27
    goto/32 :goto_4b

    nop

    nop

    nop

    :goto_28
    if-nez v9, :cond_9

    nop

    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    :cond_9
    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_29
    const v0, 0x11

    nop

    goto/32 :goto_35

    nop

    nop

    :goto_2a
    goto :goto_25

    nop

    nop

    nop

    :catch_0
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v2}, Ldzf;->close()V

    goto/32 :goto_0

    nop

    nop

    :goto_2c
    cmp-long v0, v3, v7

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_2d
    const-wide/16 v9, 0x10

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_2e
    move-object v0, v2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    goto/16 :goto_18

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    :goto_31
    if-eqz v0, :cond_a

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_a
    :try_start_3
    invoke-virtual {v2}, Ldzf;->readLong()J

    move-result-wide v3

    nop

    nop

    nop

    nop
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_2d

    nop

    nop

    nop

    :goto_32
    goto :goto_34

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_33
    invoke-virtual {v0}, Ldzf;->close()V

    :goto_34
    goto/32 :goto_26

    nop

    nop

    :goto_35
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_36
    cmp-long v11, v7, v11

    nop

    nop

    nop

    goto/32 :goto_39

    nop

    nop

    nop

    :goto_37
    cmp-long v11, v7, v5

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    :goto_38
    if-nez v0, :cond_b

    nop

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :cond_b
    goto/32 :goto_33

    nop

    nop

    :goto_39
    if-ltz v11, :cond_c

    nop

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    nop

    nop

    :cond_c
    :try_start_4
    invoke-virtual {v2, p0}, Ldzf;->readFully([B)V
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_3a
    if-nez v0, :cond_d

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_d
    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_3b
    const-wide/16 v7, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_48

    nop

    nop

    :goto_3d
    const-wide/16 v5, 0x1

    nop

    nop

    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3e
    cmp-long v0, v3, v5

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3f
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_40
    if-nez v11, :cond_e

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :cond_e
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_41
    invoke-virtual {v2}, Ldzf;->close()V

    goto/32 :goto_44

    nop

    nop

    nop

    :goto_42
    invoke-virtual {v2}, Ldzf;->close()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_43
    if-eqz v11, :cond_f

    nop

    goto/32 :goto_23

    nop

    nop

    :cond_f
    goto/32 :goto_22

    nop

    nop

    nop

    :goto_44
    const/16 p0, 0xc

    nop

    nop

    goto/32 :goto_50

    nop

    nop

    :goto_45
    move v0, v1

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_46
    const-wide/16 v11, 0x1388

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_47
    invoke-virtual {v2}, Ldzf;->close()V

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_48
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_49
    add-long/2addr v7, v5

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_4a
    shr-long v11, v3, v11

    nop

    goto/32 :goto_36

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4c
    return v1

    nop

    nop

    :goto_4d
    :try_start_5
    new-array p0, p0, [B

    nop

    nop

    nop

    nop
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto/32 :goto_3b

    nop

    nop

    nop

    :goto_4e
    return v1

    nop

    nop

    nop

    nop

    nop

    :goto_4f
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_50
    return p0

    nop

    nop

    :goto_51
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_52
    const/4 v11, 0x2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    nop

    :goto_53
    cmp-long v0, v3, v9

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_54
    throw p0

    nop

    nop

    nop

    :catch_1
    :goto_55
    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_56
    invoke-virtual {v2}, Ldzf;->close()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_57
    goto/16 :goto_11

    nop

    nop

    :catch_2
    goto/32 :goto_2e

    nop

    nop

    nop
.end method

.method private static final w(Ldzf;)Ljava/nio/ByteOrder;
    .locals 2

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    sget-object p0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_2
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x18

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_5
    const/16 v0, 0x4d4d

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-ne p0, v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    const v0, 0x4

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    sget-object p0, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_b
    return-object p0

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_12

    nop

    nop

    nop

    :goto_d
    new-instance v0, Ljava/io/IOException;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_f

    nop

    :goto_f
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const-string v1, "Invalid byte order: "

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_12
    goto/32 :goto_10

    nop

    :goto_13
    invoke-virtual {p0}, Ldzf;->readShort()S

    move-result p0

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_14
    return-object p0

    nop

    :goto_15
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_16
    const/16 v0, 0x4949

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_17
    if-eq p0, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_18
    throw v0

    nop

    :goto_19
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_1a
    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

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
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ldzg;
    .locals 2

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_0
    sget-object v1, Ldzi;->j:[[Lroz;

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v1, 0xa

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_2
    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

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

    nop

    :goto_4
    return-object p0

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, p0, Ldzi;->I:[Ljava/util/HashMap;

    nop

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

    :goto_7
    if-eq v1, v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

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

    :goto_9
    if-lez v0, :cond_2

    nop

    goto/32 :goto_1b

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    :goto_a
    goto :goto_d

    nop

    :goto_b
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_c
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_e
    aget-object v1, v1, v0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    array-length v1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_11
    const-string v0, "ISOSpeedRatings"

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_13
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    sget-object p1, Lcom/google/android/apps/camera/debugui/aq/mYisgsXg;->wdoxBXFc:Ljava/lang/String;

    nop

    nop

    nop

    nop

    :goto_15
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_16
    check-cast v1, Ldzg;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_17
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_18
    const v0, 0x1f

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    :goto_19
    const/4 p0, 0x0

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

    :goto_1a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_11

    nop

    nop

    nop

    :goto_1c
    return-object v1

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    add-int/lit8 v0, v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    if-lt v0, v1, :cond_3

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_20
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_21
    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string p1, "%02d:%02d:%02d"

    nop

    nop

    goto/32 :goto_55

    nop

    nop

    :goto_1
    const-string p1, "GPS Timestamp format is not rational. format="

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3a

    nop

    nop

    :goto_2
    iget-wide v2, p0, Ldzh;->b:J

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sget-object v2, Ldzi;->C:Ljava/util/Set;

    nop

    nop

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    :goto_4
    if-nez v2, :cond_0

    nop

    nop

    goto/32 :goto_45

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_5e

    nop

    nop

    nop

    :goto_5
    if-eq p1, v2, :cond_1

    nop

    goto/32 :goto_48

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_47

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    float-to-int p0, v1

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
    const/16 v2, 0xa

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_8
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_4b

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_54

    nop

    nop

    nop

    nop

    :goto_a
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    :goto_b
    const-string v0, "There are more than one component"

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_c
    check-cast p0, [Ldzh;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    invoke-static {p0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_59

    nop

    nop

    nop

    nop

    :goto_e
    iget-wide v1, v0, Ldzh;->a:J

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_f
    if-ne p1, v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_10
    long-to-float v1, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_11
    iget p1, v0, Ldzg;->a:I

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_12
    invoke-virtual {v0, p0}, Ldzg;->f(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p0

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

    :goto_13
    aget-object p1, p0, v4

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    div-float/2addr v1, v0

    nop

    nop

    nop

    goto/32 :goto_32

    nop

    nop

    nop

    :goto_15
    if-nez p0, :cond_3

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3b

    nop

    nop

    nop

    nop

    nop

    :goto_16
    iget-wide v1, p0, Ldzh;->a:J

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_17
    const/4 v3, 0x1

    nop

    goto/32 :goto_5d

    nop

    nop

    nop

    :goto_18
    const-string v5, "ExifInterface"

    nop

    nop

    goto/32 :goto_37

    nop

    nop

    nop

    :goto_19
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_1a
    goto :goto_1f

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1c
    div-float/2addr v0, p1

    nop

    nop

    nop

    nop

    goto/32 :goto_53

    nop

    nop

    :goto_1d
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto/32 :goto_58

    nop

    nop

    :goto_1e
    return-object p0

    nop

    :goto_1f
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_20
    invoke-virtual {p0, p1}, Ldzi;->a(Ljava/lang/String;)Ldzg;

    move-result-object v0

    nop

    nop

    goto/32 :goto_31

    nop

    nop

    nop

    :goto_21
    iget-wide v0, p1, Ldzh;->a:J

    nop

    nop

    goto/32 :goto_3c

    nop

    nop

    nop

    :goto_22
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    goto/32 :goto_4a

    nop

    nop

    nop

    nop

    :goto_23
    const/4 v2, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_24
    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_33

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_25
    long-to-float p0, v2

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_26
    if-nez p1, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :cond_4
    :try_start_0
    check-cast p0, [J

    nop

    nop

    nop

    nop

    array-length p1, p0

    nop

    nop

    nop

    nop

    if-ne p1, v3, :cond_5

    nop

    aget-wide p0, p0, v4

    nop

    nop

    nop

    nop

    nop

    long-to-double p0, p0

    nop

    nop

    nop

    nop

    goto/16 :goto_28

    nop

    nop

    :cond_5
    new-instance p0, Ljava/lang/NumberFormatException;

    nop

    nop

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    :goto_27
    instance-of p1, p0, [I

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_7

    nop

    nop

    nop

    nop

    nop

    check-cast p0, [I

    nop

    nop

    nop

    array-length p1, p0

    nop

    nop

    nop

    if-ne p1, v3, :cond_6

    nop

    nop

    nop

    nop

    aget p0, p0, v4

    nop

    nop

    nop

    nop

    int-to-double p0, p0

    nop

    nop

    nop

    nop

    nop

    goto :goto_28

    nop

    nop

    nop

    nop

    :cond_6
    new-instance p0, Ljava/lang/NumberFormatException;

    nop

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :cond_7
    instance-of p1, p0, [D

    nop

    nop

    nop

    if-eqz p1, :cond_9

    nop

    nop

    nop

    nop

    nop

    check-cast p0, [D

    nop

    array-length p1, p0

    nop

    nop

    nop

    nop

    nop

    if-ne p1, v3, :cond_8

    nop

    nop

    nop

    aget-wide p0, p0, v4

    nop

    goto :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_8
    new-instance p0, Ljava/lang/NumberFormatException;

    nop

    nop

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :cond_9
    instance-of p1, p0, [Ldzh;

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_b

    nop

    nop

    nop

    nop

    nop

    check-cast p0, [Ldzh;

    nop

    array-length p1, p0

    nop

    nop

    nop

    nop

    if-ne p1, v3, :cond_a

    nop

    aget-object p0, p0, v4

    nop

    nop

    nop

    nop

    nop

    iget-wide v2, p0, Ldzh;->a:J

    nop

    long-to-double v2, v2

    nop

    nop

    iget-wide p0, p0, Ldzh;->b:J

    nop

    nop

    nop

    long-to-double p0, p0

    nop

    div-double p0, v2, p0

    nop

    nop

    :goto_28
    invoke-static {p0, p1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    return-object p0

    nop

    nop

    nop

    nop

    nop

    :cond_a
    new-instance p0, Ljava/lang/NumberFormatException;

    nop

    nop

    nop

    nop

    invoke-direct {p0, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    nop

    :cond_b
    new-instance p0, Ljava/lang/NumberFormatException;

    nop

    nop

    nop

    nop

    const-string p1, "Couldn\'t find a double value"

    nop

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    :cond_c
    new-instance p0, Ljava/lang/NumberFormatException;

    nop

    const-string p1, "NULL can\'t be converted to a double value"

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    goto/32 :goto_3f

    nop

    nop

    nop

    :goto_29
    div-float/2addr v1, p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_2a
    sget-object p1, Lcom/google/android/libraries/phenotype/client/stable/NyRu/FYEOygtxYXoPt;->XpXnAaOrXVfFIXU:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_2b
    aget-object v0, p0, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_2c
    iget-object p0, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_2d
    long-to-float v1, v1

    nop

    goto/32 :goto_52

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    iget-wide v1, p1, Ldzh;->b:J

    nop

    goto/32 :goto_4e

    nop

    nop

    :goto_2f
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_30
    goto/32 :goto_50

    nop

    nop

    :goto_31
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_56

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_32
    float-to-int v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_46

    nop

    nop

    nop

    :goto_33
    if-nez p1, :cond_d

    nop

    nop

    nop

    goto/32 :goto_40

    nop

    :cond_d
    :try_start_1
    iget-object p0, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    invoke-virtual {v0, p0}, Ldzg;->f(Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    if-eqz p0, :cond_c

    nop

    nop

    nop

    nop

    instance-of p1, p0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_e

    nop

    nop

    check-cast p0, Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide p0

    nop

    nop

    nop

    goto/16 :goto_28

    nop

    nop

    nop

    :cond_e
    instance-of p1, p0, [J

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_34
    aget-object p0, p0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_35
    long-to-float v0, v2

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_36
    if-lez v0, :cond_f

    nop

    goto/32 :goto_5c

    nop

    nop

    nop

    :cond_f
    goto/32 :goto_5b

    nop

    :goto_37
    if-ne p1, v2, :cond_10

    nop

    nop

    nop

    nop

    goto/32 :goto_42

    nop

    nop

    nop

    :cond_10
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_38
    return-object p0

    nop

    nop

    :goto_39
    goto/32 :goto_51

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3a
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3b
    array-length p1, p0

    nop

    nop

    goto/32 :goto_4f

    nop

    nop

    :goto_3c
    long-to-float v0, v0

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_3d
    invoke-virtual {v0, p0}, Ldzg;->g(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_38

    nop

    nop

    nop

    nop

    :goto_3e
    iget-object p0, p0, Ldzi;->i:Ljava/nio/ByteOrder;

    nop

    nop

    nop

    nop

    goto/32 :goto_3d

    nop

    nop

    :goto_3f
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :goto_40
    goto/32 :goto_3e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_41
    return-object v1

    nop

    :goto_42
    goto/32 :goto_2c

    nop

    nop

    nop

    :goto_43
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_44
    return-object v1

    nop

    nop

    :goto_45
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_46
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_57

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_47
    goto :goto_42

    nop

    nop

    nop

    nop

    :goto_48
    goto/32 :goto_4d

    nop

    nop

    nop

    :goto_49
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_36

    nop

    nop

    :goto_4a
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_44

    nop

    nop

    nop

    nop

    nop

    :goto_4b
    filled-new-array {p1, v0, p0}, [Ljava/lang/Object;

    move-result-object p0

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

    :goto_4c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_49

    nop

    nop

    nop

    nop

    nop

    :goto_4d
    new-instance p0, Ljava/lang/StringBuilder;

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

    nop

    :goto_4e
    long-to-float p1, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_4f
    const/4 v0, 0x3

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

    :goto_50
    const-string v2, "GPSTimeStamp"

    nop

    nop

    nop

    goto/32 :goto_43

    nop

    nop

    nop

    nop

    :goto_51
    goto/32 :goto_5c

    nop

    nop

    nop

    nop

    nop

    :goto_52
    iget-wide v2, v0, Ldzh;->b:J

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_53
    float-to-int p1, v0

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_54
    const v1, 0x4

    nop

    nop

    nop

    goto/32 :goto_4c

    nop

    nop

    nop

    :goto_55
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_56
    if-eqz v0, :cond_11

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    nop

    :cond_11
    goto/32 :goto_2f

    nop

    nop

    :goto_57
    const/4 v1, 0x2

    nop

    goto/32 :goto_34

    nop

    nop

    nop

    :goto_58
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_59
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_5a
    invoke-static {v5, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_41

    nop

    nop

    nop

    nop

    nop

    :goto_5b
    goto/32 :goto_39

    nop

    :goto_5c
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_5d
    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_5e
    iget p1, v0, Ldzg;->a:I

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop
.end method

.method public final c()[B
    .locals 1

    goto/32 :goto_5

    nop

    nop

    :goto_0
    const/4 p0, 0x0

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Ldzg;->d:[B

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object p0

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1

    nop

    nop

    :goto_5
    const-string v0, "Xmp"

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p0, v0}, Ldzi;->a(Ljava/lang/String;)Ldzg;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_7
    return-object p0

    nop

    nop
.end method
