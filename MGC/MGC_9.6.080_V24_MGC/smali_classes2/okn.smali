.class public final Lokn;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/os/Handler$Callback;


# instance fields
.field final synthetic a:Ljava/lang/Object;

.field private final synthetic b:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput p2, p0, Lokn;->b:I

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p1, p0, Lokn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    return-void

    nop
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)Z
    .locals 7

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    check-cast p1, Lfrh;

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    check-cast p0, Lfri;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget v0, p0, Lokn;->b:I

    nop

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    nop

    :goto_3
    invoke-virtual {p0, p1}, Lfio;->f(Lfsz;)V

    goto/32 :goto_34

    nop

    nop

    :goto_4
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_6
    goto/16 :goto_2d

    nop

    nop

    :goto_7
    goto/32 :goto_10

    nop

    nop

    nop

    :goto_8
    iget-object p0, p0, Lokn;->a:Ljava/lang/Object;

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

    :goto_9
    goto/32 :goto_16

    nop

    :goto_a
    iget-object v0, v0, Lokl;->c:Ljava/util/HashMap;

    nop

    goto/32 :goto_2e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-nez v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_35

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1f

    nop

    nop

    :goto_c
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_d
    throw p0

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_25

    nop

    nop

    :goto_f
    if-ne v0, v3, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    :goto_10
    iget-object v0, p0, Lokn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/4 v2, 0x0

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_12
    return v2

    nop

    nop

    :goto_13
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    check-cast p1, Lfrh;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_15
    goto/32 :goto_33

    nop

    :goto_16
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    iget-object p0, p0, Lokn;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_18
    if-eq v0, v3, :cond_2

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_36

    nop

    nop

    nop

    nop

    :goto_19
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x5

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_1b
    check-cast p0, Lfri;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_2f

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    const/4 v3, 0x1

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

    :goto_1d
    check-cast v0, Lokl;

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

    nop

    nop

    :goto_1e
    iget v0, p1, Landroid/os/Message;->what:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_30

    nop

    nop

    nop

    :goto_1f
    iget v0, p1, Landroid/os/Message;->what:I

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    :goto_20
    move v2, v3

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_21
    if-nez v0, :cond_3

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

    :cond_3
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_22
    if-lez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    :cond_4
    goto/32 :goto_15

    nop

    :goto_23
    iget-object p0, p0, Lfri;->c:Lfio;

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

    :goto_24
    iget v0, p1, Landroid/os/Message;->what:I

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_25
    iget-object v0, p0, Lokn;->a:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    :goto_26
    iget-object v0, v0, Lokl;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    goto/32 :goto_2b

    nop

    nop

    nop

    nop

    :goto_27
    goto/16 :goto_31

    nop

    nop

    nop

    nop

    nop

    :goto_28
    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_29
    check-cast v0, Lokl;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    :goto_2a
    const/4 v1, 0x2

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_2b
    monitor-enter v0

    nop

    nop

    nop

    :try_start_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast p1, Lokk;

    nop

    nop

    nop

    iget-object v4, p0, Lokn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v4, Lokl;

    nop

    iget-object v4, v4, Lokl;->c:Ljava/util/HashMap;

    nop

    nop

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    check-cast v4, Lokm;

    nop

    nop

    nop

    if-eqz v4, :cond_6

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Lokm;->b()Z

    move-result v5

    nop

    nop

    if-eqz v5, :cond_6

    nop

    nop

    nop

    iget-boolean v5, v4, Lokm;->c:Z

    nop

    if-eqz v5, :cond_5

    nop

    iget-object v5, v4, Lokm;->g:Lokl;

    nop

    nop

    iget-object v5, v5, Lokl;->e:Landroid/os/Handler;

    nop

    nop

    nop

    nop

    iget-object v6, v4, Lokm;->e:Lokk;

    nop

    nop

    invoke-virtual {v5, v3, v6}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    iget-object v5, v4, Lokm;->g:Lokl;

    nop

    nop

    nop

    nop

    iget-object v6, v5, Lokl;->f:Lols;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, v5, Lokl;->d:Landroid/content/Context;

    nop

    nop

    invoke-virtual {v6, v5, v4}, Lols;->b(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    iput-boolean v2, v4, Lokm;->c:Z

    nop

    iput v1, v4, Lokm;->b:I

    nop

    nop

    nop

    nop

    nop

    :cond_5
    iget-object p0, p0, Lokn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast p0, Lokl;

    nop

    iget-object p0, p0, Lokl;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    monitor-exit v0

    nop

    :goto_2c
    move v2, v3

    nop

    nop

    nop

    nop

    :goto_2d
    return v2

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

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_32

    nop

    nop

    nop

    nop

    nop

    :goto_2e
    monitor-enter v0

    nop

    nop

    nop

    :try_start_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    check-cast p1, Lokk;

    nop

    iget-object p0, p0, Lokn;->a:Ljava/lang/Object;

    nop

    nop

    check-cast p0, Lokl;

    nop

    nop

    iget-object p0, p0, Lokl;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    nop

    nop

    check-cast p0, Lokm;

    nop

    if-eqz p0, :cond_9

    nop

    iget v1, p0, Lokm;->b:I

    nop

    nop

    nop

    nop

    const/4 v2, 0x3

    nop

    if-ne v1, v2, :cond_9

    nop

    nop

    const-string v1, "GmsClientSupervisor"

    nop

    nop

    nop

    const-string v2, "Timeout waiting for ServiceConnection callback "

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1, v2}, Lfey;->c(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    new-instance v4, Ljava/lang/Exception;

    nop

    nop

    invoke-direct {v4}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v1, p0, Lokm;->f:Landroid/content/ComponentName;

    nop

    if-nez v1, :cond_7

    nop

    nop

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    :cond_7
    if-nez v1, :cond_8

    nop

    nop

    new-instance v1, Landroid/content/ComponentName;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Lokk;->c:Ljava/lang/String;

    nop

    const-string v2, "unknown"

    nop

    nop

    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-virtual {p0, v1}, Lokm;->onServiceDisconnected(Landroid/content/ComponentName;)V

    :cond_9
    monitor-exit v0

    nop

    goto/16 :goto_2c

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2f
    invoke-virtual {p0, p1}, Lfri;->c(Lfrh;)V

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_30
    if-ne v0, v1, :cond_a

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_a
    :goto_31
    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_32
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_33
    goto/32 :goto_9

    nop

    nop

    :goto_34
    return v2

    nop

    :goto_35
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_36
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
