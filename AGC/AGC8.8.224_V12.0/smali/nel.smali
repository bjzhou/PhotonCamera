.class final Lnel;
.super Lned;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final a:Ljava/security/MessageDigest;

.field private final b:I

.field private final c:Z

.field private final d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lned;-><init>()V

    const-string v0, "SHA-256"

    invoke-static {v0}, Lnel;->b(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    iput-object v0, p0, Lnel;->a:Ljava/security/MessageDigest;

    invoke-virtual {v0}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v1

    iput v1, p0, Lnel;->b:I

    const-string v1, "Hashing.sha256()"

    iput-object v1, p0, Lnel;->d:Ljava/lang/String;

    invoke-static {v0}, Lnel;->c(Ljava/security/MessageDigest;)Z

    move-result v0

    iput-boolean v0, p0, Lnel;->c:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Lned;-><init>()V

    const-string v0, "Hashing.sha256()"

    iput-object v0, p0, Lnel;->d:Ljava/lang/String;

    invoke-static {p1}, Lnel;->b(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p1

    iput-object p1, p0, Lnel;->a:Ljava/security/MessageDigest;

    invoke-virtual {p1}, Ljava/security/MessageDigest;->getDigestLength()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-lt p2, v1, :cond_0

    if-gt p2, v0, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    :goto_0
    const-string v1, "bytes (%s) must be >= 4 and < %s"

    invoke-static {v2, v1, p2, v0}, Lmoz;->k(ZLjava/lang/String;II)V

    iput p2, p0, Lnel;->b:I

    invoke-static {p1}, Lnel;->c(Ljava/security/MessageDigest;)Z

    move-result p1

    iput-boolean p1, p0, Lnel;->c:Z

    return-void
.end method

.method private static b(Ljava/lang/String;)Ljava/security/MessageDigest;
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object p0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method private static c(Ljava/security/MessageDigest;)Z
    .locals 0

    :try_start_0
    invoke-virtual {p0}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p0

    const/4 p0, 0x0

    return p0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1

    new-instance p1, Ljava/io/InvalidObjectException;

    const-string v0, "Use SerializedForm"

    invoke-direct {p1, v0}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a()Lndd;
    .locals 3

    iget-boolean v0, p0, Lnel;->c:Z

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Lnej;

    iget-object v1, p0, Lnel;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/MessageDigest;

    iget v2, p0, Lnel;->b:I

    invoke-direct {v0, v1, v2}, Lnej;-><init>(Ljava/security/MessageDigest;I)V
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    new-instance v0, Lnej;

    iget-object v1, p0, Lnel;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lnel;->b(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v1

    iget v2, p0, Lnel;->b:I

    invoke-direct {v0, v1, v2}, Lnej;-><init>(Ljava/security/MessageDigest;I)V

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lnel;->d:Ljava/lang/String;

    return-object v0
.end method

.method writeReplace()Ljava/lang/Object;
    .locals 3

    new-instance v0, Lnek;

    iget-object v1, p0, Lnel;->a:Ljava/security/MessageDigest;

    invoke-virtual {v1}, Ljava/security/MessageDigest;->getAlgorithm()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lnel;->b:I

    invoke-direct {v0, v1, v2}, Lnek;-><init>(Ljava/lang/String;I)V

    return-object v0
.end method
