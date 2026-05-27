.class public final Lgtr;
.super Ljava/lang/Object;


# static fields
.field public static final synthetic a:I

.field private static final b:Lnak;

.field private static final c:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "com/google/android/apps/camera/remotecontrol/SignatureValidator"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgtr;->b:Lnak;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "13:86:84:D0:65:DB:A8:0B:62:77:7E:2C:E3:5E:08:1A:97:22:BC:0E:43:F1:39:0E:CA:11:DC:20:AA:BE:B2:B5"

    aput-object v2, v0, v1

    sput-object v0, Lgtr;->c:[Ljava/lang/String;

    return-void
.end method

.method public static final a(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 13

    const/high16 v0, 0x8000000

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    const-string v0, "SHA-256"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iget-object p1, p1, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    invoke-virtual {p1}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x1

    if-nez v2, :cond_0

    sget-object p1, Lgtr;->b:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string v0, "Unsigned package"

    const/16 v2, 0xcbe

    invoke-static {p1, v0, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    const-string p1, ""

    goto/16 :goto_b

    :cond_0
    aget-object p1, p1, v1

    invoke-virtual {p1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p1

    sget-object v0, Lnes;->e:Lnes;

    move-object v2, v0

    check-cast v2, Lner;

    iget-object v2, v2, Lner;->d:Lnes;

    if-nez v2, :cond_d

    move-object v2, v0

    check-cast v2, Lner;

    iget-object v2, v2, Lner;->b:Lnen;

    iget-object v4, v2, Lnen;->b:[C

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_b

    aget-char v7, v4, v6

    invoke-static {v7}, Lmoz;->E(C)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v4, v2, Lnen;->b:[C

    array-length v5, v4

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    aget-char v7, v4, v6

    invoke-static {v7}, Lmoz;->F(C)Z

    move-result v7

    if-eqz v7, :cond_1

    const/4 v4, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_2
    const-string v5, "Cannot call upperCase() on a mixed-case alphabet"

    xor-int/2addr v4, v3

    invoke-static {v4, v5}, Lmoz;->q(ZLjava/lang/Object;)V

    iget-object v4, v2, Lnen;->b:[C

    array-length v4, v4

    new-array v4, v4, [C

    const/4 v5, 0x0

    :goto_3
    iget-object v6, v2, Lnen;->b:[C

    array-length v7, v6

    if-ge v5, v7, :cond_4

    aget-char v6, v6, v5

    invoke-static {v6}, Lmoz;->E(C)Z

    move-result v7

    if-eqz v7, :cond_3

    xor-int/lit8 v6, v6, 0x20

    :cond_3
    int-to-char v6, v6

    aput-char v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_4
    new-instance v5, Lnen;

    iget-object v6, v2, Lnen;->a:Ljava/lang/String;

    const-string v7, ".upperCase()"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v4}, Lnen;-><init>(Ljava/lang/String;[C)V

    iget-boolean v2, v2, Lnen;->i:Z

    if-eqz v2, :cond_9

    iget-boolean v2, v5, Lnen;->i:Z

    if-eqz v2, :cond_5

    goto :goto_6

    :cond_5
    iget-object v2, v5, Lnen;->g:[B

    array-length v4, v2

    invoke-static {v2, v4}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    const/16 v4, 0x41

    :goto_4
    const/16 v6, 0x5a

    if-gt v4, v6, :cond_8

    or-int/lit8 v6, v4, 0x20

    iget-object v7, v5, Lnen;->g:[B

    aget-byte v8, v7, v4

    aget-byte v7, v7, v6

    const/4 v9, -0x1

    if-ne v8, v9, :cond_6

    aput-byte v7, v2, v4

    goto :goto_5

    :cond_6
    int-to-char v10, v4

    int-to-char v11, v6

    const-string v12, "Can\'t ignoreCase() since \'%s\' and \'%s\' encode different values"

    if-ne v7, v9, :cond_7

    aput-byte v8, v2, v6

    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    aput-object v2, v0, v3

    invoke-static {v12, v0}, Llkj;->F(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_8
    new-instance v4, Lnen;

    iget-object v6, v5, Lnen;->a:Ljava/lang/String;

    const-string v7, ".ignoreCase()"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v5, v5, Lnen;->b:[C

    invoke-direct {v4, v6, v5, v2, v3}, Lnen;-><init>(Ljava/lang/String;[C[BZ)V

    move-object v2, v4

    goto :goto_7

    :cond_9
    :goto_6
    move-object v2, v5

    goto :goto_7

    :cond_a
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_b
    :goto_7
    move-object v4, v0

    check-cast v4, Lner;

    iget-object v4, v4, Lner;->b:Lnen;

    if-ne v2, v4, :cond_c

    move-object v2, v0

    goto :goto_8

    :cond_c
    move-object v4, v0

    check-cast v4, Lner;

    iget-object v4, v4, Lner;->c:Ljava/lang/Character;

    new-instance v4, Lneo;

    invoke-direct {v4, v2}, Lneo;-><init>(Lnen;)V

    move-object v2, v4

    :goto_8
    check-cast v0, Lner;

    iput-object v2, v0, Lner;->d:Lnes;

    :cond_d
    const/4 v0, 0x0

    :goto_9
    const-string v4, ":"

    if-gtz v0, :cond_e

    move-object v5, v2

    check-cast v5, Lner;

    iget-object v5, v5, Lner;->b:Lnen;

    invoke-virtual {v4, v0}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v5, v6}, Lnen;->c(C)Z

    move-result v5

    xor-int/2addr v5, v3

    const-string v6, "Separator (%s) cannot contain alphabet characters"

    invoke-static {v5, v6, v4}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_e
    move-object v0, v2

    check-cast v0, Lner;

    iget-object v0, v0, Lner;->c:Ljava/lang/Character;

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/lang/Character;->charValue()C

    const/16 v0, 0x3d

    invoke-virtual {v4, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_f

    const/4 v0, 0x1

    goto :goto_a

    :cond_f
    const/4 v0, 0x0

    :goto_a
    const-string v5, "Separator (%s) cannot contain padding character"

    invoke-static {v0, v5, v4}, Lmoz;->j(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_10
    new-instance v0, Lneq;

    invoke-direct {v0, v2}, Lneq;-><init>(Lnes;)V

    invoke-virtual {v0, p1}, Lnes;->f([B)Ljava/lang/String;

    move-result-object p1

    :goto_b
    sget-object v0, Lgtr;->c:[Ljava/lang/String;

    const/4 v2, 0x0

    :goto_c
    if-gtz v2, :cond_12

    aget-object v4, v0, v2

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v4, :cond_11

    return v3

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :catch_0
    move-exception p1

    goto :goto_d

    :catch_1
    move-exception p1

    :goto_d
    sget-object v0, Lgtr;->b:Lnak;

    invoke-virtual {v0}, Lnaf;->b()Lnaz;

    move-result-object v0

    const-string v2, "Error validating package %s"

    const/16 v3, 0xcc0

    invoke-static {v0, v2, p0, v3, p1}, Ld;->i(Lnaz;Ljava/lang/String;Ljava/lang/Object;CLjava/lang/Throwable;)V

    :cond_12
    sget-object p1, Lgtr;->b:Lnak;

    invoke-virtual {p1}, Lnaf;->b()Lnaz;

    move-result-object p1

    const-string v0, "Validation failed for %s"

    const/16 v2, 0xcc1

    invoke-static {p1, v0, p0, v2}, Ld;->j(Lnaz;Ljava/lang/String;Ljava/lang/Object;C)V

    return v1
.end method
