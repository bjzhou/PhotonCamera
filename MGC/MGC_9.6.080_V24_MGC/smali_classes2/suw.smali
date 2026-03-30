.class public final Lsuw;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field a:Lsuy;


# direct methods
.method public constructor <init>(Lsuy;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Lsuw;->a:Lsuy;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 8

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_0
    goto :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v2, p0}, Lsui;->cancel(Z)Z

    goto/32 :goto_b

    nop

    nop

    :goto_3
    invoke-virtual {v1, v2}, Lssk;->f(Lsui;)Z

    :goto_4
    goto/32 :goto_8

    nop

    nop

    :goto_5
    iput-object v3, p0, Lsuw;->a:Lsuy;

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_6
    const-string v0, "Timed out (timeout delayed by "

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Lsuw;->a:Lsuy;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    :goto_9
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_a
    const v1, 0x15

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    return-void

    nop

    nop

    nop

    nop

    :goto_c
    :try_start_0
    new-instance v4, Lsux;

    nop

    invoke-direct {v4, v3}, Lsux;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lssk;->a(Ljava/lang/Throwable;)Z

    throw v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_d
    if-eqz v1, :cond_0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_f
    invoke-interface {v2, p0}, Lsui;->cancel(Z)Z

    goto/32 :goto_1a

    nop

    nop

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_11
    if-eqz p0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    :cond_1
    goto/32 :goto_14

    nop

    nop

    :goto_12
    iget-object v2, v1, Lsuy;->a:Lsui;

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_13
    invoke-interface {v2}, Lsui;->isDone()Z

    move-result p0

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_14
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v4, v1, Lsuy;->b:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    iput-object v3, v1, Lsuy;->b:Ljava/util/concurrent/ScheduledFuture;

    nop

    nop

    nop

    const-string v3, "Timed out"

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    const v0, 0x14

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_16
    const/4 v3, 0x0

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_17
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/32 :goto_6

    nop

    nop

    :goto_19
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_17

    nop

    :goto_1a
    throw v0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_1c
    goto/32 :goto_18

    nop

    :goto_1d
    if-nez v4, :cond_3

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    :cond_3
    :try_start_2
    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    invoke-interface {v4, v5}, Ljava/util/concurrent/ScheduledFuture;->getDelay(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v4

    nop

    nop

    nop

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    nop

    const-wide/16 v6, 0x64

    nop

    nop

    nop

    nop

    cmp-long v6, v4, v6

    nop

    nop

    nop

    if-lez v6, :cond_4

    nop

    new-instance v6, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms after scheduled time)"

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    move-object v3, v0

    nop

    nop

    nop

    nop

    nop

    goto :goto_1e

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    goto/16 :goto_c

    nop

    nop

    nop

    :cond_4
    :goto_1e
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    new-instance v4, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    nop

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ": "

    nop

    nop

    nop

    nop

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    new-instance v3, Lsux;

    nop

    nop

    nop

    invoke-direct {v3, v0}, Lsux;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lssk;->a(Ljava/lang/Throwable;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1f
    if-nez v2, :cond_5

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :cond_5
    goto/32 :goto_16

    nop

    nop
.end method
