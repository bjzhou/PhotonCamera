.class public final Ldek;
.super Ljava/lang/Object;


# static fields
.field public static final a:Ldej;


# instance fields
.field public final b:Ljava/util/HashMap;

.field public c:Ldej;

.field public d:Ljava/util/concurrent/ScheduledFuture;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ldeh;->a:Ldeh;

    sput-object v0, Ldek;->a:Ldej;

    return-void
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Ldek;->a:Ldej;

    iput-object v0, p0, Ldek;->c:Ldej;

    iput-object p1, p0, Ldek;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Ldek;->b:Ljava/util/HashMap;

    return-void
.end method

.method public static final b(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public final declared-synchronized a(J)V
    .locals 8

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ldek;->c:Ldej;

    sget-object v1, Ldek;->a:Ldej;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Llkj;->x(Z)V

    iget-object v0, p0, Ldek;->d:Ljava/util/concurrent/ScheduledFuture;

    if-nez v0, :cond_1

    iget-object v1, p0, Ldek;->e:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v2, Lczl;

    const/16 v0, 0x14

    invoke-direct {v2, p0, v0}, Lczl;-><init>(Ldek;I)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Ldek;->d:Ljava/util/concurrent/ScheduledFuture;

    :cond_1
    iget-object v0, p0, Ldek;->b:Ljava/util/HashMap;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
