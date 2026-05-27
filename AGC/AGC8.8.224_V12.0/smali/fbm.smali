.class public final Lfbm;
.super Ljava/lang/Object;

# interfaces
.implements Lfbk;
.implements Lfaz;
.implements Lfac;
.implements Lfad;


# static fields
.field private static final f:Lnak;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lgzm;

.field public final c:Loiw;

.field public final d:Lkbc;

.field public final e:Ljava/util/concurrent/Executor;

.field private final g:Ljuh;

.field private final h:Ljava/util/concurrent/Executor;

.field private i:Lnou;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/location/LocationProviderImpl"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lfbm;->f:Lnak;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lgzm;Loiw;Ljuh;Lkbc;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lfbm;->a:Landroid/content/Context;

    iput-object p2, p0, Lfbm;->b:Lgzm;

    iput-object p3, p0, Lfbm;->c:Loiw;

    iput-object p4, p0, Lfbm;->g:Ljuh;

    iput-object p5, p0, Lfbm;->d:Lkbc;

    iput-object p6, p0, Lfbm;->h:Ljava/util/concurrent/Executor;

    iput-object p7, p0, Lfbm;->e:Ljava/util/concurrent/Executor;

    return-void
.end method

.method private final f(Lnou;)Lnou;
    .locals 2

    sget-object v0, Letf;->c:Letf;

    iget-object v1, p0, Lfbm;->e:Ljava/util/concurrent/Executor;

    invoke-static {p1, v0, v1}, Lnnf;->j(Lnou;Lnno;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Lcna;

    const/4 v1, 0x2

    invoke-direct {v0, p0, v1}, Lcna;-><init>(Lfbm;I)V

    iget-object v1, p0, Lfbm;->h:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lnsy;->G(Lnnn;Ljava/util/concurrent/Executor;)Lnou;

    move-result-object v0

    iput-object v0, p0, Lfbm;->i:Lnou;

    return-void
.end method

.method public final b()Lcjf;
    .locals 4

    iget-object v0, p0, Lfbm;->i:Lnou;

    if-nez v0, :cond_0

    invoke-static {}, Lcjf;->a()Lcjf;

    move-result-object v0

    return-object v0

    :cond_0
    invoke-direct {p0, v0}, Lfbm;->f(Lnou;)Lnou;

    move-result-object v0

    new-instance v1, Lcjf;

    const-wide/16 v2, 0x3e8

    invoke-direct {v1, v0, v2, v3}, Lcjf;-><init>(Lnou;J)V

    return-object v1
.end method

.method public final c()Lmqp;
    .locals 4

    iget-object v0, p0, Lfbm;->i:Lnou;

    if-nez v0, :cond_0

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lfbm;->d:Lkbc;

    const-string v1, "Location#getCurrent"

    invoke-interface {v0, v1}, Lkbc;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lfbm;->i:Lnou;

    invoke-direct {p0, v0}, Lfbm;->f(Lnou;)Lnou;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x3e8

    invoke-interface {v0, v2, v3, v1}, Lnou;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/Location;

    invoke-static {v0}, Lmqp;->h(Ljava/lang/Object;)Lmqp;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lfbm;->d:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_1

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catch_2
    move-exception v0

    :goto_0
    :try_start_1
    sget-object v1, Lfbm;->f:Lnak;

    invoke-virtual {v1}, Lnaf;->c()Lnaz;

    move-result-object v1

    check-cast v1, Lnah;

    invoke-interface {v1, v0}, Lnah;->h(Ljava/lang/Throwable;)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const/16 v1, 0x82c

    invoke-interface {v0, v1}, Lnah;->G(I)Lnaz;

    move-result-object v0

    check-cast v0, Lnah;

    const-string v1, "Failed to get current location."

    invoke-interface {v0, v1}, Lnah;->o(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p0, Lfbm;->d:Lkbc;

    invoke-interface {v0}, Lkbc;->f()V

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0

    :goto_1
    iget-object v1, p0, Lfbm;->d:Lkbc;

    invoke-interface {v1}, Lkbc;->f()V

    throw v0
.end method

.method public final d()V
    .locals 3

    iget-object v0, p0, Lfbm;->i:Lnou;

    if-eqz v0, :cond_0

    sget-object v1, Lfbl;->a:Lfbl;

    iget-object v2, p0, Lfbm;->g:Ljuh;

    invoke-static {v0, v1, v2}, Ljvd;->t(Lnou;Ljzs;Ljava/util/concurrent/Executor;)V

    :cond_0
    return-void
.end method

.method public final e()Lmqp;
    .locals 3

    iget-object v0, p0, Lfbm;->i:Lnou;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lnou;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lfbm;->c()Lmqp;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    sget-object v0, Lfbm;->f:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    const-string v1, "Location provider not ready, skipping."

    const/16 v2, 0x82d

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V

    sget-object v0, Lmpx;->a:Lmpx;

    return-object v0
.end method
