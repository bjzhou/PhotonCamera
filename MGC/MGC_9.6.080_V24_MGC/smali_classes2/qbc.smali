.class public final Lqbc;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:[C


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_0
    sput-object v0, Lqbc;->a:[C

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/16 v0, 0x10

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x61s
        0x62s
        0x63s
        0x64s
        0x65s
        0x66s
    .end array-data

    :goto_3
    new-array v0, v0, [C

    nop

    nop

    nop

    nop

    nop

    fill-array-data v0, :array_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static a([B)Ljava/lang/String;
    .locals 7

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_0
    aput-char v4, v0, v2

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    add-int/lit8 v2, v2, 0x2

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_3
    ushr-int/lit8 v4, v4, 0x4

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

    :goto_4
    aget-char v3, v6, v3

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

    :goto_5
    goto/32 :goto_e

    nop

    :goto_6
    new-array v0, v0, [C

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_8
    add-int/lit8 v1, v1, 0x1

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

    :goto_9
    const v1, 0xa

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const v0, 0x12

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

    :goto_b
    goto/16 :goto_21

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_18

    nop

    :goto_e
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_d

    nop

    :goto_10
    array-length v0, p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_11
    sget-object v6, Lqbc;->a:[C

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_13
    array-length v3, p0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_14
    aput-char v3, v0, v5

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_15
    aget-byte v3, p0, v1

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_16
    add-int/2addr v0, v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_17
    return-object p0

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_5

    nop

    nop

    :goto_19
    if-lt v1, v3, :cond_1

    nop

    goto/32 :goto_c

    nop

    nop

    :cond_1
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-direct {p0, v0}, Ljava/lang/String;-><init>([C)V

    goto/32 :goto_17

    nop

    nop

    :goto_1b
    and-int/lit16 v4, v3, 0xff

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v5, v2, 0x1

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

    :goto_1d
    aget-char v4, v6, v4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1e
    and-int/lit8 v3, v3, 0xf

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    new-instance p0, Ljava/lang/String;

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_20
    move v2, v1

    nop

    nop

    nop

    nop

    :goto_21
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static b()Ljava/security/MessageDigest;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    :goto_0
    const-string v0, "SHA1"

    nop

    nop

    :try_start_0
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-object v0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-object v0

    nop

    nop

    nop

    nop

    :catch_0
    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

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

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const/4 v0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public static c(Lhdn;Lpwl;Landroid/net/Uri;Ljava/lang/String;)V
    .locals 3

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    :try_start_0
    invoke-virtual {p0, p2}, Lhdn;->B(Landroid/net/Uri;)J

    move-result-wide v1

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "FileValidator"

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-virtual {p0, p2}, Lhdn;->I(Landroid/net/Uri;)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    nop

    nop

    nop

    iget v1, p1, Lpwl;->f:I

    nop

    nop

    nop

    nop

    invoke-static {v1}, La;->D(I)I

    move-result v1

    nop

    if-nez v1, :cond_0

    nop

    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_0
    const/4 v2, 0x2

    nop

    nop

    if-ne v1, v2, :cond_1

    nop

    nop

    nop

    goto :goto_a

    nop

    nop

    :cond_1
    :goto_4
    invoke-static {p0, p2, p3}, Lqbc;->d(Lhdn;Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v1

    nop

    nop

    nop
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_17

    nop

    :goto_6
    goto/32 :goto_3

    nop

    nop

    :goto_7
    iput-object p0, p1, Ltar;->c:Ljava/lang/Object;

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :cond_2
    goto/32 :goto_5

    nop

    :goto_9
    if-nez v1, :cond_3

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_3
    :goto_a
    goto/32 :goto_1

    nop

    nop

    :goto_b
    const v1, 0x1e

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

    :goto_c
    const v0, 0x7

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    const-wide/16 v1, -0x1

    nop

    :goto_e
    :try_start_2
    const-string p0, "%s: Downloaded file at uri = %s, checksum = %s, size = %s verification failed"

    nop

    nop

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    filled-new-array {v0, p2, p3, v1}, [Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    invoke-static {p0, p2}, Lqbq;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lpwf;->a()Ltar;

    move-result-object p0

    nop

    sget-object p2, Lpwe;->B:Lpwe;

    nop

    nop

    nop

    iput-object p2, p0, Ltar;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ltar;->c()Lpwf;

    move-result-object p0

    nop

    nop

    nop

    throw p0

    nop

    nop

    nop

    nop

    :cond_4
    const-string p0, "%s: Downloaded file %s is not present at %s"

    nop

    nop

    nop

    nop

    invoke-static {p1}, Lpuq;->aE(Lpwl;)Ljava/lang/String;

    move-result-object p3

    nop

    nop

    nop

    nop

    filled-new-array {v0, p3, p2}, [Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    nop

    invoke-static {p0, p2}, Lqbq;->f(Ljava/lang/String;[Ljava/lang/Object;)V

    invoke-static {}, Lpwf;->a()Ltar;

    move-result-object p0

    nop

    nop

    sget-object p2, Lpwe;->A:Lpwe;

    nop

    nop

    nop

    iput-object p2, p0, Ltar;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Ltar;->c()Lpwf;

    move-result-object p0

    nop

    nop

    nop

    nop

    throw p0

    nop
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_f
    invoke-static {}, Lpwf;->a()Ltar;

    move-result-object p1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_11
    sget-object p2, Lpwe;->z:Lpwe;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    invoke-static {p1}, Lpuq;->aE(Lpwl;)Ljava/lang/String;

    move-result-object p1

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

    nop

    :goto_13
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_14
    const-string p2, "%s: Failed to validate download file %s"

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    invoke-virtual {p1}, Ltar;->c()Lpwf;

    move-result-object p0

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    throw p0

    nop

    :goto_17
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_e

    nop

    nop

    nop

    :catch_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_19
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_1a
    invoke-static {p0, p2, p1}, Lqbq;->g(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1b
    iput-object p2, p1, Ltar;->d:Ljava/lang/Object;

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
.end method

.method public static d(Lhdn;Landroid/net/Uri;Ljava/lang/String;)Z
    .locals 5

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, ""

    nop

    :try_start_0
    new-instance v1, Lras;

    nop

    nop

    nop

    invoke-direct {v1}, Lras;-><init>()V

    invoke-virtual {p0, p1, v1}, Lhdn;->D(Landroid/net/Uri;Lqzo;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Ljava/io/InputStream;

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Lqbc;->b()Ljava/security/MessageDigest;

    move-result-object v1

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    move-object v1, v0

    nop

    goto :goto_2

    nop

    nop

    nop

    nop

    nop

    :cond_0
    const/16 v2, 0x2000

    nop

    new-array v2, v2, [B

    nop

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 v4, -0x1

    nop

    if-eq v3, v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x0

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, v4, v3}, Ljava/security/MessageDigest;->update([BII)V

    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    nop

    nop

    nop

    nop

    goto :goto_1

    nop

    nop

    nop

    :cond_1
    invoke-virtual {v1}, Ljava/security/MessageDigest;->digest()[B

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v1}, Lqbc;->a([B)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    const v0, 0x1e

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_4
    if-nez p0, :cond_2

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :cond_2
    :try_start_2
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :goto_5
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x12

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    :goto_9
    return p0

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const-string p0, "%s: Failed to open file, uri = %s"

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    move-object v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_10
    invoke-static {p0, v1, p1}, Lqbq;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_11
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const-string v1, "FileValidator"

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_15
    goto :goto_11

    nop

    :catchall_0
    move-exception v1

    nop

    goto/32 :goto_16

    nop

    nop

    :goto_16
    if-nez p0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :cond_4
    :try_start_3
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_17
    goto :goto_18

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_4
    invoke-virtual {v1, p0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_18
    throw v1

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop
.end method
