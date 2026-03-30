.class public abstract Lqfa;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lqes;


# instance fields
.field private final a:Ljava/lang/Object;

.field private volatile b:Lqfv;


# direct methods
.method public constructor <init>()V
    .locals 1

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    const/4 v0, 0x0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_2
    iput-object v0, p0, Lqfa;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    iput-object v0, p0, Lqfa;->b:Lqfv;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    new-instance v0, Ljava/lang/Object;

    nop

    nop

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
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop
.end method


# virtual methods
.method public final a()Lqfv;
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_0
    return-object v0

    nop

    :goto_1
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw p0

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    :goto_7
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iget-object v1, p0, Lqfa;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lqfa;->b:Lqfv;

    nop

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

    :goto_a
    const v1, 0x3

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

    nop

    :goto_b
    rem-int v0, v0, v1

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    :goto_d
    const v0, 0x3

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

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_f
    monitor-enter v1

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lqfa;->b:Lqfv;

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    invoke-virtual {p0}, Lqfa;->b()Lqfv;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lqfa;->b:Lqfv;

    nop

    nop

    nop

    nop

    nop

    :cond_2
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_5

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop
.end method

.method protected abstract b()Lqfv;
.end method

.method public final close()V
    .locals 2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x16

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

    :goto_1
    if-eqz v0, :cond_0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_f

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    :goto_4
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

    :goto_5
    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    :goto_8
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_9
    iget-object v0, p0, Lqfa;->b:Lqfv;

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

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    :goto_c
    invoke-static {v0}, Lqoe;->I(Lqfs;)Ljava/lang/Object;

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_e
    monitor-enter v1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lqfa;->b:Lqfv;

    nop

    if-nez v0, :cond_2

    nop

    nop

    invoke-virtual {p0}, Lqfa;->eh()V

    sget-object v0, Lqfu;->a:Lqfv;

    nop

    nop

    nop

    nop

    iput-object v0, p0, Lqfa;->b:Lqfv;

    nop

    nop

    nop

    nop

    :cond_2
    monitor-exit v1

    nop

    nop

    goto/16 :goto_3

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    monitor-exit v1

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_f
    iget-object v1, p0, Lqfa;->a:Ljava/lang/Object;

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

    nop

    :goto_10
    const v0, 0x1f

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop
.end method

.method protected abstract eh()V
.end method
