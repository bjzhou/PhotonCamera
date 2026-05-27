.class public final Llsr;
.super Ljava/lang/Object;

# interfaces
.implements Llsu;


# instance fields
.field public final a:Ljava/lang/String;

.field public final b:Lnou;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Llsh;

.field public final e:Ljava/lang/Object;

.field public f:Lnou;

.field public final g:Lva;

.field private final h:Llta;

.field private final i:Losg;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lnou;Llta;Ljava/util/concurrent/Executor;Lva;Llsh;[B[B[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p7, Ljava/lang/Object;

    invoke-direct {p7}, Ljava/lang/Object;-><init>()V

    iput-object p7, p0, Llsr;->e:Ljava/lang/Object;

    invoke-static {}, Losg;->c()Losg;

    move-result-object p7

    iput-object p7, p0, Llsr;->i:Losg;

    const/4 p7, 0x0

    iput-object p7, p0, Llsr;->f:Lnou;

    iput-object p1, p0, Llsr;->a:Ljava/lang/String;

    invoke-static {p2}, Lnsy;->C(Lnou;)Lnou;

    move-result-object p1

    iput-object p1, p0, Llsr;->b:Lnou;

    iput-object p3, p0, Llsr;->h:Llta;

    invoke-static {p4}, Lnsy;->s(Ljava/util/concurrent/Executor;)Ljava/util/concurrent/Executor;

    move-result-object p1

    iput-object p1, p0, Llsr;->c:Ljava/util/concurrent/Executor;

    iput-object p5, p0, Llsr;->g:Lva;

    iput-object p6, p0, Llsr;->d:Llsh;

    return-void
.end method


# virtual methods
.method public final a()Lnou;
    .locals 4

    iget-object v0, p0, Llsr;->e:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Llsr;->f:Lnou;

    if-eqz v1, :cond_0

    invoke-interface {v1}, Lnou;->isDone()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    iget-object v1, p0, Llsr;->f:Lnou;

    invoke-static {v1}, Lnsy;->J(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    const/4 v1, 0x0

    :try_start_2
    iput-object v1, p0, Llsr;->f:Lnou;

    :cond_0
    :goto_0
    iget-object v1, p0, Llsr;->f:Lnou;

    if-nez v1, :cond_1

    iget-object v1, p0, Llsr;->i:Losg;

    new-instance v2, Lcna;

    const/16 v3, 0xd

    invoke-direct {v2, p0, v3}, Lcna;-><init>(Llsr;I)V

    invoke-static {v2}, Lmny;->a(Lnnn;)Lnnn;

    move-result-object v2

    iget-object v3, p0, Llsr;->c:Ljava/util/concurrent/Executor;

    invoke-virtual {v1, v2, v3}, Losg;->b(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v1

    invoke-static {v1}, Lnsy;->C(Lnou;)Lnou;

    move-result-object v1

    iput-object v1, p0, Llsr;->f:Lnou;

    :cond_1
    iget-object v1, p0, Llsr;->f:Lnou;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public final b(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 4

    :try_start_0
    iget-object v0, p0, Llsr;->a:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lljz;->h(Ljava/lang/String;)Lmnm;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Llsr;->g:Lva;

    new-instance v2, Llrx;

    invoke-direct {v2}, Llrx;-><init>()V

    invoke-virtual {v1, p1, v2}, Lva;->E(Landroid/net/Uri;Llre;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/InputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v2, p0, Llsr;->h:Llta;

    iget-object v3, v2, Llta;->a:Lnxy;

    invoke-interface {v3}, Lnxy;->V()Lnyf;

    move-result-object v3

    iget-object v2, v2, Llta;->b:Lnwh;

    invoke-interface {v3, v1, v2}, Lnyf;->a(Ljava/io/InputStream;Lnwh;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_0
    :try_start_4
    invoke-virtual {v0}, Lmnm;->close()V
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object v2

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v1

    :try_start_6
    invoke-static {v2, v1}, Lljz;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :catchall_2
    move-exception v1

    :try_start_7
    invoke-virtual {v0}, Lmnm;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception v0

    :try_start_8
    invoke-static {v1, v0}, Lljz;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw v1
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_9
    iget-object v1, p0, Llsr;->g:Lva;

    invoke-virtual {v1, p1}, Lva;->G(Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Llsr;->h:Llta;

    iget-object p1, v0, Llta;->a:Lnxy;

    return-object p1

    :cond_2
    throw v0
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_0

    :goto_2
    iget-object v1, p0, Llsr;->g:Lva;

    invoke-static {v1, p1, v0}, Llkj;->M(Lva;Landroid/net/Uri;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
.end method

.method public final c(Landroid/net/Uri;Ljava/lang/Object;)V
    .locals 7

    const-string v0, ".tmp"

    invoke-static {p1, v0}, Llkj;->e(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :try_start_0
    iget-object v1, p0, Llsr;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Write "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lljz;->h(Ljava/lang/String;)Lmnm;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    new-instance v2, Llrk;

    invoke-direct {v2}, Llrk;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    :try_start_2
    iget-object v3, p0, Llsr;->g:Lva;

    new-instance v4, Llsa;

    invoke-direct {v4}, Llsa;-><init>()V

    const/4 v5, 0x1

    new-array v5, v5, [Llrk;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    iput-object v5, v4, Llsa;->a:[Llrk;

    invoke-virtual {v3, v0, v4}, Lva;->E(Landroid/net/Uri;Llre;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/io/OutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :try_start_3
    check-cast p2, Lnxy;

    invoke-interface {p2, v3}, Lnxy;->I(Ljava/io/OutputStream;)V

    invoke-virtual {v2}, Llrk;->b()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v3, :cond_0

    :try_start_4
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :cond_0
    :try_start_5
    invoke-virtual {v1}, Lmnm;->close()V

    iget-object p2, p0, Llsr;->g:Lva;

    invoke-virtual {p2, v0, p1}, Lva;->F(Landroid/net/Uri;Landroid/net/Uri;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    return-void

    :catchall_0
    move-exception p2

    if-eqz v3, :cond_1

    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    :try_start_7
    invoke-static {p2, v2}, Lljz;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw p2
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catch_0
    move-exception p2

    :try_start_8
    iget-object v2, p0, Llsr;->g:Lva;

    invoke-static {v2, p1, p2}, Llkj;->M(Lva;Landroid/net/Uri;Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    throw p1
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :catchall_2
    move-exception p1

    :try_start_9
    invoke-virtual {v1}, Lmnm;->close()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_1

    :catchall_3
    move-exception p2

    :try_start_a
    invoke-static {p1, p2}, Lljz;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :goto_1
    throw p1
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_1

    :catch_1
    move-exception p1

    iget-object p2, p0, Llsr;->g:Lva;

    invoke-virtual {p2, v0}, Lva;->G(Landroid/net/Uri;)Z

    move-result p2

    if-eqz p2, :cond_2

    :try_start_b
    iget-object p2, p0, Llsr;->g:Lva;

    invoke-virtual {p2, v0}, Lva;->I(Landroid/net/Uri;)Lkte;

    move-result-object p2

    iget-object v0, p2, Lkte;->d:Ljava/lang/Object;

    iget-object p2, p2, Lkte;->a:Ljava/lang/Object;

    check-cast p2, Landroid/net/Uri;

    invoke-interface {v0, p2}, Llsb;->k(Landroid/net/Uri;)V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto :goto_2

    :catch_2
    move-exception p2

    invoke-static {p1, p2}, Lljz;->b(Ljava/lang/Throwable;Ljava/lang/Throwable;)V

    :cond_2
    :goto_2
    throw p1
.end method

.method public final d(Lnno;Ljava/util/concurrent/Executor;)Lnou;
    .locals 8

    invoke-virtual {p0}, Llsr;->a()Lnou;

    move-result-object v2

    iget-object v6, p0, Llsr;->i:Losg;

    new-instance v7, Llsp;

    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Llsp;-><init>(Llsr;Lnou;Lnno;Ljava/util/concurrent/Executor;I)V

    invoke-static {v7}, Lmny;->a(Lnnn;)Lnnn;

    move-result-object p1

    sget-object p2, Lnnv;->a:Lnnv;

    invoke-virtual {v6, p1, p2}, Losg;->b(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1
.end method
