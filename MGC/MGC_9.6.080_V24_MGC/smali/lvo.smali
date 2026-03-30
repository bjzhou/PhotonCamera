.class public final Llvo;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public final a:Landroid/hardware/SensorManager;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Landroid/hardware/Sensor;

.field public final d:Ljava/lang/Object;

.field public final e:[F

.field public final f:[F

.field public final g:[F

.field public final h:Ljava/util/Set;

.field public i:Z

.field public final j:Lhzb;


# direct methods
.method public constructor <init>(Landroid/hardware/SensorManager;Ljava/util/concurrent/Executor;)V
    .locals 2

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    goto/32 :goto_16

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_2
    const v0, 0x18

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    const v1, 0x13

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

    :goto_4
    iput-object p1, p0, Llvo;->j:Lhzb;

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-virtual {p1, p2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object p1

    nop

    goto/32 :goto_1f

    nop

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
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_9
    const/4 v0, 0x3

    nop

    nop

    nop

    nop

    goto/32 :goto_1c

    nop

    nop

    nop

    :goto_a
    const/4 p2, 0x4

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_b
    iput-object p2, p0, Llvo;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_c
    iput-object p1, p0, Llvo;->a:Landroid/hardware/SensorManager;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_d
    iput-object v1, p0, Llvo;->e:[F

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    new-array v1, v0, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_f
    iput-object v0, p0, Llvo;->g:[F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_10
    new-instance p1, Lhzb;

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_11
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_12
    new-instance v0, Ljava/util/HashSet;

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_13
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    :goto_14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1e

    nop

    nop

    nop

    :goto_15
    iput-object v0, p0, Llvo;->f:[F

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_16
    iput-object v0, p0, Llvo;->h:Ljava/util/Set;

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_17
    new-array v0, v0, [F

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_18
    iput-object v0, p0, Llvo;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_19
    invoke-direct {p1, p0, p2}, Lhzb;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_1a
    goto/32 :goto_8

    nop

    :goto_1b
    goto/32 :goto_14

    nop

    nop

    nop

    :goto_1c
    new-array v0, v0, [F

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_1d
    const/16 p2, 0xb

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    :goto_1e
    new-instance v0, Ljava/lang/Object;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_1f
    iput-object p1, p0, Llvo;->c:Landroid/hardware/Sensor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_20
    const/16 v0, 0x9

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

    :goto_21
    if-lez v0, :cond_0

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_1a

    nop
.end method


# virtual methods
.method public final a(Llvm;)V
    .locals 2

    goto/32 :goto_b

    nop

    nop

    :goto_0
    if-nez v1, :cond_0

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    nop

    :goto_1
    new-instance v0, Llmx;

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

    :goto_2
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_3
    const/16 v1, 0xe

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_4
    monitor-enter v0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Llvo;->h:Ljava/util/Set;

    nop

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result p1

    nop

    const/4 v1, 0x0

    nop

    nop

    nop

    nop

    nop

    if-eqz p1, :cond_1

    nop

    nop

    nop

    iget-object p1, p0, Llvo;->h:Ljava/util/Set;

    nop

    invoke-interface {p1}, Ljava/util/Set;->isEmpty()Z

    move-result p1

    nop

    if-eqz p1, :cond_1

    nop

    nop

    nop

    nop

    iput-boolean v1, p0, Llvo;->i:Z

    nop

    nop

    nop

    nop

    const/4 v1, 0x1

    nop

    nop

    nop

    nop

    :cond_1
    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Llvo;->d:Ljava/lang/Object;

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iget-object p1, p0, Llvo;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_a
    const v1, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_b
    const v0, 0x3

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    return-void

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

    :try_start_1
    monitor-exit v0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_d

    nop

    nop

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
    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    if-lez v0, :cond_2

    nop

    nop

    goto/32 :goto_9

    nop

    :cond_2
    goto/32 :goto_8

    nop

    :goto_10
    invoke-direct {v0, p0, v1}, Llmx;-><init>(Ljava/lang/Object;I)V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    :goto_12
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_9

    nop

    nop

    nop

    nop
.end method
