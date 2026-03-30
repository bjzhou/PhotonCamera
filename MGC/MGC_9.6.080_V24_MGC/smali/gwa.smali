.class public final synthetic Lgwa;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lgwc;

.field public final synthetic b:Lpog;

.field public final synthetic c:Llxn;


# direct methods
.method public synthetic constructor <init>(Lgwc;Lpog;Llxn;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_0
    iput-object p3, p0, Lgwa;->c:Llxn;

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p2, p0, Lgwa;->b:Lpog;

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_2
    return-void

    nop

    :goto_3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lgwa;->a:Lgwc;

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
.end method


# virtual methods
.method public final run()V
    .locals 7

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-direct {v3, v0, p0, v2}, Lgwb;-><init>(Lgwc;Lpog;Llxn;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    iget-object v1, v0, Lgwc;->g:Lsui;

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const v0, 0xd

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    :goto_3
    iget-object v2, v0, Lgwc;->h:Lgvo;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_4
    check-cast v1, Loxv;

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    :goto_5
    sget-object p0, Lstd;->a:Lstd;

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object v1, v0, Lgwc;->a:Lgqc;

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    nop

    :goto_7
    iget-object v0, p0, Lgwa;->a:Lgwc;

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    :try_start_0
    monitor-exit v3

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    check-cast v1, Lpcg;

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

    :goto_a
    iget-object v2, v2, Lgvo;->b:Lgrr;

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_b
    monitor-enter v3

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v4, v2, Lgrr;->l:Lphh;

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v2, Lgrr;->L:Lpik;

    nop

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_1

    nop

    iget-object v5, v2, Lgrr;->s:Lpgo;

    nop

    nop

    if-nez v5, :cond_0

    nop

    nop

    nop

    nop

    goto :goto_c

    nop

    :cond_0
    sget-object v5, Landroid/hardware/camera2/CaptureRequest;->JPEG_ORIENTATION:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    iget v1, v1, Lpcg;->e:I

    nop

    nop

    nop

    nop

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    nop

    nop

    invoke-virtual {v4, v5, v1}, Lpik;->m(Landroid/hardware/camera2/CaptureRequest$Key;Ljava/lang/Object;)V

    new-instance v1, Lsuu;

    nop

    invoke-direct {v1}, Lsuu;-><init>()V

    iget-object v4, v2, Lgrr;->L:Lpik;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object v5, v2, Lgrr;->s:Lpgo;

    nop

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v4, v5}, Lpik;->b(Lpgo;)Lpge;

    move-result-object v4

    nop

    new-instance v5, Lgrq;

    nop

    nop

    nop

    invoke-direct {v5, v2, v1, v4}, Lgrq;-><init>(Lgrr;Lsuu;Lpge;)V

    invoke-interface {v4, v5}, Lpge;->j(Lpuq;)V

    monitor-exit v3

    nop

    nop

    goto :goto_d

    nop

    nop

    nop

    :cond_1
    :goto_c
    new-instance v1, Ljava/lang/IllegalStateException;

    nop

    nop

    nop

    const-string v2, "Snapshot not available"

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lsgj;->N(Ljava/lang/Throwable;)Lsui;

    move-result-object v1

    nop

    nop

    monitor-exit v3

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_d
    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_20

    nop

    nop

    nop

    :goto_10
    goto/32 :goto_7

    nop

    nop

    :goto_11
    iget-object v3, v0, Lgwc;->c:Ljava/util/concurrent/ScheduledExecutorService;

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_12
    add-int v0, v0, v1

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_13
    iget-object p0, p0, Lgwa;->b:Lpog;

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    :goto_14
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_15
    iget-object v3, v2, Lgrr;->c:Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_16
    invoke-static {v1, v3, p0}, Lsgj;->Y(Lsui;Lstu;Ljava/util/concurrent/Executor;)V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_f

    nop

    :goto_18
    iget-object v2, p0, Lgwa;->c:Llxn;

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    :goto_19
    iput-object v1, v0, Lgwc;->g:Lsui;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    const v1, 0x1f

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    :goto_1b
    const-wide/16 v4, 0x3e8

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

    :goto_1c
    iget-object v1, v1, Lgqc;->t:Loyd;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1d
    goto/32 :goto_10

    nop

    nop

    :goto_1e
    invoke-static {v1, v4, v5, v6, v3}, Lsgj;->V(Lsui;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lsui;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_1f
    throw p0

    nop

    nop

    :goto_20
    goto/32 :goto_1d

    nop

    nop

    :goto_21
    rem-int v0, v0, v1

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    :goto_22
    iget-object v1, v1, Loxv;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    new-instance v3, Lgwb;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
