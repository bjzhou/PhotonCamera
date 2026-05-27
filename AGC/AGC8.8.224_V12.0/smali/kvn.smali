.class public final Lkvn;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lnwh;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lnwh;->b()Lnwh;

    move-result-object v0

    sput-object v0, Lkvn;->a:Lnwh;

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;Lnwh;)Lkvj;
    .locals 2

    if-eqz p0, :cond_3

    :try_start_0
    sget-object v0, Lkvj;->e:Lkvj;

    invoke-static {p0}, Lnvy;->J(Ljava/nio/ByteBuffer;)Lnvy;

    move-result-object p0

    invoke-virtual {v0}, Lnws;->P()Lnws;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    sget-object v1, Lnyh;->a:Lnyh;

    invoke-virtual {v1, v0}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object v1

    invoke-static {p0}, Lnvz;->p(Lnvy;)Lnvz;

    move-result-object p0

    invoke-interface {v1, v0, p0, p1}, Lnyo;->h(Ljava/lang/Object;Lnyk;Lnwh;)V

    invoke-interface {v1, v0}, Lnyo;->f(Ljava/lang/Object;)V
    :try_end_1
    .catch Lnxd; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lnyz; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    invoke-static {v0}, Lnws;->ae(Lnws;)V

    invoke-static {v0}, Lnws;->ae(Lnws;)V

    check-cast v0, Lkvj;

    return-object v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lnxd;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lnxd;

    throw p0

    :cond_0
    throw p0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    instance-of p1, p1, Lnxd;

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Ljava/io/IOException;->getCause()Ljava/lang/Throwable;

    move-result-object p0

    check-cast p0, Lnxd;

    throw p0

    :cond_1
    new-instance p1, Lnxd;

    invoke-direct {p1, p0}, Lnxd;-><init>(Ljava/io/IOException;)V

    throw p1

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Lnyz;->a()Lnxd;

    move-result-object p0

    throw p0

    :catch_3
    move-exception p0

    iget-boolean p1, p0, Lnxd;->a:Z

    if-eqz p1, :cond_2

    new-instance p1, Lnxd;

    invoke-direct {p1, p0}, Lnxd;-><init>(Ljava/io/IOException;)V

    move-object p0, p1

    :cond_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :catch_4
    move-exception p0

    :cond_3
    sget-object p0, Lkvj;->e:Lkvj;

    return-object p0
.end method
