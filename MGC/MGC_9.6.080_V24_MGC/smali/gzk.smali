.class public Lgzk;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field private static final d:Lsdb;


# instance fields
.field public final a:Lows;

.field public final b:Ljava/lang/Object;

.field public c:Ljava/util/concurrent/ExecutorService;

.field private final e:Lfxj;

.field private final f:Lphj;

.field private final g:Llsk;

.field private final h:Llss;

.field private final i:Lnoy;

.field private final j:Lpik;


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

    nop

    :goto_1
    invoke-static {v0}, Lsdb;->g(Ljava/lang/String;)Lsdb;

    move-result-object v0

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_2
    sput-object v0, Lgzk;->d:Lsdb;

    nop

    nop

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    :goto_3
    const-string v0, "gzk"

    nop

    nop

    goto/32 :goto_1

    nop

    nop

    nop

    nop
.end method

.method public constructor <init>(Lpik;Lfxj;Lphj;Llsk;Llss;Lnoy;Lows;)V
    .locals 1

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_0
    iput-object p6, p0, Lgzk;->i:Lnoy;

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

    :goto_1
    iput-object p5, p0, Lgzk;->h:Llss;

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

    nop

    :goto_2
    new-instance v0, Ljava/lang/Object;

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

    :goto_3
    iput-object p3, p0, Lgzk;->f:Lphj;

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

    :goto_4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_5
    iput-object v0, p0, Lgzk;->b:Ljava/lang/Object;

    nop

    goto/32 :goto_6

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_6
    iput-object p1, p0, Lgzk;->j:Lpik;

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

    :goto_7
    return-void

    nop

    nop

    :goto_8
    iput-object p2, p0, Lgzk;->e:Lfxj;

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    iput-object p4, p0, Lgzk;->g:Llsk;

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

    nop

    nop

    :goto_a
    iput-object p7, p0, Lgzk;->a:Lows;

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    nop

    nop

    :goto_b
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    goto/32 :goto_5

    nop

    nop

    nop
.end method


