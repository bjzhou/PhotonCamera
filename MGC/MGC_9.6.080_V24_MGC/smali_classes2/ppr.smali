.class public final Lppr;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lpci;


# instance fields
.field public final a:J

.field final synthetic b:Lppt;

.field private volatile c:Z


# direct methods
.method public constructor <init>(Lppt;J)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    iput-object p1, p0, Lppr;->b:Lppt;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p1, 0x0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-wide p2, p0, Lppr;->a:J

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    iput-boolean p1, p0, Lppr;->c:Z

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    return-void

    nop

    :goto_5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final close()V
    .locals 6

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter v3

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-wide v4, v0, Lppt;->d:J

    nop

    nop

    nop

    nop

    sub-long/2addr v4, v1

    nop

    nop

    nop

    iput-wide v4, v0, Lppt;->d:J

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lppt;->d()V

    monitor-exit v3

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_14

    nop

    :goto_2
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_4
    throw p0

    nop

    :catchall_0
    move-exception v0

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_6
    return-void

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_9
    iget-object v3, v0, Lppt;->a:Ljava/lang/Object;

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

    :goto_a
    if-lez v0, :cond_1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_1

    nop

    :goto_b
    const v0, 0x7

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    iget-boolean v0, p0, Lppr;->c:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_e
    const v1, 0xc

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_f
    invoke-virtual {v0}, Lppt;->e()V

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_10
    iget-wide v1, p0, Lppr;->a:J

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-void

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    :try_start_2
    monitor-exit v3

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_4

    nop

    nop

    :goto_12
    iget-object v0, p0, Lppr;->b:Lppt;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_13
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_15
    monitor-enter p0

    nop

    :try_start_3
    iget-boolean v0, p0, Lppr;->c:Z

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_2
    const/4 v0, 0x1

    nop

    nop

    iput-boolean v0, p0, Lppr;->c:Z

    nop

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_12

    nop

    nop
.end method
