.class final Liwi;
.super Ljava/lang/Thread;
.source "PG"


# instance fields
.field final synthetic a:Liwk;


# direct methods
.method public constructor <init>(Liwk;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    invoke-direct {p0, p1}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const-string p1, "EncoderDrainerWriteThread"

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

    :goto_3
    iput-object p1, p0, Liwi;->a:Liwk;

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


# virtual methods
.method public final run()V
    .locals 5

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_0
    iget-object v1, v0, Liwk;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v1, v3, v2, v4}, Liwl;->c(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V

    :goto_2
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget v3, v0, Liwk;->f:I

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v2, v2, Lmhz;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    :goto_5
    check-cast v4, Landroid/media/MediaCodec$BufferInfo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_6
    const v0, 0x15

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_9

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    :goto_a
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_b
    throw p0

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_0
    monitor-exit v1

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_d
    if-eqz v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    :cond_0
    :try_start_1
    iget-object v1, v0, Liwk;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_f
    iget-object v4, v2, Lmhz;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_10
    monitor-enter v2

    nop

    :try_start_2
    iget-object v1, v0, Liwk;->d:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    nop

    if-nez v1, :cond_2

    nop

    goto :goto_11

    nop

    nop

    :cond_2
    iget-boolean v1, v0, Liwk;->h:Z

    nop

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_3

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_3
    :goto_11
    iget-object v1, v0, Liwk;->d:Ljava/util/Queue;

    nop

    nop

    nop

    invoke-interface {v1}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    nop

    if-eqz v1, :cond_7

    nop

    nop

    iget-boolean v1, v0, Liwk;->h:Z

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_d

    nop

    nop

    :goto_12
    goto/32 :goto_a

    nop

    :goto_13
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_14
    if-nez v2, :cond_4

    nop

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

    :cond_4
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_15
    if-nez v1, :cond_5

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_16
    const v1, 0x1b

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_17
    iget-object v2, v0, Liwk;->e:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_18
    iget-object v1, v0, Liwk;->c:Liwl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_19
    iget-object v0, p0, Liwi;->a:Liwk;

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

    :goto_1a
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_1c
    check-cast v2, Ljava/nio/ByteBuffer;

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

    :goto_1d
    monitor-enter v1

    nop

    :goto_1e
    :try_start_3
    iget-object v2, v0, Liwk;->d:Ljava/util/Queue;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Queue;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    const/16 v3, 0x64

    nop

    nop

    nop

    if-le v2, v3, :cond_6

    nop

    sget-object v2, Liwk;->a:Lsdb;

    nop

    invoke-virtual {v2}, Lscs;->b()Lsdo;

    move-result-object v2

    nop

    const/16 v3, 0x7ba

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->M(I)Lsdo;

    move-result-object v2

    nop

    nop

    check-cast v2, Lscz;

    nop

    nop

    const-string v3, "Dropping frames in drainer!"

    nop

    nop

    nop

    nop

    invoke-interface {v2, v3}, Lscz;->s(Ljava/lang/String;)V

    iget-object v2, v0, Liwk;->d:Ljava/util/Queue;

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    iget v2, v0, Liwk;->k:I

    nop

    nop

    nop

    nop

    add-int/lit8 v2, v2, 0x1

    nop

    nop

    nop

    nop

    nop

    iput v2, v0, Liwk;->k:I

    nop

    nop

    nop

    goto :goto_1e

    nop

    nop

    nop

    nop

    nop

    :cond_6
    iget-object v2, v0, Liwk;->d:Ljava/util/Queue;

    nop

    invoke-interface {v2}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Lmhz;

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_1f
    iget-boolean v1, v0, Liwk;->j:Z

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_20
    goto/16 :goto_11

    nop

    nop

    nop

    :catch_0
    move-exception v1

    nop

    nop

    nop

    :try_start_4
    sget-object v3, Liwk;->a:Lsdb;

    nop

    nop

    invoke-virtual {v3}, Lscs;->b()Lsdo;

    move-result-object v3

    nop

    invoke-interface {v3, v1}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    const/16 v3, 0x7b9

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v1, v3}, Lscz;->M(I)Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Lscz;

    nop

    const-string v3, "Interrupted during wait"

    nop

    nop

    nop

    invoke-interface {v1, v3}, Lscz;->s(Ljava/lang/String;)V

    goto/16 :goto_11

    nop

    nop

    :cond_7
    :goto_21
    monitor-exit v2

    nop

    nop

    nop

    goto/16 :goto_13

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_b

    nop

    nop

    nop

    nop
.end method
