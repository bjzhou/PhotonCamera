.class public final Lghr;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Lsuu;

.field private b:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    goto/32 :goto_8

    nop

    nop

    :goto_0
    iput-object v0, p0, Lghr;->a:Lsuu;

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_3
    iput-wide v0, p0, Lghr;->b:J

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

    :goto_4
    invoke-direct {v0}, Lsuu;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_9

    nop

    :goto_7
    const/4 v0, 0x1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v0, 0x13

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    :goto_b
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lsuu;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_d
    int-to-long v0, p1

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

    :goto_e
    add-int v0, v0, v1

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

    :goto_f
    invoke-static {v0}, La;->au(Z)V

    goto/32 :goto_c

    nop

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    :goto_11
    const v1, 0x11

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a()V
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_9

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_3
    monitor-exit p0

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

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

    nop

    :goto_5
    const v0, 0xc

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

    nop

    nop

    :goto_6
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_0

    nop

    nop

    :goto_8
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-wide v0, p0, Lghr;->b:J

    nop

    nop

    nop

    nop

    nop

    const-wide/16 v2, -0x1

    nop

    nop

    nop

    add-long/2addr v0, v2

    nop

    iput-wide v0, p0, Lghr;->b:J

    nop

    const-wide/16 v2, 0x0

    nop

    nop

    nop

    cmp-long v0, v0, v2

    nop

    nop

    nop

    nop

    if-gtz v0, :cond_1

    nop

    nop

    nop

    iget-object v0, p0, Lghr;->a:Lsuu;

    nop

    const/4 v1, 0x0

    nop

    invoke-virtual {v0, v1}, Lsuu;->e(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_c
    return-void

    nop

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

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v1, 0x13

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

    nop

    :goto_e
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_2

    nop

    nop
.end method
