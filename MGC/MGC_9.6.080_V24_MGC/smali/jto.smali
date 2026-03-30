.class public Ljto;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final d:Lsdb;


# instance fields
.field public final a:Ljava/lang/Object;

.field public final b:Ljava/util/concurrent/Executor;

.field public final c:Ljava/util/EnumMap;

.field private final e:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    :goto_1
    sput-object v0, Ljto;->d:Lsdb;

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

    nop

    :goto_2
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_3
    const-string v0, "jto"

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    nop

    nop
.end method

.method public constructor <init>(Lqhg;Ljava/util/concurrent/Executor;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_2

    nop

    :cond_0
    goto/32 :goto_1

    nop

    :goto_1
    goto/32 :goto_f

    nop

    :goto_2
    goto/32 :goto_6

    nop

    nop

    nop

    :goto_3
    const v1, 0x12

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
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

    nop

    nop

    :goto_5
    new-instance p1, Ljava/lang/Object;

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_2

    nop

    :goto_8
    const-class v0, Ljtk;

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    :goto_9
    iput-wide v0, p0, Ljto;->e:J

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    :goto_a
    iput-object p1, p0, Ljto;->c:Ljava/util/EnumMap;

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_c
    const v0, 0x2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_d
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_e
    return-void

    nop

    :goto_f
    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_10
    invoke-direct {p1, v0}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_11
    iget-wide v0, p1, Lqhg;->a:J

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_12
    new-instance p1, Ljava/util/EnumMap;

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_13
    iput-object p1, p0, Ljto;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_14

    nop

    nop

    :goto_14
    iput-object p2, p0, Ljto;->b:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop
.end method

.method private final f875135777c17da3cef2ea6eeff5be29m()J
    .locals 6

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_0
    goto/32 :goto_3

    nop

    :goto_1
    goto/32 :goto_9

    nop

    nop

    :goto_2
    throw p0

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_4
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :cond_0
    goto/32 :goto_0

    nop

    :goto_5
    const v1, 0x20

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_6
    const v0, 0x18

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    nop

    :goto_7
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

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
    iget-object v0, p0, Ljto;->a:Ljava/lang/Object;

    nop

    goto/32 :goto_a

    nop

    nop

    :goto_a
    monitor-enter v0

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v1, p0, Ljto;->c:Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v1}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v1

    nop

    nop

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    const-wide/16 v2, 0x0

    nop

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    nop

    nop

    nop

    nop

    if-eqz v4, :cond_1

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ljtk;

    nop

    nop

    nop

    nop

    nop

    iget-object v5, p0, Ljto;->c:Ljava/util/EnumMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v5, v4}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Ljtn;

    nop

    nop

    nop

    nop

    iget-object v4, v4, Ljtn;->c:Ljava/lang/Object;

    nop

    nop

    check-cast v4, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v4}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->k()Loyd;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    check-cast v4, Loxv;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, v4, Loxv;->d:Ljava/lang/Object;

    nop

    nop

    nop

    check-cast v4, Ljava/lang/Long;

    nop

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    nop

    nop

    nop

    nop

    nop

    add-long/2addr v2, v4

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    iget-wide v4, p0, Ljto;->e:J

    nop

    nop

    sub-long/2addr v4, v2

    nop

    nop

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    return-wide v4

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_2

    nop

    nop

    :goto_c
    goto/32 :goto_1

    nop
.end method


