.class public final Lkcs;
.super Ljava/lang/Object;


# static fields
.field public static final a:Lkcr;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Lkaq;

.field public d:Ljuf;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Lkcr;

.field private g:Ljty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    invoke-static {v0}, Lkcr;->a(Z)Lkcr;

    move-result-object v0

    sput-object v0, Lkcs;->a:Lkcr;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lkaq;Lmqp;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lkcs;->b:Ljava/lang/Object;

    iput-object p1, p0, Lkcs;->e:Ljava/util/concurrent/ScheduledExecutorService;

    const-string p1, "CamDeviceWakelock"

    invoke-interface {p2, p1}, Lkaq;->a(Ljava/lang/String;)Lkaq;

    move-result-object p1

    iput-object p1, p0, Lkcs;->c:Lkaq;

    sget-object p2, Lkcs;->a:Lkcr;

    invoke-virtual {p3, p2}, Lmqp;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkcr;

    iput-object p2, p0, Lkcs;->f:Lkcr;

    new-instance p3, Ljuf;

    invoke-direct {p3}, Ljuf;-><init>()V

    iput-object p3, p0, Lkcs;->d:Ljuf;

    invoke-direct {p0, p3}, Lkcs;->c(Ljuf;)Ljty;

    move-result-object p3

    iput-object p3, p0, Lkcs;->g:Ljty;

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "Configured: "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Lkaq;->b(Ljava/lang/String;)V

    return-void
.end method

.method private final c(Ljuf;)Ljty;
    .locals 9

    iget-object v0, p0, Lkcs;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkcs;->f:Lkcr;

    iget-boolean v1, v1, Lkcr;->a:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljty;

    sget-object v2, Lnnv;->a:Lnnv;

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Ljty;-><init>(Lkad;Ljava/util/concurrent/Executor;Ljux;)V

    monitor-exit v0

    return-object v1

    :cond_0
    new-instance v1, Ljty;

    sget-object v2, Lnnv;->a:Lnnv;

    new-instance v3, Ljux;

    new-instance v4, Ljuw;

    iget-object v5, p0, Lkcs;->e:Ljava/util/concurrent/ScheduledExecutorService;

    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v7, 0x3e8

    invoke-direct {v4, v5, v7, v8, v6}, Ljuw;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v3, v4}, Ljux;-><init>(Ljuw;)V

    invoke-direct {v1, p1, v2, v3}, Ljty;-><init>(Lkad;Ljava/util/concurrent/Executor;Ljux;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public final a()Ljuf;
    .locals 2

    iget-object v0, p0, Lkcs;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkcs;->d:Ljuf;

    invoke-virtual {v1}, Ljuf;->c()Ljuf;

    move-result-object v1

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final b(Ljava/lang/String;)Lkad;
    .locals 5

    iget-object v0, p0, Lkcs;->b:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lkcs;->g:Ljty;

    invoke-virtual {v1}, Ljty;->a()Lkad;

    move-result-object v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lkcs;->c:Lkaq;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to acquire token requested by:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "; creating new wakelock"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lkaq;->f(Ljava/lang/String;)V

    new-instance v1, Ljuf;

    invoke-direct {v1}, Ljuf;-><init>()V

    iput-object v1, p0, Lkcs;->d:Ljuf;

    invoke-direct {p0, v1}, Lkcs;->c(Ljuf;)Ljty;

    move-result-object v1

    iput-object v1, p0, Lkcs;->g:Ljty;

    invoke-virtual {v1}, Ljty;->a()Lkad;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v2, p0, Lkcs;->c:Lkaq;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Acquired by "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lkaq;->b(Ljava/lang/String;)V

    new-instance v2, Lfit;

    const/4 v3, 0x3

    invoke-direct {v2, p0, p1, v1, v3}, Lfit;-><init>(Lkcs;Ljava/lang/String;Lkad;I)V

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
