.class final Lbsp;
.super Ljava/lang/Object;

# interfaces
.implements Lbqb;


# static fields
.field private static final b:Lcas;


# instance fields
.field private final c:Lbsu;

.field private final d:Lbqb;

.field private final e:Lbqb;

.field private final f:I

.field private final g:I

.field private final h:Ljava/lang/Class;

.field private final i:Lbqf;

.field private final j:Lbqj;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcas;

    const-wide/16 v1, 0x32

    invoke-direct {v0, v1, v2}, Lcas;-><init>(J)V

    sput-object v0, Lbsp;->b:Lcas;

    return-void
.end method

.method public constructor <init>(Lbsu;Lbqb;Lbqb;IILbqj;Ljava/lang/Class;Lbqf;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lbsp;->c:Lbsu;

    iput-object p2, p0, Lbsp;->d:Lbqb;

    iput-object p3, p0, Lbsp;->e:Lbqb;

    iput p4, p0, Lbsp;->f:I

    iput p5, p0, Lbsp;->g:I

    iput-object p6, p0, Lbsp;->j:Lbqj;

    iput-object p7, p0, Lbsp;->h:Ljava/lang/Class;

    iput-object p8, p0, Lbsp;->i:Lbqf;

    return-void
.end method


# virtual methods
.method public final a(Ljava/security/MessageDigest;)V
    .locals 4

    iget-object v0, p0, Lbsp;->c:Lbsu;

    const-class v1, [B

    invoke-interface {v0, v1}, Lbsu;->e(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lbsp;->f:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iget v2, p0, Lbsp;->g:I

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->array()[B

    iget-object v1, p0, Lbsp;->e:Lbqb;

    invoke-interface {v1, p1}, Lbqb;->a(Ljava/security/MessageDigest;)V

    iget-object v1, p0, Lbsp;->d:Lbqb;

    invoke-interface {v1, p1}, Lbqb;->a(Ljava/security/MessageDigest;)V

    invoke-virtual {p1, v0}, Ljava/security/MessageDigest;->update([B)V

    iget-object v1, p0, Lbsp;->j:Lbqj;

    if-eqz v1, :cond_0

    invoke-interface {v1, p1}, Lbqj;->a(Ljava/security/MessageDigest;)V

    :cond_0
    iget-object v1, p0, Lbsp;->i:Lbqf;

    invoke-virtual {v1, p1}, Lbqf;->a(Ljava/security/MessageDigest;)V

    sget-object v1, Lbsp;->b:Lcas;

    iget-object v2, p0, Lbsp;->h:Ljava/lang/Class;

    invoke-virtual {v1, v2}, Lcas;->f(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    if-nez v2, :cond_1

    iget-object v2, p0, Lbsp;->h:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lbsp;->a:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    iget-object v3, p0, Lbsp;->h:Ljava/lang/Class;

    invoke-virtual {v1, v3, v2}, Lcas;->g(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p1, v2}, Ljava/security/MessageDigest;->update([B)V

    iget-object p1, p0, Lbsp;->c:Lbsu;

    invoke-interface {p1, v0}, Lbsu;->c(Ljava/lang/Object;)V

    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 3

    instance-of v0, p1, Lbsp;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p1, Lbsp;

    iget v0, p0, Lbsp;->g:I

    iget v2, p1, Lbsp;->g:I

    if-ne v0, v2, :cond_0

    iget v0, p0, Lbsp;->f:I

    iget v2, p1, Lbsp;->f:I

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lbsp;->j:Lbqj;

    iget-object v2, p1, Lbsp;->j:Lbqj;

    invoke-static {v0, v2}, Lcaw;->j(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsp;->h:Ljava/lang/Class;

    iget-object v2, p1, Lbsp;->h:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsp;->d:Lbqb;

    iget-object v2, p1, Lbsp;->d:Lbqb;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsp;->e:Lbqb;

    iget-object v2, p1, Lbsp;->e:Lbqb;

    invoke-virtual {v0, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbsp;->i:Lbqf;

    iget-object p1, p1, Lbsp;->i:Lbqf;

    invoke-virtual {v0, p1}, Lbqf;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    return v1
.end method

.method public final hashCode()I
    .locals 2

    iget-object v0, p0, Lbsp;->d:Lbqb;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbsp;->e:Lbqb;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lbsp;->f:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lbsp;->g:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lbsp;->j:Lbqj;

    if-eqz v1, :cond_0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbsp;->h:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lbsp;->i:Lbqf;

    invoke-virtual {v1}, Lbqf;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lbsp;->d:Lbqb;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lbsp;->e:Lbqb;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lbsp;->f:I

    iget v3, p0, Lbsp;->g:I

    iget-object v4, p0, Lbsp;->h:Ljava/lang/Class;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lbsp;->j:Lbqj;

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lbsp;->i:Lbqf;

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "ResourceCacheKey{sourceKey="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", signature="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", width="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", height="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", decodedResourceClass="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", transformation=\'"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', options="

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "}"

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
