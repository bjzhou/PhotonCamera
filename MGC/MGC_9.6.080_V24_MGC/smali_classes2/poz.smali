.class public final Lpoz;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Lppe;


# instance fields
.field public final a:Lpcu;

.field public b:Ltlk;

.field private final c:Landroid/hardware/SensorManager;

.field private final d:Ljava/util/Set;


# direct methods
.method private final declared-synchronized 33f5b80483094659737b73d90f80a8a4m()V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    :goto_0
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lpoz;->a:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Shutting down gyro direct channel"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lpoz;->b:Ltlk;

    nop

    if-eqz v0, :cond_1

    nop

    nop

    nop

    nop

    iget-object v1, v0, Ltlk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iget-object v2, v0, Ltlk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Landroid/hardware/Sensor;

    nop

    nop

    check-cast v1, Landroid/hardware/SensorDirectChannel;

    nop

    const/4 v3, 0x0

    nop

    nop

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorDirectChannel;->configure(Landroid/hardware/Sensor;I)I

    move-result v1

    nop

    if-nez v1, :cond_0

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpoz;->a:Lpcu;

    nop

    const-string v2, "Failed to stop direct gyro provider: Unable to configure gyro direct channel."

    nop

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->d(Ljava/lang/String;)V

    goto :goto_3

    nop

    nop

    nop

    nop

    nop

    :cond_0
    iget-object v1, p0, Lpoz;->a:Lpcu;

    nop

    nop

    nop

    const-string v2, "Stopped gyro direct channel successfully."

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->b(Ljava/lang/String;)V

    :goto_3
    iget-object v1, v0, Ltlk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, Landroid/hardware/SensorDirectChannel;

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/hardware/SensorDirectChannel;->close()V

    iget-object v0, v0, Ltlk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    check-cast v0, Lpic;

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lpic;->n()V

    const/4 v0, 0x0

    nop

    iput-object v0, p0, Lpoz;->b:Ltlk;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw v0

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0x17

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_9
    rem-int v0, v0, v1

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

    :goto_a
    return-void

    nop

    nop

    nop

    :cond_1
    :try_start_2
    iget-object v0, p0, Lpoz;->a:Lpcu;

    nop

    const-string v1, "Failed to stop direct gyro provider: Already stopped"

    nop

    nop

    invoke-interface {v0, v1}, Lpcu;->h(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x7

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_e
    if-lez v0, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_b

    nop

    :goto_f
    add-int v0, v0, v1

    nop

    goto/32 :goto_9

    nop

    nop

    nop
.end method

.method public constructor <init>(Landroid/hardware/SensorManager;Lpcu;)V
    .locals 0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    new-instance p1, Ljava/util/HashSet;

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

    :goto_1
    iput-object p1, p0, Lpoz;->d:Ljava/util/Set;

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

    :goto_2
    const/4 p1, 0x0

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    :goto_4
    iput-object p1, p0, Lpoz;->b:Ltlk;

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_5
    const-string p1, "DirectGyro"

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_6
    iput-object p1, p0, Lpoz;->c:Landroid/hardware/SensorManager;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_7
    invoke-interface {p2, p1}, Lpcu;->a(Ljava/lang/String;)Lpcu;

    move-result-object p1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_8
    iput-object p1, p0, Lpoz;->a:Lpcu;

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

    :goto_9
    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_a
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private final declared-synchronized da190e616797844b591057d0190e7728m()V
    .locals 7

    goto/32 :goto_20

    nop

    nop

    nop

    nop

    :goto_0
    monitor-exit p0

    nop

    goto/32 :goto_25

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_1f

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 v2, 0x1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const/4 v2, 0x0

    nop

    nop

    nop

    nop

    :try_start_0
    new-instance v3, Lppa;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v3, v1}, Lppa;-><init>(Lpic;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v4, p0, Lpoz;->c:Landroid/hardware/SensorManager;

    nop

    nop

    invoke-virtual {v4, v0}, Landroid/hardware/SensorManager;->createDirectChannel(Landroid/hardware/HardwareBuffer;)Landroid/hardware/SensorDirectChannel;

    move-result-object v2

    nop

    nop

    nop

    nop

    if-nez v2, :cond_1

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpoz;->a:Lpcu;

    nop

    nop

    const-string v3, "Failed to start direct gyro provider: Creating direct channel returned null"

    nop

    invoke-interface {v0, v3}, Lpcu;->d(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v0, p0, Lpoz;->a:Lpcu;

    nop

    const-string v2, "Closing hardware buffer"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lpcu;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lpic;->n()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    :goto_5
    goto/16 :goto_d

    nop

    nop

    nop

    nop

    :cond_1
    :try_start_3
    iget-object v0, p0, Lpoz;->c:Landroid/hardware/SensorManager;

    nop

    nop

    nop

    nop

    nop

    const/4 v4, 0x4

    nop

    invoke-virtual {v0, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpoz;->a:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const-string v3, "Failed to start direct gyro provider: Getting default sensor returned null."

    nop

    nop

    nop

    invoke-interface {v0, v3}, Lpcu;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lpoz;->a:Lpcu;

    nop

    const-string v3, "Closing hardware buffer"

    nop

    nop

    invoke-interface {v0, v3}, Lpcu;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lpic;->n()V

    invoke-virtual {v2}, Landroid/hardware/SensorDirectChannel;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_6
    const v1, 0xf

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_8
    :try_start_5
    new-instance v1, Lpic;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v1, v0}, Lpic;-><init>(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    monitor-exit p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_1a

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_15

    nop

    nop

    :goto_d
    :try_start_6
    iget-object v3, p0, Lpoz;->a:Lpcu;

    nop

    const-string v4, "Failed to start direct gyro provider: Creating direct channel threw an exception."

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4, v0}, Lpcu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :try_start_7
    iget-object v0, p0, Lpoz;->a:Lpcu;

    nop

    nop

    nop

    nop

    const-string v3, "Closing hardware buffer"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3}, Lpcu;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lpic;->n()V

    if-eqz v2, :cond_5

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/hardware/SensorDirectChannel;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_e
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_27

    nop

    nop

    :goto_f
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_10
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    const/16 v3, 0x21

    nop

    nop

    nop

    :try_start_8
    invoke-static/range {v1 .. v6}, Landroid/hardware/HardwareBuffer;->create(IIIIJ)Landroid/hardware/HardwareBuffer;

    move-result-object v0

    nop

    nop
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    goto/32 :goto_1c

    nop

    nop

    :goto_12
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_14
    return-void

    nop

    nop

    nop

    nop

    :goto_15
    :try_start_9
    iget-object v3, p0, Lpoz;->a:Lpcu;

    nop

    nop

    const-string v4, "Closing hardware buffer"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v3, v4}, Lpcu;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lpic;->n()V

    if-eqz v2, :cond_3

    nop

    nop

    nop

    nop

    invoke-virtual {v2}, Landroid/hardware/SensorDirectChannel;->close()V

    :cond_3
    throw v0

    nop

    :catch_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Lpoz;->a:Lpcu;

    nop

    const-string v2, "Failed to start direct gyro provider: Creating the hardware buffer threw an IllegalArgumentException exception."

    nop

    nop

    nop

    nop

    invoke-interface {v1, v2, v0}, Lpcu;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_16
    const/4 v4, 0x2

    nop

    nop

    nop

    :try_start_a
    invoke-virtual {v2, v0, v4}, Landroid/hardware/SensorDirectChannel;->configure(Landroid/hardware/Sensor;I)I

    move-result v4

    nop

    if-nez v4, :cond_7

    nop

    nop

    nop

    iget-object v0, p0, Lpoz;->a:Lpcu;

    nop

    const-string v3, "Failed to start direct gyro provider: Unable to configure gyro direct channel."

    nop

    nop

    nop

    invoke-interface {v0, v3}, Lpcu;->d(Ljava/lang/String;)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    iget-object v0, p0, Lpoz;->a:Lpcu;

    nop

    nop

    nop

    nop

    const-string v3, "Closing hardware buffer"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v3}, Lpcu;->b(Ljava/lang/String;)V

    invoke-virtual {v1}, Lpic;->n()V

    invoke-virtual {v2}, Landroid/hardware/SensorDirectChannel;->close()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_17
    const/4 v4, 0x1

    nop

    nop

    nop

    goto/32 :goto_23

    nop

    nop

    :goto_18
    monitor-exit p0

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

    nop

    :goto_19
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_29

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1b
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_1c
    if-eqz v0, :cond_4

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :cond_4
    :try_start_c
    iget-object v0, p0, Lpoz;->a:Lpcu;

    nop

    const-string v1, "Failed to start direct gyro provider: Hardware Buffer returned null."

    nop

    invoke-interface {v0, v1}, Lpcu;->d(Ljava/lang/String;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto/32 :goto_13

    nop

    nop

    :goto_1d
    monitor-exit p0

    nop

    nop

    goto/32 :goto_26

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1e
    const v1, 0x98580

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1f
    return-void

    nop

    nop

    nop

    :cond_5
    goto/32 :goto_18

    nop

    nop

    :goto_20
    const v0, 0x1e

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_21
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_22
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    :goto_23
    const-wide/32 v5, 0x1800003

    nop

    nop

    nop

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_24
    monitor-enter p0

    nop

    nop

    nop

    :try_start_d
    iget-object v0, p0, Lpoz;->a:Lpcu;

    nop

    nop

    nop

    const-string v1, "Starting up gyro direct channel"

    nop

    invoke-interface {v0, v1}, Lpcu;->b(Ljava/lang/String;)V

    iget-object v0, p0, Lpoz;->b:Ltlk;

    nop

    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    iget-object v0, p0, Lpoz;->a:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Failed to start direct gyro provider: Already running."

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lpcu;->h(Ljava/lang/String;)V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_25
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_26
    return-void

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception v0

    nop

    nop

    nop

    nop

    :try_start_e
    monitor-exit p0

    nop
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_2

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_27
    if-lez v0, :cond_6

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    :cond_6
    goto/32 :goto_a

    nop

    :goto_28
    return-void

    nop

    nop

    nop

    nop

    :cond_7
    :try_start_f
    iget-object v4, p0, Lpoz;->a:Lpcu;

    nop

    nop

    const-string v5, "Started gyro direct channel successfully"

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4, v5}, Lpcu;->b(Ljava/lang/String;)V

    new-instance v4, Ltlk;

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v4, v1, v2, v0, v3}, Ltlk;-><init>(Lpic;Landroid/hardware/SensorDirectChannel;Landroid/hardware/Sensor;Lppa;)V

    iput-object v4, p0, Lpoz;->b:Ltlk;

    nop
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_29
    goto/32 :goto_b

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Ljava/lang/String;)Lppd;
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lpoz;->d:Ljava/util/Set;

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    nop

    nop

    nop

    if-eqz v0, :cond_0

    nop

    invoke-direct {p0}, Lpoz;->da190e616797844b591057d0190e7728m()V

    goto/16 :goto_12

    nop

    nop

    :cond_0
    iget-object v0, p0, Lpoz;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    nop

    if-eqz v1, :cond_4

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    check-cast v1, Lppd;

    nop

    invoke-interface {v1}, Lppd;->a()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_1

    nop

    iget-object p1, p0, Lpoz;->a:Lpcu;

    nop

    invoke-interface {v1}, Lppd;->a()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    new-instance v2, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fast gyro provider session existed for: "

    nop

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". No new session added."

    nop

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    nop

    nop

    nop

    invoke-interface {p1, v0}, Lpcu;->b(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_f

    nop

    nop

    :goto_1
    return-object p0

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_1
    new-instance v0, Lpph;

    nop

    const/4 v1, 0x1

    nop

    nop

    invoke-direct {v0, p0, p1, v1}, Lpph;-><init>(Lpoz;Ljava/lang/String;I)V

    iget-object p1, p0, Lpoz;->d:Ljava/util/Set;

    nop

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object p1, p0, Lpoz;->a:Lpcu;

    nop

    iget-object v1, v0, Lpph;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    nop

    const-string v2, "Fast gyro provider session added for: "

    nop

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    nop

    nop

    nop

    invoke-interface {p1, v1}, Lpcu;->b(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xf

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

    nop

    :goto_6
    if-lez v0, :cond_3

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_3

    nop

    :goto_7
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_8
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_9
    throw p1

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x0

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_c
    return-object v0

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_2
    monitor-exit p0

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/32 :goto_9

    nop

    nop

    :goto_d
    monitor-exit p0

    nop

    goto/32 :goto_c

    nop

    nop

    :goto_e
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_f
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    :goto_10
    const v1, 0x2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_11
    return-object v1

    nop

    nop

    nop

    nop

    nop

    :cond_4
    :goto_12
    :try_start_3
    iget-object v0, p0, Lpoz;->b:Ltlk;

    nop

    nop

    nop

    if-nez v0, :cond_2

    nop

    iget-object p1, p0, Lpoz;->a:Lpcu;

    nop

    nop

    nop

    const-string v0, "Failed to open new direct gyro session: Hardware was null."

    nop

    invoke-interface {p1, v0}, Lpcu;->d(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/32 :goto_2

    nop

    nop
.end method

.method public final declared-synchronized b(Lppd;)V
    .locals 4

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_0
    add-int v0, v0, v1

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_1
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_2
    return-void

    nop

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    :goto_3
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    iget-object v1, p0, Lpoz;->d:Ljava/util/Set;

    nop

    nop

    nop

    nop

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    nop

    nop

    nop

    nop

    if-eqz v1, :cond_0

    nop

    iget-object v1, p0, Lpoz;->a:Lpcu;

    nop

    nop

    check-cast p1, Lpph;

    nop

    nop

    iget-object p1, p1, Lpph;->a:Ljava/lang/String;

    nop

    iget-object v2, p0, Lpoz;->d:Ljava/util/Set;

    nop

    nop

    nop

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    new-instance v3, Ljava/lang/StringBuilder;

    nop

    nop

    nop

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " Remaining number of sessions = "

    nop

    nop

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    nop

    invoke-interface {v1, p1}, Lpcu;->b(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lpoz;->d:Ljava/util/Set;

    nop

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    nop

    nop

    if-eqz p1, :cond_2

    nop

    nop

    nop

    nop

    invoke-direct {p0}, Lpoz;->33f5b80483094659737b73d90f80a8a4m()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_b

    nop

    nop

    :goto_5
    const v1, 0x7

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_6
    const v0, 0x15

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_7
    if-lez v0, :cond_1

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_a

    nop

    :goto_8
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_8

    nop

    nop

    :goto_a
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_c
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    :goto_e
    monitor-exit p0

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_f
    const-string v0, "Fast gyro provider session closed for: "

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
.end method

.method protected final declared-synchronized finalize()V
    .locals 4

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    nop

    :try_start_0
    iget-object v0, p0, Lpoz;->b:Ltlk;

    nop

    if-eqz v0, :cond_2

    nop

    nop

    nop

    nop

    iget-object v1, v0, Ltlk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    iget-object v2, v0, Ltlk;->b:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v2, Landroid/hardware/Sensor;

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Landroid/hardware/SensorDirectChannel;

    nop

    const/4 v3, 0x0

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2, v3}, Landroid/hardware/SensorDirectChannel;->configure(Landroid/hardware/Sensor;I)I

    move-result v1

    nop

    nop

    if-nez v1, :cond_0

    nop

    iget-object v1, p0, Lpoz;->a:Lpcu;

    nop

    const-string v2, "Failed to stop direct gyro provider in finalizer: Unable to configure gyro direct channel."

    nop

    nop

    invoke-interface {v1, v2}, Lpcu;->d(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v0, Ltlk;->c:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v1, Landroid/hardware/SensorDirectChannel;

    nop

    nop

    nop

    invoke-virtual {v1}, Landroid/hardware/SensorDirectChannel;->close()V

    iget-object v0, v0, Ltlk;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v0, Lpic;

    nop

    invoke-virtual {v0}, Lpic;->n()V

    iget-object v0, p0, Lpoz;->a:Lpcu;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Gyro direct channel reference potentially leaked and was closed in finalizer."

    nop

    nop

    invoke-interface {v0, v1}, Lpcu;->h(Ljava/lang/String;)V

    const/4 v0, 0x0

    nop

    nop

    iput-object v0, p0, Lpoz;->b:Ltlk;

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

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

    :goto_2
    add-int v0, v0, v1

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_5
    return-void

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_9

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_b

    nop

    :goto_7
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    throw v0

    nop

    nop

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_3

    nop

    nop

    :goto_b
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_c
    goto/32 :goto_0

    nop

    nop

    :goto_d
    const v0, 0x18

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_e
    const v1, 0x2

    nop

    goto/32 :goto_2

    nop

    nop
.end method
