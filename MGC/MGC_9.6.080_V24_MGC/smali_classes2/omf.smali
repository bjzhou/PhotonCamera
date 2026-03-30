.class final Lomf;
.super Ljava/lang/Thread;
.source "PG"


# direct methods
.method public constructor <init>(Ljava/lang/ThreadGroup;)V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/ThreadGroup;Ljava/lang/String;)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    const-string v0, "GmsDynamite"

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 1

    goto/32 :goto_6

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    :goto_1
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto/32 :goto_0

    nop

    nop

    :goto_3
    goto :goto_1

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_4
    goto :goto_5

    nop

    nop

    nop

    :catch_0
    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    return-void

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    const/16 v0, 0x13

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    throw v0

    nop

    nop

    nop
.end method
