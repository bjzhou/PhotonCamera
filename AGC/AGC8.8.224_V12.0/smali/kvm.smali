.class public final Lkvm;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/libraries/lens/lenslite/dynamicloading/DLLinkResultListener;


# instance fields
.field final synthetic a:Lnwh;

.field final synthetic b:Lkva;


# direct methods
.method public constructor <init>(Lnwh;Lkva;)V
    .locals 0

    iput-object p1, p0, Lkvm;->a:Lnwh;

    iput-object p2, p0, Lkvm;->b:Lkva;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onResultUpdate(Ljava/util/List;Ljava/nio/ByteBuffer;)V
    .locals 1

    invoke-static {}, Lkuz;->a()Lnoc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnoc;->b(Ljava/util/List;)V

    iget-object p1, p0, Lkvm;->a:Lnwh;

    invoke-static {p2, p1}, Lkvn;->a(Ljava/nio/ByteBuffer;Lnwh;)Lkvj;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnoc;->d(Lkvj;)V

    sget-object p1, Lkvb;->b:Lkvb;

    invoke-virtual {v0, p1}, Lnoc;->c(Lkvb;)V

    iget-object p1, p0, Lkvm;->b:Lkva;

    invoke-virtual {v0}, Lnoc;->a()Lkuz;

    move-result-object p2

    invoke-interface {p1, p2}, Lkva;->a(Lkuz;)V

    return-void
.end method

.method public final onResultUpdate(Ljava/util/List;Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)V
    .locals 2

    invoke-static {}, Lkuz;->a()Lnoc;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnoc;->b(Ljava/util/List;)V

    iget-object p1, p0, Lkvm;->a:Lnwh;

    invoke-static {p2, p1}, Lkvn;->a(Ljava/nio/ByteBuffer;Lnwh;)Lkvj;

    move-result-object p1

    invoke-virtual {v0, p1}, Lnoc;->d(Lkvj;)V

    iget-object p1, p0, Lkvm;->a:Lnwh;

    :try_start_0
    sget-object p2, Lkvb;->b:Lkvb;

    invoke-static {p3}, Lnvy;->J(Ljava/nio/ByteBuffer;)Lnvy;

    move-result-object p3

    invoke-virtual {p2}, Lnws;->P()Lnws;

    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    :try_start_1
    sget-object v1, Lnyh;->a:Lnyh;

    invoke-virtual {v1, p2}, Lnyh;->b(Ljava/lang/Object;)Lnyo;

    move-result-object v1

    invoke-static {p3}, Lnvz;->p(Lnvy;)Lnvz;

    move-result-object p3

    invoke-interface {v1, p2, p3, p1}, Lnyo;->h(Ljava/lang/Object;Lnyk;Lnwh;)V

    invoke-interface {v1, p2}, Lnyo;->f(Ljava/lang/Object;)V
    :try_end_1
    .catch Lnxd; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lnyz; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4

    :try_start_2
    invoke-static {p2}, Lnws;->ae(Lnws;)V

    invoke-static {p2}, Lnws;->ae(Lnws;)V

    check-cast p2, Lkvb;

    goto :goto_0

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

    move-object p1, p2

    :cond_2
    throw p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_4

    :catch_4
    move-exception p1

    sget-object p2, Lkvb;->b:Lkvb;

    :goto_0
    invoke-virtual {v0, p2}, Lnoc;->c(Lkvb;)V

    iget-object p1, p0, Lkvm;->b:Lkva;

    invoke-virtual {v0}, Lnoc;->a()Lkuz;

    move-result-object p2

    invoke-interface {p1, p2}, Lkva;->a(Lkuz;)V

    return-void
.end method
