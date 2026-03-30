.class public final Loxa;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/util/concurrent/ScheduledExecutorService;


# instance fields
.field public final a:Lowu;

.field private final b:Lsul;


# direct methods
.method private final 166277962e993c138a6b1f0c9b571cc0m(Lsui;)V
    .locals 2

    goto/32 :goto_9

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const/4 v1, 0x4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_4
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_5
    const v1, 0x4

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    new-instance v0, Lflm;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_7
    invoke-direct {v0, p0, p1, v1}, Lflm;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {p1, v0, p0}, Lsui;->c(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_9
    const v0, 0xd

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
    if-lez v0, :cond_0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_b

    nop

    :goto_b
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_d
    sget-object p0, Lstd;->a:Lstd;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

    nop

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Loxa;->b:Lsul;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {p1}, Lsgj;->I(Ljava/util/concurrent/ScheduledExecutorService;)Lsul;

    move-result-object p1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object v0, p0, Loxa;->a:Lowu;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_4
    sget-object v0, Lowy;->a:Lowu;

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    return-void

    nop
.end method


# virtual methods
.method public final awaitTermination(JLjava/util/concurrent/TimeUnit;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    :goto_1
    iget-object p0, p0, Loxa;->b:Lsul;

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

    nop

    :goto_2
    invoke-interface {p0, p1, p2, p3}, Lsul;->awaitTermination(JLjava/util/concurrent/TimeUnit;)Z

    move-result p0

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

    nop

    nop
.end method

.method public final execute(Ljava/lang/Runnable;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Loxa;->166277962e993c138a6b1f0c9b571cc0m(Lsui;)V

    goto/32 :goto_3

    nop

    nop

    :goto_1
    invoke-interface {v0, p1}, Lsul;->a(Ljava/lang/Runnable;)Lsui;

    move-result-object p1

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

    nop

    nop

    :goto_2
    iget-object v0, p0, Loxa;->b:Lsul;

    nop

    goto/32 :goto_1

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
.end method

.method public final invokeAll(Ljava/util/Collection;)Ljava/util/List;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const-string p1, "Not yet implemented"

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public final invokeAll(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/util/List;
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    throw p0

    nop

    nop

    nop

    nop

    :goto_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_3
    const-string p1, "Not yet implemented"

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

    nop

    nop
.end method

.method public final invokeAny(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_0
    throw p0

    nop

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    :goto_2
    const-string p1, "Not yet implemented"

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop
.end method

.method public final invokeAny(Ljava/util/Collection;JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const-string p1, "Not yet implemented"

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p0

    nop

    :goto_3
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method

.method public final isShutdown()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Loxa;->b:Lsul;

    nop

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

    :goto_1
    invoke-interface {p0}, Lsul;->isShutdown()Z

    move-result p0

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop

    nop

    nop

    nop
.end method

.method public final isTerminated()Z
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Loxa;->b:Lsul;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-interface {p0}, Lsul;->isTerminated()Z

    move-result p0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return p0

    nop
.end method

.method public final schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Loxa;->166277962e993c138a6b1f0c9b571cc0m(Lsui;)V

    goto/32 :goto_1

    nop

    nop

    :goto_1
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v0, p1, p2, p3, p4}, Lsul;->d(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lsun;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v0, p0, Loxa;->b:Lsul;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public final schedule(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object v0, p0, Loxa;->b:Lsul;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-interface {v0, p1, p2, p3, p4}, Lsul;->e(Ljava/util/concurrent/Callable;JLjava/util/concurrent/TimeUnit;)Lsun;

    move-result-object p1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Loxa;->166277962e993c138a6b1f0c9b571cc0m(Lsui;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    return-object p1

    nop

    nop

    nop

    nop
.end method

.method public final scheduleAtFixedRate(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_f

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    :goto_2
    const v1, 0x6

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_3
    invoke-direct {p0, p1}, Loxa;->166277962e993c138a6b1f0c9b571cc0m(Lsui;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    move-wide v2, p2

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v0, p0, Loxa;->b:Lsul;

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    :goto_8
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_9
    move-object v6, p6

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-wide v4, p4

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_b
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_c
    move-object v1, p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-object p1

    nop

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    :goto_10
    invoke-interface/range {v0 .. v6}, Lsul;->f(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lsun;

    move-result-object p1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop
.end method

.method public final scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;
    .locals 7

    goto/32 :goto_c

    nop

    nop

    :goto_0
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface/range {v0 .. v6}, Lsul;->g(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Lsun;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_2
    return-object p1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_4
    move-wide v4, p4

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_7
    move-object v6, p6

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_9
    invoke-direct {p0, p1}, Loxa;->166277962e993c138a6b1f0c9b571cc0m(Lsui;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_a
    move-wide v2, p2

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_b
    move-object v1, p1

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    const v0, 0xa

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_0

    nop

    goto/32 :goto_6

    nop

    :cond_0
    goto/32 :goto_5

    nop

    :goto_10
    iget-object v0, p0, Loxa;->b:Lsul;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method

.method public final shutdown()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iget-object p0, p0, Loxa;->b:Lsul;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lsul;->shutdown()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final shutdownNow()Ljava/util/List;
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iget-object p0, p0, Loxa;->b:Lsul;

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    :goto_2
    invoke-interface {p0}, Lsul;->shutdownNow()Ljava/util/List;

    move-result-object p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Loxa;->166277962e993c138a6b1f0c9b571cc0m(Lsui;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0, p1}, Lsul;->a(Ljava/lang/Runnable;)Lsui;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Loxa;->b:Lsul;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-object p1

    nop
.end method

.method public final submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Loxa;->166277962e993c138a6b1f0c9b571cc0m(Lsui;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0, p1, p2}, Lsul;->c(Ljava/lang/Runnable;Ljava/lang/Object;)Lsui;

    move-result-object p1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    return-object p1

    nop

    :goto_3
    iget-object v0, p0, Loxa;->b:Lsul;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public final submit(Ljava/util/concurrent/Callable;)Ljava/util/concurrent/Future;
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0, p1}, Loxa;->166277962e993c138a6b1f0c9b571cc0m(Lsui;)V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0, p1}, Lsul;->b(Ljava/util/concurrent/Callable;)Lsui;

    move-result-object p1

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Loxa;->b:Lsul;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return-object p1

    nop

    nop

    nop

    nop

    nop
.end method
