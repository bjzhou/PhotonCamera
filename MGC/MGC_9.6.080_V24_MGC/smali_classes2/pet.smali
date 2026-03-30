.class public final Lpet;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Lpes;


# instance fields
.field public final b:Ljava/lang/Object;

.field public final c:Lpcu;

.field public d:Lows;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;

.field private final f:Lpes;

.field private g:Lown;


# direct methods
.method private final 33f5b80483094659737b73d90f80a8a4m(Lows;)Lown;
    .locals 8

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lpet;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_1
    throw p0

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

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
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    :goto_8
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Lpet;->f:Lpes;

    nop

    iget-boolean v1, v1, Lpes;->a:Z

    nop

    nop

    if-eqz v1, :cond_0

    nop

    nop

    new-instance p0, Lown;

    nop

    nop

    nop

    sget-object v1, Lstd;->a:Lstd;

    nop

    nop

    nop

    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, p1, v1, v2}, Lown;-><init>(Lpci;Ljava/util/concurrent/Executor;Loxi;)V

    monitor-exit v0

    nop

    nop

    return-object p0

    nop

    nop

    nop

    :cond_0
    new-instance v1, Lown;

    nop

    nop

    nop

    sget-object v2, Lstd;->a:Lstd;

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Loxi;

    nop

    nop

    new-instance v4, Loxh;

    nop

    nop

    iget-object p0, p0, Lpet;->e:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    const-wide/16 v6, 0x3e8

    nop

    nop

    invoke-direct {v4, p0, v6, v7, v5}, Loxh;-><init>(Ljava/util/concurrent/ScheduledExecutorService;JLjava/util/concurrent/TimeUnit;)V

    invoke-direct {v3, v4}, Loxi;-><init>(Loxh;)V

    invoke-direct {v1, p1, v2, v3}, Lown;-><init>(Lpci;Ljava/util/concurrent/Executor;Loxi;)V

    monitor-exit v0

    nop

    return-object v1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v1, 0x20

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

    nop

    :goto_a
    const v0, 0x10

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    :cond_1
    goto/32 :goto_3

    nop
.end method

.method static constructor <clinit>()V
    .locals 2

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0, v1}, Lpes;-><init>(Z)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Lpes;

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_2
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_3
    goto/32 :goto_9

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    :goto_6
    const v0, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_5

    nop

    nop

    :goto_9
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_a
    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_b
    const v1, 0x7

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sput-object v0, Lpet;->a:Lpes;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop
.end method

.method public constructor <init>(Ljava/util/concurrent/ScheduledExecutorService;Lpcu;Lrss;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p3, p0, Lpet;->d:Lows;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_2
    iput-object p3, p0, Lpet;->g:Lown;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-direct {p3}, Lows;-><init>()V

    goto/32 :goto_1

    nop

    nop

    :goto_4
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    const-string p2, "Configured: "

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-direct {p0, p3}, Lpet;->33f5b80483094659737b73d90f80a8a4m(Lows;)Lown;

    move-result-object p3

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lpet;->c:Lpcu;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_9
    invoke-virtual {p3, p2}, Lrss;->e(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {p2, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    const-string p1, "CamDeviceWakelock"

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_e
    iput-object p1, p0, Lpet;->e:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    invoke-interface {p1, p0}, Lpcu;->b(Ljava/lang/String;)V

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_10
    new-instance p3, Lows;

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    check-cast p2, Lpes;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    invoke-virtual {p2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_13
    iput-object v0, p0, Lpet;->b:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    sget-object p2, Lpet;->a:Lpes;

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iput-object p2, p0, Lpet;->f:Lpes;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()Lows;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Lpet;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :goto_2
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object p0, p0, Lpet;->d:Lows;

    nop

    invoke-virtual {p0}, Lows;->c()Lows;

    move-result-object p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-object p0

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final b(Ljava/lang/String;)Lpci;
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x15

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-enter v0

    nop

    :try_start_0
    iget-object v1, p0, Lpet;->g:Lown;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lown;->a()Lpci;

    move-result-object v1

    nop

    nop

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpet;->c:Lpcu;

    nop

    nop

    const-string v2, "Failed to acquire token requested by:"

    nop

    nop

    nop

    nop

    nop

    const-string v3, "; creating new wakelock"

    nop

    nop

    nop

    invoke-static {p1, v2, v3}, La;->bj(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->f(Ljava/lang/String;)V

    new-instance v1, Lows;

    nop

    nop

    nop

    invoke-direct {v1}, Lows;-><init>()V

    iput-object v1, p0, Lpet;->d:Lows;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {p0, v1}, Lpet;->33f5b80483094659737b73d90f80a8a4m(Lows;)Lown;

    move-result-object v1

    nop

    nop

    iput-object v1, p0, Lpet;->g:Lown;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Lown;->a()Lpci;

    move-result-object v1

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    :cond_0
    iget-object v2, p0, Lpet;->c:Lpcu;

    nop

    nop

    nop

    nop

    const-string v3, "Acquired by "

    nop

    nop

    nop

    invoke-static {p1, v3}, Lmf;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lpcu;->b(Ljava/lang/String;)V

    new-instance v2, Lhkf;

    nop

    nop

    nop

    const/16 v3, 0x9

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, p1, v1, v3}, Lhkf;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lpci;I)V

    monitor-exit v0

    nop

    nop

    nop

    nop

    return-object v2

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Lpet;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    const v0, 0xb

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_1
    goto/32 :goto_4

    nop

    :goto_8
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop
.end method
