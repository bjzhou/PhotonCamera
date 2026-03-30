.class public Lltv;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final a:Lsdb;

.field private static final b:[Ljava/lang/String;


# instance fields
.field private final c:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    :goto_0
    sput-object v0, Lltv;->a:Lsdb;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

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

    nop

    :goto_2
    sget-object v0, Lcom/google/android/apps/camera/whitebalance/YD/hwKuVzZ;->hjC:Ljava/lang/String;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_3
    sput-object v0, Lltv;->b:[Ljava/lang/String;

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
    const/4 v0, 0x0

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

    :goto_5
    sget-object v0, Lcom/google/android/apps/camera/contentprovider/Hg/tkLn;->gALPvsrjWmGABj:Ljava/lang/String;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_6
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_7
    const/4 v0, 0x0

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

    nop

    :goto_8
    return-void

    nop
.end method

.method public constructor <init>(Landroid/content/pm/PackageManager;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lltv;->c:Landroid/content/pm/PackageManager;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 13

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_0
    const/16 v3, 0xfb5

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1
    sget-object v1, Lltv;->a:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string v4, "Unsigned package"

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v0, 0x0

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lltv;->c:Landroid/content/pm/PackageManager;

    nop

    nop

    nop

    nop

    nop

    const/high16 v1, 0x8000000

    nop

    nop

    nop

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    nop

    const-string v1, "SHA-256"

    nop

    nop

    invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    nop

    iget-object v2, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const-string v3, ""

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

    :goto_6
    check-cast p0, Lscz;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7
    goto/16 :goto_17

    nop

    nop

    :catch_0
    move-exception p0

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

    :goto_8
    sget-object p0, Lltv;->a:Lsdb;

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    :goto_9
    invoke-interface {p0, v1, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_a
    if-eqz v2, :cond_0

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

    :cond_0
    :try_start_1
    sget-object p0, Lltv;->a:Lsdb;

    nop

    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    const/16 v1, 0xfb3

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    nop

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p0, v4}, Lscz;->s(Ljava/lang/String;)V

    goto/16 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iget-object p0, p0, Landroid/content/pm/PackageInfo;->signingInfo:Landroid/content/pm/SigningInfo;

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/content/pm/SigningInfo;->getSigningCertificateHistory()[Landroid/content/pm/Signature;

    move-result-object p0

    nop

    nop

    array-length v2, p0

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    sget-object p0, Lltv;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

    nop

    const/16 v1, 0xfb2

    nop

    nop

    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

    nop

    check-cast p0, Lscz;

    nop

    nop

    nop

    nop

    invoke-interface {p0, v4}, Lscz;->s(Ljava/lang/String;)V

    goto/16 :goto_16

    nop

    :cond_1
    aget-object p0, p0, v0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object p0

    nop

    nop

    invoke-virtual {v1, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object p0

    nop

    nop

    nop

    nop

    sget-object v1, Lsig;->f:Lsig;

    nop

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    check-cast v2, Lsif;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lsif;->d:Lsig;

    nop

    nop

    nop

    nop

    nop

    if-nez v2, :cond_e

    nop

    nop

    nop

    nop

    nop

    move-object v2, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lsif;

    nop

    nop

    nop

    nop

    iget-object v2, v2, Lsif;->b:Lsia;

    nop

    nop

    nop

    iget-object v3, v2, Lsia;->b:[C

    nop

    nop

    array-length v4, v3

    nop

    nop

    nop

    move v6, v0

    nop

    nop

    :goto_c
    if-ge v6, v4, :cond_c

    nop

    nop

    aget-char v7, v3, v6

    nop

    nop

    nop

    nop

    invoke-static {v7}, Lrrf;->g(C)Z

    move-result v7

    nop

    nop

    if-eqz v7, :cond_b

    nop

    nop

    nop

    iget-object v3, v2, Lsia;->b:[C

    nop

    nop

    array-length v4, v3

    nop

    nop

    move v6, v0

    nop

    nop

    :goto_d
    if-ge v6, v4, :cond_3

    nop

    nop

    nop

    nop

    nop

    aget-char v7, v3, v6

    nop

    nop

    nop

    nop

    nop

    invoke-static {v7}, Lrrf;->h(C)Z

    move-result v7

    nop

    if-eqz v7, :cond_2

    nop

    move v3, v5

    nop

    nop

    nop

    goto :goto_e

    nop

    :cond_2
    add-int/lit8 v6, v6, 0x1

    nop

    goto :goto_d

    nop

    nop

    nop

    :cond_3
    move v3, v0

    nop

    nop

    nop

    :goto_e
    xor-int/2addr v3, v5

    nop

    nop

    nop

    nop

    nop

    const-string v4, "Cannot call upperCase() on a mixed-case alphabet"

    nop

    nop

    nop

    invoke-static {v3, v4}, Lrrf;->y(ZLjava/lang/Object;)V

    iget-object v3, v2, Lsia;->b:[C

    nop

    nop

    nop

    array-length v3, v3

    nop

    nop

    nop

    nop

    nop

    new-array v3, v3, [C

    nop

    nop

    nop

    nop

    move v4, v0

    nop

    nop

    :goto_f
    iget-object v6, v2, Lsia;->b:[C

    nop

    nop

    nop

    nop

    nop

    array-length v7, v6

    nop

    nop

    if-ge v4, v7, :cond_5

    nop

    nop

    nop

    aget-char v6, v6, v4

    nop

    invoke-static {v6}, Lrrf;->g(C)Z

    move-result v7

    nop

    nop

    nop

    nop

    nop

    if-eqz v7, :cond_4

    nop

    nop

    xor-int/lit8 v6, v6, 0x20

    nop

    :cond_4
    int-to-char v6, v6

    nop

    aput-char v6, v3, v4

    nop

    nop

    nop

    nop

    add-int/lit8 v4, v4, 0x1

    nop

    nop

    nop

    nop

    nop

    goto :goto_f

    nop

    nop

    nop

    nop

    :cond_5
    new-instance v4, Lsia;

    nop

    nop

    nop

    nop

    nop

    iget-object v6, v2, Lsia;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    const-string v7, ".upperCase()"

    nop

    nop

    nop

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    invoke-direct {v4, v6, v3}, Lsia;-><init>(Ljava/lang/String;[C)V

    iget-boolean v2, v2, Lsia;->h:Z

    nop

    nop

    if-eqz v2, :cond_a

    nop

    nop

    nop

    nop

    iget-boolean v2, v4, Lsia;->h:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_6

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_12

    nop

    nop

    nop

    nop

    :cond_6
    iget-object v2, v4, Lsia;->g:[B

    nop

    nop

    array-length v3, v2

    nop

    nop

    nop

    invoke-static {v2, v3}, Ljava/util/Arrays;->copyOf([BI)[B

    move-result-object v2

    nop

    nop

    nop

    const/16 v3, 0x41

    nop

    nop

    nop

    :goto_10
    const/16 v6, 0x5a

    nop

    nop

    nop

    nop

    nop

    if-gt v3, v6, :cond_9

    nop

    nop

    nop

    nop

    or-int/lit8 v6, v3, 0x20

    nop

    nop

    nop

    nop

    iget-object v7, v4, Lsia;->g:[B

    nop

    nop

    nop

    nop

    nop

    aget-byte v8, v7, v3

    nop

    nop

    nop

    aget-byte v7, v7, v6

    nop

    nop

    nop

    nop

    const/4 v9, -0x1

    nop

    nop

    nop

    nop

    nop

    if-ne v8, v9, :cond_7

    nop

    nop

    nop

    nop

    aput-byte v7, v2, v3

    nop

    nop

    goto :goto_11

    nop

    nop

    nop

    nop

    :cond_7
    int-to-char v10, v3

    nop

    int-to-char v11, v6

    nop

    nop

    nop

    nop

    const-string v12, "Can\'t ignoreCase() since \'%s\' and \'%s\' encode different values"

    nop

    nop

    nop

    nop

    if-ne v7, v9, :cond_8

    nop

    aput-byte v8, v2, v6

    nop

    :goto_11
    add-int/lit8 v3, v3, 0x1

    nop

    goto :goto_10

    nop

    nop

    nop

    :cond_8
    new-instance p0, Ljava/lang/IllegalStateException;

    nop

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    nop

    nop

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    nop

    nop

    filled-new-array {v1, v2}, [Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-static {v12, v1}, Lrrf;->i(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    nop

    :cond_9
    new-instance v3, Lsia;

    nop

    iget-object v6, v4, Lsia;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    const-string v7, ".ignoreCase()"

    nop

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Lsia;->b:[C

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v6, v4, v2, v5}, Lsia;-><init>(Ljava/lang/String;[C[BZ)V

    move-object v2, v3

    nop

    nop

    nop

    goto :goto_13

    nop

    :cond_a
    :goto_12
    move-object v2, v4

    nop

    goto :goto_13

    nop

    :cond_b
    add-int/lit8 v6, v6, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_c

    nop

    nop

    nop

    :cond_c
    :goto_13
    move-object v3, v1

    nop

    nop

    nop

    nop

    nop

    check-cast v3, Lsif;

    nop

    iget-object v3, v3, Lsif;->b:Lsia;

    nop

    nop

    if-ne v2, v3, :cond_d

    nop

    move-object v2, v1

    nop

    nop

    nop

    goto :goto_14

    nop

    nop

    nop

    nop

    :cond_d
    move-object v3, v1

    nop

    check-cast v3, Lsif;

    nop

    iget-object v3, v3, Lsif;->c:Ljava/lang/Character;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Lsib;

    nop

    nop

    nop

    nop

    invoke-direct {v3, v2}, Lsib;-><init>(Lsia;)V

    move-object v2, v3

    nop

    nop

    :goto_14
    check-cast v1, Lsif;

    nop

    nop

    nop

    iput-object v2, v1, Lsif;->d:Lsig;

    nop

    nop

    :cond_e
    move v1, v0

    nop

    nop

    nop

    :goto_15
    const/4 v3, 0x0

    nop

    sget-object v3, Lcom/google/android/apps/camera/whitebalance/YD/hwKuVzZ;->IsKaEFbxZbZlUO:Ljava/lang/String;

    nop

    nop

    nop

    nop

    if-gtz v1, :cond_f

    nop

    nop

    nop

    nop

    nop

    move-object v4, v2

    nop

    nop

    nop

    check-cast v4, Lsif;

    nop

    nop

    nop

    iget-object v4, v4, Lsif;->b:Lsia;

    nop

    nop

    nop

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    nop

    nop

    invoke-virtual {v4, v6}, Lsia;->d(C)Z

    move-result v4

    nop

    nop

    nop

    nop

    xor-int/2addr v4, v5

    nop

    nop

    nop

    const-string v6, "Separator (%s) cannot contain alphabet characters"

    nop

    invoke-static {v4, v6, v3}, Lrrf;->q(ZLjava/lang/String;Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    nop

    nop

    nop

    goto :goto_15

    nop

    nop

    nop

    :cond_f
    move-object v1, v2

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Lsif;

    nop

    nop

    iget-object v1, v1, Lsif;->c:Ljava/lang/Character;

    nop

    nop

    nop

    if-eqz v1, :cond_10

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    const-string v1, "Separator (%s) cannot contain padding character"

    nop

    nop

    nop

    nop

    invoke-static {v5, v1, v3}, Lrrf;->q(ZLjava/lang/String;Ljava/lang/Object;)V

    :cond_10
    new-instance v1, Lsie;

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2}, Lsie;-><init>(Lsig;)V

    invoke-virtual {v1, p0}, Lsig;->g([B)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    :goto_16
    sget-object p0, Lltv;->b:[Ljava/lang/String;

    nop

    nop

    nop

    move v1, v0

    nop

    nop

    nop

    nop

    :goto_17
    if-gtz v1, :cond_11

    nop

    nop

    nop

    nop

    nop

    aget-object v2, p0, v1

    nop

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

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

    :goto_19
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1b
    const v0, 0x19

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const-string v1, "Validation failed for %s"

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

    :goto_1d
    return v0

    nop

    nop

    nop

    :goto_1e
    goto/32 :goto_4

    nop

    nop

    :goto_1f
    return v5

    nop

    nop

    nop

    nop

    :goto_20
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_21
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_22
    invoke-static {v2, p1, v3, v1, p0}, Lfey;->d(Ljava/lang/String;Ljava/lang/Object;CLscz;Ljava/lang/Throwable;)V

    :cond_11
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_23
    const v1, 0xb

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_24
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    nop

    :goto_25
    if-lez v0, :cond_12

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    :cond_12
    goto/32 :goto_19

    nop

    :goto_26
    const-string v2, "Error validating package %s"

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_27
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_28
    invoke-virtual {p0}, Lscs;->b()Lsdo;

    move-result-object p0

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

    :goto_29
    const/4 v5, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2a
    const/16 v1, 0xfb6

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

    :goto_2b
    invoke-interface {p0, v1}, Lscz;->M(I)Lsdo;

    move-result-object p0

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

    :goto_2c
    if-nez v2, :cond_13

    nop

    nop

    goto/32 :goto_20

    nop

    :cond_13
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop
.end method
