.class public Llhx;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Likm;
.implements Lilg;
.implements Lilq;


# static fields
.field public static final a:Lsdb;


# instance fields
.field public final b:Lkvt;

.field private final c:Ljava/util/HashMap;

.field private final d:Z

.field private final e:Ljava/util/concurrent/Executor;

.field private final f:Lpdf;

.field private g:Lpro;

.field private final h:Lpik;

.field private final i:Liof;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    :goto_2
    const-string v0, "lhx"

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_3
    sput-object v0, Llhx;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop
.end method

.method public constructor <init>(Lhoh;Lpik;Liof;Lkvt;Ljava/util/concurrent/Executor;Lpdf;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    new-instance v0, Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iput-object p2, p0, Llhx;->h:Lpik;

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    iput-object p5, p0, Llhx;->e:Ljava/util/concurrent/Executor;

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

    :goto_4
    return-void

    nop

    nop

    :goto_5
    iput-object p4, p0, Llhx;->b:Lkvt;

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_7
    iput-boolean p1, p0, Llhx;->d:Z

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_8
    iput-object p3, p0, Llhx;->i:Liof;

    nop

    goto/32 :goto_5

    nop

    nop

    nop

    :goto_9
    iput-object p6, p0, Llhx;->f:Lpdf;

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

    :goto_a
    invoke-virtual {p1, v0}, Lhoh;->p(Lhmn;)Z

    move-result p1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    :goto_b
    sget-object v0, Lhmu;->E:Lhmn;

    nop

    nop

    nop

    nop

    goto/32 :goto_a

    nop

    nop

    nop

    :goto_c
    iput-object v0, p0, Llhx;->c:Ljava/util/HashMap;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static final f(Lpro;)Z
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0xa

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

    nop

    nop

    :goto_1
    if-eqz v0, :cond_0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_15

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_2
    if-eqz v1, :cond_1

    nop

    nop

    goto/32 :goto_15

    nop

    nop

    :cond_1
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_3
    const/4 p0, 0x0

    nop

    goto/32 :goto_14

    nop

    nop

    nop

    nop

    nop

    :goto_4
    invoke-interface {p0, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    goto/32 :goto_17

    nop

    nop

    nop

    :goto_5
    invoke-interface {p0, v0}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    goto/32 :goto_19

    nop

    nop

    nop

    nop

    nop

    :goto_6
    if-nez v2, :cond_2

    nop

    nop

    nop

    nop

    goto/32 :goto_d

    nop

    :cond_2
    goto/32 :goto_c

    nop

    nop

    nop

    :goto_7
    invoke-interface {p0, v1}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_16

    nop

    nop

    nop

    nop

    :goto_9
    return p0

    nop

    :goto_a
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const/4 p0, 0x1

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    :goto_c
    goto :goto_15

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x8

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_13

    nop

    :goto_10
    sget-object v0, Lnyl;->h:Landroid/hardware/camera2/CaptureResult$Key;

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

    :goto_11
    sget-object v2, Lnyl;->j:Landroid/hardware/camera2/CaptureResult$Key;

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

    :goto_12
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_13
    goto/32 :goto_10

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_14
    return p0

    nop

    nop

    :goto_15
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_16
    rem-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_18

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_17
    invoke-interface {p0}, Lpro;->e()J

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_18
    if-lez v0, :cond_3

    nop

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    :cond_3
    goto/32 :goto_12

    nop

    :goto_19
    sget-object v1, Lnyl;->i:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method private static final j(Linb;)I
    .locals 3

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    :goto_0
    const/16 v2, 0xe60

    nop

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    :goto_2
    const v1, 0x19

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_3
    return p0

    nop

    :catch_0
    move-exception p0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    :try_start_0
    invoke-virtual {p0}, Linb;->a()I

    move-result p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_6
    const/4 v1, 0x0

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_7
    sget-object v0, Llhx;->a:Lsdb;

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    :goto_8
    return p0

    nop

    nop

    :goto_9
    goto/32 :goto_a

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_b
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_c
    invoke-static {v1, v2, v0, p0}, Lmf;->f(Ljava/lang/String;CLscz;Ljava/lang/Throwable;)V

    goto/32 :goto_d

    nop

    nop

    nop

    :goto_d
    const/4 p0, -0x1

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_e
    const v0, 0x5

    nop

    goto/32 :goto_2

    nop

    nop

    :goto_f
    rem-int v0, v0, v1

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

    :goto_10
    if-lez v0, :cond_0

    nop

    nop

    nop

    goto/32 :goto_5

    nop

    :cond_0
    goto/32 :goto_4

    nop

    :goto_11
    sget-object v1, Lcom/google/android/apps/camera/ui/hotshot/NgVy/uBXLxqUja;->gIH:Ljava/lang/String;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method


# virtual methods
.method public final declared-synchronized a(Llxm;)V
    .locals 3

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_0
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

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_0
    iget-object v0, p0, Llhx;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    nop

    nop

    nop

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    nop

    if-eqz v1, :cond_1

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    check-cast v1, Linb;

    nop

    iget-object v2, v1, Linb;->w:Llko;

    nop

    nop

    nop

    iget-object v2, v2, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    invoke-interface {v2}, Llxa;->j()Llxm;

    move-result-object v2

    nop

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    nop

    nop

    nop

    if-eqz v2, :cond_0

    nop

    nop

    goto :goto_2

    nop

    nop

    nop

    :cond_1
    const/4 v1, 0x0

    nop

    :goto_2
    if-eqz v1, :cond_3

    nop

    nop

    invoke-static {v1}, Llhx;->j(Linb;)I

    invoke-virtual {p0, v1}, Llhx;->e(Linb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_c

    nop

    nop

    nop

    :goto_3
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

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_e

    nop

    nop

    :goto_4
    monitor-exit p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v1, 0x10

    nop

    nop

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_f

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    if-lez v0, :cond_2

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

    :cond_2
    goto/32 :goto_6

    nop

    :goto_a
    return-void

    nop

    :cond_3
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    const v0, 0x4

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

    :goto_c
    monitor-exit p0

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

    :goto_d
    goto/32 :goto_7

    nop

    nop

    nop

    :goto_e
    throw p1

    nop

    nop

    nop

    :goto_f
    goto/32 :goto_d

    nop

    nop

    nop
.end method

.method public final declared-synchronized b(Linb;Lpge;)V
    .locals 2

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_0
    const v1, 0x1b

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    :goto_1
    add-int v0, v0, v1

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_3
    monitor-exit p0

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

    nop

    nop

    :goto_4
    goto/32 :goto_e

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_4

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

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_8
    return-void

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_9
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-enter p0

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-interface {p2}, Lpge;->d()Lpro;

    move-result-object v0

    nop

    nop

    invoke-interface {p2}, Lpge;->close()V

    if-eqz v0, :cond_0

    nop

    nop

    iget-object p2, p0, Llhx;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    nop

    nop

    if-eqz p2, :cond_0

    nop

    nop

    nop

    nop

    nop

    sget-object p2, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    invoke-interface {v0, p2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    check-cast p2, Ljava/lang/Long;

    nop

    invoke-interface {v0}, Lpro;->e()J

    if-eqz p2, :cond_0

    nop

    nop

    nop

    iput-object v0, p0, Llhx;->g:Lpro;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, p0, Llhx;->c:Ljava/util/HashMap;

    nop

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    nop

    nop

    nop

    nop

    check-cast v1, Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {v1, p2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Llhx;->j(Linb;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

    nop

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :cond_1
    goto/32 :goto_d

    nop

    :goto_c
    const v0, 0x19

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_d
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop
.end method

.method public final declared-synchronized c(Linb;Lcom/google/googlex/gcam/BurstSpec;Lpro;)V
    .locals 0

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_0
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_1
    monitor-exit p0

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_2
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    new-instance p2, Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iget-object p3, p0, Llhx;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    invoke-virtual {p3, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Llhx;->j(Linb;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_0

    nop

    nop
.end method

.method public final declared-synchronized d(Linb;IJLpro;)V
    .locals 7

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_0
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_c

    nop

    nop

    nop

    nop

    :goto_1
    const v0, 0x1f

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    :goto_2
    throw p1

    nop

    nop

    :goto_3
    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :cond_0
    :try_start_0
    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object p5, p0, Llhx;->f:Lpdf;

    nop

    nop

    nop

    const-string v0, "Camera3ADebugMetadataProcessor#onBaseFrameSelected"

    nop

    nop

    invoke-interface {p5, v0}, Lpdf;->f(Ljava/lang/String;)V

    iget-boolean p5, p0, Llhx;->d:Z

    nop

    nop

    if-eqz p5, :cond_4

    nop

    nop

    nop

    iget-object p5, p0, Llhx;->g:Lpro;

    nop

    if-eqz p5, :cond_3

    nop

    invoke-static {p5}, Llhx;->f(Lpro;)Z

    move-result p5

    nop

    nop

    nop

    nop

    if-nez p5, :cond_1

    nop

    nop

    nop

    nop

    nop

    goto/16 :goto_11

    nop

    nop

    nop

    :cond_1
    invoke-static {p1}, Llhx;->j(Linb;)I

    iget-object p2, p0, Llhx;->g:Lpro;

    nop

    nop

    nop

    invoke-interface {p2}, Lpro;->e()J

    iget-object p2, p0, Llhx;->g:Lpro;

    nop

    nop

    nop

    sget-object p3, Landroid/hardware/camera2/CaptureResult;->SENSOR_TIMESTAMP:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {p2, p3}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    iget-object p1, p1, Linb;->w:Llko;

    nop

    nop

    nop

    nop

    nop

    iget-object p2, p0, Llhx;->g:Lpro;

    nop

    nop

    nop

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p1, p1, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    const/4 p3, 0x0

    nop

    invoke-interface {p1, p2, p3}, Llxa;->T(Lpro;Z)V

    const/4 p1, 0x0

    nop

    nop

    nop

    nop

    nop

    iput-object p1, p0, Llhx;->g:Lpro;

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_5
    goto/32 :goto_e

    nop

    nop

    :goto_6
    return-void

    nop

    :catchall_0
    move-exception p1

    nop

    :try_start_2
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw p1

    nop

    nop

    nop

    nop

    :catchall_1
    move-exception p1

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_7
    monitor-enter p0

    nop

    nop

    :try_start_4
    invoke-static {p1}, Llhx;->j(Linb;)I

    new-instance p2, Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    monitor-enter p0

    nop

    nop
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object p2, p0, Llhx;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    nop

    nop

    nop

    nop

    check-cast p2, Ljava/util/HashMap;

    nop

    nop

    nop

    if-nez p2, :cond_0

    nop

    nop

    nop

    nop

    sget-object p2, Llhx;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {p2}, Lscs;->c()Lsdo;

    move-result-object p2

    nop

    const/16 p3, 0xe6e

    nop

    invoke-interface {p2, p3}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    check-cast p2, Lscz;

    nop

    nop

    nop

    nop

    const-string p3, "3A_DEBUG shotId=%d hasn\'t been started yet!"

    nop

    nop

    nop

    nop

    invoke-static {p1}, Llhx;->j(Linb;)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    invoke-interface {p2, p3, p1}, Lscz;->t(Ljava/lang/String;I)V

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto/32 :goto_f

    nop

    nop

    :goto_8
    add-int v0, v0, v1

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_9
    const v1, 0x19

    nop

    nop

    goto/32 :goto_8

    nop

    nop

    nop

    nop

    nop

    :goto_a
    monitor-exit p0

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    :goto_b
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    :goto_c
    if-lez v0, :cond_2

    nop

    goto/32 :goto_e

    nop

    nop

    nop

    :cond_2
    goto/32 :goto_d

    nop

    :goto_d
    goto/32 :goto_3

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_7

    nop

    nop

    :goto_f
    monitor-exit p0

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

    :goto_10
    return-void

    nop

    nop

    nop

    :cond_3
    :goto_11
    :try_start_6
    sget-object p5, Llhx;->a:Lsdb;

    nop

    nop

    nop

    invoke-virtual {p5}, Lscs;->c()Lsdo;

    move-result-object p5

    nop

    nop

    nop

    nop

    const/16 v0, 0xe6c

    nop

    nop

    nop

    invoke-interface {p5, v0}, Lscz;->M(I)Lsdo;

    move-result-object p5

    nop

    nop

    nop

    nop

    nop

    check-cast p5, Lscz;

    nop

    nop

    nop

    nop

    invoke-static {p1}, Llhx;->j(Linb;)I

    move-result v0

    nop

    nop

    nop

    nop

    const-string v1, "3A_DEBUG shotId=%d prefer last frame debug data but not available, fall back to base frame debug data."

    nop

    nop

    nop

    invoke-interface {p5, v1, v0}, Lscz;->t(Ljava/lang/String;I)V

    :cond_4
    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p5

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {p2, p5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    nop

    nop

    if-eqz v0, :cond_7

    nop

    invoke-static {p1}, Llhx;->j(Linb;)I

    invoke-virtual {p2, p5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    nop

    nop

    nop

    nop

    check-cast p3, Lpro;

    nop

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p3}, Llhx;->f(Lpro;)Z

    move-result p4

    nop

    nop

    invoke-interface {p3}, Lpro;->e()J

    move-result-wide v4

    nop

    nop

    nop

    if-nez p4, :cond_6

    nop

    nop

    nop

    nop

    sget-object p3, Lnyq;->a:Landroid/hardware/camera2/CaptureRequest$Key;

    nop

    nop

    if-eqz p3, :cond_5

    nop

    nop

    iget-object v2, p0, Llhx;->h:Lpik;

    nop

    nop

    nop

    nop

    nop

    iget-object p1, p1, Linb;->w:Llko;

    nop

    iget-object p3, p0, Llhx;->e:Ljava/util/concurrent/Executor;

    nop

    nop

    nop

    nop

    new-instance p4, Lkhh;

    nop

    iget-object v3, p1, Llko;->d:Ljava/lang/Object;

    nop

    nop

    const/4 v6, 0x2

    nop

    nop

    nop

    nop

    move-object v0, p4

    nop

    move-object v1, p0

    nop

    nop

    nop

    nop

    invoke-direct/range {v0 .. v6}, Lkhh;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;JI)V

    invoke-interface {p3, p4}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_12

    nop

    :cond_5
    sget-object p3, Llhx;->a:Lsdb;

    nop

    invoke-virtual {p3}, Lscs;->c()Lsdo;

    move-result-object p3

    nop

    nop

    nop

    const/16 p4, 0xe6b

    nop

    nop

    invoke-interface {p3, p4}, Lscz;->M(I)Lsdo;

    move-result-object p3

    nop

    nop

    nop

    nop

    nop

    check-cast p3, Lscz;

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Llhx;->j(Linb;)I

    move-result p1

    nop

    nop

    nop

    nop

    nop

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    nop

    nop

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    nop

    nop

    nop

    nop

    const-string v0, "3A_DEBUG shotId=%d base frame=%d (timestamp=%d) metadata does not contain debug data! Request for base frame metadata not supported!"

    nop

    nop

    nop

    nop

    invoke-interface {p3, v0, p1, p4, p5}, Lscz;->G(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_12

    nop

    nop

    nop

    nop

    :cond_6
    invoke-static {p1}, Llhx;->j(Linb;)I

    iget-object p1, p1, Linb;->w:Llko;

    nop

    nop

    iget-object p1, p1, Llko;->d:Ljava/lang/Object;

    nop

    nop

    nop

    nop

    nop

    const/4 p4, 0x1

    nop

    invoke-interface {p1, p3, p4}, Llxa;->T(Lpro;Z)V

    goto :goto_12

    nop

    nop

    nop

    :cond_7
    sget-object p5, Llhx;->a:Lsdb;

    nop

    nop

    invoke-virtual {p5}, Lscs;->c()Lsdo;

    move-result-object p5

    nop

    const/16 v0, 0xe68

    nop

    invoke-interface {p5, v0}, Lscz;->M(I)Lsdo;

    move-result-object p5

    nop

    nop

    nop

    check-cast p5, Lscz;

    nop

    invoke-static {p1}, Llhx;->j(Linb;)I

    move-result p1

    nop

    const-string v0, "3A_DEBUG shotId=%d payload does not contain base frame timestamp %d"

    nop

    nop

    invoke-interface {p5, v0, p1, p3, p4}, Lscz;->x(Ljava/lang/String;IJ)V

    :goto_12
    iget-object p1, p0, Llhx;->f:Lpdf;

    nop

    nop

    const-string p3, "clear"

    nop

    invoke-interface {p1, p3}, Lpdf;->h(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, Llhx;->f:Lpdf;

    nop

    invoke-interface {p1}, Lpdf;->g()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto/32 :goto_a

    nop

    nop
.end method

.method public final declared-synchronized dm(Linb;)V
    .locals 3

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    const v1, 0x11

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

    nop

    :goto_1
    monitor-enter p0

    nop

    nop

    nop

    :try_start_0
    sget-object v0, Llhx;->a:Lsdb;

    nop

    nop

    nop

    nop

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    const/16 v1, 0xe6f

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    const-string v1, "3A_DEBUG onShotAborted for shotId=%d, shot 3A metadata will be cleared."

    nop

    invoke-virtual {p1}, Linb;->a()I

    move-result v2

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, v2}, Lscz;->t(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Llhx;->e(Linb;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_8

    nop

    nop

    nop

    :goto_2
    const v0, 0x19

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_3
    if-lez v0, :cond_0

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_a

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_5
    throw p1

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_9

    nop

    nop

    nop

    :goto_7
    return-void

    nop

    nop

    :catchall_0
    move-exception p1

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

    goto/32 :goto_5

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

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_b

    nop

    nop

    nop

    :goto_a
    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop
.end method

.method public final dn(Linb;Lilk;)V
    .locals 2

    goto/32 :goto_14

    nop

    nop

    nop

    :goto_0
    invoke-interface {p2, v0}, Lscz;->M(I)Lsdo;

    move-result-object p2

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_1
    invoke-interface {v0, p2}, Lscz;->i(Ljava/lang/Throwable;)Lsdo;

    move-result-object p2

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

    :goto_2
    sget-object v0, Llhx;->a:Lsdb;

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

    :goto_3
    check-cast p2, Lscz;

    nop

    nop

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    nop

    nop

    :goto_4
    goto/32 :goto_9

    nop

    nop

    :goto_5
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    :goto_6
    if-lez v0, :cond_0

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

    :cond_0
    goto/32 :goto_8

    nop

    :goto_7
    add-int v0, v0, v1

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

    :goto_8
    goto/32 :goto_d

    nop

    nop

    nop

    nop

    :goto_9
    goto/32 :goto_2

    nop

    nop

    nop

    nop

    :goto_a
    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

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

    :goto_b
    invoke-virtual {p0, p1}, Llhx;->e(Linb;)V

    goto/32 :goto_c

    nop

    nop

    :goto_c
    return-void

    nop

    nop

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_e
    check-cast p2, Lscz;

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    const v1, 0x20

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :goto_10
    invoke-static {p1}, Llhx;->j(Linb;)I

    move-result v1

    nop

    nop

    nop

    goto/32 :goto_11

    nop

    nop

    nop

    nop

    nop

    :goto_11
    invoke-interface {p2, v0, v1}, Lscz;->t(Ljava/lang/String;I)V

    goto/32 :goto_b

    nop

    nop

    nop

    nop

    nop

    :goto_12
    const/16 v0, 0xe70

    nop

    goto/32 :goto_0

    nop

    nop

    :goto_13
    const-string v0, "3A_DEBUG onShotError for shotId=%d, shot 3A metadata will be cleared."

    nop

    nop

    goto/32 :goto_10

    nop

    nop

    nop

    :goto_14
    const v0, 0x16

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_f

    nop

    nop

    nop
.end method

.method public final synthetic do(Linb;Lmjq;Lscn;)V
    .locals 0

    goto/32 :goto_0

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop
.end method

.method protected final declared-synchronized e(Linb;)V
    .locals 1

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop

    :goto_0
    monitor-enter p0

    nop

    :try_start_0
    iget-object v0, p0, Llhx;->c:Ljava/util/HashMap;

    nop

    nop

    nop

    nop

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    nop

    nop

    nop

    nop

    nop

    check-cast p1, Ljava/util/HashMap;

    nop

    nop

    if-eqz p1, :cond_0

    nop

    nop

    nop

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    nop

    :goto_1
    return-void

    nop

    nop

    nop

    nop

    :cond_0
    goto/32 :goto_2

    nop

    nop

    nop

    :goto_2
    monitor-exit p0

    nop

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    nop

    :goto_3
    throw p1

    nop

    nop

    nop

    nop

    nop

    :goto_4
    return-void

    nop

    nop

    nop

    nop

    :catchall_0
    move-exception p1

    nop

    nop

    :try_start_1
    monitor-exit p0

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_5
    monitor-exit p0

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop
.end method

.method public final g(Llxm;)V
    .locals 1

    goto/32 :goto_2

    nop

    nop

    nop

    :goto_0
    return-void

    nop

    nop

    nop

    :goto_1
    invoke-virtual {v0, p1}, Liof;->c(Llxm;)Linc;

    move-result-object v0

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    nop

    :goto_2
    iget-object v0, p0, Llhx;->i:Liof;

    nop

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    :goto_3
    invoke-virtual {v0, p0}, Linc;->a(Lilg;)V

    goto/32 :goto_4

    nop

    nop

    :goto_4
    invoke-virtual {v0, p0}, Linc;->f(Lilq;)V

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_5
    iget p0, p1, Llxm;->a:I

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final h(Linb;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    :goto_1
    invoke-static {p1}, Llhx;->j(Linb;)I

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_2
    const/4 p0, 0x1

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    nop
.end method

.method public final synthetic i(Linb;)Z
    .locals 0

    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    return p0

    nop

    nop

    nop

    nop

    nop

    :goto_1
    const/4 p0, 0x0

    nop

    goto/32 :goto_0

    nop

    nop

    nop
.end method
