.class public final Lcfx;
.super Ljava/lang/Object;

# interfaces
.implements Lkee;


# static fields
.field public static final a:Lnak;


# instance fields
.field public final b:Lcgi;

.field public final c:Ljava/util/concurrent/Executor;

.field public final d:Ljava/lang/String;

.field public final e:Lgue;

.field private final f:Ljava/util/Map;

.field private final g:Lgkr;

.field private final h:Z

.field private i:Lkef;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com/google/android/apps/camera/aizoom/AiZoomBufferListener"

    invoke-static {v0}, Lnak;->h(Ljava/lang/String;)Lnak;

    move-result-object v0

    sput-object v0, Lcfx;->a:Lnak;

    return-void
.end method

.method public constructor <init>(Lmwa;Lgkr;Lcgi;Lgue;Ljava/util/concurrent/Executor;Ldhi;Lmqp;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcfx;->f:Ljava/util/Map;

    iput-object p2, p0, Lcfx;->g:Lgkr;

    iput-object p3, p0, Lcfx;->b:Lcgi;

    iput-object p4, p0, Lcfx;->e:Lgue;

    iput-object p5, p0, Lcfx;->c:Ljava/util/concurrent/Executor;

    sget-object p1, Ldho;->bY:Ldhj;

    invoke-interface {p6, p1}, Ldhi;->k(Ldhj;)Z

    move-result p1

    iput-boolean p1, p0, Lcfx;->h:Z

    invoke-virtual {p7}, Lmqp;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p7}, Lmqp;->c()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkfj;

    invoke-interface {p1}, Lkfj;->c()Lkll;

    move-result-object p1

    iget-object p1, p1, Lkll;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    iput-object p1, p0, Lcfx;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcfx;->f:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcfx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    sget-object v1, Lnbk;->a:Lnbc;

    const-string v2, "BobaBufferListener"

    invoke-interface {v0, v1, v2}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v0

    const-string v1, "No preview streams available!"

    const/16 v2, 0x51

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcfx;->g:Lgkr;

    iget-object v6, p0, Lcfx;->f:Ljava/util/Map;

    new-instance v9, Lgkq;

    iget-object v1, v0, Lgkr;->a:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lken;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lgkr;->b:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Ljvs;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v1, v0, Lgkr;->c:Ljava/lang/Object;

    invoke-interface {v1}, Loiw;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Ljuf;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v0, v0, Lgkr;->d:Ljava/lang/Object;

    invoke-interface {v0}, Loiw;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Ljava/util/concurrent/Executor;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v7, 0x2

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lgkq;-><init>(Lken;Ljvs;Ljuf;Ljava/util/concurrent/Executor;Ljava/util/Map;ILjava/lang/String;)V

    iput-object v9, p0, Lcfx;->i:Lkef;

    iget-boolean v0, p0, Lcfx;->h:Z

    if-eqz v0, :cond_1

    sget-object v0, Lnbk;->a:Lnbc;

    iget-object v0, p0, Lcfx;->i:Lkef;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Lkef;->k(Lkee;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :cond_1
    :try_start_2
    sget-object v0, Lcfx;->a:Lnak;

    invoke-virtual {v0}, Lnaf;->c()Lnaz;

    move-result-object v0

    sget-object v1, Lnbk;->a:Lnbc;

    const-string v2, "BobaBufferListener"

    invoke-interface {v0, v1, v2}, Lnaz;->g(Lnbc;Ljava/lang/Object;)Lnaz;

    move-result-object v0

    const-string v1, "Rendering is disabled!!"

    const/16 v2, 0x4f

    invoke-static {v0, v1, v2}, Ld;->g(Lnaz;Ljava/lang/String;C)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final declared-synchronized b()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcfx;->i:Lkef;

    if-eqz v0, :cond_0

    sget-object v0, Lnbk;->a:Lnbc;

    iget-object v0, p0, Lcfx;->i:Lkef;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0, p0}, Lkef;->l(Lkee;)V

    iget-object v0, p0, Lcfx;->i:Lkef;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-interface {v0}, Lkef;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    sget-object v0, Lnbk;->a:Lnbc;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final c(Lkhr;)V
    .locals 5

    invoke-virtual {p1}, Lkhr;->b()Lkeg;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-wide v0, v0, Lkeg;->c:J

    const-wide/16 v2, 0x2

    rem-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lckt;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lckt;-><init>(Lcfx;I)V

    invoke-static {p1, v0}, Lkfg;->B(Lkhr;Lkex;)V

    :cond_1
    :goto_0
    return-void
.end method