# virtual methods
.method public final a()V
    .locals 11

    goto/32 :goto_d

    nop

    nop

    :goto_0
    add-int v0, v0, v1

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

    :goto_1
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_3

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_3
    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iget-object v0, p0, Ljto;->a:Ljava/lang/Object;

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_6
    goto/32 :goto_4

    nop

    nop

    :goto_7
    throw p0

    nop

    nop

    nop

    nop

    nop

    :goto_8
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_9
    monitor-enter v0

    nop

    :try_start_0
    invoke-direct {p0}, Ljto;->f875135777c17da3cef2ea6eeff5be29m()J

    iget-object v1, p0, Ljto;->c:Ljava/util/EnumMap;

    nop

    invoke-virtual {v1}, Ljava/util/EnumMap;->keySet()Ljava/util/Set;

    move-result-object v1

    nop

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    nop

    nop

    nop

    nop

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    nop

    nop

    nop

    nop

    if-eqz v2, :cond_3

    nop

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Ljtk;

    nop

    nop

    iget-object v3, p0, Ljto;->c:Ljava/util/EnumMap;

    nop

    invoke-virtual {v3, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Ljtn;

    nop

    nop

    nop

    nop

    nop

    iget-object v3, v3, Ljtn;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    iget-object v4, p0, Ljto;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    monitor-enter v4

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Ljto;->f875135777c17da3cef2ea6eeff5be29m()J

    move-result-wide v5

    nop

    nop

    nop

    nop

    iget-object v7, p0, Ljto;->c:Ljava/util/EnumMap;

    nop

    invoke-virtual {v7, v2}, Ljava/util/EnumMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Ljtn;

    nop

    nop

    nop

    nop

    nop

    iget-object v7, v7, Ljtn;->c:Ljava/lang/Object;

    nop

    check-cast v7, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;

    nop

    nop

    nop

    nop

    invoke-virtual {v7}, Landroidx/wear/ambient/AmbientModeSupport$AmbientController;->j()Loyd;

    move-result-object v7

    nop

    nop

    check-cast v7, Loyg;

    nop

    nop

    nop

    iget-object v7, v7, Loyg;->a:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    check-cast v7, Ljava/lang/Long;

    nop

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    nop

    nop

    nop

    const-wide/16 v9, 0x0

    nop

    nop

    nop

    nop

    nop

    cmp-long v9, v7, v9

    nop

    nop

    nop

    const/4 v10, 0x0

    nop

    nop

    nop

    if-gez v9, :cond_1

    nop

    sget-object v5, Ljto;->d:Lsdb;

    nop

    nop

    nop

    nop

    invoke-virtual {v5}, Lscs;->c()Lsdo;

    move-result-object v5

    nop

    nop

    nop

    const/16 v6, 0xa33

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v5, v6}, Lscz;->M(I)Lsdo;

    move-result-object v5

    nop

    nop

    nop

    check-cast v5, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v6, "Feature (%s) reports negative shot memory: %d. Disabling."

    nop

    nop

    invoke-virtual {v2}, Ljtk;->name()Ljava/lang/String;

    move-result-object v2

    nop

    nop

    nop

    invoke-interface {v5, v6, v2, v7, v8}, Lscz;->D(Ljava/lang/String;Ljava/lang/Object;J)V

    monitor-exit v4

    nop

    nop

    nop

    nop

    nop

    goto :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_1
    cmp-long v5, v7, v5

    nop

    if-gtz v5, :cond_2

    nop

    nop

    const/4 v10, 0x1

    nop

    nop

    nop

    nop

    nop

    :cond_2
    invoke-virtual {v2}, Ljtk;->name()Ljava/lang/String;

    monitor-exit v4

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_b
    :try_start_2
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    nop

    nop

    check-cast v3, Loxv;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v3, v2}, Loxv;->a(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_c
    goto/16 :goto_a

    nop

    :catchall_0
    move-exception p0

    nop

    nop

    nop

    nop

    nop

    :try_start_3
    monitor-exit v4

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    nop

    nop

    nop

    :cond_3
    monitor-exit v0

    nop

    nop

    nop

    nop

    nop

    return-void

    nop

    nop

    nop

    :catchall_1
    move-exception p0

    nop

    nop

    monitor-exit v0

    nop

    nop

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_d
    const v0, 0x2

    nop

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :goto_e
    const v1, 0x1

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method
