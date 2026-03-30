.class public final Lczv;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lczw;


# direct methods
.method public constructor <init>(Lczw;)V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Lczv;->a:Lczw;

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
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_0

    nop

    nop
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 4

    goto/32 :goto_1a

    nop

    nop

    :goto_0
    invoke-interface {v0, p1, p2}, Landroid/view/Choreographer$FrameCallback;->doFrame(J)V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v1, 0x0

    nop

    :try_start_0
    iput-boolean v1, p0, Lczw;->h:Z

    nop

    nop

    nop

    nop

    iget-object v2, p0, Lczw;->f:Ljava/util/List;

    nop

    iget-object v3, p0, Lczw;->g:Ljava/util/List;

    nop

    nop

    nop

    nop

    iput-object v3, p0, Lczw;->f:Ljava/util/List;

    nop

    nop

    nop

    iput-object v2, p0, Lczw;->g:Ljava/util/List;

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_3
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result p0

    nop

    :goto_5
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_7
    goto :goto_5

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_b

    nop

    nop

    :goto_b
    iget-object v0, p0, Lczv;->a:Lczw;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    :goto_c
    add-int/lit8 v1, v1, 0x1

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_a

    nop

    nop

    :goto_e
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_f
    throw p0

    nop

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_d

    nop

    nop

    nop

    :goto_11
    iget-object p0, p0, Lczv;->a:Lczw;

    nop

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    :goto_12
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    return-void

    nop

    :goto_14
    goto/32 :goto_2

    nop

    nop

    :goto_15
    iget-object v0, v0, Lczw;->d:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    :goto_16
    if-lt v1, p0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_12

    nop

    nop

    :goto_17
    iget-object v0, p0, Lczv;->a:Lczw;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

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

    :goto_19
    const v1, 0xf

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_1a
    const v0, 0x5

    nop

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

    :goto_1b
    check-cast v0, Landroid/view/Choreographer$FrameCallback;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_1c
    monitor-exit v0

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_1d
    monitor-enter v0

    nop

    :try_start_1
    iget-boolean v1, p0, Lczw;->h:Z

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_9

    nop

    :goto_1f
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_20
    invoke-virtual {v0}, Lczw;->b()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    return-void

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-eqz v1, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1c

    nop

    nop

    :goto_23
    iget-object v0, p0, Lczw;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop
.end method

.method public final run()V
    .locals 3

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_0
    monitor-exit v1

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Lczv;->a:Lczw;

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

    :goto_3
    iget-object v1, v0, Lczw;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_5
    throw p0

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_c

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_a
    const v1, 0x1d

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lczw;->b()V

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_6

    nop

    nop

    :goto_d
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_e
    monitor-exit v1

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_f
    const v0, 0x15

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_10
    iget-object v0, p0, Lczv;->a:Lczw;

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

    :goto_11
    monitor-enter v1

    nop

    nop

    nop

    :try_start_0
    iget-object v2, v0, Lczw;->f:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    nop

    nop

    if-eqz v2, :cond_1

    nop

    nop

    nop

    nop

    iget-object v2, v0, Lczw;->c:Landroid/view/Choreographer;

    nop

    nop

    nop

    nop

    invoke-virtual {v2, p0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    const/4 p0, 0x0

    nop

    nop

    iput-boolean p0, v0, Lczw;->h:Z

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
