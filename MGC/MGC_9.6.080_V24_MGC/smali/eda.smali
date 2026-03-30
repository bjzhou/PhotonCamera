.class final Leda;
.super Landroid/os/Handler;
.source "PG"


# instance fields
.field final synthetic a:Ledc;


# direct methods
.method public constructor <init>(Ledc;Landroid/os/Looper;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p1, p0, Leda;->a:Ledc;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    goto/32 :goto_2

    nop

    nop

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
.method public final handleMessage(Landroid/os/Message;)V
    .locals 9

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    move v2, p1

    nop

    nop

    :goto_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_2
    check-cast v6, Ledb;

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :cond_0
    goto/32 :goto_25

    nop

    :goto_4
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-lt v2, v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    add-int/lit8 v2, v2, 0x1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

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

    :goto_9
    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_a
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto/32 :goto_22

    nop

    nop

    :goto_b
    move v5, p1

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_d
    iget-object p0, p0, Leda;->a:Ledc;

    nop

    nop

    :goto_e
    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    const v1, 0x20

    nop

    nop

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    :goto_10
    check-cast v4, Ljava/util/ArrayList;

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_11
    const v0, 0x7

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_12
    iget-object v4, v3, Leur;->b:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_c

    nop

    :goto_14
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v7, p0, Ledc;->a:Landroid/content/Context;

    nop

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_16
    if-ne v0, v1, :cond_2

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_a

    nop

    nop

    :goto_17
    iget v0, p1, Landroid/os/Message;->what:I

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    :goto_18
    goto/32 :goto_26

    nop

    nop

    nop

    nop

    :goto_19
    iget-object v6, v6, Ledb;->b:Landroid/content/BroadcastReceiver;

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object p1, p0, Ledc;->b:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    iget-boolean v7, v6, Ledb;->d:Z

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    add-int/lit8 v5, v5, 0x1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v6, v3, Leur;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    :goto_1e
    goto/16 :goto_1

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p1

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    monitor-enter p1

    nop

    nop

    :try_start_1
    iget-object v0, p0, Ledc;->d:Ljava/util/ArrayList;

    nop

    nop

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    nop

    nop

    nop

    nop

    if-gtz v0, :cond_3

    nop

    nop

    nop

    monitor-exit p1

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_3
    new-array v1, v0, [Leur;

    nop

    nop

    iget-object v2, p0, Ledc;->d:Ljava/util/ArrayList;

    nop

    nop

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    iget-object v2, p0, Ledc;->d:Ljava/util/ArrayList;

    nop

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    monitor-exit p1

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_20
    if-lt v5, v4, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_21
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_22
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_23
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    check-cast v8, Landroid/content/Intent;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    :goto_25
    goto/32 :goto_5

    nop

    :goto_26
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_27
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_28
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_29
    aget-object v3, v1, v2

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2a
    if-eqz v7, :cond_5

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    invoke-virtual {v6, v7, v8}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    :goto_2c
    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_2d
    iget-object v8, v3, Leur;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    add-int v0, v0, v1

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_2f
    check-cast v6, Ljava/util/ArrayList;

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop
.end method