# virtual methods
.method final declared-synchronized a()Lpci;
    .locals 4

    goto/32 :goto_5

    nop

    nop

    nop

    nop

    :goto_0
    return-object v1

    nop

    nop

    nop

    :catchall_0
    move-exception v0

    nop

    nop

    nop

    :try_start_0
    monitor-exit p0

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/32 :goto_a

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_1
    goto/32 :goto_7

    nop

    nop

    :goto_2
    const v1, 0x1

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    nop

    goto/32 :goto_4

    nop

    nop

    :goto_4
    rem-int v0, v0, v1

    nop

    nop

    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_5
    const v0, 0xd

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    :goto_6
    goto/32 :goto_b

    nop

    nop

    nop

    nop

    :goto_7
    goto/32 :goto_c

    nop

    nop

    nop

    nop

    nop

    :goto_8
    monitor-exit p0

    nop

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_9
    if-lez v0, :cond_0

    nop

    nop

    nop

    nop

    goto/32 :goto_7

    nop

    nop

    :cond_0
    goto/32 :goto_6

    nop

    :goto_a
    throw v0

    nop

    :goto_b
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    nop

    :goto_c
    monitor-enter p0

    nop

    nop

    nop

    :try_start_1
    iget-object v0, p0, Lgzk;->j:Lpik;

    nop

    nop

    nop

    nop

    nop

    iget-object v1, v0, Lpik;->a:Lpia;

    nop

    nop

    iget-object v2, p0, Lgzk;->f:Lphj;

    nop

    nop

    nop

    nop

    invoke-virtual {v1, v2}, Lpia;->a(Lphj;)Lphh;

    move-result-object v1

    nop

    nop

    nop

    invoke-virtual {v0, v1}, Lpik;->d(Lphh;)Lpgo;

    move-result-object v0

    nop

    nop

    iget-object v2, p0, Lgzk;->j:Lpik;

    nop

    nop

    nop

    const/4 v3, 0x2

    nop

    nop

    nop

    invoke-virtual {v2, v0, v3}, Lpik;->c(Lpgo;I)Lpgh;

    move-result-object v0

    nop

    new-instance v2, Lgff;

    nop

    nop

    nop

    nop

    const/4 v3, 0x4

    nop

    nop

    nop

    nop

    nop

    invoke-direct {v2, p0, v1, v3}, Lgff;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-interface {v0, v2}, Lpgh;->l(Lpgg;)V

    new-instance v1, Lgnw;

    nop

    nop

    const/4 v2, 0x7

    nop

    invoke-direct {v1, v0, v2}, Lgnw;-><init>(Ljava/lang/Object;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/32 :goto_8

    nop

    nop
.end method

.method public final declared-synchronized b(Lpge;Lphh;)V
    .locals 7

    goto/32 :goto_0

    nop

    nop

    nop

    nop

    :goto_0
    const v0, 0x19

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

    :goto_1
    goto/32 :goto_e

    nop

    nop

    nop

    nop

    nop

    :goto_2
    rem-int v0, v0, v1

    nop

    nop

    nop

    nop

    goto/32 :goto_b

    nop

    nop

    nop

    :goto_3
    add-int v0, v0, v1

    nop

    goto/32 :goto_2

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_4
    throw p1

    nop

    nop

    :goto_5
    goto/32 :goto_1

    nop

    nop

    nop

    nop

    :goto_6
    goto :goto_7

    nop

    :catchall_0
    move-exception p2

    nop

    nop

    nop

    nop

    :try_start_0
    invoke-virtual {v0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_7
    throw v0

    nop

    nop

    nop

    nop

    nop
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :catchall_1
    move-exception p2

    nop

    nop

    nop

    nop

    nop

    :try_start_1
    invoke-interface {p1}, Lpge;->close()V

    throw p2

    nop

    nop

    nop

    nop

    :catchall_2
    move-exception p1

    nop

    nop

    nop

    monitor-exit p0

    nop

    nop

    nop

    nop
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto/32 :goto_4

    nop

    nop

    nop

    nop

    nop

    :goto_8
    const v1, 0xa

    nop

    nop

    nop

    nop

    nop

    goto/32 :goto_3

    nop

    nop

    nop

    :goto_9
    monitor-enter p0

    nop

    :try_start_2
    invoke-interface {p1, p2}, Lpge;->e(Lphh;)Lprw;

    move-result-object p2

    nop

    nop
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    invoke-interface {p1}, Lpge;->d()Lpro;

    move-result-object v0

    nop

    if-nez p2, :cond_0

    nop

    nop

    nop

    sget-object v0, Lgzk;->d:Lsdb;

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    const/16 v1, 0x383

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    nop

    nop

    check-cast v0, Lscz;

    nop

    nop

    nop

    nop

    nop

    const-string v1, "Image from frame %s null"

    nop

    nop

    nop

    nop

    invoke-interface {v0, v1, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V

    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_0
    if-nez v0, :cond_2

    nop

    sget-object v0, Lgzk;->d:Lsdb;

    nop

    invoke-virtual {v0}, Lscs;->c()Lsdo;

    move-result-object v0

    nop

    nop

    const/16 v1, 0x382

    nop

    nop

    nop

    invoke-interface {v0, v1}, Lscz;->M(I)Lsdo;

    move-result-object v0

    nop

    check-cast v0, Lscz;

    nop

    const-string v1, "Result from frame %s null"

    nop

    nop

    invoke-interface {v0, v1, p1}, Lscz;->v(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :goto_a
    :try_start_4
    invoke-interface {p2}, Lprw;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/32 :goto_f

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_b
    if-lez v0, :cond_1

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

    :cond_1
    goto/32 :goto_d

    nop

    :goto_c
    monitor-exit p0

    nop

    goto/32 :goto_13

    nop

    nop

    nop

    :goto_d
    goto/32 :goto_5

    nop

    nop

    nop

    :goto_e
    goto/32 :goto_9

    nop

    nop

    nop

    nop

    nop

    nop

    :goto_f
    goto/16 :goto_15

    nop

    nop

    nop

    nop

    nop

    :cond_2
    :try_start_5
    iget-object v1, p0, Lgzk;->e:Lfxj;

    nop

    nop

    nop

    invoke-virtual {v1}, Lfxj;->b()Lpcg;

    move-result-object v1

    nop

    nop

    nop

    nop

    nop

    sget-object v2, Landroid/hardware/camera2/CaptureResult;->LOGICAL_MULTI_CAMERA_ACTIVE_PHYSICAL_ID:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    nop

    invoke-interface {v0, v2}, Lpro;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Ljava/lang/String;

    nop

    nop

    nop

    const/4 v3, 0x0

    nop

    nop

    if-eqz v2, :cond_4

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Lpro;->h()Ljava/util/Map;

    move-result-object v4

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v4}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    nop

    if-nez v5, :cond_4

    nop

    nop

    nop

    invoke-interface {v4, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    nop

    nop

    if-eqz v0, :cond_3

    nop

    nop

    nop

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    nop

    check-cast v0, Lprk;

    nop

    goto :goto_10

    nop

    nop

    nop

    nop

    nop

    :cond_3
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    nop

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    nop

    check-cast v0, Ljava/util/Map$Entry;

    nop

    nop

    nop

    nop

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    nop

    nop

    nop

    check-cast v2, Ljava/lang/String;

    nop

    nop

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    check-cast v0, Lprk;

    nop

    nop

    nop

    nop

    nop

    :goto_10
    sget-object v3, Landroid/hardware/camera2/CaptureResult;->SCALER_CROP_REGION:Landroid/hardware/camera2/CaptureResult$Key;

    nop

    nop

    nop

    invoke-interface {v0, v3}, Lprk;->a(Landroid/hardware/camera2/CaptureResult$Key;)Ljava/lang/Object;

    move-result-object v3

    nop

    nop

    check-cast v3, Landroid/graphics/Rect;

    nop

    nop

    nop

    :cond_4
    move-object v5, v2

    nop

    move-object v2, v0

    nop

    iget-object v0, p0, Lgzk;->i:Lnoy;

    nop

    invoke-virtual {v0, v5}, Lnoy;->b(Ljava/lang/String;)Lpnu;

    move-result-object v0

    nop

    nop

    sget-object v4, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    nop

    nop

    nop

    nop

    nop

    invoke-interface {v0, v4}, Lpnu;->m(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    nop

    nop

    nop

    move-object v4, v0

    nop

    check-cast v4, Landroid/graphics/Rect;

    nop

    nop

    nop

    nop

    nop

    if-nez v3, :cond_5

    nop

    nop

    nop

    nop

    move-object v6, v4

    nop

    goto :goto_11

    nop

    nop

    nop

    nop

    nop

    :cond_5
    move-object v6, v3

    nop

    :goto_11
    new-instance v0, Llsc;

    nop

    iget v3, v1, Lpcg;->e:I

    nop

    move-object v1, v0

    nop

    nop

    nop

    nop

    invoke-direct/range {v1 .. v6}, Llsc;-><init>(Lprk;ILandroid/graphics/Rect;Ljava/lang/String;Landroid/graphics/Rect;)V

    iget-object v1, p0, Lgzk;->g:Llsk;

    nop

    invoke-virtual {v1, p2, v0}, Llsk;->a(Lprw;Llsc;)Llso;

    move-result-object v0

    nop

    iget-object v1, p0, Lgzk;->h:Llss;

    nop

    nop

    nop

    invoke-virtual {v1, v0}, Llss;->d(Llso;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    goto/32 :goto_14

    nop

    nop

    :goto_12
    if-nez p2, :cond_6

    nop

    nop

    goto/32 :goto_7

    nop

    :cond_6
    :try_start_6
    invoke-interface {p2}, Lprw;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/32 :goto_6

    nop

    nop

    :goto_13
    return-void

    nop

    :catchall_3
    move-exception v0

    nop

    nop

    nop

    goto/32 :goto_12

    nop

    nop

    nop

    nop

    :goto_14
    goto/16 :goto_a

    nop

    nop

    nop

    nop

    nop

    :goto_15
    :try_start_7
    invoke-interface {p1}, Lpge;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto/32 :goto_c

    nop

    nop
.end method
