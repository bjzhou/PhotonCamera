.class public final Lfhj;
.super Ljava/lang/Object;

# interfaces
.implements Lfgh;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/FileOutputStream;ILnou;Ljava/util/concurrent/Executor;)Lkxv;
    .locals 2

    sget-object v0, Ldeo;->s:Ldeo;

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-static {p3, v0, v1}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p3

    :try_start_0
    invoke-static {p4}, Lktf;->m(Ljava/util/concurrent/Executor;)Ller;

    move-result-object p4

    invoke-virtual {p1}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p4, v0}, Ller;->c(Ljava/io/FileDescriptor;)V

    invoke-virtual {p4, p2}, Ller;->b(I)V

    sget-object p2, Lhop;->m:Lhop;

    iget-object v0, p4, Ller;->a:Ljava/util/concurrent/Executor;

    invoke-static {p3, p2, v0}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p2

    iput-object p2, p4, Ller;->b:Lnou;

    sget-object p2, Lhop;->n:Lhop;

    iget-object v0, p4, Ller;->a:Ljava/util/concurrent/Executor;

    invoke-static {p3, p2, v0}, Lnnf;->i(Lnou;Lmqi;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p2

    iput-object p2, p4, Ller;->c:Lnou;

    const/4 p2, 0x0

    iput-boolean p2, p4, Ller;->d:Z

    invoke-virtual {p4}, Ller;->a()Llen;

    move-result-object p2

    new-instance p3, Lkxw;

    invoke-direct {p3, p2}, Lkxw;-><init>(Llen;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    invoke-static {}, Lnph;->g()Lnph;

    move-result-object p2

    invoke-interface {p3}, Lkxv;->b()Lnou;

    move-result-object p4

    new-instance v0, Lfhh;

    invoke-direct {v0, p1, p2, p4}, Lfhh;-><init>(Ljava/io/FileOutputStream;Lnph;Lnou;)V

    sget-object p1, Lnnv;->a:Lnnv;

    invoke-interface {p4, v0, p1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    new-instance p1, Lfhi;

    invoke-direct {p1, p3, p2}, Lfhi;-><init>(Lkxv;Lnph;)V

    return-object p1

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/RuntimeException;

    invoke-direct {p2, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p2
.end method
