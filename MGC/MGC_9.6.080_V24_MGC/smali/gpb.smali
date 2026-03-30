.class public final synthetic Lgpb;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lgpc;


# direct methods
.method public synthetic constructor <init>(Lgpc;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    iput-object p1, p0, Lgpb;->a:Lgpc;

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop
.end method


# virtual methods
.method public final run()V
    .locals 6

    goto/32 :goto_1c

    nop

    nop

    :goto_0
    const v1, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_1
    if-lez v0, :cond_0

    nop

    goto/32 :goto_5

    nop

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_2
    iget-object v1, v0, Lgpc;->c:Ljava/nio/ByteBuffer;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_3
    iget-object v1, v0, Lgpc;->b:Lppp;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_22

    nop

    :goto_5
    goto/32 :goto_11

    nop

    nop

    :goto_6
    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {v1, v2, v3}, Lppp;->g(Ljava/nio/ByteBuffer;I)Lpic;

    move-result-object v1

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v1}, Lscs;->b()Lsdo;

    move-result-object v1

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_9
    monitor-enter v2

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget v1, v0, Lgpc;->f:I

    nop

    if-eqz v1, :cond_4

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    if-eq v1, v3, :cond_1

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop

    nop

    nop

    goto :goto_5

    nop

    :cond_1
    monitor-exit v2

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto :goto_5

    nop

    nop

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_b
    if-eq v0, v4, :cond_2

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

    :cond_2
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_c
    const-string v2, "Failed to write to piped audio buffer."

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_e
    sget-object v0, Lgpc;->a:Lsdb;

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    sget-object v1, Lgpc;->a:Lsdb;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_10
    iget-object v0, v0, Lgpc;->b:Lppp;

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_11
    iget-object v0, p0, Lgpb;->a:Lgpc;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    :goto_12
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_13
    iget-object v2, v0, Lgpc;->d:Ljava/lang/Object;

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

    :goto_14
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    if-eqz v1, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    :cond_3
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_16
    goto/16 :goto_5

    nop

    nop

    :goto_17
    :try_start_1
    iget-object v0, v0, Lgpc;->e:Lgoq;

    nop

    nop

    invoke-virtual {v0, v1}, Lgoq;->b(Lpic;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    goto/16 :goto_5

    nop

    :cond_4
    :try_start_2
    throw v3

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_1a

    nop

    nop

    :goto_19
    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    throw p0

    nop

    nop

    nop

    nop

    :cond_5
    :goto_1b
    :try_start_3
    monitor-exit v1

    nop

    nop

    return-void

    nop

    nop

    :cond_6
    throw v3

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    nop

    nop

    monitor-exit v1

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const v0, 0xc

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_1d
    invoke-static {v2, v3, v1, v0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_18

    nop

    nop

    :goto_1e
    invoke-interface {v0}, Lppp;->c()I

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1f
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_20
    const/16 v3, 0x26f

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_21
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_22
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_23
    const/16 v1, 0x271

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_24
    iget-object v2, v0, Lgpc;->c:Ljava/nio/ByteBuffer;

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_25
    invoke-interface {v0, v1}, Lscz;->s(Ljava/lang/String;)V

    goto/32 :goto_16

    nop

    nop

    :goto_26
    rem-int v0, v0, v1

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

    :goto_27
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_28
    const-string v1, "Read buffer from audio stream, but the audio packet is null."

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_29
    iget-object v1, v0, Lgpc;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_2a
    monitor-enter v1

    nop

    :try_start_4
    iget v2, v0, Lgpc;->f:I

    nop

    nop

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    if-eqz v2, :cond_6

    nop

    nop

    nop

    const/4 v4, 0x3

    nop

    nop

    nop

    nop

    if-eq v2, v4, :cond_5

    nop

    nop

    nop

    nop

    const/4 v5, 0x4

    nop

    if-ne v2, v5, :cond_7

    nop

    nop

    goto/16 :goto_1b

    nop

    nop

    nop

    nop

    nop

    :cond_7
    monitor-exit v1

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop
.end method
