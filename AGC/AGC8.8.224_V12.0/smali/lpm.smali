.class public Llpm;
.super Ljava/lang/Object;


# static fields
.field public static volatile b:Llpm;

.field public static c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Loiw;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lopq;Llxa;Lkrn;Llzz;)V
    .locals 0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lnou;)V
    .locals 2

    new-instance v0, Llmm;

    const/4 v1, 0x6

    invoke-direct {v0, p0, v1}, Llmm;-><init>(Lnou;I)V

    sget-object v1, Lnnv;->a:Lnnv;

    invoke-interface {p0, v0, v1}, Lnou;->d(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    return-void
.end method

.method public static b(I)I
    .locals 0

    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method public static c(Llaq;Lkyn;)Llaq;
    .locals 1

    :try_start_0
    invoke-virtual {p0, p1}, Llaq;->b(Lkyn;)Llaq;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/AssertionError;

    const-string v0, "Resizable layout returns wrong type!"

    invoke-direct {p1, v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static d(Lnou;)Lkzc;
    .locals 2

    new-instance v0, Lkzb;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkzb;-><init>(Lnou;I)V

    return-object v0
.end method

.method public static e(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Callable;)Lkzc;
    .locals 3

    invoke-static {}, Llaa;->j()Llaa;

    move-result-object v0

    :try_start_0
    new-instance v1, Lkzj;

    const/4 v2, 0x0

    invoke-direct {v1, v0, p1, v2}, Lkzj;-><init>(Llaa;Ljava/util/concurrent/Callable;I)V

    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {p0}, Lkzd;->a(Ljava/lang/Throwable;)Lkzd;

    move-result-object p0

    invoke-virtual {v0, p0}, Llaa;->m(Lkzd;)V

    :goto_0
    return-object v0
.end method

.method public static f(Ljava/lang/Object;)Lkzc;
    .locals 2

    new-instance v0, Lkzb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkzb;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static g(Ljava/lang/Iterable;)Lkzc;
    .locals 1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    invoke-static {p0}, Llpm;->f(Ljava/lang/Object;)Lkzc;

    move-result-object p0

    return-object p0

    :cond_0
    new-instance v0, Lkzo;

    invoke-direct {v0, p0}, Lkzo;-><init>(Ljava/lang/Iterable;)V

    iget-object p0, v0, Lkzo;->a:Llaa;

    return-object p0
.end method

.method public static h(Lkzc;)Ljava/lang/Object;
    .locals 3

    invoke-static {p0}, Llpm;->i(Lkzc;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Attempting to get value of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " which is not yet available!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static i(Lkzc;)Ljava/lang/Object;
    .locals 1

    invoke-interface {p0}, Lkzc;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0}, Llpm;->j(Lkzc;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static j(Lkzc;)Ljava/lang/Object;
    .locals 1

    :try_start_0
    invoke-static {p0}, Llpm;->k(Lkzc;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Lkzd; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    new-instance v0, Lnpp;

    invoke-direct {v0, p0}, Lnpp;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static k(Lkzc;)Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-interface {p0}, Lkzc;->f()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_0
    return-object p0

    :catchall_0
    move-exception p0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :goto_1
    throw p0

    :catch_0
    move-exception v0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static l()Lkyw;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "maxPendingEventCount must be > 0"

    invoke-static {v0, v1}, Lmoz;->f(ZLjava/lang/Object;)V

    new-instance v0, Lkyw;

    invoke-direct {v0}, Lkyw;-><init>()V

    return-object v0
.end method

.method public static m(I)Lkyl;
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(I)V

    new-instance p0, Lkyl;

    invoke-direct {p0, v0}, Lkyl;-><init>(Ljava/util/List;)V

    return-object p0
.end method

.method public static n(Ljava/lang/Throwable;)Lkye;
    .locals 2

    new-instance v0, Lkzh;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkzh;-><init>(Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method public static o(Ljava/lang/Object;)Lkye;
    .locals 2

    new-instance v0, Lkyh;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lkyh;-><init>(Ljava/lang/Object;I)V

    return-object v0
.end method

.method public static p(Ljava/lang/Throwable;)Lkye;
    .locals 2

    new-instance v0, Lkyh;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lkyh;-><init>(Ljava/lang/Throwable;I)V

    return-object v0
.end method

.method public static q()Lkyp;
    .locals 1

    new-instance v0, Lkyg;

    invoke-direct {v0}, Lkyg;-><init>()V

    return-object v0
.end method

.method public static synthetic r(Ljava/io/FileOutputStream;)Ljava/nio/channels/FileChannel;
    .locals 0

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object p0

    invoke-static {p0}, Lj$/nio/channels/DesugarChannels;->convertMaybeLegacyFileChannelFromLibrary(Ljava/nio/channels/FileChannel;)Ljava/nio/channels/FileChannel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic s(Ljava/lang/Throwable;Ljava/lang/Throwable;)V
    .locals 6

    :try_start_0
    const-class v0, Ljava/lang/Throwable;

    const-string v1, "addSuppressed"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Throwable;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    aput-object p1, v1, v5

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    return-void
.end method
