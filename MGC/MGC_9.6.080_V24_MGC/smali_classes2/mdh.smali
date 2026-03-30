.class final Lmdh;
.super Lprt;
.source "PG"


# instance fields
.field private final a:Ljava/lang/Runnable;

.field private b:Z


# direct methods
.method public constructor <init>(Lprw;Ljava/lang/Runnable;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    iput-boolean p1, p0, Lmdh;->b:Z

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    invoke-direct {p0, p1}, Lprt;-><init>(Lprw;)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Lmdh;->a:Ljava/lang/Runnable;

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

    :goto_4
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 1

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_0
    throw v0

    nop

    :goto_1
    iget-object p0, p0, Lmdh;->a:Ljava/lang/Runnable;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_3
    invoke-super {p0}, Lprt;->close()V

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_4
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    :goto_6
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    :try_start_1
    iget-boolean v0, p0, Lmdh;->b:Z

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_1

    nop

    const/4 v0, 0x1

    nop

    nop

    nop

    nop

    iput-boolean v0, p0, Lmdh;->b:Z

    nop

    goto :goto_8

    nop

    nop

    nop

    :cond_1
    const/4 v0, 0x0

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop
.end method
