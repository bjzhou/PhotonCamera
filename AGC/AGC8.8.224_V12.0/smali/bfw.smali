.class public final Lbfw;
.super Ljava/lang/Object;

# interfaces
.implements Lbgl;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;)V
    .locals 2

    check-cast p1, Ljava/lang/Throwable;

    sget-object v0, Lbls;->a:Ljava/lang/ThreadLocal;

    instance-of v0, p1, Ljava/net/SocketException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/nio/channels/ClosedChannelException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/io/InterruptedIOException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/net/ProtocolException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljavax/net/ssl/SSLException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/net/UnknownHostException;

    if-nez v0, :cond_1

    instance-of v0, p1, Ljava/net/UnknownServiceException;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unable to parse composition"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_1
    :goto_0
    const-string v0, "Unable to load composition."

    invoke-static {v0, p1}, Lbll;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
