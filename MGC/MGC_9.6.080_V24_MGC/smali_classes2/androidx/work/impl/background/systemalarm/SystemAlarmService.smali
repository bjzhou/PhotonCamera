.class public Landroidx/work/impl/background/systemalarm/SystemAlarmService;
.super Leaz;
.source "PG"

# interfaces
.implements Letc;


# instance fields
.field private a:Lete;

.field private b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const-string v0, "SystemAlarmService"

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

    nop

    :goto_1
    return-void

    nop

    :goto_2
    invoke-static {v0}, Leqh;->a(Ljava/lang/String;)Ljava/lang/String;

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>()V
    .locals 0

    goto/32 :goto_1

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_1
    invoke-direct {p0}, Leaz;-><init>()V

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m()V
    .locals 2

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_f

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_2
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    iget-object v1, v0, Lete;->i:Letc;

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x3

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_5
    const-string v0, "A completion listener for SystemAlarmDispatcher already exists."

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_6
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    :goto_7
    sget-object p0, Lete;->a:Ljava/lang/String;

    nop

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_2

    nop

    :goto_9
    goto/32 :goto_c

    nop

    nop

    :goto_a
    iput-object p0, v0, Lete;->i:Letc;

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_c
    new-instance v0, Lete;

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    :goto_d
    const v0, 0x9

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_e
    invoke-direct {v0, p0}, Lete;-><init>(Landroid/content/Context;)V

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_f
    return-void

    nop

    :goto_10
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    :goto_11
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_7

    nop

    nop

    :goto_12
    if-lez v0, :cond_0

    nop

    goto/32 :goto_9

    nop

    nop

    :cond_0
    goto/32 :goto_8

    nop

    :goto_13
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_14
    iput-object v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->a:Lete;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    :goto_15
    if-nez v1, :cond_1

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_11

    nop

    nop

    nop
.end method


# virtual methods
.method public final a()V
    .locals 5

    goto/32 :goto_11

    nop

    nop

    :goto_0
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_1
    if-eq v3, v0, :cond_0

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_3
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_1e

    nop

    nop

    nop

    nop

    :goto_4
    const v1, 0x12

    nop

    nop

    goto/32 :goto_2a

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_13

    nop

    nop

    :goto_6
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    :goto_7
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto :goto_7

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_27

    nop

    nop

    nop

    nop

    :goto_a
    check-cast v3, Landroid/os/PowerManager$WakeLock;

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :goto_b
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    goto/32 :goto_1c

    nop

    nop

    :goto_c
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    nop

    nop

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1a

    nop

    nop

    nop

    :goto_f
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    nop

    goto/32 :goto_1b

    nop

    nop

    nop

    :goto_10
    const-string v3, "WakeLock held for "

    nop

    nop

    goto/32 :goto_1d

    nop

    nop

    nop

    :goto_11
    const v0, 0xa

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_12
    goto/32 :goto_24

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_25

    nop

    nop

    nop

    nop

    :goto_14
    monitor-exit v2

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
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_20

    nop

    nop

    nop

    :goto_16
    check-cast v2, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_17
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_12

    nop

    :goto_18
    iput-boolean v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->b:Z

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

    :goto_19
    monitor-enter v2

    nop

    nop

    nop

    :try_start_0
    sget-object v3, Lewx;->b:Ljava/util/WeakHashMap;

    nop

    invoke-interface {v1, v3}, Ljava/util/Map;->putAll(Ljava/util/Map;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_22

    nop

    nop

    nop

    nop

    :goto_1a
    if-nez v2, :cond_2

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_26

    nop

    nop

    nop

    :goto_1b
    invoke-static {v4, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1c
    sget-object v2, Lewx;->a:Lewx;

    nop

    nop

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    :goto_1d
    sget-object v4, Leww;->a:Ljava/lang/String;

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_1e
    new-instance v1, Ljava/util/LinkedHashMap;

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_1f
    if-nez v3, :cond_3

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

    :cond_3
    goto/32 :goto_29

    nop

    nop

    nop

    :goto_20
    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_1f

    nop

    nop

    :goto_21
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_22
    monitor-exit v2

    nop

    nop

    nop

    goto/32 :goto_21

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_23
    throw p0

    nop

    :goto_24
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_25
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    :goto_26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    nop

    :goto_27
    invoke-virtual {p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->stopSelf()V

    goto/32 :goto_28

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_28
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_29
    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

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

    :goto_2a
    add-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    nop

    nop

    nop
.end method

.method public final onCreate()V
    .locals 1

    goto/32 :goto_4

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
    iput-boolean v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->b:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_2
    const/4 v0, 0x0

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-super {p0}, Leaz;->onCreate()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final onDestroy()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean v0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->b:Z

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_1
    invoke-virtual {p0}, Lete;->b()V

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0}, Leaz;->onDestroy()V

    goto/32 :goto_5

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :goto_4
    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->a:Lete;

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_5
    const/4 v0, 0x1

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method

.method public final onStartCommand(Landroid/content/Intent;II)I
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    iput-boolean p2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->b:Z

    nop

    nop

    :goto_1
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_2
    invoke-super {p0, p1, p2, p3}, Leaz;->onStartCommand(Landroid/content/Intent;II)I

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    :goto_3
    if-nez p2, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_4
    iget-object p2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->a:Lete;

    nop

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

    nop

    :goto_5
    if-nez p1, :cond_1

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

    nop

    :cond_1
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_6
    const/4 p0, 0x3

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iget-object p0, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->a:Lete;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_8
    const/4 p2, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_9
    iget-boolean p2, p0, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->b:Z

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_a
    invoke-static {}, Leqh;->b()V

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {p0, p1, p3}, Lete;->d(Landroid/content/Intent;I)V

    :goto_c
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_d
    invoke-direct {p0}, Landroidx/work/impl/background/systemalarm/SystemAlarmService;->f875135777c17da3cef2ea6eeff5be29m()V

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return p0

    nop

    :goto_f
    invoke-virtual {p2}, Lete;->b()V

    goto/32 :goto_d

    nop

    nop

    nop

    nop

    nop

    nop
.end method
