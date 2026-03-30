.class public final synthetic Lrnn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic a:Lrnv;


# direct methods
.method public synthetic constructor <init>(Lrnv;)V
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

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lrnn;->a:Lrnv;

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
.end method


# virtual methods
.method public final binderDied()V
    .locals 3

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

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

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    :goto_2
    check-cast v0, Lrnr;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_14

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    :goto_4
    iget-object p0, p0, Lrnn;->a:Lrnv;

    nop

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

    :goto_5
    invoke-interface {v0}, Lrnr;->a()V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_a

    nop

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    :goto_8
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw p0

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_16

    nop

    nop

    :goto_b
    goto :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0xd

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_e
    iget-object v0, p0, Lrnv;->h:Ljava/lang/ref/WeakReference;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_f
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {p0}, Lrnv;->b()V

    monitor-exit v0

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

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :goto_11
    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_12
    if-nez v0, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto :goto_1b

    nop

    nop

    nop

    nop

    nop

    :goto_14
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    :goto_15
    iget-object v0, p0, Lrnv;->e:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_16
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_17
    invoke-virtual {p0}, Lrnv;->a()Landroid/os/RemoteException;

    move-result-object v2

    nop

    goto/32 :goto_19

    nop

    nop

    :goto_18
    iget-object v0, p0, Lrnv;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    nop

    :goto_19
    invoke-virtual {v1, v2}, Lrnm;->b(Ljava/lang/Exception;)V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    :goto_1b
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    :goto_1c
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_1d
    iget-object v0, p0, Lrnv;->c:Ljava/util/List;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_6

    nop

    :goto_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_20
    check-cast v1, Lrnm;

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_21
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_2

    nop

    nop
.end method
