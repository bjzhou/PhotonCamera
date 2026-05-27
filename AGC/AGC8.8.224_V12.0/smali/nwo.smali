.class public final Lnwo;
.super Lnvg;


# instance fields
.field private final a:Lnws;


# direct methods
.method public constructor <init>(Lnws;)V
    .locals 0

    invoke-direct {p0}, Lnvg;-><init>()V

    iput-object p1, p0, Lnwo;->a:Lnws;

    return-void
.end method


# virtual methods
.method public final bridge synthetic c([BILnwh;)Lnxy;
    .locals 2

    iget-object v0, p0, Lnwo;->a:Lnws;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, p2, p3}, Lnws;->Q(Lnws;[BIILnwh;)Lnws;

    move-result-object p1

    return-object p1
.end method

.method public final bridge synthetic d(Lnvy;Lnwh;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lnwo;->a:Lnws;

    sget-object v1, Lnws;->aH:Ljava/util/Map;

    invoke-virtual {v0}, Lnws;->P()Lnws;

    move-result-object v0

    :try_start_0
    sget-object v1, Lnyh;->a:Lnyh;

    invoke-virtual {v1, v0}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object v1

    invoke-static {p1}, Lnvz;->p(Lnvy;)Lnvz;

    move-result-object p1

    invoke-interface {v1, v0, p1, p2}, Lnyo;->h(Ljava/lang/Object;Lnyk;Lnwh;)V

    invoke-interface {v1, v0}, Lnyo;->f(Ljava/lang/Object;)V
    :try_end_0
    .catch Lnxd; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lnyz; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lnxd;

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lnxd;

    throw p1

    :cond_0
    throw p1

    :catch_1
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    instance-of p2, p2, Lnxd;

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    check-cast p1, Lnxd;

    throw p1

    :cond_1
    new-instance p2, Lnxd;

    invoke-direct {p2, p1}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw p2

    :catch_2
    move-exception p1

    invoke-virtual {p1}, Lnyz;->a()Lnxd;

    move-result-object p1

    throw p1

    :catch_3
    move-exception p1

    iget-boolean p2, p1, Lnxd;->a:Z

    if-eqz p2, :cond_2

    new-instance p2, Lnxd;

    invoke-direct {p2, p1}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw p2

    :cond_2
    throw p1
.end method
