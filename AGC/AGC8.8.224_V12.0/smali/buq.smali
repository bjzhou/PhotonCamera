.class public final Lbuq;
.super Ljava/lang/Object;

# interfaces
.implements Lbqb;


# instance fields
.field public final b:Lbur;

.field public final c:Ljava/net/URL;

.field public final d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/net/URL;

.field private volatile g:[B

.field private h:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lbur;->a:Lbur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput-object v1, p0, Lbuq;->c:Ljava/net/URL;

    invoke-static {p1}, Lbze;->s(Ljava/lang/String;)V

    iput-object p1, p0, Lbuq;->d:Ljava/lang/String;

    invoke-static {v0}, Lbze;->v(Ljava/lang/Object;)V

    iput-object v0, p0, Lbuq;->b:Lbur;

    return-void
.end method

.method public constructor <init>(Ljava/net/URL;)V
    .locals 1

    sget-object v0, Lbur;->a:Lbur;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lbze;->v(Ljava/lang/Object;)V

    iput-object p1, p0, Lbuq;->c:Ljava/net/URL;

    const/4 p1, 0x0

    iput-object p1, p0, Lbuq;->d:Ljava/lang/String;

    invoke-static {v0}, Lbze;->v(Ljava/lang/Object;)V

    iput-object v0, p0, Lbuq;->b:Lbur;

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 2

    iget-object v0, p0, Lbuq;->g:[B

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbuq;->b()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lbuq;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    iput-object v0, p0, Lbuq;->g:[B

    :cond_0
    iget-object v0, p0, Lbuq;->g:[B

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    return-void
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lbuq;->d:Ljava/lang/String;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    iget-object v0, p0, Lbuq;->c:Ljava/net/URL;

    invoke-static {v0}, Lbze;->v(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lbuq;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lbuq;

    invoke-virtual {p0}, Lbuq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lbuq;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbuq;->b:Lbur;

    iget-object p1, p1, Lbuq;->b:Lbur;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget v0, p0, Lbuq;->h:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lbuq;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    iput v0, p0, Lbuq;->h:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbuq;->b:Lbur;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lbuq;->h:I

    :cond_0
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lbuq;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
