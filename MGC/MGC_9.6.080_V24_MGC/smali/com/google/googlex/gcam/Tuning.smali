.class public Lcom/google/googlex/gcam/Tuning;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public transient a:J


# direct methods
.method public constructor <init>(J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    :goto_2
    iput-wide p1, p0, Lcom/google/googlex/gcam/Tuning;->a:J

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    goto/32 :goto_e

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    :goto_1
    const v1, 0x1

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_a

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

    :cond_0
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    monitor-enter p0

    nop

    :try_start_1
    iget-wide v0, p0, Lcom/google/googlex/gcam/Tuning;->a:J

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    nop

    nop

    cmp-long v0, v0, v2

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    iput-wide v2, p0, Lcom/google/googlex/gcam/Tuning;->a:J

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_5

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_6
    goto/32 :goto_d

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_8
    throw v0

    nop

    nop

    :goto_9
    goto/32 :goto_6

    nop

    nop

    :goto_a
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    :cond_1
    goto/32 :goto_c

    nop

    :goto_c
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x19

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method protected final finalize()V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-virtual {p0}, Lcom/google/googlex/gcam/Tuning;->a()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop
.end method
