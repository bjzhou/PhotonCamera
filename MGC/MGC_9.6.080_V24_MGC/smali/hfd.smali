.class public final Lhfd;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lhfc;


# instance fields
.field public final b:Ljava/util/HashMap;

.field public c:Lhfc;

.field public d:Ljava/util/concurrent/ScheduledFuture;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Lhfb;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lhfb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lhfd;->a:Lhfc;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lhfd;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    new-instance p1, Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    sget-object v0, Lhfd;->a:Lhfc;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lhfd;->c:Lhfc;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lhfd;->e:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop
.end method

.method public static final b(Ljava/util/concurrent/ScheduledFuture;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    if-nez p0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {p0, v0}, Ljava/util/concurrent/ScheduledFuture;->cancel(Z)Z

    :goto_2
    goto/32 :goto_4

    nop

    nop

    :goto_3
    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(J)V
    .locals 8

    goto/32 :goto_3

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Lhfd;->c:Lhfc;

    nop

    nop

    nop

    nop

    sget-object v1, Lhfd;->a:Lhfc;

    nop

    if-eq v0, v1, :cond_0

    nop

    nop

    nop

    const/4 v0, 0x1

    nop

    goto :goto_1

    nop

    nop

    nop

    :cond_0
    const/4 v0, 0x0

    nop

    :goto_1
    invoke-static {v0}, Lqrg;->B(Z)V

    iget-object v0, p0, Lhfd;->d:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    if-nez v0, :cond_1

    nop

    nop

    iget-object v1, p0, Lhfd;->e:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    new-instance v2, Lhbp;

    nop

    nop

    nop

    nop

    const/16 v0, 0xa

    nop

    nop

    nop

    invoke-direct {v2, p0, v0}, Lhbp;-><init>(Ljava/lang/Object;I)V

    sget-object v7, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    const-wide/16 v3, 0x0

    nop

    const-wide/16 v5, 0x3e8

    nop

    nop

    nop

    nop

    invoke-interface/range {v1 .. v7}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    move-result-object v0

    nop

    iput-object v0, p0, Lhfd;->d:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-object v0, p0, Lhfd;->b:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    nop

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    nop

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v0, 0x9

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_a

    nop

    nop

    :goto_5
    if-lez v0, :cond_2

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_9

    nop

    :goto_6
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xf

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_d
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop
.end method
