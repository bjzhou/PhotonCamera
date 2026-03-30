.class public final Litu;
.super Lpuq;
.source "PG"


# instance fields
.field final synthetic a:Lpge;

.field final synthetic b:Lpcm;

.field final synthetic c:Litw;


# direct methods
.method public constructor <init>(Litw;Lpge;Lpcm;)V
    .locals 0

    goto/32 :goto_3

    nop

    nop

    :goto_0
    invoke-direct {p0, p1, p1, p1}, Lpuq;-><init>([B[C[B)V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_1
    iput-object p1, p0, Litu;->c:Litw;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    :goto_3
    iput-object p2, p0, Litu;->a:Lpge;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 p1, 0x0

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

    :goto_5
    iput-object p3, p0, Litu;->b:Lpcm;

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method


# virtual methods
.method public final cV()V
    .locals 4

    goto/32 :goto_a

    nop

    nop

    :goto_0
    check-cast v0, Ljava/lang/Long;

    nop

    goto/32 :goto_27

    nop

    nop

    nop

    :goto_1
    const v3, 0x49742400    # 1000000.0f

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
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object v1, v1, Litw;->o:Liuh;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_5
    if-nez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_7

    nop

    nop

    :goto_6
    const v1, 0x5

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    :goto_7
    iget-object v1, p0, Litu;->c:Litw;

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    :goto_8
    invoke-interface {v0}, Lpge;->close()V

    goto/32 :goto_28

    nop

    nop

    :goto_9
    if-lez v0, :cond_1

    nop

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_16

    nop

    :goto_a
    const v0, 0x1a

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_b
    if-nez v1, :cond_2

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_20

    nop

    nop

    :goto_c
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    nop

    nop

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    :goto_d
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_e
    iget-object v1, p0, Litu;->c:Litw;

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_f
    invoke-interface {v0, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

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

    :goto_10
    rem-int v0, v0, v1

    nop

    nop

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
    invoke-virtual {v1, v0}, Lfyu;->a(Lpro;)V

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_12
    iget-object v2, v1, Liud;->q:Ljava/lang/Object;

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

    :goto_13
    iget-object p0, v0, Litw;->e:Lowu;

    nop

    nop

    nop

    nop

    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    iget-object v1, v1, Litw;->g:Lfyu;

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

    :goto_15
    const/4 v1, 0x1

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    :goto_16
    goto/32 :goto_1c

    nop

    :goto_17
    goto/32 :goto_2b

    nop

    nop

    nop

    :goto_18
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_19
    const/4 v2, 0x0

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1a
    iget-object v0, v0, Litw;->l:Ljava/util/concurrent/atomic/AtomicBoolean;

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_1b
    return-void

    nop

    nop

    :goto_1c
    goto/32 :goto_1d

    nop

    nop

    nop

    nop

    nop

    :goto_1d
    goto/32 :goto_17

    nop

    nop

    nop

    :goto_1e
    long-to-float v0, v2

    nop

    nop

    nop

    goto/32 :goto_2d

    nop

    nop

    :goto_1f
    iget-object v0, p0, Litu;->a:Lpge;

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_20
    sget-object v2, Landroid/hardware/camera2/CaptureResult;->SENSOR_EXPOSURE_TIME:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_21
    iget-object v0, p0, Litu;->c:Litw;

    nop

    nop

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_22
    monitor-enter v2

    nop

    nop

    nop

    :try_start_0
    iput v0, v1, Liud;->r:F

    nop

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_3

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    monitor-exit v2

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_23
    div-float/2addr v0, v3

    nop

    nop

    nop

    nop

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    nop

    :goto_24
    invoke-interface {v0}, Lpge;->d()Lpro;

    move-result-object v0

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

    nop

    nop

    :goto_25
    new-instance v1, Litt;

    nop

    nop

    nop

    nop

    goto/32 :goto_2c

    nop

    nop

    :goto_26
    if-nez v0, :cond_3

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_27
    if-nez v0, :cond_4

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :cond_4
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_28
    iget-object v0, p0, Litu;->c:Litw;

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_29
    invoke-virtual {p0, v1}, Lowu;->execute(Ljava/lang/Runnable;)V

    :goto_2a
    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_2b
    iget-object v0, p0, Litu;->a:Lpge;

    nop

    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_2c
    invoke-direct {v1, p0, v2}, Litt;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_2d
    iget-object v1, v1, Liuh;->d:Liud;

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop
.end method
