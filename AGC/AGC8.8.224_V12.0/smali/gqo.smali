.class public final Lgqo;
.super Ljava/lang/Object;

# interfaces
.implements Lgpo;


# static fields
.field public static final a:Lnak;

.field private static final d:Ljava/util/concurrent/ExecutorService;


# instance fields
.field public final b:Lgpn;

.field public final c:Ljava/lang/Runnable;

.field private final e:Lgxl;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/processing/imagebackend/ImageShadowTaskImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lgqo;->a:Lnak;

    const-string v0, "ImgShadowTask"

    invoke-static {v0}, Ljvd;->c(Ljava/lang/String;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lgqo;->d:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>(Lgpn;Lgxl;Lmqp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lgqo;->b:Lgpn;

    iput-object p2, p0, Lgqo;->e:Lgxl;

    invoke-virtual {p3}, Lmqp;->f()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    iput-object p1, p0, Lgqo;->c:Ljava/lang/Runnable;

    return-void
.end method

.method public constructor <init>(Lgxl;)V
    .locals 2

    new-instance v0, Lgpn;

    invoke-direct {v0}, Lgpn;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lgpn;->e(I)V

    sget-object v1, Lmpx;->a:Lmpx;

    invoke-direct {p0, v0, p1, v1}, Lgqo;-><init>(Lgpn;Lgxl;Lmqp;)V

    return-void
.end method


# virtual methods
.method public final synthetic a()Lgpw;
    .locals 1

    iget-object v0, p0, Lgqo;->e:Lgxl;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lgqo;->e:Lgxl;

    invoke-interface {v0}, Lgxl;->h()Lgxy;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "ImageShadowTask-"

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final c(Ljzs;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented yet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final d(Landroid/content/Context;)V
    .locals 4

    sget-object p1, Lgqo;->d:Ljava/util/concurrent/ExecutorService;

    new-instance v0, Lgot;

    const/16 v1, 0xa

    invoke-direct {v0, p0, v1}, Lgot;-><init>(Lgqo;I)V

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    move-result-object p1

    const/4 v0, 0x0

    :try_start_0
    sget-object v1, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-interface {p1, v2, v3, v1}, Ljava/util/concurrent/Future;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p1, p0, Lgqo;->b:Lgpn;

    :goto_0
    invoke-virtual {p1, v0}, Lgpn;->e(I)V

    iget-object p1, p0, Lgqo;->b:Lgpn;

    invoke-virtual {p1}, Lgpn;->d()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    sget-object v1, Lgqo;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    invoke-interface {v1, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v1, 0xc7b

    invoke-interface {p1, v1}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v1, "ImageShadowTask failed because the future was interrupted."

    invoke-interface {p1, v1}, Lnah;->o(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object p1, p0, Lgqo;->b:Lgpn;

    goto :goto_0

    :catch_1
    move-exception p1

    :try_start_2
    sget-object p1, Lgqo;->a:Lnak;

    invoke-virtual {p1}, Lnaf;->c()Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v1, 0xc7a

    invoke-interface {p1, v1}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v1, "ImageShadowTask failed to complete after 5 minutes."

    invoke-interface {p1, v1}, Lnah;->o(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p1, p0, Lgqo;->b:Lgpn;

    goto :goto_0

    :catch_2
    move-exception p1

    :try_start_3
    sget-object v1, Lgqo;->a:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    invoke-interface {v1, p1}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const/16 v1, 0xc79

    invoke-interface {p1, v1}, Lnah;->G(I)Lnaz;

    move-result-object p1

    check-cast p1, Lnah;

    const-string v1, "ImageShadowTask failed to complete."

    invoke-interface {p1, v1}, Lnah;->o(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object p1, p0, Lgqo;->b:Lgpn;

    goto :goto_0

    :goto_1
    iget-object v1, p0, Lgqo;->b:Lgpn;

    invoke-virtual {v1, v0}, Lgpn;->e(I)V

    iget-object v0, p0, Lgqo;->b:Lgpn;

    invoke-virtual {v0}, Lgpn;->d()V

    goto :goto_3

    :goto_2
    throw p1

    :goto_3
    goto :goto_2
.end method

.method public final e(Ljzs;)V
    .locals 1

    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Not implemented yet"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()V
    .locals 2

    iget-object v0, p0, Lgqo;->b:Lgpn;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lgpn;->e(I)V

    iget-object v0, p0, Lgqo;->b:Lgpn;

    invoke-virtual {v0}, Lgpn;->d()V

    return-void
.end method
