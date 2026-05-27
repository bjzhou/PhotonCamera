.class public abstract Lnve;
.super Ljava/lang/Object;

# interfaces
.implements Lnxy;


# instance fields
.field public aG:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lnve;->aG:I

    return-void
.end method

.method static final K()Lnyz;
    .locals 1

    new-instance v0, Lnyz;

    invoke-direct {v0}, Lnyz;-><init>()V

    return-object v0
.end method


# virtual methods
.method public G(Lnyo;)I
    .locals 0

    const/4 p1, 0x0

    throw p1
.end method

.method public final H()Lnvt;
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lnve;->N()I

    move-result v0

    sget-object v1, Lnvt;->b:Lnvt;

    new-array v0, v0, [B

    invoke-static {v0}, Lnwd;->ag([B)Lnwd;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnve;->cG(Lnwd;)V

    invoke-static {v1, v0}, Lkwp;->ac(Lnwd;[B)Lnvt;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Serializing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to a ByteString threw an IOException (should never happen)."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method public final I(Ljava/io/OutputStream;)V
    .locals 1

    invoke-virtual {p0}, Lnve;->N()I

    move-result v0

    invoke-static {v0}, Lnwd;->S(I)I

    move-result v0

    invoke-static {p1, v0}, Lnwd;->ah(Ljava/io/OutputStream;I)Lnwd;

    move-result-object p1

    invoke-virtual {p0, p1}, Lnve;->cG(Lnwd;)V

    invoke-virtual {p1}, Lnwd;->i()V

    return-void
.end method

.method public final J()[B
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lnve;->N()I

    move-result v0

    new-array v0, v0, [B

    invoke-static {v0}, Lnwd;->ag([B)Lnwd;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnve;->cG(Lnwd;)V

    invoke-virtual {v1}, Lnwd;->ai()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    new-instance v2, Ljava/lang/RuntimeException;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Serializing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " to a byte array threw an IOException (should never happen)."

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method
